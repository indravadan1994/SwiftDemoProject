//
//  NextVC.swift
//  Demo
//
//  Created by MacStudent on 2017-10-18.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import UIKit

class NextVC: UIViewController {

    
    var stringPassed1 : String!
    var stringPassed2 : String!
    
    var img : UIImage!
    
    @IBOutlet weak var btnNext: UIButton!
    
      @IBOutlet weak var lblLabel: UILabel!
    
    @IBOutlet weak var imgViewNVC: UIImageView!
    
    @IBOutlet weak var btnDismiss: UIButton!
    
    override func viewDidLoad() {
      
        super.viewDidLoad()
        
       lblLabel.text = stringPassed1 + " " + stringPassed2
        
        imgViewNVC.image = img

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        self.title = "NextVC"
         self.navigationController!.setNavigationBarHidden(false, animated: true)
    }
    
    @IBAction func btnDismissTapped(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func btnnextTapped(_ sender: UIButton) {
        //sender.isEnabled = false
   
        self.performSegue(withIdentifier: "ThirdVC", sender: self)
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ThirdVC" {
            let nextScene =  segue.destination as! ThirdVC
            nextScene.myName = "Indravadan"
    }
   
    }
}
