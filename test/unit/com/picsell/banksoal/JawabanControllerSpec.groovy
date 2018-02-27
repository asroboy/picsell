package com.picsell.banksoal



import grails.test.mixin.*
import spock.lang.*

@TestFor(JawabanController)
@Mock(Jawaban)
class JawabanControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.jawabanInstanceList
            model.jawabanInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.jawabanInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            def jawaban = new Jawaban()
            jawaban.validate()
            controller.save(jawaban)

        then:"The create view is rendered again with the correct model"
            model.jawabanInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            jawaban = new Jawaban(params)

            controller.save(jawaban)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/jawaban/show/1'
            controller.flash.message != null
            Jawaban.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def jawaban = new Jawaban(params)
            controller.show(jawaban)

        then:"A model is populated containing the domain instance"
            model.jawabanInstance == jawaban
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def jawaban = new Jawaban(params)
            controller.edit(jawaban)

        then:"A model is populated containing the domain instance"
            model.jawabanInstance == jawaban
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/jawaban/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def jawaban = new Jawaban()
            jawaban.validate()
            controller.update(jawaban)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.jawabanInstance == jawaban

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            jawaban = new Jawaban(params).save(flush: true)
            controller.update(jawaban)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/jawaban/show/$jawaban.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/jawaban/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def jawaban = new Jawaban(params).save(flush: true)

        then:"It exists"
            Jawaban.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(jawaban)

        then:"The instance is deleted"
            Jawaban.count() == 0
            response.redirectedUrl == '/jawaban/index'
            flash.message != null
    }
}
