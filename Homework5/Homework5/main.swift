//1. Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.
//
//2. Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей).
//
//3. Создать два класса, имплементирующих протокол «Car» - trunkCar и sportСar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.
//
//4. Для каждого класса написать расширение, имплементирующее протокол CustomStringConvertible.
//
//5. Создать несколько объектов каждого класса. Применить к ним различные действия.
//
//6. Вывести сами объекты в консоль.

import Foundation

enum Engine
{
    case disel, gasoline
}

protocol Car {
    var model : String { get }
    var engine : Engine { get set }
    var year : Int { get }
    var color : String { get }
    
    func CloseWindows() -> Bool
    func StartStopEngine() -> Bool
}

extension Bool : Car {
    
     func StartStopEngine() -> Bool {
        if model == "Volvo"
        {
            return true
            
        }
        else
        {
            return false
        }
    }
    
    var engine: Engine {
        get {
            return Engine.disel
        }
        set {
            Engine.gasoline
        }
    }
    
    var model: String {return "Volvo" }
    
    
    
    var year: Int { return 1999 }
    
    var color: String {return "Red" }
    
    
    func CloseWindows() -> Bool {
        if engine == Engine.gasoline
        {
            return true
        }
        else
        {
            return false
        }
    }
   
        
    }

class TrunkCar : Car
{
    var model: String = "Volvo"
    
    var engine: Engine = .disel
    
    var year: Int = 1979
    
    var color: String = "White"
    
    func CloseWindows() -> Bool {
        
        return false
    }
    
    func StartStopEngine() -> Bool {
        print("Trunk car engine is start:")
        return true
    }
    
    
}

class SportСar : Car
{
    var model: String  = "Honda"
    
    var engine: Engine = Engine.gasoline
    
    var year: Int = 2012
    
    var color: String = "Red"
    
    func CloseWindows() -> Bool {
         print("Sport car windows is open:")
        return true
    }
    
    func StartStopEngine() -> Bool {
         print("Sport car engine is start:")
        return false
    }
    
    
}

extension TrunkCar : CustomStringConvertible
{
    var description: String {
       var description = "Trunk Car \n"
        description += "Model: \(self.model) \n"
        description += "Engine: \(self.engine) \n"
        description += "Year: \(self.year) \n"
        description += "Color: \(self.color) \n"
        description += "Windows is open: \(self.CloseWindows()) \n"
        description += "Engine is start: \(self.StartStopEngine())"
        return description
    }
    
    
}

extension SportСar : CustomStringConvertible
{
    var description: String {
        var description = "Sport Car \n"
        description += "Model: \(self.model) \n"
        description += "Engine: \(self.engine) \n"
        description += "Year: \(self.year) \n"
        description += "Color: \(self.color) \n"
        description += "Windows is open: \(self.CloseWindows()) \n"
        description += "Engine is start: \(self.StartStopEngine())"
        return description
    }
    
    
}

var car1 = TrunkCar()

print(car1.CloseWindows())

print(car1.description)

print("/////////////")

var car2 = SportСar()

print(car2.StartStopEngine())

print(car2.description)

