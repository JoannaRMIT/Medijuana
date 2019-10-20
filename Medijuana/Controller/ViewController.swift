//
//  ViewController.swift
//  Medijuana
//
//  Created by Joanna Ingram on 10/10/19.
//  Copyright © 2019 Joanna Ingram. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let alertController = UIAlertController(title: "Medijuana", message: "Content on this app is only suitable for those over 18. Are you 18 or over?", preferredStyle: .alert)
        
        let yesButton = UIAlertAction(title: "Yes", style: .default, handler: {(action)->Void in print("User is over 18")})
        
        let noButton = UIAlertAction(title: "No", style: .default, handler: {(action)->Void in print("User is under 18")})
        
        alertController.addAction(yesButton)
        alertController.addAction(noButton)
        
        self.navigationController!.present(alertController, animated: true, completion: nil)
    }


    @IBOutlet weak var WelcomeLabel: UILabel!
    @IBOutlet weak var SearchLabel: UILabel!
}

