//
//  ViewController.swift
//  OMDBSimpleClient
//
//  Created by Daniel San on 28/10/17.
//  Copyright © 2017 Daniel San. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var content: UIView!
    @IBOutlet weak var tabBar: UITabBar!
    @IBOutlet weak var tabSearch: UITabBarItem!
    @IBOutlet weak var tabFavorites: UITabBarItem!

    private lazy var searchViewController = UINavigationController(rootViewController: SearchViewController())
    private lazy var favoritesViewController = UINavigationController(rootViewController: FavoritesViewController())

    init() {
        super.init(nibName: "MainViewController", bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.delegate = self
        tabBar.selectedItem = tabSearch
        tabBar(tabBar, didSelect: tabSearch)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension MainViewController : UITabBarDelegate {
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        switch item {
        case tabSearch: add(asChildViewController: searchViewController, to: content)
        case tabFavorites: add(asChildViewController: favoritesViewController, to: content)
        default: break
        }
    }
}
