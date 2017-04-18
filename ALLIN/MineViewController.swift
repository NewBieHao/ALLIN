//
//  MainViewController.swift
//  ALLIN
//
//  Created by Apple on 2017/4/13.
//  Copyright © 2017年 donghao. All rights reserved.
//

import UIKit

class MineViewController: BaseViewController , UITableViewDataSource, UITableViewDelegate {

    var myTableView:UITableView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor=UIColor.white
        
        self.setUpTable()
        
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return 10
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.0001
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.0001
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return nil
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return nil
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let identifier = "mycell"
        let cell = MineTableViewCell(style:UITableViewCellStyle.subtitle,reuseIdentifier:identifier)
        if(indexPath.row==0){
        
            cell.backgroundColor=UIColor.orange
        }
        cell.titleLabel?.text="12334"
        
        return cell;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
        
    }
    func setUpTable(){

        myTableView=UITableView.init(frame: CGRect(x:0,y:0,width:SCREENW,height:SCREENH), style: UITableViewStyle.grouped)
        myTableView!.delegate=self
        myTableView!.dataSource=self
        myTableView?.backgroundColor=UIColor.blue
        self.view.addSubview(myTableView!)
        
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
