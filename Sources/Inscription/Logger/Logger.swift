//
//  Logger.swift
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

public protocol Logger {
   /// You **don't** need to call this method directly.
   /// Use `log(_ level: Level, _ message: Message)` instead.
   func log(_ level: Level, _ message: Message, in file: String, at line: UInt)
}

extension Logger {
   public func log(_ level: Level, _ message: Message, file: String = #file, line: UInt = #line) {
      log(level, message, in: file, at: line)
   }

   public func verbose(_ message: Message, file: String = #file, line: UInt = #line) {
      log(.verbose, message, in: file, at: line)
   }

   public func verbose(_ message: String, file: String = #file, line: UInt = #line) {
      let message = StringMessage(message)
      log(.verbose, message, in: file, at: line)
   }

   public func debug(_ message: Message, file: String = #file, line: UInt = #line) {
      log(.debug, message, in: file, at: line)
   }

   public func debug(_ message: String, file: String = #file, line: UInt = #line) {
      let message = StringMessage(message)
      log(.debug, message, in: file, at: line)
   }

   public func info(_ message: Message, file: String = #file, line: UInt = #line) {
      log(.info, message, in: file, at: line)
   }

   public func info(_ message: String, file: String = #file, line: UInt = #line) {
      let message = StringMessage(message)
      log(.info, message, in: file, at: line)
   }

   public func warning(_ message: Message, file: String = #file, line: UInt = #line) {
      log(.warning, message, in: file, at: line)
   }

   public func warning(_ message: String, file: String = #file, line: UInt = #line) {
      let message = StringMessage(message)
      log(.warning, message, in: file, at: line)
   }

   public func error(_ message: Message, file: String = #file, line: UInt = #line) {
      log(.error, message, in: file, at: line)
   }

   public func error(_ message: String, file: String = #file, line: UInt = #line) {
      let message = StringMessage(message)
      log(.error, message, in: file, at: line)
   }

   public func fault(_ message: Message, file: String = #file, line: UInt = #line) {
      log(.fault, message, in: file, at: line)
   }

   public func fault(_ message: String, file: String = #file, line: UInt = #line) {
      let message = StringMessage(message)
      log(.fault, message, in: file, at: line)
   }
}
