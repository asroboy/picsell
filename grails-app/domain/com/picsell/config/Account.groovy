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
        name nullable: false, unique: true
        type inList: ['Individual', 'On Demand', 'Team', 'Enterprice']
        lisence inList: ['Annually', 'Monthly', 'Daily', 'Standard', 'Enhance', 'Enterprice']
        inCurrency inList: ['IDR', 'USD', 'SGD']
        info nullable: true
    }


}
