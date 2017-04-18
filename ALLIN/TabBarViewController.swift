//
//  TabBarViewController.swift
//  ALLIN
//
//  Created by Apple on 2017/4/13.
//  Copyright © 2017年 donghao. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tabBar = UITabBar.appearance()
//        tabBar.tintColor = YMColor(r: 245, g: 90, b: 93, a: 1/0)
        tabBar.tintColor=UIColor(red: 245 / 255.0, green: 90 / 255.0, blue: 93 / 255.0, alpha: 1)

        addChildViewControllers()
    }
    
    /**
     * 添加子控制器
     */
    private func addChildViewControllers() {
        addChildViewController(childController: HomeViewController(), title: "home", imageName: "TabBar_home_23x23_")
        addChildViewController(childController: ProductViewController(), title: "产品", imageName: "TabBar_gift_23x23_")
        addChildViewController(childController: CategoryViewController(), title: "分类", imageName: "TabBar_category_23x23_")
        addChildViewController(childController: MineViewController(), title: "我的", imageName: "TabBar_me_boy_23x23_")
    }
    
    /**
     # 初始化子控制器
     
     - parameter childControllerName: 需要初始化的控制器
     - parameter title:               标题
     - parameter imageName:           图片名称
     */
    private func addChildViewController(childController: UIViewController, title: String, imageName: String) {
        childController.tabBarItem.image = UIImage(named: imageName)
        childController.tabBarItem.selectedImage = UIImage(named: imageName + "selected")
        childController.title = title
        let navC = MyNavigationViewController(rootViewController: childController)
        addChildViewController(navC)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
