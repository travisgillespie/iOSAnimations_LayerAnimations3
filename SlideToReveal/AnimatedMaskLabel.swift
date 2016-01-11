//
//  AnimatedMaskLabel.swift
//  SlideToReveal
//
//  Created by Travis Gillespie on 1/11/16.
//  Copyright © 2016 Travis Gillespie. All rights reserved.
//

import UIKit
import QuartzCore

@IBDesignable
class AnimatedMaskLabel: UIView {
    
    let gradientLayer: CAGradientLayer = {
        let gradientLayer = CAGradientLayer()
        
        //Configure the gradient layer
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        
        let colors = [
            UIColor.blackColor().CGColor,
            UIColor.whiteColor().CGColor,
            UIColor.blackColor().CGColor
        ]
        
        gradientLayer.colors = colors
        
        let locations = [
            0.25,
            0.5,
            0.75
        ]
        
        gradientLayer.locations = locations
        
        return gradientLayer
    }()
    
    @IBInspectable var text: String! {
        didSet {
            setNeedsDisplay()
        }
    }
    
    override func layoutSubviews() {
        layer.borderColor = UIColor.greenColor().CGColor
        gradientLayer.frame = bounds
    }
    
    override func didMoveToWindow() {
        super.didMoveToWindow()
        layer.addSublayer(gradientLayer)
    }
}