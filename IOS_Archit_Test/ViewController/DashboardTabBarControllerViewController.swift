//
//  DashboardTabBarControllerViewController.swift
//  IOS_Archit_Test
//
//  Created by Archit Rai Saxena on 16/11/20.
//  Copyright © 2020 Archit. All rights reserved.
//

import UIKit

class DashboardTabBarControllerViewController: UITabBarController, UITabBarControllerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        setUpNavigationBar()
        delegate = self
    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        super.viewWillAppear(animated)
        let item1 = HomeViewController()
        let icon1 = UITabBarItem(title: "", image: UIImage(named: "home.png"), selectedImage: UIImage(named: "home.png"))
        item1.tabBarItem = icon1
        
        //HomeViewController
        let item2 = ViewController()
               let icon2 = UITabBarItem(title: "", image: UIImage(named: "search.png"), selectedImage: UIImage(named: "search.png"))
               item2.tabBarItem = icon2
        
        
        let item3 = ViewController_3()
                      let icon3 = UITabBarItem(title: "", image: UIImage(named: "Stock.png"), selectedImage: UIImage(named: "Stock.png"))
                      item3.tabBarItem = icon3
        
        let item4 = ViewController_4()
                      let icon4 = UITabBarItem(title: "", image: UIImage(named: "group.png"), selectedImage: UIImage(named: "group.png"))
                      item4.tabBarItem = icon4
        
        let item5 = ViewController_5()
                      let icon5 = UITabBarItem(title: "", image: UIImage(named: "lightbulb.png"), selectedImage: UIImage(named: "lightbulb.png"))
                      item5.tabBarItem = icon5
        
        
        
        let controllers = [item1,item2,item3,item4,item5]  //array of the root view controllers displayed by the tab bar interface
        self.viewControllers = controllers
    }
    private func setUpNavigationBar() {
           self.navigationController?.setNavigationBarHidden(false, animated: true)
         //  self.navigationController!.isNavigationBarHidden = false
           self.navigationItem.title = "Home"
           self.navigationItem.leftBarButtonItem =
               
               UIBarButtonItem(image: UIImage(named: "HamburgerIcon")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleMenu))
           self.navigationItem.rightBarButtonItem =
               
               UIBarButtonItem(image: UIImage(named: "Notification")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleMenu))
       }
    //dummy methods for selectors
       @objc private func handleMenu() {
           AlertController.shared.showAlertWithMessage(alertMess: "Testing_IOS", viewController: self)
           
       }
    //Delegate methods
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        print("Should select viewController: \(viewController.title ?? "") ?")
        return true;
    }
}
