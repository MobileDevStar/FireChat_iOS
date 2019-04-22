//
//  LandingVC.swift
//  FireChat
//
//  Created by ITDevStar on 4/21/19.
//  Copyright © 2019 ITDevStar. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("Hello, World1")
    }
    
    //MARK: Push to relevant ViewController
    func pushTo(viewController: ViewControllerType) {
        switch viewController {
        case .login:
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "login") as! LoginViewController
            self.present(vc, animated: false, completion: nil)
        case .conversation:
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "navigation") as! NavViewController
            self.present(vc, animated: false, completion: nil)
        }
    }
    
    //MARK: Check if user is signed in or not
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if let userInformation = UserDefaults.standard.dictionary(forKey: "userInformation") {
            let email = userInformation["email"] as! String
            let password = userInformation["password"] as! String
            UserModel.loginUser(withEmail: email, password: password, completion: { [weak weakSelf = self] (status) in
                DispatchQueue.main.async {
                    if status == true {
                        weakSelf?.pushTo(viewController: .conversation)
                    } else {
                        weakSelf?.pushTo(viewController: .login)
                    }
                    weakSelf = nil
                }
            })
        } else {
            self.pushTo(viewController: .login)
        }
    }
}
