//
//  ViewController.swift
//  BMBaseModalExample
//
//  Created by Dennis de Oliveira on 19/02/15.
//  Copyright (c) 2015 Dennis de Oliveira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func openBaseModal(sender: AnyObject) {
        var alerta = BMBaseModal()
        alerta.showModal()
    }


}

