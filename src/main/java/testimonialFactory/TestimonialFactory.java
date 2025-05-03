package testimonialFactory;

public class TestimonialFactory {
    public static Testimonial getTestimonial(String type) {
        switch (type.toLowerCase()) {
            case "wedding":
                return new WeddingTestimonial();
            case "birthday":
                return new BirthdayTestimonial();
            case "corporate":
                return new CorporateTestimonial();
            default:
                return () -> "<div class='alert alert-warning'>No testimonial found for: " + type + "</div>";
        }
    }
}
