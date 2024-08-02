//
//  KodecoSwiftUICookbookTests2.swift
//  KodecoSwiftUICookbookTests2
//
//  Created by Tatsuya Moriguchi on 8/2/24.
//

import XCTest
@testable import KodecoSwiftUICookbook

final class KodecoSwiftUICookbookTests2: XCTestCase {

    func testIncrement() {
        let viewModel = CounterViewModel()
        viewModel.increment()
        XCTAssertEqual(viewModel.count, 1)
    }
    
    func testDecrement() {
        let viewModel = CounterViewModel()
        viewModel.decrement()
        XCTAssertEqual(viewModel.count, -1)
    }
    
    func testIncrementandDecrement() {
        let viewModel = CounterViewModel()
        viewModel.increment()
        viewModel.increment()
        viewModel.decrement()
        
        XCTAssertEqual(viewModel.count, 1)
    }
    
//    override func setUpWithError() throws {
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//    }
//
//    override func tearDownWithError() throws {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//    }
//
//    func testExample() throws {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//        // Any test you write for XCTest can be annotated as throws and async.
//        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
//        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
//    }
//
//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}
