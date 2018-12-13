package com.picsell.data

class CurrencyRates {

    String name
    double rateToUSD

    static constraints = {
        name nullable: false
    }
}
