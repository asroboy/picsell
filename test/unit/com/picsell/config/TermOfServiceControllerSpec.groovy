package com.picsell.config



import grails.test.mixin.*
import spock.lang.*

@TestFor(TermOfServiceController)
@Mock(TermOfService)
class TermOfServiceControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.termOfServiceInstanceList
            model.termOfServiceInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.termOfServiceInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            def termOfService = new TermOfService()
            termOfService.validate()
            controller.save(termOfService)

        then:"The create view is rendered again with the correct model"
            model.termOfServiceInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            termOfService = new TermOfService(params)

            controller.save(termOfService)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/termOfService/show/1'
            controller.flash.message != null
            TermOfService.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def termOfService = new TermOfService(params)
            controller.show(termOfService)

        then:"A model is populated containing the domain instance"
            model.termOfServiceInstance == termOfService
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def termOfService = new TermOfService(params)
            controller.edit(termOfService)

        then:"A model is populated containing the domain instance"
            model.termOfServiceInstance == termOfService
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/termOfService/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def termOfService = new TermOfService()
            termOfService.validate()
            controller.update(termOfService)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.termOfServiceInstance == termOfService

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            termOfService = new TermOfService(params).save(flush: true)
            controller.update(termOfService)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/termOfService/show/$termOfService.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/termOfService/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def termOfService = new TermOfService(params).save(flush: true)

        then:"It exists"
            TermOfService.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(termOfService)

        then:"The instance is deleted"
            TermOfService.count() == 0
            response.redirectedUrl == '/termOfService/index'
            flash.message != null
    }
}
