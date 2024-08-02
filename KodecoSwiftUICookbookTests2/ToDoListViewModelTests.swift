//
//  ToDoListViewModelTests.swift
//  KodecoSwiftUICookbookTests2
//
//  Created by Tatsuya Moriguchi on 8/2/24.
//

import XCTest
import SwiftUI
import ViewInspector
@testable import KodecoSwiftUICookbook

final class ToDoListViewModelTests: XCTestCase {

    func testAddingItem() throws {
        let viewModel = ToDoListViewModel()
        viewModel.addItem("Buy Milk")
        
        let view = ViewInspectorTesting(viewModel: viewModel)
        let list = try view.inspect().navigationStack().list()
        
        XCTAssertEqual(list.count, 1)
        let rowOneText = try list.forEach(0).hStack(0).text(0)
        
        XCTAssertEqual(try rowOneText.string(), "Buy Milk")
    }
    
    func testItemCompletion() throws {
        let viewModel = ToDoListViewModel()
        viewModel.addItem("Walk the dog.")
        let view = ViewInspectorTesting(viewModel: viewModel)
        viewModel.toggleCompletion(for: viewModel.items.first!)

        let rowOne = try view.inspect().navigationStack().list().forEach(0).hStack(0)
        
        XCTAssertTrue(viewModel.items.first!.isCompleted)
        XCTAssertEqual(try rowOne.image(2).actualImage(), Image(systemName: "checkmark"))
        
    }
}
