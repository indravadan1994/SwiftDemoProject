//
//  FirstVC.swift
//  Demo
//
//  Created by MacStudent on 2017-10-18.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import UIKit

class ThirdVC: UIViewController {

    var myName : String!
    
    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        //webView.loadRequest(URLRequest(url: URL(string: "http://www.google.com")!))
       
        print(myName)
        loadFromFile()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadFromFile()
    {
        let localfilePath = Bundle.main.url(forResource: "Quiz_instruction", withExtension: "html");
        let myRequest = URLRequest(url: localfilePath!)
        webView.loadRequest(myRequest);
        
        
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
