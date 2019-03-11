//
//  URLSessionDataTaskProtocol.swift
//  UnitTestingDemo
//
//  Created by Abhishek Kumar on 11/03/19.
//  Copyright © 2019 CharlieAbhishek. All rights reserved.
//

import Foundation
protocol URLSessionDataTaskProtocol {
    func resume()
}

extension URLSessionDataTask: URLSessionDataTaskProtocol{}
