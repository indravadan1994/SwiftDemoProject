//
//  ViewController.swift
//  Demo
//
//  Created by MacStudent on 2017-10-16.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var tfUsername: UITextField!
    @IBOutlet weak var imgViewLVC: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
        
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController!.setNavigationBarHidden(true, animated: true)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    func segue() {
        
        
                    let storyBoard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                    let empVC = storyBoard.instantiateViewController(withIdentifier: "EmployeeVC") as! EmployeeVC
                    self.present(empVC, animated: true, completion: nil)
        
      //  let nvc = storyBoard.instantiateViewController(withIdentifier: "NextVC")  as! NextVC
        
    }
    
    @IBAction func btnLogin(_ sender: UIButton) {
        
        
        let stboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = stboard.instantiateViewController(withIdentifier: "NextVC") as! NextVC
        nextVC.stringPassed1 = tfUsername.text
        nextVC.stringPassed2 = tfPassword.text
        
     nextVC.img = imgViewLVC.image
        
        navigationController?.pushViewController(nextVC, animated: true)
        
        
       
//
//        if (tfUsername.text == "admin" && tfPassword.text == "admin") {
//
//
//
//
//            let alert = UIAlertController(title: title,
//                                          message: "Welcome",
//                                          preferredStyle: UIAlertControllerStyle.alert)
//
//            let cancelAction = UIAlertAction(title: "OK",
//                                             style: .cancel, handler: {_ in self.segue()})
//
//            alert.addAction(cancelAction)
//            self.present(alert, animated: true, completion: nil)
//
//
//
//        }
//        else
//        {
//
//
//            let alert = UIAlertController(title: title,
//                                          message: "Password is Incorrect!",
//                                          preferredStyle: UIAlertControllerStyle.alert)
//
//            let cancelAction = UIAlertAction(title: "OK",
//                                             style: .cancel, handler: nil)
//
//            alert.addAction(cancelAction)
//            self.present(alert, animated: true, completion: nil)
//        }
//
//
//    }
//
    }

}

