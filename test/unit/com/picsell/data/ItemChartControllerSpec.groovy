package com.picsell.data



import grails.test.mixin.*
import spock.lang.*

@TestFor(ItemChartController)
@Mock(ItemChart)
class ItemChartControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.itemChartInstanceList
            model.itemChartInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.itemChartInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            def itemChart = new ItemChart()
            itemChart.validate()
            controller.save(itemChart)

        then:"The create view is rendered again with the correct model"
            model.itemChartInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            itemChart = new ItemChart(params)

            controller.save(itemChart)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/itemChart/show/1'
            controller.flash.message != null
            ItemChart.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def itemChart = new ItemChart(params)
            controller.show(itemChart)

        then:"A model is populated containing the domain instance"
            model.itemChartInstance == itemChart
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def itemChart = new ItemChart(params)
            controller.edit(itemChart)

        then:"A model is populated containing the domain instance"
            model.itemChartInstance == itemChart
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/itemChart/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def itemChart = new ItemChart()
            itemChart.validate()
            controller.update(itemChart)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.itemChartInstance == itemChart

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            itemChart = new ItemChart(params).save(flush: true)
            controller.update(itemChart)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/itemChart/show/$itemChart.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/itemChart/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def itemChart = new ItemChart(params).save(flush: true)

        then:"It exists"
            ItemChart.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(itemChart)

        then:"The instance is deleted"
            ItemChart.count() == 0
            response.redirectedUrl == '/itemChart/index'
            flash.message != null
    }
}
