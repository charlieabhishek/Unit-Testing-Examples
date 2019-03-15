//
//  HttpClient.swift
//  UnitTestingDemo
//
//  Created by Abhishek Kumar on 10/03/19.
//  Copyright © 2019 CharlieAbhishek. All rights reserved.
//

import Foundation
typealias DataResult = (Data?, Error?)->Void


class HttpClient{
    private let session: URLSessionProtocol
    
    //..Injecting dependency URLSession using protocol..
    init(session:URLSessionProtocol = URLSession.shared) {
        self.session = session
    }
    
    func get(url:URL, completion:@escaping DataResult){
        let task = session.dataTask(with: url) { (data, response, error) in
            completion(data,error)
        }
        task.resume()
    }
}

