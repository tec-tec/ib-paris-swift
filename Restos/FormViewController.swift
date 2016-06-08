//
//  ViewController.swift
//  Restos
//
//  Created by Ludovic Ollagnier on 08/06/2016.
//  Copyright © 2016 Tec-Tec. All rights reserved.
//

import UIKit

class FormViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var adressTextField: UITextField!
    @IBOutlet weak var styleTextField: UITextField!
    @IBOutlet weak var visitedSwitch: UISwitch!
    @IBOutlet weak var gradeSlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func visitedSwitchChanged(sender: UISwitch) {
        
    }

    @IBAction func save(sender: UIButton) {

    }

}

