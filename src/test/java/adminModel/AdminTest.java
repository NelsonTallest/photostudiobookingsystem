package adminModel;

import org.junit.Test;
import static org.junit.Assert.*;

public class AdminTest {

    @Test
    public void testConstructorAndGetters() {
        String email = "admin@example.com";
        String password = "admin123";

        Admin admin = new Admin(email, password);

        assertEquals("Email should match", email, admin.getEmail());
        assertEquals("Password should match", password, admin.getPassword());
    }

    @Test
    public void testSetters() {
        Admin admin = new Admin();

        admin.setEmail("test@example.com");
        admin.setPassword("testpass");

        assertEquals("Email should be set correctly", "test@example.com", admin.getEmail());
        assertEquals("Password should be set correctly", "testpass", admin.getPassword());
    }
}
