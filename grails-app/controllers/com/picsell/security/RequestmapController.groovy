package com.picsell.security

import org.springframework.http.HttpMethod


class RequestmapController extends grails.plugin.springsecurity.ui.RequestmapController {

    def index(Integer max){
        def results = doSearch { ->
            like 'configAttribute', delegate
            like 'url', delegate
            if (param('httpMethod')) {
                eq 'httpMethod', HttpMethod.valueOf(params.httpMethod), delegate
            }
        }

        [results: results, totalCount: results.totalCount, hasHttpMethod: hasHttpMethod]

//        renderSearch([results: results, totalCount: results.totalCount, hasHttpMethod: hasHttpMethod],
//                'configAttribute', 'httpMethod', 'url')
    }
}
