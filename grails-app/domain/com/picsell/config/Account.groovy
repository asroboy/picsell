package com.picsell.config

class Account {

    String name
    String type
    String lisence
    int maxImages
    boolean unlimitedImages
    int maxTeamUser
    boolean allowMoreUser
    int price
    String inCurrency
    String info
    static constraints = {
        name nullable: false
        type inList: ['Subscription', 'On Demand', 'Team', 'Enterpricce Plan']
        lisence inList: ['Annual/Monthly', 'Standard/Enhance', 'Standard License', 'Enterpricce']
        inCurrency inList: ['IDR', 'USD', 'SGD']
        info nullable: true
    }


}
