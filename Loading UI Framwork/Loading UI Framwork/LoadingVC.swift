//
//  LoadingVC.swift
//  Loading UI Framwork
//
//  Created by Seschwan on 9/10/19.
//  Copyright © 2019 Seschwan. All rights reserved.
//

import UIKit

public class LoadingVC: UIViewController {

    // MARK: - Constants
    let shapeLayer = CAShapeLayer()
    
    override public func viewDidLoad() {
        super.viewDidLoad()

        
        addSubLayer(for: shapeLayer)
       
    }

    // MARK: - Methods
    
    public func addSubLayer(for shapeLayer: CAShapeLayer) {
        let center = view.center
        let radius = CGFloat(50)
        let startAngle = -CGFloat.pi / 2 // Should take it back 90º to start at 12:00
        let endAngle = CGFloat.pi * 2
        
        let circularPath = UIBezierPath(arcCenter: center,
                                        radius: radius,
                                        startAngle: startAngle,
                                        endAngle: endAngle,
                                        clockwise: true)
        
        shapeLayer.path = circularPath.cgPath // This is the path defined to where our circle goes.
        shapeLayer.fillColor = UIColor.clear.cgColor // This make the circle clear fill color.
        shapeLayer.strokeColor = UIColor.blue.cgColor // The color of the line.
        shapeLayer.lineWidth = 5 // This is the size of the line.
        shapeLayer.strokeEnd = 0
        shapeLayer.lineCap = CAShapeLayerLineCap.round // Makes the end of the animation line rounded.
        
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.toValue = 1
        animation.duration = 1
        //animation.fillMode = CAMediaTimingFillMode.forwards
        animation.isRemovedOnCompletion = false
        animation.repeatDuration = 10
        
        shapeLayer.add(animation, forKey: "BasicAnimation")
        
        view.layer.addSublayer(shapeLayer)
        
    }
   

}
