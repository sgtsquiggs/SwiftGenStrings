@testable import SwiftGenStringsCore
import XCTest

class LocalizedStringFinderTests: XCTestCase {

    func testFindStringsWithTableNameAndBundle() {
        let finder = LocalizedStringFinder()
        let tokens: [SwiftLanguageToken] = [
            .identifier("Localized"),
            .parenthesisOpen,
            .text(text: "KEY"),
            .parenthesisClose
        ]

        let localizedStrings = finder.findLocalizedStrings(tokens)
        XCTAssertEqual(1, localizedStrings.count)

        let localizedString = localizedStrings.first!
        XCTAssertEqual("KEY", localizedString.key)
        XCTAssertEqual("KEY", localizedString.value)
    }

}
