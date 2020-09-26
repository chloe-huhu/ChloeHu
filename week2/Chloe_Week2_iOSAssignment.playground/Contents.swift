import UIKit

//Object-Oriented Swift///

//1.
class Animal {
    enum Gender {
        case male
        case female
        case underfined
    }
    var meal : String = "everything!"
    
    func eat (){
        print ("I eat \(meal)")
    }
}
var HappyAnimal = Animal()
HappyAnimal.eat()

//2.
class Elephant : Animal{
    override func eat() {
        print ("I eat strawberry")
    }
}
let myElephant = Elephant()
myElephant.eat()

class Tiger : Animal{
    override func eat() {
    print ("I eat meat")
}
}
let myTiger = Tiger()
myTiger.eat()

class Horse : Animal{   // 父類別所有的特性都一併繼承下來
    override func eat() {
        print("I eat grass")
    }}
let myHorse = Horse()   //myHorse是horse的object
myHorse.eat()

//3.

class Zoo{
    var weeklyHot = Animal()
    init(weeklyHot : Animal){}
    
}
let zoo = Zoo (weeklyHot: Tiger())
 
zoo.weeklyHot = myTiger
zoo.weeklyHot = myElephant
zoo.weeklyHot = myHorse


//4.
/*

 What’s the difference between ​Struct​ and ​Class​ ?
 
 Struc是value type，
 -複製完整相同內容給另一個變數，變數不受繼承變數影響，值不變。
 -有memberwise initilizer，可以直接宣告object
 -使用於簡單數據類型
 
 Class是reference type)
 -分享記憶體位置給變數，因此繼承變數被修改時，是修改記憶體位址的內容。
 -需要initialize變數，才能宣告object。
 -有繼承、封裝、多重三大功能特性。繼承：subclass直接取用superclass的function、property，新增property
 -使用於需要用到class繼承特性時
 

//5.What’s the difference between ​instance method​ and ​type method​ ?
 
範例 class Circle {

     static let PI = 3.14

     var radius: Double

     init(radius: Double) {
         self.radius = radius
     }

     // Returns the area of this circle
     func area() {
         return PI * radius
     }

     // Ridiculous class method for demonstration purposes
     static func printTypeName() {
         println("Circle")
     }
 }
 let myCircleInstance = Circle(radius: 4.5)
 let anotherCircleInstance = Circle(radius: 23.1)
 
 
 instance method-
 let myCircleInstance = Circle(radius: 4.5)
 let anotherCircleInstance = Circle(radius: 23.1)
 
 1.屬於一個class或Struct的instance，另外製造一個instance容器，
 可以用來存取和設置實體peoperty或是提供實體需要的method。
 只能在它所屬type的instance上調用，不能在沒有instance的情況下獨立調用它。
 2.呼叫方法：生成instance＋.+method/property name
 3.使用方法與function一樣
 
 
 type method-
 Circle.printTypeName()
 1. 在class或Struct{}裡的method。不是屬於instance，而是屬於這個型別 ( class、struct或enum ) 本身的method
 2. 呼叫方法：class/struct name+.+method/property name
 3. 使用方法在 func 前加上關鍵字 static func，在class中使用可以替換成class func 允許subclass override superclass



//6.What does ​Initilizer​ do in class and struct ?
 intilizer 在創建Instance時，爲stroed property設置合適的初始值。
 struct 不需要額外宣告init。它們會自動接收 Memberwise initializer。
 與默認初始化器不同，即使 struct 存儲的屬性沒有默認值，該 struct 也會接收成員初始化器。
 方法：
 1.stroed property設置初始值
 2.declare property時設置預設值
 
 class所有stroed property-包括所有繼承自父類別的屬性-都必須在建構過程中設置初始值(initial)
 

//7. What does ​self​ mean in an instance method and a type method ?

Instance Method-
在instance method中當property與method parameter 名稱相同時，可以用self區分property與method parameter，使用方法：self.+property
 
type method-
 
//8.What’s the difference between ​reference type​ and ​value type​ ?
value type
-複製完整相同內容給另一個變數，變數不受繼承變數影響，值不變。
-以下type都屬於valuetype:
 struct(Int\String\Double\Bool)\Arrays\Dictionary\Sets\Enumeration\tuples
 
reference type
-分享記憶體位置給變數，因此繼承變數被修改時，是修改記憶體位址的內容。
-以下type都屬於reference type：
 class\Function\Closure
 
 
*/


