package facade;

public class PaymentFacade {
    private static final String PAYPAL_LINK = "https://paypal.me/Chukwu387894?country.x=GB&locale.x=en_GB";

    public String getPayPalRedirectURL() {
        // Here we could add logic like calculating total, generating invoice ID, etc.
        return PAYPAL_LINK;
    }
}


