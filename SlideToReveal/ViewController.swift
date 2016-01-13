//
//  ViewController.swift
//  SlideToReveal
//
//  Created by Travis Gillespie on 1/11/16.
//  Copyright © 2016 Travis Gillespie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var slideView: AnimatedMaskLabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        let swipe = UISwipeGestureRecognizer(target: self, action: "didSlide")
        swipe.direction = .Right
        slideView.addGestureRecognizer(swipe)
        
    }

    func didSlide() {
        // reveal the meme upon successful slide
        let image = UIImageView(image: UIImage(named: "meme"))
        image.center = view.center
        image.center.x += view.bounds.size.width
        view.addSubview(image)
        
        UIView.animateWithDuration(0.33, delay: 0.0, options: [], animations: {
            self.time.center.y -= 200.0
            self.slideView.center.y += 200.0
            image.center.x -= self.view.bounds.size.width
        }, completion: nil)
        
        UIView.animateWithDuration(0.33, delay: 1.0, options: [], animations: {
                self.time.center.y += 200.0
                self.slideView.center.y -= 200.0
                image.center.x += self.view.bounds.size.width
            }, completion: {_ in
                image.removeFromSuperview()
        })
    }
}

