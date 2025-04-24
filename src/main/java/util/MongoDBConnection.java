package util;

import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoDatabase;

public class MongoDBConnection {
    private static MongoClient mongoClient = null;
    private static final String CONNECTION_STRING = "mongodb://localhost:27017";
    private static final String DATABASE_NAME = "photostudio1";

    static {
        try {
            mongoClient = MongoClients.create(CONNECTION_STRING);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static MongoDatabase getDatabase() {
        return mongoClient.getDatabase(DATABASE_NAME);
    }
}
