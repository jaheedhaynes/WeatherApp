//
//  WeatherAppTests.swift
//  WeatherAppTests
//
//  Created by Jaheed Haynes on 7/30/20.
//  Copyright © 2020 David Rifkin. All rights reserved.
//

import XCTest
@testable import WeatherApp

class WeatherAppTests: XCTestCase {
    
    func testZipcodeToCoordinates() {
      // arrange
      let zipcode = "10023"
      
      let expectation = XCTestExpectation(description: "zipcode parsed")
      
      // act
      ZipCodeHelper.getLatLong(fromZipCode: zipcode) { (result) in
        switch result {
        case .failure(let fetchingError):
          XCTFail("coordinates fetching error: \(fetchingError)")
        case .success(let coordinate):
          // assert
          XCTAssertEqual(coordinate.lat, 40.7754123)
          expectation.fulfill()
        }
      }
      
      wait(for: [expectation], timeout: 3.0)
    }

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
