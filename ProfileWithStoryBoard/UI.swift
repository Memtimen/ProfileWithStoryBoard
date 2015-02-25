//
//  UI.swift
//  ProfileWithStoryBoard
//
//  Created by Maimaitiming Abudukadier on 2/24/15.
//  Copyright (c) 2015 Maimaitiming Abudukadier. All rights reserved.
//

import UIKit

class UI: NSObject {
   

    
}


//GradientLayer
@IBDesignable class GradientUP: UIView {
    var gradientLayer = CAGradientLayer()
    override func willMoveToSuperview(newSuperview: UIView?) {
        super.willMoveToSuperview(newSuperview)
        let width = UIApplication.sharedApplication().keyWindow?.frame.width
        gradientLayer.frame = CGRectMake(0, 0, width ?? 0, self.frame.height)
        gradientLayer.colors = [UIColor(white: 0, alpha: 0.3).CGColor, UIColor.clearColor().CGColor]
        gradientLayer.locations = [0,1]
        gradientLayer.startPoint = CGPointMake(0, 0) // 0,1
        gradientLayer.endPoint = CGPointMake(0, 1) // 0,0
        gradientLayer.contentsGravity = kCAGravityResize
        self.layer.addSublayer(gradientLayer)
        self.backgroundColor = UIColor.clearColor()
    }
}

@IBDesignable class GradientLower: UIView {
    var gradientLayer = CAGradientLayer()
    override func willMoveToSuperview(newSuperview: UIView?) {
        super.willMoveToSuperview(newSuperview)
        let width = UIApplication.sharedApplication().keyWindow?.frame.width
        gradientLayer.frame = CGRectMake(0, 0, width ?? 0, self.frame.height)
        gradientLayer.colors = [UIColor(white: 0, alpha: 0.3).CGColor, UIColor.clearColor().CGColor]
        gradientLayer.locations = [0,1]
        gradientLayer.startPoint = CGPointMake(0, 1) // 0,1
        gradientLayer.endPoint = CGPointMake(0, 0) // 0,0
        gradientLayer.contentsGravity = kCAGravityResize
        self.layer.addSublayer(gradientLayer)
        self.backgroundColor = UIColor.clearColor()
    }
}
