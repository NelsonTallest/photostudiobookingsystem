
package strategy;

public abstract class ContactStrategy {
    public abstract void contactUser();

    // Optional shared method (e.g., logging)
    public void logContactAction() {
        System.out.println("Contact action triggered.");
    }
}
