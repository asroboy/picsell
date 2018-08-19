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

	String username
	String password
	String email
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
		password blank: false
	}

	static mapping = {
        table 'tbmuser'
		password column: '`password`'
	}


}
