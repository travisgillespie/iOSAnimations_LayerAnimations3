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
        
        return gradientLayer
    }()
    
    @IBInspectable var text: String! {
        didSet {
            setNeedsDisplay()
        }
    }
    
    override func layoutSubviews() {
        layer.borderColor = UIColor.greenColor().CGColor
    }
    
    override func didMoveToWindow() {
        super.didMoveToWindow()
    }
}