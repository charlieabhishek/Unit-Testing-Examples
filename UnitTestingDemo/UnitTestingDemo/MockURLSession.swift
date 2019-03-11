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

    func dataTask(with url: URL, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        lastURL = url
        return URLSessionDataTask()
    }
}
