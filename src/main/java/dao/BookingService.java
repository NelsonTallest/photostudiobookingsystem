package dao;

import model.Booking;

public class BookingService {
    private BookingDAO bookingDAO;

    public BookingService() {
        this.bookingDAO = new BookingDAO();
    }

    public boolean makeBooking(String fullName, String eventDate, String eventType, String duration) {
        // Create a new booking object
        Booking booking = new Booking(fullName, eventDate, eventType, duration);

        // Check if the booking already exists for the given event date
        if (bookingDAO.bookingExists(eventDate)) {
            return false;  // Booking already exists for the given event date
        }

        // Save the booking to the database
        return bookingDAO.saveBooking(booking);
    }
}

