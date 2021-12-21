//
//  TrafficLightsViewController.swift
//  ConstraintsAndTrafficLights
//
//  Created by Vlad Ryabtsev on 20.12.2021.
//

import UIKit

class TrafficLightsViewController: UIViewController {

    @IBOutlet var redLightOutlet: UIView!
    @IBOutlet var orangeLightOutlet: UIView!
    @IBOutlet var greenLightOutlet: UIView!
              
    @IBOutlet var startButtonOutlet: UIButton!
    
    var currentColor: Colors = .red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightOutlet.alpha = 0.2
        orangeLightOutlet.alpha = 0.2
        greenLightOutlet.alpha = 0.2
        
        startButtonOutlet.setTitle("START", for: .normal)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
                       
        redLightOutlet.layer.cornerRadius = redLightOutlet.layer.frame.height / 2
        orangeLightOutlet.layer.cornerRadius = orangeLightOutlet.layer.frame.height / 2
        greenLightOutlet.layer.cornerRadius = greenLightOutlet.layer.frame.height / 2
    }
      

    @IBAction func startButtonAction() {
        startButtonOutlet.setTitle("NEXT", for: .normal)
        
        if currentColor == .red {
            redLightOutlet.alpha = 1
            orangeLightOutlet.alpha = 0.2
            greenLightOutlet.alpha = 0.2
            
            currentColor = .orange
        } else if currentColor == .orange {
            redLightOutlet.alpha = 0.2
            orangeLightOutlet.alpha = 1
            greenLightOutlet.alpha = 0.2
            
            currentColor = .green
        } else {
            redLightOutlet.alpha = 0.2
            orangeLightOutlet.alpha = 0.2
            greenLightOutlet.alpha = 1
        
            currentColor = .red
        }            
    } 
}

extension TrafficLightsViewController {
    private enum Colors {
        case red, orange, green
    }
}
