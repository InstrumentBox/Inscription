//
//  InscriptionOutputBuilderTestCase.swift
//
//  Copyright © 2022 Aleksei Zaikin.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

@testable
import Inscription

import XCTest

final class InscriptionOutputBuilderTestCase: XCTestCase {
   func test_outputBuilder_returnsCorrectlyBuiltMessage() {
      let expectedOutput = "1970-01-01 03:00:00.000 [InscriptionOutputBuilderTestCase.swift:44] — 📓 VERBOSE — hello world"

      let dateFormatter = DateFormatter()
      dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss.SSS"
      let builder = InscriptionOutputBuilder(dateFormatter: dateFormatter)

      let date = Date(timeIntervalSince1970: 0.0)
      let output = builder.buildOutput(
         from: StringMessage("hello world"),
         of: .verbose,
         loggedOn: date,
         in: #file,
         at: #line
      )

      XCTAssertEqual(output, expectedOutput)
   }
}
