package grails_demo

class User {

    String username;
    String password;
    String role;
    String emailAddress;

    static constraints = {
        username(blank: false, minSize: 3 )
        password(blank: false, minSize: 3)
        role(blank: false , inList: ["Admin","User","Super-admin"])
        emailAddress(email: true)
    }

}
