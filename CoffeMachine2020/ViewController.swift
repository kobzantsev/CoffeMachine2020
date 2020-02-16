//
//  ViewController.swift
//  CoffeMachine2020
//
//  Created by maxxx on 14.02.2020.
//  Copyright © 2020 maxxx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let myCoffeMachine =  CoffeeMachine()
    @IBOutlet weak var labelStates: UILabel!
    @IBOutlet weak var tankWater: UILabel!
    @IBOutlet weak var milkTank: UILabel!
    @IBOutlet weak var beansTank: UILabel!
    @IBOutlet weak var cappuchino: UIButton!
    @IBOutlet weak var espresso: UIButton!
    @IBOutlet weak var water: UIButton!
    @IBOutlet weak var milk: UIButton!
    
    @IBOutlet var progressPrepare: UIView!
    @IBOutlet weak var trashTank: UILabel!
    @IBOutlet weak var beans: UIButton!
    
    @IBOutlet weak var trash: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tankWater.text = String(myCoffeMachine.waterTank)
        milkTank.text = String( myCoffeMachine.milkTank)
        beansTank.text = String(myCoffeMachine.beansTank)
        trashTank.text = String(myCoffeMachine.trashContainerCapacity)
        
        //myCoffeMachine.prepareDrink(drink: "cappuchino")// Do any additional setup after loading the view.
    }
    
    @IBAction func makeCappuchino(_ sender: UIButton) {
        if myCoffeMachine.waterTank < 10 {
            
            labelStates.text = "No water"
        } else if myCoffeMachine.milkTank < 10 {
            labelStates.text = "No milk"
            
        } else if myCoffeMachine.beansTank < 15 {
            
            labelStates.text = "No beans" } else if myCoffeMachine.trashContainerCapacity > 70 {
            labelStates.text = "Trash Full"
        } else {
            myCoffeMachine.prepareDrink(drink:"cappuchino")
            updateLabels()
            labelStates.text = "Prepared Cappuchino"
            
        }
    }
    
    @IBAction func makeEspresso(_ sender: UIButton) {
        if myCoffeMachine.waterTank < 10 {
            
            labelStates.text = "No water"
        } else if myCoffeMachine.beansTank < 10 {
            
            labelStates.text = "No beans" } else if myCoffeMachine.trashContainerCapacity > 80 {
            labelStates.text = "Trash Full"
        } else {
            myCoffeMachine.prepareDrink(drink:"espresso")
            updateLabels()
            labelStates.text = "Prepared Espresso"
            
        }
    }
    
    func updateLabels(){
        tankWater.text = String(myCoffeMachine.waterTank)
        milkTank.text = String( myCoffeMachine.milkTank)
        beansTank.text = String(myCoffeMachine.beansTank)
        trashTank.text = String(myCoffeMachine.trashContainerCapacity)
        
    }
    
    @IBAction func addWatrerButton(_ sender: UIButton) {
        myCoffeMachine.addWater()
        updateLabels()
    }
    
    @IBAction func addBeansButton(_ sender: UIButton) {
        myCoffeMachine.addBeans()
        updateLabels()
    }
    
    @IBAction func addMilkButton(_ sender: UIButton) {
        myCoffeMachine.addMilk()
        updateLabels()
    }
    @IBAction func clearTrashButton(_ sender: UIButton) {
        myCoffeMachine.clearTrash()
        updateLabels()
    }
}

