//
//  RootCoordinator.swift
//  RootCoordinatorTemplate
//
//  Created by Farhandika on 26/03/22.
//

import UIKit

class RootCoordinator {
    var window:UIWindow?
    
    private let navigationController = UINavigationController()
    
    init(window:UIWindow?){
        self.window = window
    }
    
    public func start() {
        window?.rootViewController = navigationController
        
        /// change if needed, this will be your initial view controller
        let vc = ViewController()
        navigationController.pushViewController(vc, animated: true)
        window?.makeKeyAndVisible()
    }
}
