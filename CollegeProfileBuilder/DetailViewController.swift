//
//  DetailViewController.swift
//  CollegeProfileBuilder
//
//  Created by Daniel Korach on 7/25/16.
//  Copyright © 2016 Daniel Korach. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var universityNameTextField: UITextField!
    @IBOutlet weak var stateTextField: UITextField!
    @IBOutlet weak var enrollmentTextField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    var college : College!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        universityNameTextField.text = college.name
        stateTextField.text = college.state
        enrollmentTextField.text = String(college.enrollment)
        imageView.image = college.image
        
        
    }
    
    @IBAction func onTappedSaveButton(sender: AnyObject) {
        college.name = universityNameTextField.text!
        college.state = stateTextField.text!
        college.enrollment = Int(enrollmentTextField.text!)!
    }
}

