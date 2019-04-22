//
//  WecomeVC.swift
//  FireChat
//
//  Created by ITDevStar on 4/21/19.
//  Copyright © 2019 ITDevStar. All rights reserved.
//

import UIKit
import Photos

class LoginViewController: UIViewController, UITextFieldDelegate, UINavigationControllerDelegate, UIImagePickerControllerDelegate
{
    
    @IBOutlet weak var darkView: UIView!
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    @IBOutlet weak var cloudsView: UIImageView!
    @IBOutlet weak var profilePicView: RoundedImageView!
    @IBOutlet var warningLabels: [UILabel]!
    @IBOutlet weak var registerName: UITextField!
    @IBOutlet var inputFields: [UITextField]!
    @IBOutlet weak var registerEmail: UITextField!
    @IBOutlet weak var registerPassword: UITextField!
    @IBOutlet weak var loginEmail: UITextField!
    @IBOutlet weak var loginPassword: UITextField!
    
    @IBOutlet var loginView: UIView!
    @IBOutlet var registerView: UIView!
    
    
    let imagePicker = UIImagePickerController()
    var isLoginViewVisble = true
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        get {
            return UIInterfaceOrientationMask.portrait
        }
    }
    
    func initLayout() {
        self.darkView.alpha = 0
        self.imagePicker.delegate = self
        self.profilePicView.layer.borderColor = GlobalVariables.blue.cgColor
        self.profilePicView.layer.borderWidth = 2
        
        //Login View Custom
        self.view.insertSubview(self.loginView, belowSubview: self.cloudsView)
        self.loginView.translatesAutoresizingMaskIntoConstraints = false
        
        self.loginView.center = CGPoint(x: self.view.frame.size.width / 2, y: (self.view.frame.size.height - self.cloudsView.frame.size.height) / 2)
        self.loginView.layer.cornerRadius = 8
        
        self.view.insertSubview(self.registerView, belowSubview: self.cloudsView)
        self.loginView.translatesAutoresizingMaskIntoConstraints = false
        
        self.registerView.center = CGPoint(x: self.view.frame.size.width / 2, y: (self.view.frame.size.height - self.cloudsView.frame.size.height) / 2)
        self.registerView.layer.cornerRadius = 8
        
        self.registerView.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.initLayout()
        
        print("Login")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    
    @IBAction func register(_ sender: Any) {
    }
    @IBAction func switchView(_ sender: UIButton) {
        if self.isLoginViewVisble {
            self.isLoginViewVisble = false
            sender.setTitle("Login", for: .normal)
            self.loginView.isHidden = true
            self.registerView.isHidden = false
        } else {
            self.isLoginViewVisble = true
            sender.setTitle("Create New Account", for: .normal)
            self.loginView.isHidden = false
            self.registerView.isHidden = true

        }
        
        for item in warningLabels {
            item.isHidden = true
        }
    }
    @IBAction func selectPhoto(_ sender: UIButton) {
    }
    @IBAction func login(_ sender: Any) {
    }
    
    
}
