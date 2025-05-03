package dao;

import model.User;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.*;

public class UserDAOTest {

    private UserDAO userDAO;
    private final String testEmail = "testuser@example.com";

    @Before
    public void setUp() {
        userDAO = new UserDAO();
        // Clean up any existing test user before each test
        userDAO.deleteUserByEmail(testEmail);
    }

    @After
    public void tearDown() {
        // Clean up test user after each test
        userDAO.deleteUserByEmail(testEmail);
    }

    @Test
    public void testRegisterUser() {
        User user = new User();
        user.setUsername("testuser");
        user.setEmail(testEmail);
        user.setPassword("testpass");

        boolean result = userDAO.registerUser(user);
        assertTrue("User should be registered successfully", result);
    }

    @Test
    public void testDuplicateUserRegistration() {
        User user1 = new User();
        user1.setUsername("testuser1");
        user1.setEmail(testEmail);
        user1.setPassword("testpass");

        User user2 = new User();
        user2.setUsername("testuser2");
        user2.setEmail(testEmail);
        user2.setPassword("testpass");

        assertTrue("First user should register successfully", userDAO.registerUser(user1));
        assertFalse("Second user with same email should not register", userDAO.registerUser(user2));
    }

    @Test
    public void testLoginSuccess() {
        User user = new User();
        user.setUsername("testuser");
        user.setEmail(testEmail);
        user.setPassword("testpass");
        userDAO.registerUser(user);

        boolean loginResult = userDAO.checkLogin(testEmail, "testpass");
        assertTrue("Login should succeed with correct credentials", loginResult);
    }

    @Test
    public void testLoginFailure() {
        boolean loginResult = userDAO.checkLogin("wrong@example.com", "wrongpass");
        assertFalse("Login should fail with wrong credentials", loginResult);
    }
}
