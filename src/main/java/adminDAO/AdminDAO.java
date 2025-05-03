package adminDAO;

import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import org.bson.Document;
import adminModel.Admin;
import util.MongoDBConnection;

public class AdminDAO {

    private MongoCollection<Document> collection;

    public AdminDAO() {
        MongoDatabase db = MongoDBConnection.getDatabase();
        this.collection = db.getCollection("admins");
    }

    public boolean registerAdmin(Admin admin) {
        Document existingAdmin = collection.find(new Document("email", admin.getEmail())).first();
        if (existingAdmin != null) {
            return false; // Already exists
        }

        Document newAdmin = new Document("email", admin.getEmail())
                .append("password", admin.getPassword());
        collection.insertOne(newAdmin);
        return true;
    }

    public boolean checkLogin(String email, String password) {
        Document query = new Document("email", email).append("password", password);
        return collection.find(query).first() != null;
    }

    public boolean deleteAdminByEmail(String email) {
        return collection.deleteOne(new Document("email", email)).getDeletedCount() > 0;
    }
}
