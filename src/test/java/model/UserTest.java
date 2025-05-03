package model;

import org.junit.Before;
import org.junit.Test;
import static org.junit.Assert.*;

public class UserTest {

    private User user;

    @Before
    public void setUp() {
        user = new User();
    }

    @Test
    public void testSetAndGetUsername() {
        String username = "admin";
        user.setUsername(username);
        assertEquals(username, user.getUsername());
    }

    @Test
    public void testSetAndGetEmail() {
        String email = "admin@example.com";
        user.setEmail(email);
        assertEquals(email, user.getEmail());
    }

    @Test
    public void testSetAndGetPassword() {
        String password = "123";
        user.setPassword(password);
        assertEquals(password, user.getPassword());
    }

    @Test
    public void testSetAndGetFullName() {
        String fullName = "Obi  Mikel";
        user.setFullName(fullName);
        assertEquals(fullName, user.getFullName());
    }
}
