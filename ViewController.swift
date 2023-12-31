//
//  ViewController.swift
//  IOS102PreWork
//
//  Created by Sai Mannava on 11/17/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var schoolNameTextField: UITextField!
    
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    
    
    @IBOutlet weak var numberOfPetsLabel: UILabel!
   
   
    @IBOutlet weak var hobbiesLabel: UITextField!
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBOutlet weak var morePetsStepper: UIStepper!
    
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let randomColor = changeColor()
        view.backgroundColor = randomColor
    }
    
       func changeColor() -> UIColor{

              let red = CGFloat.random(in: 0...1)
              let green = CGFloat.random(in: 0...1)
              let blue = CGFloat.random(in: 0...1)

              return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
          }
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        // Let's us chose the title we have selected from the segmented control
                let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)

                // Creating a variable of type string, that holds an introduction. The introduction interpolates the values from the text fields provided.
                // Currently we can only present the information in a print statement. However, this lets us verify that our app is printing out what is intended!
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) dogs. It is \(morePetsSwitch.isOn) that I want more pets. My hobbies are \(hobbiesLabel.text!)"


                // Creates the alert where we pass in our message, which our introduction.
                let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)

                // A way to dismiss the box once it pops up
                let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)

                // Passing this action to the alert controller so it can be dismissed
                alertController.addAction(action)

                present(alertController, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

