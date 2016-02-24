//
//  YNNJTTabBar.swift
//  YNCustomTabBar
//
//  Created by 农盟 on 15/11/11.
//  Copyright © 2015年 农盟. All rights reserved.
//

import UIKit

class YNNJTTabBar: UITabBar {
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.addSubview(askQuestionButton)
    }

    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let width = self.bounds.width / CGFloat(buttonCount)
        let height = self.bounds.height
        let frame = CGRect(x: 0, y: 0, width: width, height: height)
        
        var index: CGFloat = 0
        
        //设置4个item的frame
        for view in self.subviews {
        
            if view is UIControl && !(view is UIButton) {
            
                view.frame = CGRectOffset(frame, index * width, 0)
                
                index += (index == 1) ? 2 : 1
            }
            
            
        }
        
        //设置askQuestionButton的frame
        askQuestionButton.frame = frame
        askQuestionButton.center = CGPoint(x: self.bounds.width * 0.5, y: self.bounds.height * 0.5)
        
        
                print(self.subviews as NSArray)
        
    }
    
    
    private let buttonCount = 5
    
    let askQuestionButton: UIButton = {
    
        let tempView = UIButton()
        
        tempView.setBackgroundImage(UIImage(named: "tabbar_compose_button_os7"), forState: .Normal)
        tempView.setBackgroundImage(UIImage(named: "tabbar_compose_button_highlighted_os7"), forState: .Highlighted)
        
        tempView.setImage(UIImage(named: "tabbar_compose_icon_add_os7"), forState: .Normal)
        tempView.setImage(UIImage(named: "tabbar_compose_icon_add_highlighted_os7"), forState: .Highlighted)
        
        return tempView
    }()
    
}
