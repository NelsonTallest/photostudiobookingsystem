package adminDAO;

import adminModel.Admin;
import adminDAO.AdminDAO;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import static org.junit.Assert.*;

public class AdminDAOTest {

    private AdminDAO adminDAO;
    private final String testEmail = "admin@test.com";
    private final String testPassword = "secure123";

    @Before
    public void setUp() {
        adminDAO = new AdminDAO();
        adminDAO.deleteAdminByEmail(testEmail); // Clean slate before test
    }

    @After
    public void tearDown() {
        adminDAO.deleteAdminByEmail(testEmail); // Cleanup after test
    }

    @Test
    public void testRegisterAdmin() {
        boolean result = adminDAO.registerAdmin(new Admin(testEmail, testPassword));
        assertTrue("Admin registration should succeed", result);
    }

    @Test
    public void testCheckLoginSuccess() {
        if (!adminDAO.checkLogin(testEmail, testPassword)) {
            adminDAO.registerAdmin(new Admin(testEmail, testPassword));
        }

        boolean result = adminDAO.checkLogin(testEmail, testPassword);
        assertTrue("Login should succeed with correct credentials", result);
    }

    @Test
    public void testCheckLoginFailure() {
        adminDAO.registerAdmin(new Admin(testEmail, testPassword));

        boolean result = adminDAO.checkLogin(testEmail, "wrongpassword");
        assertFalse("Login should fail with incorrect password", result);
    }
}
