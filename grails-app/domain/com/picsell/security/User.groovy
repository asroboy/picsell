package com.picsell.security

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

@EqualsAndHashCode(includes='username')
@ToString(includes='username', includeNames=true, includePackage=false)
class User implements Serializable {

	private static final long serialVersionUID = 1

	transient springSecurityService


	// regular generated code should still be included
	boolean beforeInsertRunOnce = false
	boolean beforeUpdateRunOnce = false

	String firstName
	String lastName
	String username
	String password
	String email

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


	boolean enabled = true
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	User(String username, String password) {
		this()
		this.username = username
		this.password = password
	}

	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this)*.role
	}

	def beforeInsert() {
		if (! beforeInsertRunOnce) {
			beforeInsertRunOnce = true
			encodePassword()
		}

	}

	def beforeUpdate() {
		if (isDirty('password') && ! beforeUpdateRunOnce ) {
			beforeUpdateRunOnce = true
			encodePassword()
		}
	}

	def afterInsert() {
		beforeInsertRunOnce = false
	}

	def afterUpdate() {
		beforeUpdateRunOnce = false
	}


	protected void encodePassword() {
		password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password

	}

	static transients = ['springSecurityService']

	static constraints = {
		username blank: false, unique: true
		password blank: false
		email blank: false, unique: true

		firstName nullable: false
		lastName nullable: false
		alamat nullable: true
		kecamatan nullable: true
		kotaKabupaten nullable: true
		provinsi nullable: true
		jenisKartuIdentitas nullable: true, blank: true,  inList: ["KTP", "SIM", "Passport", "Kartu Pelajar"]
		nomorIdIdentitas nullable: true
		noTelp nullable: true
		tempatLahir nullable: true
		tglLahir nullable: true
		fotoProfile nullable: true, maxSize: 1073741824
	}

	static mapping = {
        table 'tbmuser'
		password column: '`password`'
	}


}
