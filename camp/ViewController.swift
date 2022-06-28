//
//  ViewController.swift
//  camp
//
//  Created by cl_umeda_017 on 2022/03/09.
//

import UIKit
import Alamofire


class ViewController: UIViewController {
    
    // アプリが起動した時
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        searchTemper(keyword: "searchWord")
    }
    
    @IBOutlet weak var searchText: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var weather: UILabel!
    @IBOutlet weak var temperature: UILabel!
    @IBOutlet weak var windspeed: UILabel!
    @IBOutlet weak var precipitation: UILabel!
    
    func searchBarSearchButtonClicked(_ srarchBar: UISearchBar) {
        
        view.endEditing(true)
        
        if let searchWord = searchText.text{
            print(searchWord)
            searchTemper(keyword: searchWord)
        }
    }
    
    func searchTemper(keyword: String){
        let url = "https://api.open-meteo.com/v1/forecast?latitude=52.52&longitude=13.41&hourly=temperature_2m,precipitation,weathercode,windspeed_10m"
        AF
            .request(url) // URLにリクエストを送る(情報ちょうだい)
            .responseDecodable(of: JSONResult.self) { response in // JSONResult型に返ってきた注文を変換する
            switch response.result {
            case .success(let data): // 成功した時
                dump(data)
                print(data.hourly.temperature_2m[0])
            case .failure(let error): // 失敗した時
                print("error")
            }
        }
    }
    
}


//        guard let keyword_encode = keyword.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else {
//            return
//        }
//        guard let req_url = URL(string:
//                                    "https://api.open-meteo.com/v1/forecast?latitude=52.52&longitude=13.41&hourly=temperature_2m,precipitation,weathercode,windspeed_10m"
//        ) else {
//            return
//        }
//        print(req_url)

struct ItemJson: Codable{
    let name: String?
    let maker: String?
    let url: URL?
    let image: URL?
}

struct RestltJson: Codable {
    let item:[ItemJson]?
}


struct JSONResult: Codable {
    let hourly: Temperature
}

struct Temperature: Codable {
    let temperature_2m: [Double]
    let weathercode: [Int]
    let windspeed_10m: [Double]
    let precipitation: [Double]
}
