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
    var subjectAsync:HttpClient!
    let session =  MockURLSession()
    let asyncSession = URLSession.shared
    
    override func setUp() {
        super.setUp()
        subject = HttpClient(session:session)
        subjectAsync = HttpClient(session: asyncSession)
    }
    
    func test_GET_RequestURL(){
        let url = URL(string: "http://masilotti.com")
        subject.get(url: url!) { (_, _)->Void in }
        XCTAssert(session.lastURL == url)
    }
    
    func test_GET_StartsTheRequest(){
        let dataTask = MockURLSessionDataTask()
        session.nextDataTask = dataTask
        subject.get(url: URL(string: "https://jsonplaceholder.typicode.com/todos/1")!) { (_, _) in
        }
        XCTAssert(dataTask.resumeWasCalled)
    }
    
    func test_GET_ReturnsData(){
        let url = URL(string: "https://jsonplaceholder.typicode.com/todos/1")!
        let expect = expectation(description: "Wait for \(url) to load")
        var data:Data?
        
        subjectAsync.get(url: url) { (theData, error) in
            data = theData
            expect.fulfill()
        }
        waitForExpectations(timeout: 5, handler: nil)
        XCTAssertNotNil(data)
    }

    override func tearDown() {
        super.tearDown()
    }

}
