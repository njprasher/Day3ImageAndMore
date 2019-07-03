//
//  ScreenThreeViewController.swift
//  Day3ImageAndMore
//
//  Created by Neeraj Prasher on 2019-07-02.
//  Copyright © 2019 njprasher. All rights reserved.
//

import UIKit

class ScreenThreeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //hiding back button
        navigationItem.hidesBackButton = true
        let buttonHome = UIBarButtonItem(title: "Home", style: UIBarButtonItem.Style.plain, target: self, action: #selector(ScreenThreeViewController.goToHome))
        self.navigationItem.rightBarButtonItem = buttonHome
        // Do any additional setup after loading the view.
    }
    
    @objc func goToHome(){
        //self.navigationController?.popToViewController((navigationController?.viewControllers[0])!, animated: true)
        
        self.navigationController?.popToRootViewController(animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
