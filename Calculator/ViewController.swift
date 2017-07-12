//
//  ViewController.swift
//  Calculator
//
//  Created by Matthew Nanney on 7/11/17.
//  Copyright © 2017 NanCode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - Variables
    var total: Double = 0.0 // Used to hold the number before the operation (divide, multiply, etc)
    var tempTotal: Double = 0.0
    var savedTotal: Double = 0.0


    //MARK: - UI Variables/References

    //MARK: Number buttons
    /*
        TODO: You'll probably need more than just 0, 1, and 2 for number buttons!
     
        Don't forget to connect your IBOutlets to the Main.storyboard file!!!
    */
    @IBOutlet weak var zeroButton: CalculatorButton!
    @IBOutlet weak var periodButton: CalculatorButton!
    @IBOutlet weak var oneButton: CalculatorButton!
    @IBOutlet weak var twoButton: CalculatorButton!

    //MARK: Function buttons
    @IBOutlet weak var clearButton: CalculatorButton!
    @IBOutlet weak var negateButton: CalculatorButton!
    @IBOutlet weak var percentButton: CalculatorButton!
    @IBOutlet weak var divideButton: CalculatorButton!
    @IBOutlet weak var multiplyButton: CalculatorButton!
    @IBOutlet weak var subtractButton: CalculatorButton!
    @IBOutlet weak var equalButton: CalculatorButton!
    @IBOutlet weak var memoryButton: CalculatorButton!

    //MARK: Other UI Elements
    @IBOutlet weak var resultLabel: UILabel!

    //MARK: Number actions
    //TODO: Don't forget to add the other button actions!
    @IBAction func zeroButtonPressed(_ sender: Any){
        displayNumber(0)
    }

    @IBAction func oneButtonPressed(_ sender: Any){
        displayNumber(1)
    }

    @IBAction func twoButtonPressed(_ sender: Any){
        displayNumber(2)
    }

    //MARK: Function actions
    @IBAction func divideButtonPressed(_ sender: Any){

    }

    @IBAction func multiplyButtonPressed(_ sender: Any){

    }

    @IBAction func subtractButtonPressed(_ sender: Any){

    }

    @IBAction func plusButtonPressed(_ sender: Any){

    }

    @IBAction func equalButtonPressed(_ sender: Any){

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

    func displayNumber(_ value: Double) {
        //need to figure out a way to take the total and append that number onto the total number so it can be displayed
    }

    func calculateTotal(_ operation: Operation) {
        //do your calculations here
    }

    //TODO: Would be nice to have a function to save the current total to the savedTotal variable

    func refreshTotalLabel() {
        resultLabel.text = "\(total)"
    }



    //TODO: Want a real challenge? Google how to make an ActionSheet in Swift. Make the memory work by using this
    func loadMemoryMenu() {
        //populate and load action sheet here
    }

    func saveTotal() {
        //save total to memory here
    }

    func calculateSavedTotal(_ value: Double?, operation: MemoryOperation) {
        //do math here based on parameters and the operation for the memory - note that value can be nil (non-existent)
    }

    /*
        TODO: Wouldn't it be great if we had a function that would show the Saved Total on the result label?
              We could use it in conjunction with the memory functions
     */

}


/**
 
 An enum is essentially a set of pre-defined variables that won't change.
 We use them to easily reference something multiple times without having to take a lot of computing power
 
 Here I have created an enum that contains the operation types I want you to implement for our calculator.
 You can use these in the calculateTotal function to identify which operation the user requested.
 
 These really are only used as identifiers in this use case, basically a way to keep track of which option
 the user requested. Note, though, that they can be incredibly powerful later one with state machines and such.

 */
enum Operation {
    case addition
    case subtraction
    case multiplication
    case division
    case negation
}

enum MemoryOperation {
    case clear
    case recall
    case add
    case subtract
}
