//
//  UrlSessionProtocol.swift
//  UnitTestingDemo
//
//  Created by Abhishek Kumar on 11/03/19.
//  Copyright © 2019 CharlieAbhishek. All rights reserved.
//

import Foundation
typealias DataTaskResult = (Data?, URLResponse?, Error?)->Void

protocol URLSessionProtocol {
    func dataTask(with url: URL, completionHandler: @escaping DataTaskResult) -> URLSessionDataTaskProtocol
}

extension URLSession:URLSessionProtocol{
    func dataTask(with url: URL, completionHandler: @escaping DataTaskResult) -> URLSessionDataTaskProtocol {
        return (dataTask(with: url, completionHandler: completionHandler) as URLSessionDataTask) as URLSessionDataTaskProtocol
    }
}
