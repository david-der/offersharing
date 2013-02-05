package offersharing

class Account {

    Date memberSinceDate
    Date lastPaymentDate
    Date nextPaymentDate
    Date expirationDate
    double totalBalance
    double nextPaymentBalance
    double subscriptionPerMonth
    int offersAllowed
    String ccNumber
    int expMonth
    int expYear
    int secCode

    static constraints = {
        lastPaymentDate(nullable: true)
        nextPaymentDate(nullable: true)
    }
}
