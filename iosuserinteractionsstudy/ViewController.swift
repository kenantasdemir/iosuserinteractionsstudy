//
//  ViewController.swift
//  iosuserinteractionsstudy
//
//  Created by kenan on 6.08.2024.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var customLabel: UILabel!
    
    @IBAction func showBasicAlert(_ sender: UIButton) {
        let alertController = UIAlertController(title: "HEADING", message: "MESSAGE", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel){ action in
            self.customLabel.text = "Cancel Clicked"
        }
        
        let okAction = UIAlertAction(title: "OK", style: .destructive){ action in
            self.customLabel.text = "OK Clicked"
        }
        
        alertController.addAction(cancelAction)
        alertController.addAction(okAction)
        
        self.present(alertController,animated: true)
        
    }
    
    @IBAction func showCustomAlert(_ sender: UIButton) {
        
        let alertController = UIAlertController(title: "HEADING", message: "MESSAGE", preferredStyle: .alert)
        
        alertController.addTextField{ textfield in
            textfield.placeholder = "Email"
            textfield.keyboardType = .emailAddress
        }
        
        alertController.addTextField{ textfield in
            textfield.placeholder = "Password"
            textfield.isSecureTextEntry = true
        }
        
        let saveAction = UIAlertAction(title: "Save", style: .destructive){ action in
            let email = (alertController.textFields![0] as UITextField).text!
            let password = (alertController.textFields![1] as UITextField).text!
            self.customLabel.text = " \(email) \(password)"
        }
        
        alertController.addAction(saveAction)
        self.present(alertController,animated: true)
        
    }
    
    @IBAction func showActionSheet(_ sender: UIButton) {
        
        let alertController = UIAlertController(title: "HEADING", message: "MESSAGE", preferredStyle: .actionSheet)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel){ action in
            self.customLabel.text = "Cancel Clicked"
        }
        
        let saveAction = UIAlertAction(title: "Save", style: .destructive){ action in
         
            self.customLabel.text = "Save Clicked"
        }
        
        alertController.addAction(cancelAction)
        alertController.addAction(saveAction)
        self.present(alertController,animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

