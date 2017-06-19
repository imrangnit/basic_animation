//
//  ViewController.swift
//  SomeAnimation
//
//  Created by Mohd Imran on 6/13/17.
//  Copyright © 2017 Mohd Imran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var vConstraint:NSLayoutConstraint!
    @IBOutlet weak var hConstraint:NSLayoutConstraint!
    
    @IBOutlet weak var vConstraint_2:NSLayoutConstraint!
    @IBOutlet weak var hConstraint_2:NSLayoutConstraint!
    
    @IBOutlet weak var vConstraint_3:NSLayoutConstraint!
    @IBOutlet weak var hConstraint_3:NSLayoutConstraint!
    
    @IBOutlet weak var vConstraint_4:NSLayoutConstraint!
    @IBOutlet weak var hConstraint_4:NSLayoutConstraint!
    
    @IBOutlet weak var widthConstraint:NSLayoutConstraint!
    @IBOutlet weak var widthConstraintLabel:NSLayoutConstraint!
    
    @IBOutlet weak var imgHeart_1:UIImageView!
    @IBOutlet weak var imgHeart_2:UIImageView!
    @IBOutlet weak var imgHeart_3:UIImageView!
    @IBOutlet weak var imgHeart_4:UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func startAnimation(_ sender: Any) {
        
        /*weak var ___weak = self
        UIView.animate(withDuration: 0.5, animations: {
            ___weak?.vConstraint.constant -= 5
            ___weak?.view.layoutIfNeeded()
        })*/
        
        startAnimation()
    }
    
    func startAnimation() -> Void {
    
        weak var ___weak = self
        Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true, block: {(timer) in
            ___weak?.vConstraint.constant = (___weak?.vConstraint.constant)! - 1
            ___weak?.hConstraint.constant = (___weak?.hConstraint.constant)! + 1
            
            ___weak?.vConstraint_2.constant = (___weak?.vConstraint_2.constant)! - 1
            ___weak?.hConstraint_2.constant = (___weak?.hConstraint_2.constant)! - 1
            
            ___weak?.vConstraint_3.constant = (___weak?.vConstraint_3.constant)! + 1
            ___weak?.hConstraint_3.constant = (___weak?.hConstraint_3.constant)! + 1
            
            ___weak?.vConstraint_4.constant = (___weak?.vConstraint_4.constant)! + 1
            ___weak?.hConstraint_4.constant = (___weak?.hConstraint_4.constant)! - 1
            
            
            if ___weak!.view.frame.contains(___weak!.imgHeart_4.frame) == false {

                timer.invalidate()
                
                ___weak?.hConstraint.constant   = 0
                ___weak?.hConstraint_2.constant = 0
                ___weak?.hConstraint_3.constant = 0
                ___weak?.hConstraint_4.constant = 0
                
                ___weak?.vConstraint.constant   = 0
                ___weak?.vConstraint_2.constant = 0
                ___weak?.vConstraint_3.constant = 0
                ___weak?.vConstraint_4.constant = 0
                ___weak?.widthConstraint.constant = 100
                ___weak?.widthConstraintLabel.constant = 0
                
                ___weak?.navigationController?.pushViewController(UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SignUpVC"), animated: true)
            }
            
            ___weak?.widthConstraint.constant = ___weak!.widthConstraint.constant + 1
            ___weak?.widthConstraintLabel.constant = ___weak!.widthConstraintLabel.constant + 1
            
            
        })
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        //startAnimation()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

