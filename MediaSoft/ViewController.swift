//
//  ViewController.swift
//  MediaSoft
//
//  Created by Armen Safarian on 27.06.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    @IBAction func sendPressed(sender: UIButton) {
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard segue.destination is TabViewController else { return }
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

