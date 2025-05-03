package testimonialFactory;

public class BirthdayTestimonial implements Testimonial {
    @Override
    public String getHTMLContent() {
        return "<div class='card'><img src='images/birthday.jpg' class='card-img-top'><div class='card-body'><h5>Birthday</h5><p>My son's birthday was beautifully captured!</p>" +
                "<p> The birthday celebrant and guests were thrilled with Photo studio  vibrant coverage, which transformed precious moments into a visual celebration. Customers praised the photographers’ ability to blend into the background while still capturing every heartfelt detail—from candle-lit cake moments to spontaneous laughter among friends. The team’s playful yet professional approach put everyone at ease, resulting in natural, joy-filled shots. Parents especially loved the candid snaps of children’s wide-eyed excitement, while the birthday star appreciated the flattering portraits and creative compositions. Quick digital previews and a beautifully curated album (with options for custom backdrops or filters) added a personalized touch. Many noted it felt like having a ‘friend with a talent for photography’ documenting the day, making the final gallery not just " +
                "photos but a storytelling keepsake of their unforgettable celebration.</p></div></div>";
    }
}
