//
//  SignUpViewController.swift
//  SomeAnimation
//
//  Created by Mohd Imran on 6/13/17.
//  Copyright © 2017 Mohd Imran. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var scrlSignUp:UIScrollView!
    @IBOutlet weak var txtName:UITextField!
    @IBOutlet weak var txtEmail:UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        scrlSignUp.contentSize = CGSize(width: scrlSignUp.frame.width, height: 5000)
        
        NotificationCenter.default.addObserver(self, selector: #selector(SignUpViewController.keyStartoDisplay), name: .UIKeyboardWillShow, object: nil)
        
        
        // Do any additional setup after loading the view.
    }

    func keyStartoDisplay() -> Void {
        
        
    }
    
    deinit {
        
        NotificationCenter.default.removeObserver(self, name: .UIKeyboardWillShow, object: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        return true
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        scrlSignUp.translatesAutoresizingMaskIntoConstraints = true
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
