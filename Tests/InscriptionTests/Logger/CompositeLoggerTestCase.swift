//
//  CompositeLoggerTestCase.swift
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

import Inscription
import XCTest

final class CompositeLoggerTestCase: XCTestCase {
   func test_compositeLogger_forwardsMessageToLoggers() {
      let expectedMessage = "hello world"
      let expectedLevel: Level = .verbose

      var logger1Level: Level?
      var logger1Message: String?

      var logger2Level: Level?
      var logger2Message: String?

      let logger1 = InscriptionTestsLogger()
      logger1.logStub = { level, message, _, _ in
         logger1Level = level
         logger1Message = message.toString()
      }

      let logger2 = InscriptionTestsLogger()
      logger2.logStub = { level, message, _, _ in
         logger2Level = level
         logger2Message = message.toString()
      }

      let compositeLogger = CompositeLogger(loggers: [logger1, logger2])
      compositeLogger.log(expectedLevel, StringMessage(expectedMessage))

      XCTAssertEqual(logger1Level, expectedLevel)
      XCTAssertEqual(logger1Message, expectedMessage)

      XCTAssertEqual(logger2Level, expectedLevel)
      XCTAssertEqual(logger2Message, expectedMessage)
   }
}
