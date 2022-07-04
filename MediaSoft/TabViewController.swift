//
//  TabViewController.swift
//  MediaSoft
//
//  Created by Armen Safarian on 27.06.22.
//

import UIKit
class TabViewController: UITabBarController {
    

    
    @IBOutlet weak var photosLabel: UITabBar!
    @IBOutlet weak var favouritesLabel: UITabBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let photosVC = PhotosCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())
        let navigationVC = UINavigationController(rootViewController: photosVC)
        navigationVC.tabBarItem.title = "Photos"
        navigationVC.tabBarItem.image = UIImage(named: "Image")
        
        let favouritesVC = FavouritesCollectionViewController()
        favouritesVC.tabBarItem.title = "Favourites"
        favouritesVC.tabBarItem.image = UIImage(named: "heart")
        
        viewControllers  = [
            navigationVC,
            favouritesVC
        ]
    }

   
}

