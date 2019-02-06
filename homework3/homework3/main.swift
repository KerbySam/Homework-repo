//1. Описать несколько структур – любой легковой автомобиль и любой грузовик.
//
//2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.
//
//3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
//
//4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.
//
//5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.
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

enum TrunkIsDownloadUplode
{
    case Download
    case Uplode
}

struct SmallCar
{
    var brand : String
    var year : Int
    var volume : Int
    var engineIsOnOff : EngineIsOnOff
    var windowsIsOpenClose : WindowsIsOpenClose
    var trunkIsDownloadUplode : TrunkIsDownloadUplode
    
    mutating func EngineSwirch()
    {
        switch engineIsOnOff {
        case .On:
            windowsIsOpenClose = .Open
            print("Окна открыты")
          //  return true
        case .Off:
            windowsIsOpenClose = .Close
            print("Окна закрыты")
          //  return false
        }
    }
}

struct BigCar
{
    var brand : String
    var year : Int
    var volume : Int
    var engineIsOnOff : EngineIsOnOff
    var windowsIsOpenClose : WindowsIsOpenClose
    var trunkIsDownloadUplode : TrunkIsDownloadUplode
    
    mutating func trunkAction (){
        if (volume <= 0)
        {
        trunkIsDownloadUplode  = .Download
            print("Кузов разгружен")
        }
        else{
            trunkIsDownloadUplode = .Uplode
             print("Кузов загружен")
        }
    }
}
// Если двигатель заведен окна открываются (значение engineIsOnOff), если заглушен окна закрываются
var passengerCar = SmallCar(brand: "Volvo", year: 2014, volume: 300, engineIsOnOff: .On, windowsIsOpenClose: .Close, trunkIsDownloadUplode: .Uplode)
// Усли багажник пустой - кузов разгружен (значение переменной volume), если в богажнике есть вес - он загружен
var truck = BigCar(brand: "Man", year: 2010, volume: 0, engineIsOnOff: .On, windowsIsOpenClose: .Close, trunkIsDownloadUplode: .Uplode)

print(passengerCar)

print(truck)

passengerCar.EngineSwirch()
truck.trunkAction()

//
