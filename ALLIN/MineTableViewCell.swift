//
//  MineTableViewCell.swift
//  ALLIN
//
//  Created by Apple on 2017/4/18.
//  Copyright © 2017年 donghao. All rights reserved.
//

import UIKit

class MineTableViewCell: UITableViewCell {


    var titleLabel:UILabel?
    var iconImage:UIImageView?

    override init(style:UITableViewCellStyle, reuseIdentifier:String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setUpUI();
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpUI() {
    
        titleLabel=UILabel.init()
        titleLabel?.frame=CGRect(x:55,y:10,width:SCREENW-45,height:40)
        titleLabel?.textColor=UIColor.gray
        titleLabel?.font=UIFont.systemFont(ofSize: 15)
        titleLabel?.textAlignment=NSTextAlignment.left
        self.addSubview(titleLabel!)
        
        iconImage=UIImageView.init()
        iconImage?.frame=CGRect(x:15,y:15,width:30,height:30)
        iconImage?.image=UIImage.init(named: "mine_settingIcon2_press")
        self.addSubview(iconImage!)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
