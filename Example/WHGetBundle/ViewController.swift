//
//  ViewController.swift
//  WHGetBundle
//
//  Created by wanghonggit on 05/31/2023.
//  Copyright (c) 2023 wanghonggit. All rights reserved.
//

import UIKit
import WHGetBundle
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let bundle = WHGetBundle.wh_getBundleWith(bundleName: "bundleName")
        let image = bundle?.getImageWith(imageName: "imageName")
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

