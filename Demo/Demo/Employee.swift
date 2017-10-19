//
//  Employee.swift
//  Demo
//
//  Created by MacStudent on 2017-10-16.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import Foundation



class Employee{
    
    var empId:Int!
    var empName:String!
    var birthDate: Date!
    var salary:Double!
    
   static var dict = [Int:Employee]()
    
    init (){
        self.empId = -1
        self.empName = ""
        self.birthDate = Date()
        self.salary = 0.0
    }
    
    
    init(_ empId:Int,_ empName:String, _ birthdate:Date, _ salary:Double){
        self.empId = empId
        self.empName = empName
        self.birthDate = birthdate
        self.salary = salary
    }
    
    static func addEmployee(emp:Employee) ->Bool{
        
        if self.dict[emp.empId] == nil{
            self.dict[emp.empId] = emp
        return true
        }
        return false
    }

}
