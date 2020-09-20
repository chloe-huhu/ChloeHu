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
 Struct＆Class相同點：
 1. 創建屬性儲存值
 2. 創建method執行功能
 3. 使用subscripts可以存取值
 4. 使用initializer可以生成初始值
 5. 使用擴展將原先function功能增加

 
 分別的功能：
 Struct(value type)
 -複製完整相同內容給另一個變數，變數不受繼承變數影響，值不變。像是excel檔案copy給他人修給，本地的excel檔案內容跟著修改。
 -儲存在heap，效率比較好
 -自動initializer
 
 Class(reference type)
 -將記憶體位置給變數，因此繼承變數被修改時，是修改記憶體位址的內容。像是google雲端sheet一樣，link給他人被修改的是同一份file。
 -儲存在stack。
 -繼承功能，subclass直接使用superclass的function，也可以使用繼承下來的property
 
 */

//5.
/*
 instance method-
 1.屬於一個特定型別 ( 類別、結構或列舉 ) 的實體，可以用來存取和設置實體屬性或是提供實體需要的功能。
 2.呼叫方法：生成instance＋點語法 ( dot syntax ) 呼叫
 3.使用方法與function一樣
 
 
 type method-
 1. 在特定型別 ( 類別、結構與列舉 ) 上的方法。不是屬於實體，而是屬於這個型別 ( 類別、結構或列舉 ) 本身的方法
 2. 呼叫方法：使用點語法 ( dot syntax ) 呼叫，不用生成instance可以直接呼叫
 3. 使用方法在 func 前加上關鍵字 static func，在class中使用可以替換成class func 允許subclass override superclass

 */

//6.intilizer 在創建Instance時，必須為所有stroed property設置合適的初始值。
/*
 struct 不需要額外宣告init。它們會自動接收成員初始化器（ Memberwise initializer ）。與默認初始化器不同，即使 struct 存儲的屬性沒有默認值，該 struct 也會接收成員初始化器。
 在調用struct property時，被省略的property，初始器會直接調用預設值。
 方法：
 1.stroed property設置初始值
 2.declare property時設置預設值
 
 class所有儲存型屬性--包括所有繼承自父類別的屬性--都必須在建構過程中設置初始值。
 
 方法：
 1.Designated Initializers
 必須擁有至少一個Designated Initializers
 。在某些情況下，許多class通過繼承了父類別中的Designated Initializers而滿足了這個條件。
 2. Convenience Initializers
 Convenience Initializers來呼叫同一個class中的Designated Initializers，並為其參數提供預設值。
 */

//7. self


//8.

/*
 Struct(value type)
-複製完整相同內容給另一個變數，變數不受繼承變數影響，值不變。像是excel檔案copy給他人修給，本地的excel檔案內容跟著修改。
 
Class(reference type)
 -將記憶體位置給變數，因此繼承變數被修改時，是修改記憶體位址的內容。像是google雲端sheet一樣，link給他人被修改的是同一份file
 
*/


//Enumerations and Optionals in Swift
//1.

enum Gasoline {
    case nintyTwo
    case nintyFive
    case nintyeight
    case diesel
    
    func  getPrice()->Void{
        switch self {
        case .nintyTwo:
           print("ninty Two is 22 dollars")
        case .nintyFive:
            print("ninty Five is 25 dollars")
        case .nintyeight:
            print("ninty Eight is 28 dollars")
        case .diesel:
            print("Diesel is 18 dollars")
        }
    }
}
let gasolineDiesel = Gasoline.diesel
gasolineDiesel.getPrice()

//2.

class Pet {
    var name = "Soda"
}

class People{
    var pet : Pet? = Pet()
}

var pepoinst :People? = People()
if let pepoinst = pepoinst {
    let name = "run"
    print (name)
}
else{
    print ("XXx")
}

var peopinst2: People = People()
guard let peopinst2 = peopinst2 else { return}


//Protocol in Swift
//1.
struct Person {
    var name:String
}
