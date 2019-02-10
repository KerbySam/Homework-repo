//1. Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.
//
//2. Описать пару его наследников trunkCar и sportСar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.
//
//3. Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет trunkCar, а какие – sportCar. Добавить эти действия в перечисление.
//
//4. В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.
//
//5. Создать несколько объектов каждого класса. Применить к ним различные действия.
//
//6. Вывести значения свойств экземпляров в консоль.

enum EngineIsOnOff
{
    
    case On
    case Off
}

enum WindowsIsOpenClose
{
    case Open
    case Close
}

enum UseNitro
{
    case Yes
    case No
}

enum TruckIsDownloadUplode
{
    case Download
    case Uplode
}

class Car
{
    var brand : String = ""
    var year = 0
    var volume = 0
    var price = 0
    var engineSwitch = EngineIsOnOff.Off
    var windowsSwitch = WindowsIsOpenClose.Close
    
    func Action() {
        
    }
}


class sportCar : Car {
    var isNitro : Bool = true
  
    init(brand : String, year : Int, volume : Int, price : Double, engineSwitch : EngineIsOnOff, windowsSwitch : WindowsIsOpenClose) {
        super.init()
       
        //self.brand = brand
        
    }
    func NitroGen (isNitro : Bool)
    {
       if isNitro
       {
        print("Car with Nitro!")
        }
       else{
        print("OOps")
        }
        
    }
    
  //  convenience init( isNitro : Bool) {
    //    self.init( isNitro : true)
        //self.isNitro = isNitro
        //self.NitroGen(isNitro: false)
  //  }
}

class truckCar : Car {
    var haveTrailer : Bool = true
    var truckAction = TruckIsDownloadUplode.Uplode

    
}



var SportCar = sportCar(brand : "Mitsubishi", year : 1999, volume : 300, price : 12000, engineSwitch: EngineIsOnOff.On, windowsSwitch: WindowsIsOpenClose.Open)

//SportCar.isNitro = false

//SportCar.volume = 50
SportCar.NitroGen(isNitro: true)

var SportCar2 : sportCar = sportCar(brand: "Toyota", year: 2012, volume: 100, price: 20000, engineSwitch: .Off, windowsSwitch: WindowsIsOpenClose.Close)

var SportCar3 : sportCar = sportCar(brand: "Toyota", year: 2015, volume: 700, price: 10000, engineSwitch: .On, windowsSwitch: WindowsIsOpenClose.Open)

SportCar3.brand = "Ferari"


print(SportCar3.brand)


//var car5 : sportCar = sportCar(isNitro: true)

//print(SportCar.NitroGen(isNitro: true))

var TruckCar = truckCar()

TruckCar.haveTrailer = false

print(TruckCar.haveTrailer)

