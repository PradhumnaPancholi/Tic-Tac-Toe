//
//  UIButtonExtensions.swift
//  Pradhumna_Yellow_TicTacToe
//
//  Created by Pradhumna Pancholi on 2019-06-15.
//  Copyright © 2019 Pradhumna Pancholi. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    
    //for pulse animation/effect//
    func pulsate() {
        let pulseEffect = CASpringAnimation(keyPath: "transform.scale")
        pulseEffect.duration = 0.8
        pulseEffect.fromValue = 0.85
        pulseEffect.toValue = 1
        pulseEffect.autoreverses = true
        pulseEffect.damping = 1.0
        pulseEffect.initialVelocity = 0.5
        
        //adding animation to layer//
        layer.add(pulseEffect, forKey: nil)
    }
}
