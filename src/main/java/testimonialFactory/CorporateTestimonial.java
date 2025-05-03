package testimonialFactory;

public class CorporateTestimonial implements Testimonial {
    @Override
    public String getHTMLContent() {
        return "<div class='card'><img src='images/news.jpg' class='card-img-top'><div class='card-body'><h5>Corporate Event</h5><p>Our clients raved about the exceptional event coverage provided by Photo Studio company, praising the team’s professionalism, creativity, and attention to detail. From corporate galas to intimate weddings, customers highlighted how the photographers captured every candid moment and key highlight with stunning clarity. Many noted the seamless blend of artistic composition and natural storytelling, resulting in albums that perfectly preserved the emotion and energy of their events. Repeat clients especially appreciated the studio’s flexibility whether adjusting to last-minute schedule changes or accommodating unique themes. The quick turnaround for edited photos and the option for custom prints/framing were also frequently mentioned as standout perks. Overall, feedback emphasized that [Photo Studio Name] didn’t just document events but elevated them into timeless visual narratives, leaving guests and hosts alike thrilled.  \n" +
                "\n" +
                "Key Takeaways Embedded \n" +
                "✔\uFE0F Quality: Praise for technical skill and artistic flair.  \n" +
                "✔\uFE0F Reliability: Highlighted responsiveness and adaptability.  \n" +
                "✔\uFE0F Value-Adds: Fast delivery, customization, and emotional resonance.  \n</p></div></div>";
    }
}
