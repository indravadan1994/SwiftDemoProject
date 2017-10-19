//
//  EmployeeVC.swift
//  Demo
//
//  Created by MacStudent on 2017-10-16.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import UIKit

class EmployeeVC: UIViewController {

    
    @IBOutlet weak var tfEmpId: UITextField!
    
    @IBOutlet weak var tfEmpName: UITextField!
    
    
    @IBOutlet weak var tfEmpBirthdate: UITextField!
    
    
    @IBOutlet weak var tfEmpSalary: UITextField!
    
    
    
    @IBAction func btnSave(_ sender: UIButton) {
        
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-mm-yyyy"
        dateFormatter.timeZone = TimeZone(abbreviation: "GMT+0:00")
        
//        var emp = Employee( Int(tfEmpId.text!)!,
//                             tfEmpName.text!,
//                             dateFormatter.date(from: tfEmpBirthdate.text!)!,
//                             Double(tfEmpSalary.text!)!
//
//
//
//        )
        
        let ObjEmp = Employee()
        ObjEmp.empId = Int(tfEmpId.text!)
        ObjEmp.empName = tfEmpName.text!
        ObjEmp.birthDate = dateFormatter.date(from: tfEmpBirthdate.text!)
        ObjEmp.salary = Double(tfEmpSalary.text!)
        
     
        
        let flag = Employee.addEmployee(emp: ObjEmp)
        if flag == true{
            print("Employee Record Saved")
        }
        else
        {
            print("Possible duplication error!")
        }
        
        
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
