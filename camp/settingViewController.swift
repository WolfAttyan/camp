//
//  settingViewController.swift
//  camp
//
//  Created by clark on 2022/10/18.
//

import UIKit

class settingViewController: UIViewController {
//    @IBOutlet weak var settingbutton: UIButton!
   // @IBOutlet weak var mondaybutton: UIButton!
   // @IBOutlet weak var tuesdaybutton: UIButton!
   // @IBOutlet weak var wednesdaybutton: UIButton!
   // @IBOutlet weak var thursdaybutton: UIButton!
   // @IBOutlet weak var fridaybutton: UIButton!
   // @IBOutlet weak var saturdaybutton: UIButton!
   // @IBOutlet weak var sundaybutton: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("aaa")
        

        
        
        /// DateFomatterクラスのインスタンス生成
        let dateFormatter = DateFormatter()
         
        /// カレンダー、ロケール、タイムゾーンの設定（未指定時は端末の設定が採用される）
        dateFormatter.calendar = Calendar(identifier: .gregorian)
        dateFormatter.locale = Locale(identifier: "ja_JP")
        dateFormatter.timeZone = TimeZone(identifier:  "Asia/Tokyo")
        /// 変換フォーマット定義（未設定の場合は自動フォーマットが採用される）
        dateFormatter.dateFormat = "EEEEE"
         
        /// データ変換（Date→テキスト）
        let dateString = dateFormatter.string(from: Date())

   // let saveData: UserDefaults = UserDefaults.standard
        
   //  saveData.set(mondaybutton, forKey: "あー")
   // = saveData.object(forKey: "あー")

      
         
        // Do any additional setup after loading the view.
      
    }
    
    func getDateString() -> String{
        let date = NSDate()
        let formatter = DateFormatter()
        formatter.dateFormat = "EEE"
        let dateStr = formatter.string(from: date as Date)
        
        return dateStr
        
        print(dateStr)
        
}
   @IBAction func monday (){
        print(getDateString())
       
       if(getDateString() == "水" ){

           let preNC = self.presentingViewController as! UINavigationController
           let preVC = preNC.viewControllers[preNC.viewControllers.count - 2] as! ViewController
           preVC.n = 120
//           let nextVC = self.storyboard?.instantiateViewController(withIdentifier:"toViewController") as! ViewController
//           nextVC.n = 120
           self.present(preVC, animated: true, completion: nil)
       }
       
       
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



}
