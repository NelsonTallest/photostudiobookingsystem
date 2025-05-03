package dao;

import model.Booking;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.*;

public class BookingServiceTest {

    private BookingService bookingService;
    private BookingDAO bookingDAO;

    // Test booking data
    private final String fullName = "Test User";
    private final String eventDate = "2025-05-05";
    private final String eventType = "Wedding";
    private final String duration = "3 hours";

    @Before
    public void setUp() {
        bookingService = new BookingService();
        bookingDAO = new BookingDAO();


    }

    @After
    public void tearDown() {

    }

    @Test
    public void testSuccessfulBooking() {
        boolean result = bookingService.makeBooking(fullName, eventDate, eventType, duration);
        assertTrue("Booking should be successful", result);
    }

    @Test
    public void testBookingAlreadyExists() {
        // First booking should succeed
        bookingService.makeBooking(fullName, eventDate, eventType, duration);

        // Second booking for same date should fail
        boolean result = bookingService.makeBooking("Another User", eventDate, "Birthday", "2 hours");
        assertFalse("Booking should fail because event date already exists", result);
    }
}
