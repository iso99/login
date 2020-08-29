//
//  ViewController.swift
//  login
//
//  Created by islam magdy on 8/23/20.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate{
    let donothaveText = UITextField()
    let registerButton = UIButton()
    let facebookButton = UIButton()
    let googleButton = UIButton()
    let orlable = UILabel()
    let borderView = UIView()
    let passwordTextFeield = UITextField()
    let nameTextField = UITextField()
    let borderPasswordview = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        configerdonothaveText()
        configerRegisterButton()
        setupInputFields()
        configerGoogleButton()
        configerFacebookButton()
        setGoogleAndFacebutton()
        configerOrlable()
        configrePasswordView()
        configerPasswordTextfeild()
        configerNameview()
        configerNametextField()
     
        func textFieldDidBeginEditing(_ textField: UITextField) {
       
                   print("TextField did begin editing method called for text field 1")
                passwordTextFeield.textColor = .orange
                 borderView.backgroundColor = .orange
            nameTextField.textColor = .orange
            borderPasswordview.backgroundColor = .orange
        }
        func textFieldDidEndEditing(_ textField: UITextField) {
            passwordTextFeield.textColor = .black
            borderView.backgroundColor = .darkGray
            nameTextField.textColor = .black
            borderPasswordview.backgroundColor = .darkGray
           
        }
        
    }
    
    func configerPasswordTextfeild () {
        view.addSubview(passwordTextFeield)
        passwordTextFeield.delegate = self
        passwordTextFeield.translatesAutoresizingMaskIntoConstraints = false
        passwordTextFeield.placeholder = "********"
        passwordTextFeield.textColor = .black
        
        NSLayoutConstraint.activate([
           // borderPasswordview.topAnchor.constraint(lessThanOrEqualTo: passwordTextFeield.topAnchor, constant: 8),
            passwordTextFeield.heightAnchor.constraint(equalToConstant: 50),
            passwordTextFeield.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            passwordTextFeield.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20) ,
            passwordTextFeield.bottomAnchor.constraint(lessThanOrEqualTo: borderPasswordview.topAnchor, constant: -2)
             

          //  passwordTextFeield.centerXAnchor.constraint(equalTo: view.centerXAnchor),
             
         ])
        
    }
    func configerNametextField(){
        view.addSubview(nameTextField)
        nameTextField.delegate = self
        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        nameTextField.placeholder = "ahmed"
        nameTextField.textColor = .black
        NSLayoutConstraint.activate([
           // borderPasswordview.topAnchor.constraint(lessThanOrEqualTo: passwordTextFeield.topAnchor, constant: 8),
            nameTextField.heightAnchor.constraint(equalToConstant: 50),
            nameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            nameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20) ,
            nameTextField.bottomAnchor.constraint(lessThanOrEqualTo: borderView.topAnchor, constant: -2)
             

          //  passwordTextFeield.centerXAnchor.constraint(equalTo: view.centerXAnchor),
             
         ])
        
        
    }
    
    func configerNameview(){
        view.addSubview(borderView)
    borderView.translatesAutoresizingMaskIntoConstraints = false
        borderView.backgroundColor = .lightGray
        NSLayoutConstraint.activate([
           // borderPasswordview.topAnchor.constraint(lessThanOrEqualTo: passwordTextFeield.topAnchor, constant: 8),
            borderView.heightAnchor.constraint(equalToConstant: 1),
            borderView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            borderView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20) ,
            borderView.bottomAnchor.constraint(lessThanOrEqualTo: passwordTextFeield.topAnchor, constant: -2)
             

          //  passwordTextFeield.centerXAnchor.constraint(equalTo: view.centerXAnchor),
             
         ])
    }
    func configrePasswordView(){
        view.addSubview(borderPasswordview)
        borderPasswordview.translatesAutoresizingMaskIntoConstraints = false
        borderPasswordview.backgroundColor = .lightGray
        
        NSLayoutConstraint.activate([
           // borderPasswordview.topAnchor.constraint(lessThanOrEqualTo: passwordTextFeield.topAnchor, constant: 8),
            borderPasswordview.heightAnchor.constraint(equalToConstant: 1),
            borderPasswordview.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            borderPasswordview.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20) ,
            borderPasswordview.bottomAnchor.constraint(lessThanOrEqualTo: orlable.topAnchor, constant: -40)
             

          //  passwordTextFeield.centerXAnchor.constraint(equalTo: view.centerXAnchor),
             
         ])
        
    }
    
    func configerOrlable() {
        view.addSubview(orlable)
    orlable.translatesAutoresizingMaskIntoConstraints = false
        orlable.text = "-  OR   -"
        
        orlable.textColor = .darkGray
         NSLayoutConstraint.activate([
            orlable.bottomAnchor.constraint(lessThanOrEqualTo: googleButton.bottomAnchor, constant: -50),
            orlable.heightAnchor.constraint(equalToConstant: 40),
            //orText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
           // orText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50)
            orlable.centerXAnchor.constraint(equalTo: view.centerXAnchor),
              
          ])
    }
    func configerGoogleButton () {
        
        view.addSubview(googleButton)
        googleButton.translatesAutoresizingMaskIntoConstraints = false
        googleButton.setTitle("Sign With Google", for: .normal)
        googleButton.setTitleColor(.black, for: .normal)
       // googleButton.layer.borderColor = UIColor.green.cgColor
       googleButton.layer.borderWidth = 0.1
        googleButton.layer.cornerRadius = 25
        googleButton.setImage(UIImage(named: "iconfinder_2_940993"), for: .normal)
        googleButton.imageEdgeInsets.left = -60
        let spacing: CGFloat = 10
        googleButton.contentEdgeInsets = UIEdgeInsets(top: 10, left: spacing, bottom: 10, right: spacing)
        
       /*  NSLayoutConstraint.activate([
            googleButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            googleButton.heightAnchor.constraint(equalToConstant: 40),
            googleButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            googleButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50)
             
         ])*/
    }
    func configerFacebookButton (){
        view.addSubview(facebookButton)
        facebookButton.translatesAutoresizingMaskIntoConstraints = false
        facebookButton.setTitle("Sign With Facebook", for: .normal)
        facebookButton.setTitleColor(.black, for: .normal)
   // googleButton.layer.borderColor = UIColor.green.cgColor
        facebookButton.layer.borderWidth = 0.1
        facebookButton.layer.cornerRadius = 25
        facebookButton.setImage(UIImage(named: "iconfinder_2_940993"), for: .normal)
        facebookButton.imageEdgeInsets.left = -60
    let spacing: CGFloat = 10
        facebookButton.contentEdgeInsets = UIEdgeInsets(top: 10, left: spacing, bottom: 10, right: spacing)
    }

    func configerdonothaveText(){
        view.addSubview(donothaveText)
        donothaveText.translatesAutoresizingMaskIntoConstraints = false
        donothaveText.text = "Donot have account?"
        donothaveText.textColor = UIColor.black
        donothaveText.textAlignment = .right
        donothaveText.minimumFontSize = 12
       
       /* NSLayoutConstraint.activate([
            donothaveText.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
            donothaveText.heightAnchor.constraint(equalToConstant: 30),
            donothaveText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            donothaveText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50)
            
        ])*/
    }
    func configerRegisterButton() {
        view.addSubview(registerButton)
        registerButton.translatesAutoresizingMaskIntoConstraints = false
        registerButton.setTitle("RegisterNow", for: .normal)
        registerButton.setTitleColor(.systemOrange, for: .normal)
       // registerButton.setImage(UIImage(named: "download"), for: .normal)
       // registerButton.backgroundColor = .blue
       // registerButton.imageEdgeInsets.right = 5
      //  registerButton.frame = CGRect(x: 140, y: 40, width: 175, height: 30);

     
   /*     NSLayoutConstraint.activate([
            registerButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -25),
            registerButton.heightAnchor.constraint(equalToConstant: 30),
            registerButton.leadingAnchor.constraint(equalTo: donothaveText.leadingAnchor, constant: 180)
            
        ])*/
        
    }

    
    fileprivate func setGoogleAndFacebutton () {
        let stackview = UIStackView(arrangedSubviews: [googleButton ,facebookButton])
        stackview.translatesAutoresizingMaskIntoConstraints = false
        stackview.distribution =    .fillEqually
        stackview.axis = .vertical
        stackview.spacing =  8
        view.addSubview(stackview)
        NSLayoutConstraint.activate([
           
          //  stackview.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40),
            stackview.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            stackview.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            stackview.bottomAnchor.constraint(lessThanOrEqualTo: donothaveText.bottomAnchor, constant: -50),
            
            //stackview.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
       
          //  stackview.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackview.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    fileprivate func setupInputFields(){
        let stackview = UIStackView(arrangedSubviews: [donothaveText,registerButton])
        stackview.translatesAutoresizingMaskIntoConstraints = false
        stackview.distribution =    .fillProportionally
        stackview.axis = .horizontal
        stackview.spacing =  2
        view.addSubview(stackview)
        NSLayoutConstraint.activate([
            stackview.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40),
            //stackview.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
           // stackview.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            stackview.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackview.heightAnchor.constraint(equalToConstant: 50)
        
        ])
    }
}

extension UIButton {
    func setInsets(
        forContentPadding contentPadding: UIEdgeInsets,
        imageTitlePadding: CGFloat
    ) {
        self.contentEdgeInsets = UIEdgeInsets(
            top: contentPadding.top,
            left: contentPadding.left,
            bottom: contentPadding.bottom,
            right: contentPadding.right + imageTitlePadding
        )
        self.titleEdgeInsets = UIEdgeInsets(
            top: 0,
            left: imageTitlePadding,
            bottom: 0,
            right: -imageTitlePadding
        )
    }
}
