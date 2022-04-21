//
//  ViewController.swift
//  Task_3
//
//  Created by Abdullah on 18/04/2022.
//

import UIKit

class HomeScreen: UIViewController {

    
    @IBOutlet weak var buttonStackView: UIStackView!
    @IBOutlet weak var buttonView: UIView!
    //    @IBOutlet weak var LogInButton: UIButton!
    @IBOutlet weak var SignUpBtton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
   
//        buttonView.layer.cornerRadius = buttonView.frame.width/4.0
        
        buttonStackView.layer.cornerRadius = buttonStackView.frame.width/20
        buttonStackView.clipsToBounds = true
        
        SignUpBtton.layer.cornerRadius = SignUpBtton.frame.width/20
        SignUpBtton.clipsToBounds = true
        
    

    }


//    @IBAction func LogInAction(_ sender: Any) {
//        SignUpBtton.contentEdgeInsets = UIEdgeInsets(top: 12, left: 16, bottom: 12, right: 16)
//
//        print("login")
//    }
    @IBAction func SignUpAction(_ sender: Any) {

//        animate(sender: SignUpBtton)
        print("SignUp")

    }
    
    
 
    
    
    func animate(sender: UIButton) {

        sender.backgroundColor = UIColor.red
        let buttonSize: CGRect = sender.frame

        let originXbutton = buttonSize.origin.x
        let originYbutton = buttonSize.origin.y

        let originWidthbutton = buttonSize.size.width
        let originHeightbutton = buttonSize.size.height

        UIView.animate(withDuration: 0.2, animations: {
            sender.frame = CGRect(x: originXbutton, y: originYbutton, width: originWidthbutton - 10, height: originHeightbutton - 10)
        }, completion: { finished in
            sender.frame = CGRect(x: originXbutton, y: originYbutton, width: originWidthbutton, height: originHeightbutton)
        })
    }
    
    
}



