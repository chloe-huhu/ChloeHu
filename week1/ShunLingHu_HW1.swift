import UIKit

var str = "Hello, playground"
/*

 2. Common Commands used in Git or GitHub:

*git status-
    查詢目前目錄的狀態，隨時檢查修改過的檔案是否有上傳

 Usecase-
    創建一個專案專案叫test_folder，建立html檔案：welcome.html，檢查目錄狀態，可以看到welcome.html是未追蹤的檔案。

 Command Line-
      ~/Desktop   master ●  mkdir test_folder
      ~/Desktop   master ●  cd test_folder
      ~/Desktop/test_folder   master ●  git init
     已初始化空的 Git 版本庫於 /Users/chloehuhu/Desktop/test_folder/.git/

      ~/Desktop/test_folder   master 
      ~/Desktop/test_folder   master  echo "hello world">welcome.html
      ~/Desktop/test_folder   master  git status
     位於分支 master
     尚無提交

     未追蹤的檔案:
       （使用 "git add <檔案>..." 以包含要提交的內容）
         .DS_Store
         welcome.html
     提交為空，但是存在尚未追蹤的檔案（使用 "git add" 建立追蹤）

*git add-
     因為新增welcome.html檔案，已經產生版本的變動，使用Git add，從working area 提交到 stage area 讓Ｇit追蹤 welcome.html。

 Use case-
        welcome.html從「未追蹤檔案」轉到「新檔案」。表示已經被轉到 stage area

 Command Line-
      ~/Desktop/test_folder   master  git add welcome.html
      ~/Desktop/test_folder   master ✚  git status
     位於分支 master

     尚無提交

     要提交的變更：
       （使用 "git rm --cached <檔案>..." 以取消暫存）
         新檔案：   welcome.html

     未追蹤的檔案:
       （使用 "git add <檔案>..." 以包含要提交的內容）
         .DS_Store



 *git commit-將檔案從stage area 移動到Repo永久儲存，並添加commit告訴你的隊友，你新增了什麼內容，方便他們閱讀。
     Use case-輸入指令git commit，記錄下更改原因。再次用git status檢查上傳狀態。

     Command-

      ~/Desktop/test_folder   master ✚  git commit
     [master (根提交) 22b44ac] create welcome.html
       1 file changed, 1 insertion(+)
      create mode 100644 welcome.html

      ~/Desktop/test_folder   master  git status
     位於分支 master
     未追蹤的檔案:
       （使用 "git add <檔案>..." 以包含要提交的內容）
         .DS_Store

*git log-
    檢視Git紀錄，包含：
     1. commit作者：hu shun-ling
     2. commit時間:9/9
     3. commit的操作：create welcome.html

 Command Line-

     commit 22b44ac1f47ff57977d541858bb68e517227be9b (HEAD -> master)
     Author: hu shun-ling <chloehuhu@ChloeHuHu-MacBook-Air.local>
     Date:   Wed Sep 9 14:26:19 2020 +0800

         create welcome.html


*git push-
    將本地端的專案上傳遠端GitHub

     [Repo_name]
     ~/Desktop/test_folder   master  git push -u origin master
     枚舉物件: 3, 完成.
     物件計數中: 100% (3/3), 完成.
     寫入物件中: 100% (3/3), 363 位元組 | 363.00 KiB/s, 完成.
     總共 3 (差異 0)，復用 0 (差異 0)，重用包 0
     To https://github.com/chloe-huhu/test_folder.git
      * [new branch]      master -> master
     分支 'master' 設定為追蹤來自 'origin' 的遠端分支 'master'。


     [Branch_name]
      ~/Desktop/test_folder   master  git push -u origin cat
     總共 0 (差異 0)，復用 0 (差異 0)，重用包 0
     remote:
     remote: Create a pull request for 'cat' on GitHub by visiting:
     remote:      https://github.com/chloe-huhu/test_folder/pull/new/cat
     remote:
     To https://github.com/chloe-huhu/test_folder.git
      * [new branch]      cat -> cat
     分支 'cat' 設定為追蹤來自 'origin' 的遠端分支 'cat'。

*git remote -v
    遠端詳細位置
     Command-
     ~/Desktop/test_folder   master git remote -vv
     origin    https://github.com/chloe-huhu/test_folder.git (fetch)
     origin    https://github.com/chloe-huhu/test_folder.git (push)


     *git branch-查詢當前所在分支。
     分支的用意在於當專案越來越龐大，且有越多同事執行專案，使用branch另外進行，不會影響正在運行的專案。

     Use case-使用git branch了解當前所在分支

     Command-
      ~/Desktop/test_folder   master  git log
     ＊master


     *fork-在GitHub中複製、備份他人的專案到自己的GitHub中，參與編寫與更改。


 3. Please describe how to establish a github repo and how to upload the local projects to github. Try to explain it as detail as possible.

     1.
        在GitHub網頁右上角建立新repo，依照建立流程添加詳細訊息，
        像是：專案名稱、簡述專案內容、是否公開，如同Raywenderlich建議README.md（簡述此專案計畫、聯繫人email等等。）
        和License（MIT License)都是首要包含檔案。建立完成後，從專案中複製Clone with HTTPS。

     2.透過terminal來操作，若電腦本地端已經有完成的專案，使用terminal進入專案。
     3.使用git status檢查是否有尚未同步的檔案。
     4.使用git add. 將所有已調整檔案上傳到stage area。
     5.使用git commit，commit此次調整內容。
     6.在遠端設定一個結點，使用git remote add origin + GitHub 上的Clone with HTTPS
     7.使用git remote -vv查遠端詳細位置，以及是否連結成功。
     8.使用git push -u origin master，將master分支的內容push上去GitHub，多個分支需要分別push。

 */

