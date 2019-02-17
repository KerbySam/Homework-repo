//1. Реализовать свой тип коллекции «очередь» (queue) c использованием дженериков.
//
//2. Добавить ему несколько методов высшего порядка, полезных для этой коллекции (пример: filter для массивов)
//
//3. * Добавить свой subscript, который будет возвращать nil в случае обращения к несуществующему индексу.

struct queue <T> {
    
    var elements: [T] = []
    
    mutating func AppendElement(element: T) {
        elements.append(element)
    }
    mutating func RemoveElement(_ value : Int)->T {
        return elements.remove(at: value)
    }
    
    var isEmpty: Bool {
        return elements.count == 0
    }
    
    var firstElement: T? {
        if isEmpty {
            print("Array is empty!")
            return nil
        } else {
            print("Last element of array is \(elements.last!)")
            return elements.last
        }
    }
    
    var lastElement: T? {
        if isEmpty {
            print("Array is empty!")
            return nil
        } else {
            print("First element of array is \(elements.first!)")
            return elements.first
        }
    }
//
//    subscript(index: Int) -> T{
//
//        get{
//            return elements[index]
//        }
//        set(newValue){
//            elements[index] = newValue
//        }
//    }
    
}


struct ModelList {
    var model: String
    var year: Int
}

extension ModelList: CustomStringConvertible {
    var description : String {
        var description = "\n"
        description += "model: \(model), \n"
        description += "year of manufacture: \(year)"
        return description
    }
}

var myList = queue<ModelList>()
myList.AppendElement(element: .init(model: "Alfa Romeo", year: 2015))
myList.AppendElement(element: .init(model: "BMW", year: 2019))
myList.AppendElement(element: .init(model: "Honda", year: 2014))
myList.AppendElement(element: .init(model: "Toyota", year: 2016))
myList.AppendElement(element: .init(model: "Volvo", year: 2017))
myList.AppendElement(element: .init(model: "Skoda", year: 2014))
myList.AppendElement(element: .init(model: "Lexus", year: 2018))

print(myList.elements)

print("/////////////////////////")

myList.firstElement

myList.lastElement

print("/////////////////////////")

print(myList.elements.filter{ $0.year == (2014) })

myList.RemoveElement(2)

print("/////////////////////////")

print(myList.elements)



//print(myList.elements[6])

