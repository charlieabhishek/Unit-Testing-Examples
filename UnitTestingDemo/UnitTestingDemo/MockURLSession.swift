//
//  MockURLSession.swift
//  UnitTestingDemo
//
//  Created by Abhishek Kumar on 11/03/19.
//  Copyright © 2019 CharlieAbhishek. All rights reserved.
//

import Foundation

class MockURLSession: URLSessionProtocol{
    var lastURL: URL?
    var nextDataTask = MockURLSessionDataTask()
    
    func dataTask(with url: URL, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTaskProtocol {
        lastURL = url
        return nextDataTask
    }
}
