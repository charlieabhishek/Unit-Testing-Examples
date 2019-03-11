//
//  MockURLSessionDataTask.swift
//  UnitTestingDemo
//
//  Created by Abhishek Kumar on 11/03/19.
//  Copyright © 2019 CharlieAbhishek. All rights reserved.
//

import Foundation

class MockURLSessionDataTask:URLSessionDataTaskProtocol{
    var resumeWasCalled = false
    func resume() {
        resumeWasCalled =  true
    }
}
