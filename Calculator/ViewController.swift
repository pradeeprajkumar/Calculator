//
//  ViewController.swift
//  Calculator
//
//  Created by Pradeep Rajkumar on 20/03/18.
//  Copyright © 2018 Pradeep Rajkumar. All rights reserved.
//

import UIKit
import ComputeFramework

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func useFrameworkAction(sender: UIButton) {
        //Use the Logic from Framework
        print(Brain().compute(3, parameter2: 5, operation: "*"))

        //Use the UI from Framework
        let computeStoryboard = UIStoryboard(name: "ComputeStoryboard", bundle: NSBundle(forClass: InputViewController.self))
        let inputVC = computeStoryboard.instantiateViewControllerWithIdentifier("InputViewController")
        self.navigationController?.showViewController(inputVC, sender: self)
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}