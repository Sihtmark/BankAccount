//
//  ProfileTests.swift
//  BankeyUnitTests
//
//  Created by Sergei Poluboiarinov on 05.10.2022.
//

import Foundation
import XCTest

@testable import BankAccount

class ProfileTests: XCTestCase {
    override func setUp() {
        super.setUp()
    }
    
    func testCanParse() throws {
        let json = """
        {
            "id": "1",
            "firstName": "Kevin",
            "lastName": "Flynn",
        }
        """
        
        let data = json.data(using: .utf8)!
        let result = try! JSONDecoder().decode(Profile.self, from: data)
        
        XCTAssertEqual(result.id, "1")
        XCTAssertEqual(result.firstName, "Kevin")
        XCTAssertEqual(result.lastName, "Flynn")
        
    }
}