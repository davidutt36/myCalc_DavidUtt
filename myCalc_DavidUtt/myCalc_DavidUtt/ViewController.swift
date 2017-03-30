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
    
    }
    
    @IBAction func didPressNumber(_ sender: UIButton) {
    
    }
    
    @IBAction func didPressPlus(_ sender: UIButton) {
    
    }
    
    @IBAction func didPressEquals(_ sender: UIButton) {
    }
    
    func changeMode(newMode:modes){
    
    }
    
    func updateText(){
    
    }
    
    
    

}

