//
//  simpleListViewModel.swift
//  MVVM_Demo
//
//  Created by as on 4/28/20.
//  Copyright © 2020 as. All rights reserved.
//

import Foundation

class SimpleListViewModel{
    
    
    private var simpleModels : [SimpleModel]
    
    var count: Int{
        return simpleModels.count
    }
    
    init() {
        simpleModels = [
        
            
            SimpleModel(text: "orange", color: #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)) ,
            SimpleModel(text: "blue", color: #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)),
            SimpleModel(text: "green", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)),
            SimpleModel(text: "yellow", color: #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)),
            SimpleModel(text: "black", color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
            
        ]
    }
    
    func getModel(_ index:Int)->SimpleModel{
        return simpleModels[index]
    }
    
    
}
