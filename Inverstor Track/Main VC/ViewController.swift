//
//  ViewController.swift
//  Inverstor Track
//
//  Created by leyo babu on 16/11/20.
//  Copyright © 2020 leyo babu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let tabImageArray = ["house","magnifyingglass","chart.bar","person","lightbulb"]
    override func viewDidLoad() {
        super.viewDidLoad()

       DispatchQueue.main.async {
           self.didTapButton()
       }
    }
    
    @objc func didTapButton(){
        let tabBarVC = UITabBarController()
        let vc1 = HomeViewController()
        let vc2 = SecondVC()
        let vc3 = ThirdVC()
        let vc4 = FourthC()
        let vc5 = FifthVC()
        
        tabBarVC.setViewControllers([vc1,vc2,vc3,vc4,vc5], animated: true)
        guard let items = tabBarVC.tabBar.items else {
            return
        }
        for i in 0..<items.count {
            items[i].image = UIImage(systemName: tabImageArray[i])
        }
        tabBarVC.modalPresentationStyle = .fullScreen
        present(tabBarVC, animated: false)
    }
    
    class SecondVC:UIViewController{
        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .blue
        }
    }
    class ThirdVC:UIViewController{
        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .red
        }
    }
    class FourthC:UIViewController{
        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .green
        }
    }
    class FifthVC:UIViewController{
        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .yellow
        }
    }

    

}
