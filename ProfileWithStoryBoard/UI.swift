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
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = self.bounds
        gradientLayer.colors = [UIColor(white: 0, alpha: 0.5).CGColor, UIColor(white: 0, alpha: 0).CGColor]
        gradientLayer.locations = [0,1]
        gradientLayer.startPoint = CGPointMake(0,0) // 0,1
        gradientLayer.endPoint = CGPointMake(0, 1) // 0,0
        gradientLayer.contentsGravity = kCAGravityResize
        self.layer.addSublayer(gradientLayer)
        self.backgroundColor = UIColor.clearColor()
    }
}

@IBDesignable class GradientLower: UIView {
    var gradientLayer = CAGradientLayer()
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = self.bounds
        gradientLayer.colors = [UIColor(white: 0, alpha: 0.5).CGColor, UIColor(white: 0, alpha: 0).CGColor]
        gradientLayer.locations = [0,1]
        gradientLayer.startPoint = CGPointMake(0, 1) // 0,1
        gradientLayer.endPoint = CGPointMake(0, 0) // 0,0
        gradientLayer.contentsGravity = kCAGravityResize
        self.layer.addSublayer(gradientLayer)
        self.backgroundColor = UIColor.clearColor()
    }
}


