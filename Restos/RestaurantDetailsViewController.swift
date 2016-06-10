//
//  RestaurantDetailsViewController.swift
//  Restos
//
//  Created by Ludovic Ollagnier on 10/06/2016.
//  Copyright © 2016 Tec-Tec. All rights reserved.
//

import UIKit

class RestaurantDetailsViewController: UIViewController {

    var currentResto: Restaurant?

    @IBOutlet weak var restoNameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        guard let resto = currentResto else {
            fatalError("Restaurant not set")
        }

        restoNameLabel.text = resto.name
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
