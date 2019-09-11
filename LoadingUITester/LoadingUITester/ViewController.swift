//
//  ViewController.swift
//  LoadingUITester
//
//  Created by Seschwan on 9/10/19.
//  Copyright © 2019 Seschwan. All rights reserved.
//

import UIKit
import Loading_UI_Framwork

class ViewController: UIViewController {
    
    //let shapeLayer = CAShapeLayer()
    let loadingViewVC = LoadingVC()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .orange
       
        //self.addChild(loadingViewVC)
        self.view.addSubview(loadingViewVC.view)
        //loadingViewVC.addSubLayer(for: shapeLayer)
        
        // line.color = .red
    }



}

