//
//  ViewController.swift
//  Assignment1
//
//  Created by Jaskaran Singh on 6/23/21
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Variables
    private var sliderVal = 0
    private var scoreVal = 0
    private var randomVal = 0
    
    //MARK: Outlets
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var RandomVal: UILabel!
    @IBOutlet weak var SliderBar: UISlider!
    
    @IBOutlet weak var tryButton: UIButton!
    @IBOutlet weak var checkButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    //MARK: View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        checkButton.isEnabled = false
        resetButton.isEnabled = false
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var outputLabel: UILabel!
    
    //MARK: Actions
    @IBAction func changed(_ sender: UISlider) {
        sliderVal = Int(sender.value)
        
    }
    
    @IBAction func Trynow(_ sender: Any) {
        SliderBar.value = 0
        let RandomNumber = Int.random(in: 1...5)
        randomVal = RandomNumber
        RandomVal.text = String(randomVal)
        tryButton.isEnabled = false
        checkButton.isEnabled = true
        resetButton.isEnabled = true
        outputLabel.text="Output"
    }
    
    @IBAction func Resetnow(_ sender: Any) {
        RandomVal.text = "0"
        scoreVal = 0
        SliderBar.value = 0
        score.text = String(scoreVal)
        checkButton.isEnabled = false
        resetButton.isEnabled = false
        tryButton.isEnabled = true
        outputLabel.text="Output"
    }
    
    @IBAction func Checknow(_ sender: Any) {
        if sliderVal == randomVal{
            scoreVal = scoreVal+1
            score.text = String(scoreVal)
            checkButton.isEnabled = false
            tryButton.isEnabled = true
        }else{
            checkButton.isEnabled = true
            tryButton.isEnabled = true
        }
        outputLabel.text="Number is \(randomVal),you guessed \(Int(sliderVal))"
        resetButton.isEnabled = true
    }
}

