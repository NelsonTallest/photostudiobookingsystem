package dao;

import model.Booking;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.*;

public class BookingDAOTest {

    private BookingDAO bookingDAO;
    private Booking testBooking;

    @Before
    public void setUp() {
        bookingDAO = new BookingDAO();

        // Create a test booking object
        testBooking = new Booking("Test User", "2025-05-10", "Wedding", "3 hours");

        // Clean up any existing booking with same eventDate
        if (bookingDAO.bookingExists(testBooking.getEventDate())) {
            bookingDAO.deleteBookingByDuration(testBooking.getDuration());
        }
    }

    @After
    public void tearDown() {
        // Clean up the test booking after test runs
        bookingDAO.deleteBookingByDuration(testBooking.getDuration());
    }

    @Test
    public void testSaveBooking() {
        boolean result = bookingDAO.saveBooking(testBooking);
        assertTrue("Booking should be saved successfully", result);
    }

    @Test
    public void testBookingExists() {
        bookingDAO.saveBooking(testBooking);
        assertTrue("Booking should exist for the given date", bookingDAO.bookingExists(testBooking.getEventDate()));
    }

    @Test
    public void testDeleteBookingByDuration() {
        bookingDAO.saveBooking(testBooking);
        boolean deleted = bookingDAO.deleteBookingByDuration(testBooking.getDuration());
        assertTrue("Booking should be deleted successfully", deleted);
    }
}
