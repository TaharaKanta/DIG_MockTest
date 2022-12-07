//
//  MockAppTests.swift
//  MockAppTests
//
//  Created by user on 2022/12/01.
//

import XCTest
@testable import MockApp

final class MockAppTests: XCTestCase {

    var viewController: ViewController!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        self.viewController = storyboard.instantiateInitialViewController() as? ViewController
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    

    func testGetPokemon() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        viewController.loadViewIfNeeded()
        
        let subClass = viewController.subClass
        let result = subClass?.getPokemon(id: 1)
        XCTAssertEqual(result!.id, 1)
        XCTAssertEqual(result!.name, "bulbasaur")
    }

}
