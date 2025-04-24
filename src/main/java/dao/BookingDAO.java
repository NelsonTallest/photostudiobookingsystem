package dao;

import com.mongodb.client.result.DeleteResult;
import model.Booking;
import com.mongodb.client.*;
import com.mongodb.client.model.Filters;
import org.bson.Document;
import org.bson.types.ObjectId;
import util.MongoDBConnection;

import java.util.ArrayList;
import java.util.List;

public class BookingDAO {
    private MongoCollection<Document> collection;

    public BookingDAO() {
        MongoDatabase db = MongoDBConnection.getDatabase();

        this.collection = db.getCollection("bookings");
    }

    public boolean saveBooking(Booking booking) {
        Document document = new Document("fullName", booking.getFullName())
                .append("eventDate", booking.getEventDate())
                .append("eventType", booking.getEventType())
                .append("duration", booking.getDuration());

        try {
            collection.insertOne(document);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean bookingExists(String eventDate) {
        Document foundBooking = collection.find(Filters.eq("eventDate", eventDate)).first();
        return foundBooking != null;
    }

    // ✅ New method to retrieve all bookings
    public List<Booking> getAllBookings() {
        List<Booking> bookings = new ArrayList<>();
        FindIterable<Document> documents = collection.find();

        for (Document doc : documents) {
            Booking booking = new Booking(
                    doc.getString("fullName"),
                    doc.getString("eventDate"),
                    doc.getString("duration"),
                    doc.getString("eventType")
            );
            bookings.add(booking);
        }

        return bookings;
    }



    public boolean deleteBookingByDuration(String duration) {
        try {
            DeleteResult result = collection.deleteOne(Filters.eq("duration", duration));
            return result.getDeletedCount() > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }


}
