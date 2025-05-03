// context/ContactContext.java
package context;

import strategy.ContactStrategy;

public class ContactContext {
    private ContactStrategy contactStrategy;

    public void setContactStrategy(ContactStrategy strategy) {
        this.contactStrategy = strategy;
    }

    public void executeStrategy() {
        if (contactStrategy != null) {
            contactStrategy.contactUser();
        }
    }
}
