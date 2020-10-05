//
//  ViewController.swift
//  millionDollarLight
//
//  Created by Rolland Loy on 10/1/20.
//
import UIKit
class ViewController: UIViewController {
    
    
    //MARK: - Instance properties
    
    @IBOutlet weak var lightButton: UIButton!
    var lightOn = false
    
    //MARK: - View method
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
    }
    
    //MARK: - IB Action Methods
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        updateUI()
    }
    
    //MARK: - Helper Methods
    func updateUI() {
        if lightOn {
            view.backgroundColor = .white
            lightButton.setTitle("Off", for: .normal)
            lightButton.setTitleColor(.black, for: .normal)
        } else {
            view.backgroundColor = .black
            lightButton.setTitle("On", for: .normal)
            lightButton.setTitleColor(.white, for: .normal)
        }
    }
    
}

