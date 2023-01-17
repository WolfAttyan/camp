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
    
    var n : Int! = 144
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        searchTemper(keyword: "searchWord")
    }

    @IBOutlet weak var searchText: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var weatherLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var windspeedLavel: UILabel!
    @IBOutlet weak var precipitationLabel: UILabel!
    @IBOutlet weak var mainText: UILabel!
    
    func searchBarSearchButtonClicked(_ srarchBar: UISearchBar) {
        
        view.endEditing(true)
        
        if let searchWord = searchText.text{
            print(searchWord)
            searchTemper(keyword: searchWord)
        }
    }
    
    
    
    func searchTemper(keyword: String){
        let dt = Date()
        let dateFormatter = DateFormatter()

        // DateFormatter を使用して書式とロケールを指定する
        dateFormatter.dateFormat = DateFormatter.dateFormat(fromTemplate: "yMMMdHms", options: 0, locale: Locale(identifier: "ja_JP"))

        print(dateFormatter.string(from: dt))
        
        
        let url = "https://api.open-meteo.com/v1/forecast?latitude=35.6785&longitude=139.6823&hourly=temperature_2m,precipitation,weathercode,windspeed_10m&windspeed_unit=ms"
        AF
            .request(url) // URLにリクエストを送る(情報ちょうだい)
            .responseDecodable(of: JSONResult.self) { response in // JSONResult型に返ってきた注文を変換する
            switch response.result {
            case .success(let data): // 成功した時
//                dump(data)
                print(data.hourly.weathercode[0])
                print(data.hourly.temperature_2m[0])
                print(data.hourly.precipitation[0])
                // weathercodeの先頭を取得する
                let weathercode = data.hourly.weathercode[self.n]
                let precipitation = data.hourly.precipitation[self.n]
                let temperature = data.hourly.temperature_2m[self.n]
                let windspeed = data.hourly.windspeed_10m[self.n]
                // weathercodeの先頭が1だったら
                
                if  weathercode == 0 {
                    self.weatherLabel.text = "快晴"
                }
                
                if  weathercode == 1 {
                    self.weatherLabel.text = "晴れ"
                }
                
                if  weathercode == 2 {
                    self.weatherLabel.text = "晴れのちくもり"
                }
                
                if  weathercode == 3 {
                    self.weatherLabel.text = "くもり"
                }
                
                if  weathercode == 45 {
                    self.weatherLabel.text = "霧"
                }
                
                if  weathercode == 48 {
                    self.weatherLabel.text = "白霜"
                }
                
                if  weathercode == 51 {
                    self.weatherLabel.text = "小雨"
                }
                
                if  weathercode == 53 {
                    self.weatherLabel.text = "雨"
                }
                
                if  weathercode == 55 {
                    self.weatherLabel.text = "濃霧"
                }
                
                if  weathercode == 56 {
                    self.weatherLabel.text = "小雨"
                }
                
                if  weathercode == 57 {
                    self.weatherLabel.text = "強い雨"
                }
                
                if  weathercode == 61 {
                    self.weatherLabel.text = "雨"
                }
                
                if  weathercode == 63 {
                    self.weatherLabel.text = "雨"
                }
                
                if  weathercode == 65 {
                    self.weatherLabel.text = "強い雨"
                }
                
                if  weathercode == 66 {
                    self.weatherLabel.text = "雨氷"
                }
                
                if  weathercode == 67 {
                    self.weatherLabel.text = "雨氷"
                }
                
                if  weathercode == 71 {
                    self.weatherLabel.text = "雪"
                }
                
                if  weathercode == 73 {
                    self.weatherLabel.text = "雪"
                }
                
                if  weathercode == 75 {
                    self.weatherLabel.text = "強い雪"
                }
                
                if  weathercode == 77 {
                    self.weatherLabel.text = "霧雪"
                }
                
                if  weathercode == 80 {
                    self.weatherLabel.text = "にわか雨"
                }
                if  weathercode == 81 {
                    self.weatherLabel.text = "にわか雨"
                }
                if  weathercode == 82 {
                    self.weatherLabel.text = "強いにわか雨"
                }
                if  weathercode == 85 {
                    self.weatherLabel.text = "にわか雪"
                }
                if  weathercode == 86 {
                    self.weatherLabel.text = "強いにわか雪"
                }
                if  weathercode == 95 {
                    self.weatherLabel.text = "雷雨"
                }
                if  weathercode == 96 {
                    self.weatherLabel.text = "雷雨"
                }
                if  weathercode == 99 {
                    self.weatherLabel.text = "激しい雷雨"
                }
                
                self.temperatureLabel.text = "\(String(temperature))℃"
                
                self.precipitationLabel.text = "\(String(precipitation))%"
                
                self.windspeedLavel.text = "\(String(windspeed))m/s"
                
                if weathercode >= 0 {
                    if weathercode <= 3 {
                        if precipitation >= 0.0 {
                            if precipitation <= 10.0 {
                               if windspeed >= 0 {
                                  if windspeed <= 5.0 {
                                    if temperature  <= 18 {
                                        if temperature >= 7{
                               self.mainText.text = "キャンプびより！"
                        }
                       }
                      }
                     }
                    }
                   }
                  }
                 }
                
                
                 case.failure(let error): // 失敗した時
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
