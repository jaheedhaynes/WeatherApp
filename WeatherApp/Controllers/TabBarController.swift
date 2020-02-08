//
//  TabBarController.swift
//  WeatherApp
//
//  Created by Jaheed Haynes on 2/7/20.
//  Copyright © 2020 David Rifkin. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    let dataPersistence = PersistenceHelper(filename: "favorite.plist")
    
    private lazy var mainVC: WeatherViewController = {
        
        let vc = WeatherViewController()
        
        vc.tabBarItem = UITabBarItem(title: "Weather", image: UIImage(systemName: "mic.fill"), tag: 0)

        return vc
    }()
    
    private lazy var favVC: FavoriteViewController = {
        
        let vc = FavoriteViewController()
        
        vc.tabBarItem = UITabBarItem(title: "Favorites", image: UIImage(systemName: "heart"), tag: 1)

        return vc
    }()
    
    let detailVC = DetailViewController()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainVC.dataPersistence = dataPersistence
        detailVC.dataPersistence = dataPersistence
        favVC.dataPersistence = dataPersistence
        viewControllers = [mainVC,favVC]
    }


}
