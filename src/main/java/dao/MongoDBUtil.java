package dao;

import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoDatabase;

public class MongoDBUtil {
    private static MongoClient mongoClient = MongoClients.create("mongodb://localhost:27017");

    public static MongoDatabase getDatabase() {
        return mongoClient.getDatabase("photostudio1");
    }
}
