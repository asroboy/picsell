package com.picsell.data

import com.picsell.security.User

class FavoriteCategories {

    Category category
    User user

    static constraints = {
        category nullable: false
        user nullable: false
    }
}
