//
//  ViewController.swift
//  supritaLightProject
//
//  Created by Suprita Ashok on 9/24/19.
//  Copyright © 2019 Suprita Ashok. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var lightOn = true
    var slideOn = true
    var randomNumber = arc4random_uniform(20)
    var randomColor = arc4random()


    @IBOutlet weak var buttonChange: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    


    
    
    @IBAction func buttonPressed(_ sender: Any) {
        updateUI()
        lightOn = !lightOn
    }
    @IBOutlet weak var slideSwitchVar: UISwitch!
    
    @IBAction func slideSwitched(_ sender: Any) {
        colorBackground()
        slideOn = !slideOn
    }
    //Color Background randomly
    func colorBackground() {
        if slideOn{
            view.backgroundColor = .white
        }
        else{
          view.backgroundColor = .yellow
        }
    }
    func updateUI (){
        if lightOn {
            view.backgroundColor = .white
            buttonChange.setTitle("Light's on.", for: .normal)
            buttonChange.setTitleColor(.black, for: .normal)
           
        } else {
            view.backgroundColor = .black
            buttonChange.setTitle("And now it's off.", for: .normal)
            buttonChange.setTitleColor(.white, for: .normal)
            
        }
    }

        

    
    }

