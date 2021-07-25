//
//  MainFeedInteractor.swift
//  PantipFeed
//
//  Created by thanathip.kumnarai on 18/7/2564 BE.
//  Copyright (c) 2564 BE ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol MainFeedBusinessLogic {
    func doSomething(request: MainFeed.Something.Request)
    func getTopicsData(request: MainFeed.GetTopicData.Request)
    func getTagsData(request: MainFeed.GetTagsData.Request)
}

protocol MainFeedDataStore {
    //var name: String { get set }
}

class MainFeedInteractor: MainFeedBusinessLogic, MainFeedDataStore {
    var presenter: MainFeedPresentationLogic?
    var worker: MainFeedWorker?
    //var name: String = ""
    
    // MARK: Do something
    
    func doSomething(request: MainFeed.Something.Request)
    {
        worker = MainFeedWorker()
        worker?.doSomeWork()
        
        let response = MainFeed.Something.Response()
        presenter?.presentSomething(response: response)
    }
    
    func getTopicsData(request: MainFeed.GetTopicData.Request) {
        worker = MainFeedWorker()
        worker?.fetchTopics(completionHandler: { (topic) in
            guard let isSuccess = topic?.success else {
                return
            }
            if isSuccess {
                if let topicData = topic?.data {
                    self.presenter?.presentTopic(response: MainFeed.GetTopicData.Response(topicsResponse: topicData))
                }
            } else {
                self.presenter?.presentError(errorMessage: "Service fail")
            }
        }, errorHandler: { (error) in
            self.presenter?.presentError(errorMessage: error?.localizedDescription ?? "")
        })
    }
    
    func getTagsData(request: MainFeed.GetTagsData.Request) {
        worker = MainFeedWorker()
        worker?.fetchTags(completionHandler: { (tagData) in
            self.presenter?.presentTag(response: MainFeed.GetTagsData.Response(tagsResponse: tagData))
        }, errorHandler: { (error) in
            self.presenter?.presentError(errorMessage: error?.localizedDescription ?? "")
        })
    }
}
