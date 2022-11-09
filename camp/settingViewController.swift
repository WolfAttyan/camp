//
//  settingViewController.swift
//  camp
//
//  Created by clark on 2022/10/18.
//

import UIKit

class settingViewController: UIViewController {
    @IBOutlet weak var settingbutton: UIButton!
    @IBOutlet weak var mondaybutton: UIButton!
    @IBOutlet weak var tuesdaybutton: UIButton!
    @IBOutlet weak var wednesdaybutton: UIButton!
    @IBOutlet weak var thursdaybutton: UIButton!
    @IBOutlet weak var fridaybutton: UIButton!
    @IBOutlet weak var saturdaybutton: UIButton!
    @IBOutlet weak var sundaybutton: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    

        let dt = Date()
        let dateFormatter = DateFormatter()

        // DateFormatter を使用して書式とロケールを指定する
        dateFormatter.dateFormat = DateFormatter.dateFormat(fromTemplate: "yMMMdHms", options: 0, locale: Locale(identifier: "ja_JP"))

        print(dateFormatter.string(from: dt))
         
        // Do any additional setup after loading the view.
      
    }
    
    @IBAction func monday (){
        //月曜日設定時に、現在が火曜日だったら六日後の情報を持ってくる
        if (DateFormatter == ){
        
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
