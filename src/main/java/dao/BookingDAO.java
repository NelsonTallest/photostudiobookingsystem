package dao;

import model.Booking;
import com.mongodb.client.*;
import com.mongodb.client.model.Filters;
import org.bson.Document;
import org.bson.types.ObjectId;

public class BookingDAO {
    private MongoCollection<Document> collection;

    public BookingDAO() {
         MongoClient mongoClient = MongoClients.create("mongodb://localhost:27017");
        MongoDatabase database = mongoClient.getDatabase("photostudio1");
        this.collection = database.getCollection("bookings");
    }

    public boolean saveBooking(Booking booking) {
        // Create a document from the Booking object
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
        // Check if a booking exists for the given event date
        Document foundBooking = collection.find(Filters.eq("eventDate", eventDate)).first();
        return foundBooking != null;
    }
}
