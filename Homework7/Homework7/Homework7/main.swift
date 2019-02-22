//1. Придумать класс, методы которого могут создавать непоправимые ошибки. Реализовать их с помощью try/catch.
//
//2. Придумать класс, методы которого могут завершаться неудачей. Реализовать их с использованием Error.

struct Car {
    let model: String
    var engineVolume: Double
    let year: Int
}

enum MyError: Error {
    case notExist
}

class MyGarage {
    var cars = [
        "Volvo": Car(model: "Xc70", engineVolume: 2.4, year: 2014),
        "Honda": Car(model: "Accord", engineVolume: 2.0, year: 1999),
        "Toyota": Car(model: "Highlander", engineVolume: 3.5, year: 2005),
        "Mazda": Car(model: "II", engineVolume: 1.3, year: 2011)
    ]
    
    func Inspection(mark myCars: String) throws -> Car {
        guard let car = cars[myCars] else {
            throw MyError.notExist
        }
        return car
    }
    
}

extension Car: CustomStringConvertible {
    public var description: String {
        var description = ""
        description += "\(model), \(year) года выпуска с двигателем \(engineVolume) литра. \n"
        return description
    }
}

let cars = MyGarage()

print("В моем гараже есть:")

print(MyGarage.init().cars.description)

do {
    let myCars = try cars.Inspection(mark: "BMW")
    print(myCars.description)
} catch MyError.notExist {
    print("////////////////////////////////////////////////////////////////////")
    print("Такого автомобиля у меня нет в гараже!")
}
