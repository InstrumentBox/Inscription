//
//  CompositeLogger.swift
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

/// A logger that has an array of other ``Logger`` objects and passes them a given ``Message``
/// with a given ``Level``.
public final class CompositeLogger: Logger {
   private let loggers: [Logger]

   // MARK: - Init

   /// Creates and returns a new instance of ``CompositeLogger`` with given parameters.
   ///
   /// - Parameters:
   ///   - loggers: An array of logger to pass them a logged ``Message``.
   public init(loggers: [Logger]) {
      self.loggers = loggers
   }

   // MARK: - Logger

   public func log(_ level: Level, _ message: Message, in file: String, at line: UInt) {
      for logger in loggers {
         logger.log(level, message, in: file, at: line)
      }
   }
}
