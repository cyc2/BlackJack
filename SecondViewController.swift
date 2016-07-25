//
//  SecondViewController.swift
//  BuildYourOwnProject
//
//  Created by Chris on 7/25/16.
//  Copyright © 2016 Chris. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var cardsImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        view.endEditing(true)
        let dvc = segue.destinationViewController as! ViewController
        dvc.name = nameTextField.text!
    }
}