//Basic

//1.
let pi = 3.14
var  radius = 5.0
var circle = 2 * radius * pi
print (circle)

//2.
let x : Int = 8
let y : Int = 6
let averageXY = (x + y) / 2
print (averageXY)

//3-1
let a : Float = 10.0
let b : Float = 3.0
let averageAB = (a+b)/2
print (averageAB)

/*3-2
 (10/3)＝ 整數Int
 (10.0/3.0) = 浮點數 Float
 相同型別的數字才能做運算，像是整數僅能與整數做運作。
*/

//4
var flag : Bool = true
var inputString : String = "Hello world."
let bitInBite : Int = 8
let averageScore : Float = 86.8

//5
var salary = 22000
salary += 28000
print (salary)

//6 answer: Equality operator is ==
//7
let c = 10
let d = 3
let remain = 10 % 3
print (remain)

/*8
 let 常數，設定後不可改變。
 var 變數，設定後可以改變。
 */

//9

/*10
Type Inference類型推斷
Swift是一款高階的程式語言，swift可以透過編譯者給予變數的值來推斷變數的類型，編譯者可以將類型省略。
或是可以用滑鼠＋Option 確定swift給定變數的型別。
let dog : String = "name is soda."
let dog = "name is soda."
*/

//11 首先幫phoneNumber 數字串的類型定為String，依照String需求加入“”。由於phoneNumber是變數因此可以改變帶入hello
var phoneNumber : String = "0987654321"
phoneNumber = "hello"


//COLLECTION
//1.Arrays
var myFriends : [String] = []

//2.
myFriends += ["Ian","Bomi","Kevin"]

//3.
myFriends.append("Michael")

//4.
myFriends.insert("Kevin", at: 0)
myFriends.remove(at:3)

//5.
for myfriend in myFriends {
    print (myfriend)
}

//6.
/*myFriends[5]
there is no index 5 friends,system will show:out of range
*/
//7.
myFriends[0]

//8.
myFriends.last

//9.Dictionary
var myCountryNumber : [String : Int] = [:]

//10.
myCountryNumber.updateValue(1, forKey: "US")
myCountryNumber.updateValue(44, forKey: "GB")
myCountryNumber.updateValue(81, forKey: "JP")
//11.
myCountryNumber["GB"]=0

//12.
var emptyDictionary: [String: Int] = [:]

//13.
myCountryNumber.removeValue(forKey: "US")
print(myCountryNumber)

//CONTROL FLOW
//1.

let lottoNumbers = [10,9,8,7,6,5]
for number in lottoNumbers.count-3...lottoNumbers.count-1 {
    print(lottoNumbers[number])
}

print ("----")

//3.
var i = 5
while i < 11 {
    print (i)
    i+=1
}
print("---")
//4.
i = 10
repeat {
    print (i)
    i -= 2
}while i > 5

print("---")

/*5.
 while有可能判斷條件不成立，完全不會執行while內的程式，如果需要至少執行一次的需求，那就要用repeat。
 repeat與while一起使用時，基本語句為『repeat ＋ {程式碼} ＋ while + (判斷條件)』，所以repeat與while的組合是每次在迴圈結束時判斷條件是否成立，而單獨使用while則是在迴圈開始的時候判斷條件是否成立，這是這兩種用法的差異。
*/

//6.
var isRaining : Bool = true
if isRaining == true {
    print ("It’s raining, I don’t want to work today.")
}
else {print ("Although it’s sunny, I still don’t want to work today.")
}
//7.
var jobLevel = 1

switch jobLevel{
case (1) :
    print("your position is Member")
case (2):
    print("your position is Team Leader")
case (3):
    print("your position is Manager")
case (4):
    print("your position is Doctor")
default:
    print("We don't have this job")
}

//Function

//1
func greet (person:String = "Celeste") {
    print ("hello,",person)
}
greet()

//2

func multiply (a:Int,b:Int=10){
    print (a*b)
}
multiply (a:10)

/*3
定義function時在大括弧{}內用的參數名稱就是內部名稱(parameter name)，而呼叫function的小括弧()內用的參數名稱就是外部名稱(argument label)，一般來說內部名稱與外部名稱會是一樣，因爲swift預設會自動產生內外同名稱的參數
 */

/*4
func birthday ()-> String {
 }
 retrun type will be String
 
func payment()-> Double {
 }
 return type will be Double
*/
