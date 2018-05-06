

import Foundation

protocol GasCar {
    func startEngine()
    func stopEngine()
}

class Car: GasCar {
    private var model: String
    private var year: Int
    
    init() {
        model = ""
        year = 2018
    }
    
    public func setModel(newVal: String) {
        model = newVal
    }
    
    public func getModel() -> String {
        return model
    }
    
    public func setYear(newVal: Int) {
        year = newVal
    }
    
    public func getYear() -> Int {
        return year
    }

    func printDescription() {
        print("This is a Car")
    }
    
    func startEngine() {
        print("#file literal from file: \(#file)")
        print("#function literal from function: \(#function)")
        print("#line: \(#line) -> #column: \(#column)")
    }
    
    func stopEngine() {
        print("#file literal from file: \(#file)")
        print("#function literal from function: \(#function)")
        print("#line: \(#line) -> #column: \(#column)")
    }
}

class Tesla: Car {
    override func printDescription() {
        super.printDescription()
        print("This is a Tesla")
    }
    
    func printDescription(param: String) {
        print("This is a Tesla, year: \(getYear()), model: \(getModel()).")
    }
}

class CreateCar {
    init() {
        let k7 = Car()
        k7.setModel(newVal: "K7")
        k7.setYear(newVal: 2009)
        
        k7.printDescription()
        
        let tesla = Tesla()
        tesla.setModel(newVal: "Tesla")
        tesla.setYear(newVal: 2018)
        
        tesla.printDescription()
        tesla.printDescription(param: "all")
    }
}

let createCar = CreateCar()


