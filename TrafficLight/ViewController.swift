//
//  ViewController.swift
//  TrafficLight
//
//  Created by Aleksandr F. on 01.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var greetingRedLight: UIView!
    @IBOutlet var greetingOrangeLight: UIView!
    @IBOutlet var greetingGreenLight: UIView!
    
    @IBOutlet var greetingStartButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        greetingRedLight.layer.cornerRadius = 50
        greetingRedLight.alpha = 0.3
        greetingOrangeLight.layer.cornerRadius = 50
        greetingOrangeLight.alpha = 0.3
        greetingGreenLight.layer.cornerRadius = 50
        greetingGreenLight.alpha = 0.3
        greetingStartButton.layer.cornerRadius = 10
    }
    
    @IBAction func greetingStartButtonPressed() {
        greetingStartButton.setTitle("NEXT", for: .normal)
        
        if greetingRedLight.alpha == 1 {
            greetingRedLight.alpha = 0.3
            greetingOrangeLight.alpha = 1
        } else if greetingOrangeLight.alpha == 1 {
            greetingOrangeLight.alpha = 0.3
            greetingGreenLight.alpha = 1
        } else {
            greetingGreenLight.alpha = 0.3
            greetingRedLight.alpha = 1
        }
    }
}
    


