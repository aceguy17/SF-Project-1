public with sharing class SampleApexClass {

    /**
     * Returns a list of Contacts for a given Account ID
     *
     * @param accountId - The ID of the Account
     * @return List of Contacts related to the Account
     */
    public static List<Contact> getContactsForAccount(Id accountId) {
        if (accountId == null) {
            return new List<Contact>();
        }

        return [
            SELECT Id, FirstName, LastName, Email
            FROM Contact
            WHERE AccountId = :accountId
            ORDER BY LastName
        ];
    }

    /**
     * Returns a greeting message
     *
     * @param name - Name of the person
     * @return Greeting string
     */
    public static String sayHello(String name) {
        if (String.isBlank(name)) {
            return 'Hello!';
        }
        return 'Hello, ' + name + '!';
    }
}