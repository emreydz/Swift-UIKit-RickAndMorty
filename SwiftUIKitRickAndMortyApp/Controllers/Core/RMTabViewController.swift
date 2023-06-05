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
        
        charaterVC.title = "Characters"
        locationVC.title = "Loactions"
        epsiodeVC.title = "Epsiode"
        settingVC.title = "Settings"
        
        let nav1 = UINavigationController(rootViewController: charaterVC)
        let nav2 = UINavigationController(rootViewController: locationVC)
        let nav3 = UINavigationController(rootViewController: epsiodeVC)
        let nav4 = UINavigationController(rootViewController: settingVC)
        
        
        setViewControllers([nav1,nav2,nav3,nav4], animated: true)
    }
}

