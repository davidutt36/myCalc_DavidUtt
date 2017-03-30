//
//  ViewController.swift
//  myCalc_DavidUtt
//
//  Created by David Utt on 3/30/17.
//  Copyright © 2017 David Utt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var myLable: UILabel!
    
    enum modes {
        case not_set
        case addition
        case subbtraction
    }

    var savedNum = 0;
    var currentMode: modes = .not_set
    var lastButtonWasMode = false
    var labelString: String = "0"

    @IBAction func didPressClear(_ sender: UIButton) {
        savedNum = 0;
        currentMode = .not_set
        lastButtonWasMode = false
        labelString = "0"
        
        updateText()
    }
    
    @IBAction func didPressNumber(_ sender: UIButton) {
        if (lastButtonWasMode){
            lastButtonWasMode = false
            labelString = "0"
        }
        
        let stringValue:String? = sender.titleLabel?.text
        labelString = labelString.appending(stringValue!)
        
        updateText()
    }
    
    @IBAction func didPressPlus(_ sender: UIButton) {
        changeMode(newMode: .addition)
    }
    
    @IBAction func didPressEquals(_ sender: UIButton) {
    }
    
    func changeMode(newMode:modes){
        if (savedNum == 0){
            return
        }
        
        currentMode = newMode
        lastButtonWasMode = true
    }
    
    func updateText(){
        guard let labelInt:Int = Int(labelString) else {
            return
        }
        if (currentMode == .not_set) {
            savedNum = labelInt
        }
         myLable.text = "\(labelInt)"
    
    }
    
    
    

}

