//
//  LLCommonsTests.swift
//  LLCommonsTests
//
//  Created by Igor Custodio on 16/09/21.
//

import XCTest
@testable import LLCommons

class LLCommonsTests: XCTestCase {

    func testShouldInitializeColorCorrectly() {
        let color1 = UIColor(r: 255, g: 255, b: 255)
        let color2 = UIColor(hex: "#FFFFFF")
        let color3 = UIColor.white
        XCTAssertTrue(color1 == color3)
        XCTAssertTrue(color2 == color3)
    }
}