//Enumerations and Optionals in Swift
//1.

enum Gasoline : Int {
    case nintyTwo = 22
    case nintyFive = 25
    case nintyeight = 28
    case diesel = 18
    
    func getPrice(){
        switch self {
        case .nintyTwo:
            print("ninty Two is \(Gasoline.nintyTwo.rawValue) dollars")
        case .nintyFive:
            print("ninty Five is \(Gasoline.nintyFive.rawValue)  dollars")
        case .nintyeight:
            print("ninty Eight is  \(Gasoline.nintyeight.rawValue) dollars")
        case .diesel:
            print("Diesel is  \(Gasoline.diesel.rawValue) dollars")
        }
    }
}
let gasoline = Gasoline.diesel
gasoline.getPrice()

print(Gasoline.nintyTwo.rawValue)
/*
Please explain what is enum ​associate value​ and how it works
raw value在定義列舉時即被設置，對於一個特定的列舉成員，它的原始值始終是相同的，像是上述的汽油價格。
associate value​是在列舉成員被指派為一個變數(或常數)時才一併設置的值，列舉成員的相關值是可以不同的。
*/

enum Barcode {
    case UPCA(Int, Int, Int, Int)
    case QRCode(String)
}
// 指派 Barcode 型別 成員值為 UPCA
// 相關值為 (8, 85909, 51226, 3)
var productBarcode = Barcode.UPCA(8, 85909, 51226, 3)

// 如果要修改為儲存 QR Code 條碼
//productBarcode = .QRCode("ABCDEFG")

// 這時 .UPCA(8, 85909, 51226, 3) 會被 .QRCode("ABCDEFG") 所取代
// 一個變數 同一時間只能儲存一個列舉的成員值(及其相關值)
switch productBarcode {
case let .UPCA(numberSystem, manufacturer, product, check):
    print("UPC-A: \(numberSystem), \(manufacturer), \(product), \(check).")
case let .QRCode(productCode):
    print("QR Code: \(productCode).")
}
//2.

class Pet {
    var name:String
    init(name:String) {
        self.name = name
    }
}
var pet = Pet(name:"Lucky")

class People {
var pet : Pet?
}

let people = People()
people.pet = Pet(name:"Lucky")
/*
if let peopleWithPet = people.pet?.name{
    print("people has pet name\(peopleWithPet)")
}else {
    print("people don't have pet")
}*/

func showPeopleWithPet (){
    guard let peopleWithPet = people.pet?.name else{
        return }
    print("people has pet name\(peopleWithPet)")
}
showPeopleWithPet()
//Protocol in Swift
//1.
protocol PoliceMan{
    func arrestCriminals()
}
protocol ToolMan{
    func fixComputer()
}

struct Person : PoliceMan{
    var name : String
    var toolMan : ToolMan?
    func arrestCriminals(){
        print("criminals is \(name)")
    }
}
struct Engineer:ToolMan{
    func fixComputer(){
        print("engineer fix computer")
    }
}
var engineer: ToolMan = Engineer()
let person = Person (name: "Steven", toolMan:engineer)


enum GuessNumberGameError : Error{
    case wrongNumber
}

class GuessNumerGame {
var targetNumber = 10
func guess(number:Int) throws {
        guard number == targetNumber else {
            throw GuessNumberGameError.wrongNumber
        }
        print("Guess the right number:\(targetNumber)")
}
}
var guessNumberGame = GuessNumerGame()
try guessNumberGame.guess(number: 20)
