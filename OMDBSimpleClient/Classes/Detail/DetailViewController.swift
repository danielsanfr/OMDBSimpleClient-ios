//
//  DetailViewController.swift
//  OMDBSimpleClient
//
//  Created by Daniel San on 28/10/17.
//  Copyright © 2017 Daniel San. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    init() {
        super.init(nibName: "DetailViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
