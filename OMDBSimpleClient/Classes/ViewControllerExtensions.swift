//
//  ViewControllerExtensions.swift
//  OMDBSimpleClient
//
//  Created by Daniel San on 29/10/17.
//  Copyright © 2017 Daniel San. All rights reserved.
//

import UIKit

extension UIViewController {

    func add(asChildViewController viewController: UIViewController, to view: UIView) {
        addChildViewController(viewController)
        
        view.addSubview(viewController.view)
        
        viewController.view.frame = view.bounds
        viewController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        viewController.didMove(toParentViewController: self)
    }
    
}
