//
//  ViewController.swift
//  SwiftUIKitRickAndMortyApp
//
//  Created by Emre Yıldız on 3.06.2023.
//

import UIKit

class RMTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpTabps()
        
    }

    private func setUpTabps(){
        let charaterVC = RMCharacterViewController()
        let locationVC = RMLocationViewController()
        let epsiodeVC = RMEpsiodeViewController()
        let settingVC = RMSettingsViewController()
        
        charaterVC.navigationItem.largeTitleDisplayMode = .automatic
        locationVC.navigationItem.largeTitleDisplayMode = .automatic
        epsiodeVC.navigationItem.largeTitleDisplayMode = .automatic
        settingVC.navigationItem.largeTitleDisplayMode = .automatic
        
        charaterVC.title = "Characters"
        locationVC.title = "Location"
        epsiodeVC.title = "Epsiode"
        settingVC.title = "Settings"
        
        let nav1 = UINavigationController(rootViewController: charaterVC)
        let nav2 = UINavigationController(rootViewController: locationVC)
        let nav3 = UINavigationController(rootViewController: epsiodeVC)
        let nav4 = UINavigationController(rootViewController: settingVC)
        
        nav1.tabBarItem = UITabBarItem( title: "Characters", image: UIImage(systemName: "person"), tag: 1
        )
        nav2.tabBarItem = UITabBarItem( title: "Location", image: UIImage(systemName: "globe"), tag: 2
        )
        nav3.tabBarItem = UITabBarItem( title: "Epsiode", image:  UIImage(systemName: "tv"), tag: 3
        )
        nav4.tabBarItem = UITabBarItem( title: "Settings", image:  UIImage(systemName: "gear"), tag: 4
        )
        
        for nav in [nav1,nav2,nav3,nav4]{
            nav.navigationBar.prefersLargeTitles = true
        }
        
        
        setViewControllers([nav1,nav2,nav3,nav4], animated: true)
    }
}

