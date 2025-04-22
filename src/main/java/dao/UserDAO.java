package dao;

import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import org.bson.Document;
import model.User;

public class UserDAO {

    private MongoCollection<Document> users;

    public UserDAO() {
        MongoDatabase db = MongoDBUtil.getDatabase();
        users = db.getCollection("users");
    }

    public boolean registerUser(User user) {
        Document existingUser = users.find(new Document("email", user.getEmail())).first();

        if (existingUser != null) {
            // User already exists
            return false;
        }

        Document newUser = new Document("username", user.getUsername())
                .append("email", user.getEmail())
                .append("password", user.getPassword());

        users.insertOne(newUser);
        return true;
    }

    public boolean checkLogin(String email, String password) {
        Document query = new Document("email", email).append("password", password);
        return users.find(query).first() != null;
    }
}
