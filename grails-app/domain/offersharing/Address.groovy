package offersharing

class Address {

    String addr1
    String addr2
    String city
    String state
    String zip

    static constraints = {
        addr2(nullable: true)
    }
}
