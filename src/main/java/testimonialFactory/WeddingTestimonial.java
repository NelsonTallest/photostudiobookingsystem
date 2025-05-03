package testimonialFactory;

public class WeddingTestimonial implements Testimonial {
    @Override
    public String getHTMLContent() {
        return "<div class='card'><img src='images/wedding.jpg' class='card-img-top'><div class='card-body'><h5>Wedding</h5><p>They made our special day unforgettable!</p>" +
                "<p>\n" +
                "We were absolutely blown away by Photo Studio  video coverage, " +
                "it wasn’t just a recording, but a cinematic masterpiece that brought our wedding event to life! " +
                "From the dramatic drone shots to the intimate close-ups, every frame felt intentional " +
                "and emotionally charged. The team’s ability to weave together laughter, tears, " +
                "and spontaneous moments into a fluid story left us speechless. " +
                "The soundtrack choices, seamless editing, and even the subtle color grading made it feel like a professional film, our guests still ask where we ‘hired Hollywood talent!’ " +
                "Beyond the artistry, their patience (even with our rowdy toddler during family shots!) " +
                "and quick turnaround for the highlight reel made the experience stress-free." +
                " We’ve watched the video a dozen times and catch new details each time—it’s the closest thing to reliving the day. " +
                "If you want more than just ‘footage’ " +
                "but a legacy piece you’ll treasure forever, book them immediately\n </p></div></div>";
    }
}
