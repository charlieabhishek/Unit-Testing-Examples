//
//  ViewController.swift
//  UnitTestingDemo
//
//  Created by Abhishek Kumar on 10/03/19.
//  Copyright © 2019 CharlieAbhishek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        HttpClient().get(url: URL(string:"https://jsonplaceholder.typicode.com/todos/1")!) { (data, error) in
            guard error == nil else{
                print("error ==>\(String(describing: error))")
                return
            }
            do{
                let json = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableLeaves)
                print(json)
            }catch{
                print(error)
            }
        }
    }


}

