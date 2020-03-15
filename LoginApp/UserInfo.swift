//
//  UserInfo.swift
//  LoginApp
//
//  Created by thomas on 2020/3/15.
//  Copyright © 2020 thomas. All rights reserved.
//

import Foundation

class UserInfo:CustomStringConvertible{
    var description: String{
        get{
            return "\(name), \(password)"
        }
    }
    
    init() {
        
    }
    var name:String = ""
    var password:String = ""
    var education:String = ""
    var iq:String = ""
    var isCPM:Bool = false
    
    func setEduByIndex(Index:Int){
        let eduList = [0:"高中", 1:"本科", 2:"硕士", 3:"博士"]
        if Index>=0 && Index <= 3{
            education = eduList[Index]!
        }
        
    }
    
    
}
