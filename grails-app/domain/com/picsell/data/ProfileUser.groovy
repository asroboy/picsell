package com.picsell.data

import com.picsell.security.User

class ProfileUser {

    User user
    String namaDepan
    String namaBelakang
    String alamat
    String kecamatan
    String kotaKabupaten
    String provinsi
    String jenisKartuIdentitas
    String nomorIdIdentitas

    String noTelp
    String tempatLahir
    Date tglLahir

    byte[] fotoProfile

    static constraints = {
        namaDepan nullable: false
        namaBelakang nullable: false

        alamat nullable: false
        kecamatan nullable: false
        kotaKabupaten nullable: false
        provinsi nullable: false
        jenisKartuIdentitas inList: ["KTP", "SIM", "Passport", "Kartu Pelajar"]
        nomorIdIdentitas nullable: false
        noTelp nullable: true
        tempatLahir nullable: false
        tglLahir nullable: false
        fotoProfile nullable: true, maxSize: 1073741824
    }
}
