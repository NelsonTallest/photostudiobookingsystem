package facade;

public class PaymentFacade {
    private static final String PAYPAL_LINK = "https://paypal.me/Chukwu387894?country.x=GB&locale.x=en_GB";
    private static final String CREDIT_CARD_LINK = "https://681565fbf9768184e79ba110--splendorous-sherbet-d1bbd9.netlify.app/";
    private static final String BANK_TRANSFER_LINK = "https://68156895f9768189e59b9f71--stunning-sawine-833c6b.netlify.app/";
    private static final String PHOTO_VIDEO_TESTIMONIALS_LINK = "testimonial.jsp";


    public String getPayPalRedirectURL() {
        return PAYPAL_LINK;
    }

    public String getCreditCardRedirectURL() {
        return CREDIT_CARD_LINK;
    }

    public String getBankTransferRedirectURL() {
        return BANK_TRANSFER_LINK;
    }

    public String getPhotoVideoTestimonialsURL() {
        return PHOTO_VIDEO_TESTIMONIALS_LINK;
    }
}
