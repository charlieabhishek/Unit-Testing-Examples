//
//  UnitTestingDemoTests.swift
//  UnitTestingDemoTests
//
//  Created by Abhishek Kumar on 10/03/19.
//  Copyright © 2019 CharlieAbhishek. All rights reserved.
//

import XCTest
@testable import UnitTestingDemo
class UnitTestingDemoTests: XCTestCase {

    var subject:HttpClient!
    let session =  MockURLSession()
    
    override func setUp() {
        super.setUp()
        subject = HttpClient(session:session)
    }
    
    func test_GET_RequestURL(){
        let url = URL(string: "http://masilotti.com")
        subject.get(url: url!) { (_, _)->Void in }
        XCTAssert(session.lastURL == url)
    }

    override func tearDown() {
        super.tearDown()
    }

}
