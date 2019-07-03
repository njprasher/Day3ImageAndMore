//
//  ViewController.swift
//  Day3ImageAndMore
//
//  Created by Neeraj Prasher on 2019-07-02.
//  Copyright © 2019 njprasher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgJungle: UIImageView!
    
    @IBOutlet weak var txtlbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSetImageClick(_ sender: UIButton) {
        if imgJungle.image == UIImage(named: "lion"){
            imgJungle.image = UIImage(named: "home")
        }else {
            imgJungle.image = UIImage(named: "lion")
            //view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        self.txtlbl.text! = "\(Int((sender.value)*100))"
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: sender.value)
    }
    
    @IBAction func switchValueChanged(_ sender: UISwitch) {
        if sender.isOn{
            imgJungle.image = UIImage(named: "home")
        } else {
            imgJungle.image = UIImage(named: "lion")

        }
    }
    
    @IBAction func segmentValueChanged(_ sender: UISegmentedControl) {
        switch (sender.selectedSegmentIndex) {
        case 0:
        
            imgJungle.image = UIImage(named: "home")

        case 1:
            
            imgJungle.image = UIImage(named: "lion")
            
        case 2:
            
            imgJungle.image = UIImage(named: "gorilla")
            
        case 3:
            
            imgJungle.image = UIImage(named: "elephant")
        default:
            
            imgJungle.image = UIImage(named: "home")
        }

    }
    
    
    
    
    
}

