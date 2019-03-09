//
//  HttpClient.swift
//  UnitTestingDemo
//
//  Created by Abhishek Kumar on 10/03/19.
//  Copyright © 2019 CharlieAbhishek. All rights reserved.
//

import Foundation

class HttpClient{
    typealias completeClosure = (_ data: Data?, _ error: Error?)->Void
    func get(url:URL, callback: @escaping completeClosure){
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            callback(data,error)
        }
        task.resume()
    }
}
