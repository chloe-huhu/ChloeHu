//
//  ViewController.swift
//  Week4_Chloe
//
//  Created by hu shun-ling on 2020/10/2.
//

import UIKit

var rowNames : [String] = []

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    /*UITableViewDataSource協定必須實作的兩個方法
     處理UITabkeView的外觀，表格高度、section的heading&footer
     顯示列數numberOfRowsInSection ＆ 每列的資料 cellForRowAt
     */

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rowNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "datacell"
       
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier,for:indexPath)

        cell.textLabel?.text = rowNames[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0;//Choose your custom row height
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rows()
    }
}
func rows()
    {   var sum = 0
        for number in 0..<10
        {
            sum = sum + number
            //print("This is section 0 , row \(number)")
            rowNames.append("This is section 0 , row \(number)")
        }
    }
