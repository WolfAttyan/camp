//
//  ViewController.swift
//  camp
//
//  Created by cl_umeda_017 on 2022/03/09.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var searchText: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    func searchBarSearchButtonClicked(_ srarchBar: UISearchBar) {
        
        view.endEditing(true)
        
        if let searchWord = searchBar.text {
            print(searchWord)
            searchTemper(keyword: searchWord)
        }
    }

    func searchTemper(keyword: String){
        guard let keyword_encode = keyword.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else {
            return
    }
        guard let req_url = URL(string:
        "https://api.open-meteo.com/v1/forecast?latitude=52.52&longitude=13.41&hourly=temperature_2m"
        ) else {
            return
        }
        print(req_url)
    }
    }

