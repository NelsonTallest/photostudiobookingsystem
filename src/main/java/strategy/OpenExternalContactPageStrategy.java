
package strategy;

public class OpenExternalContactPageStrategy extends ContactStrategy {

    @Override
    public void contactUser() {
        logContactAction();
        System.out.println("Redirecting to external contact page...");
    }

    public String getRedirectUrl() {
        return "https://681585bb7d36f7a1e2489c7e--coruscating-dieffenbachia-dc0851.netlify.app/";
    }
}
