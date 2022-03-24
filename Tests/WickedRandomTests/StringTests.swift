import XCTest
@testable import WickedRandom

final class StringTests: XCTestCase {

    func testString_isUppercase() throws {
        XCTAssertTrue("ZOGPHLXZ".isUppercase)
        XCTAssertFalse("ZoGPhLxZ".isUppercase)
        XCTAssertFalse("".isUppercase)
    }

    func testString_isLowercase() throws {
        XCTAssertTrue("xngskaxg".isLowercase)
        XCTAssertFalse("xNgSKaxG".isLowercase)
        XCTAssertFalse("".isLowercase)
    }

    func testString_random_upper() throws {
        let length = 8
        let string = String.random(.upper, ofSize: length)
        XCTAssert(string.isUppercase)
        XCTAssertEqual(string.count, length)
    }

    func testString_random_lower() throws {
        let length = 8
        let string = String.random(.lower, ofSize: length)
        XCTAssert(string.isLowercase)
        XCTAssertEqual(string.count, length)
    }

    func testString_random_numbers() throws {
        let length = 8
        let string = String.random(.numbers, ofSize: length)
        XCTAssertNotNil(Int(string))
        XCTAssertEqual(string.count, length)
    }

}
