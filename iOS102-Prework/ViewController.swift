//
//  ViewController.swift
//  iOS102-Prework
//
//  Created by Anthony Jerez on 2/4/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var changeBackgroundColorButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        // create introduction
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). I'm currently in my \(year!) year and I own \(numberOfPetsLabel.text!) pets. It is \(morePetsSwitch.isOn) that I want more pets."
        // create alert box
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        // add action to alert box to dismiss it
        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        view.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
    
    
    
    

}

