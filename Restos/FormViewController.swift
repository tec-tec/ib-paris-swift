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
        gradeSlider.enabled = sender.on
    }

    @IBAction func save(sender: UIButton) {

        guard let name = nameTextField.text where !name.isEmpty else {
            return
        }

        guard let style = styleTextField.text where !style.isEmpty else {
            return
        }

        guard let address = adressTextField.text where !address.isEmpty else {
            return
        }

        defer {
            RestaurantLibrary.sharedInstance.add(resto)
            dismissViewControllerAnimated(true, completion: nil)
        }

        var resto = Restaurant(name: name, address: address, style: style)

        guard visitedSwitch.on else {
            return
        }

        resto.visited = visitedSwitch.on
        resto.note = gradeSlider.value
    }

    @IBAction func cancel(sender: AnyObject) {

        //Pour du modal
        dismissViewControllerAnimated(true, completion: {()->() in


        })

        //Pour de la navigation
        navigationController?.popViewControllerAnimated(true)
    }
}

