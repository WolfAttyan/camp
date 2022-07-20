//
//  gaidoViewController.swift
//  camp
//
//  Created by cl_umeda_017 on 2022/03/16.
//

import UIKit

class gaidoViewController: UIViewController {
    
    @IBAction func Q1(_ sender: Any){
        let url =
        URL(string:"https://camphack.nap-camp.com/970")
        if( UIApplication.shared.canOpenURL(url!) ) {
                  UIApplication.shared.open(url!)
            
                }
    }
    
    @IBAction func Q2(_ sender: Any){
        let url =
            URL(string:"https://montrek55.com/tent_tech_place/#:~:text=%E5%8D%B1%E9%99%BA%E3%81%AA%E5%A0%B4%E6%89%80%E3%82%92%E9%81%BF%E3%81%91%E3%82%8B%E3%81%AE%E3%81%AF%E3%82%82%E3%81%A1%E3%82%8D%E3%82%93%E3%81%A7%E3%81%99%E3%81%8C,%E3%81%BB%E3%81%86%E3%81%8C%E9%9D%99%E3%81%8B%E3%81%A7%E8%90%BD%E3%81%A1%E7%9D%80%E3%81%91%E3%82%8B%E3%81%A8%E3%81%8B%E2%80%A6")
            if( UIApplication.shared.canOpenURL(url!) ) {
                      UIApplication.shared.open(url!)
    }
    }
    
    @IBAction func Q3(_ sender: Any){
        let url =
            URL(string:"https://diyclip.roymall.jp/outdoor/1112245")
            if( UIApplication.shared.canOpenURL(url!) ) {
                      UIApplication.shared.open(url!)
    }
    }
        
    
    @IBAction func Q4(_ sender: Any){
        let url =
            URL(string:"https://magazine.cainz.com/article/23316")
            if( UIApplication.shared.canOpenURL(url!) ) {
                      UIApplication.shared.open(url!)
    }
    }
        
    
    @IBAction func Q5(_ sender: Any){
        let url =
            URL(string:"https://skywardplus.jal.co.jp/plus_one/other/makefire_howto/")
            if( UIApplication.shared.canOpenURL(url!) ) {
                      UIApplication.shared.open(url!)
    }
    }
    
    
    @IBAction func Q6(_ sender: Any){
        let url =
            URL(string:"https://camphack.nap-camp.com/3842")
            if( UIApplication.shared.canOpenURL(url!) ) {
                      UIApplication.shared.open(url!)
    }
    }
    
    @IBAction func Q7(_ sender: Any){
        let url =
            URL(string:"https://www.biccamera.com/bc/i/topics/osusume_camping_equipment/index.jsp")
            if( UIApplication.shared.canOpenURL(url!) ) {
                      UIApplication.shared.open(url!)
    }
    }
    
    @IBAction func Q8(_ sender: Any){
        let url =
            URL(string:"https://car-me.jp/osusume/articles/18202")
            if( UIApplication.shared.canOpenURL(url!) ) {
                      UIApplication.shared.open(url!)
    }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
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
