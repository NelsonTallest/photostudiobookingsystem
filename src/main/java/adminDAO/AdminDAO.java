package adminDAO;

import com.mongodb.client.*;
import adminModel.Admin;
import model.User;
import model.Booking;
import org.bson.Document;
import util.MongoDBConnection;

import java.util.ArrayList;
import java.util.List;

public class AdminDAO {
    private MongoCollection<Document> adminCollection;
    private MongoCollection<Document> userCollection;
    private MongoCollection<Document> bookingsCollection;

    public AdminDAO() {
        MongoDatabase db = MongoDBConnection.getDatabase();
        this.adminCollection = db.getCollection("admins");    // Admin auth
        this.userCollection = db.getCollection("users");      // User list
        this.bookingsCollection = db.getCollection("bookings"); // Events
    }

    // Admin login
    public boolean login(String email, String password) {
        Document admin = adminCollection.find(
                new Document("email", email).append("password", password)
        ).first();
        return admin != null;
    }

    // View all users
    public List<User> getAllUsers() {
        List<User> users = new ArrayList<>();
        FindIterable<Document> docs = userCollection.find();

        for (Document doc : docs) {
            User user = new User();
            user.setFullName(doc.getString("fullName"));
            user.setEmail(doc.getString("email"));
            user.setPassword(doc.getString("password")); // Optional
            users.add(user);
        }
        return users;
    }



    // View all events
    public List<Booking> getAllEvents() {
        List<Booking> events = new ArrayList<>();
        FindIterable<Document> docs = bookingsCollection.find();

        for (Document doc : docs) {
            Booking booking = new Booking(
                    doc.getString("fullName"),
                    doc.getString("eventDate"),
                    doc.getString("eventType"),
                    doc.getString("duration")
            );
            events.add(booking);
        }

        return events;
    }


}
