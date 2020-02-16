//
//  CoffeeMachineMain.swift
//  CoffeMachine2020
//
//  Created by maxxx on 14.02.2020.
//  Copyright © 2020 maxxx. All rights reserved.
//

import Foundation

struct espresso {
    let beans = 10
    let water = 10
    init() {}
    
}

class CoffeeMachine:NSObject {
    
    var milkTank:Int
    var waterTank:Int
    var beansTank:Int
    var trashContainerCapacity:Int
    
    override init(){
        beansTank = 100
        milkTank = 100
        trashContainerCapacity = 0
        waterTank = 100
        
    }
    
    
    func prepareDrink(drink:String){
    
        if drink == "cappuchino" {
            beansTank -= 15
            trashContainerCapacity += 30
            waterTank -= 10
            milkTank -= 10
            
        } else if drink == "espresso" {
            beansTank -= 10
            trashContainerCapacity += 20
            waterTank -= 10
            
        }
    
}

    
    
    func addWater(){
        waterTank = 100
        
    }
    
    func addMilk(){
        milkTank = 100
    }
    
    func addBeans(){
        beansTank = 100
    }
    
    func clearTrash(){
        trashContainerCapacity = 0
    }
}
