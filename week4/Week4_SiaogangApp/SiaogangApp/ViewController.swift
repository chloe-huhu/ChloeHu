//
//  ViewController.swift
//  SiaogangApp
//
//  Created by hu shun-ling on 2020/10/3.
//

import UIKit

class ViewController: UIViewController {

    struct addressData : Decodable{
        var stationID : String = ""
        var stationName : String = ""
        var stationAddress : String = ""
    }
    
    @IBOutlet weak var number :UILabel!
    @IBOutlet weak var name :UILabel!
    @IBOutlet weak var address :UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        getaddressData()
        self.view.backgroundColor = UIColor.orange
    }

    func getaddressData() {
             let address = "https://stations-98a59.firebaseio.com/practice.json"
             if let url = URL(string: address) {
                 // GET
                 URLSession.shared.dataTask(with: url) { (data, response, error) in
                    // 假如錯誤存在，則印出錯誤訊息（ 例如：網路斷線等等... ）
                    if let error = error {
                         print("Error: \(error.localizedDescription)")
                    // 取得 response 和 data
                     } else if let response = response as? HTTPURLResponse,let data = data {
                    // 將 response 轉乘 HTTPURLResponse 可以查看 statusCode 檢查錯誤（ ex: 404 可能是網址錯誤等等... ）
                        print("Status code1: \(response.statusCode)")
                    // 創建 JSONDecoder 實例來解析我們的 json 檔
                         let decoder = JSONDecoder()
                    // decode 從 json 解碼，返回一個指定類型的值，這個類型必須符合 Decodable 協議
                        if let stationdata = try? decoder.decode(addressData.self, from: data) {
                            print(stationdata)

                        DispatchQueue.main.async {
                            self.number.text = stationdata.stationID
                            self.name.text = stationdata.stationName
                            self.address.text = stationdata.stationAddress
                        }
                        }
                     }
                 }.resume()
             } else {
                 print("Invalid URL.")
             }
         }
}
