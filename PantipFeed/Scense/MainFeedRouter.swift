//
//  MainFeedRouter.swift
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

@objc protocol MainFeedRoutingLogic
{
    //func routeToSomewhere(segue: UIStoryboardSegue?)
}

protocol MainFeedDataPassing
{
    var dataStore: MainFeedDataStore? { get }
}

class MainFeedRouter: NSObject, MainFeedRoutingLogic, MainFeedDataPassing
{
    weak var viewController: MainFeedViewController?
    var dataStore: MainFeedDataStore?
    
    // MARK: Routing
    
    //func routeToSomewhere(segue: UIStoryboardSegue?)
    //{
    //  if let segue = segue {
    //    let destinationVC = segue.destination as! SomewhereViewController
    //    var destinationDS = destinationVC.router!.dataStore!
    //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
    //  } else {
    //    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    //    let destinationVC = storyboard.instantiateViewController(withIdentifier: "SomewhereViewController") as! SomewhereViewController
    //    var destinationDS = destinationVC.router!.dataStore!
    //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
    //    navigateToSomewhere(source: viewController!, destination: destinationVC)
    //  }
    //}
    
    // MARK: Navigation
    
    //func navigateToSomewhere(source: MainFeedViewController, destination: SomewhereViewController)
    //{
    //  source.show(destination, sender: nil)
    //}
    
    // MARK: Passing data
    
    //func passDataToSomewhere(source: MainFeedDataStore, destination: inout SomewhereDataStore)
    //{
    //  destination.name = source.name
    //}
}
