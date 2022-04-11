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

/// A protocol that describes an object that logs messages to different destinations like console
/// or file.
public protocol Logger {
   /// Logs a message at a given logging level.
   ///
   /// - Note: This method is to be implemented in your custom logger and you don't need need to
   ///         call it directly. Use methods like `verbose` or `debug` instead.
   ///
   /// - Parameters:
   ///   - level: A level on which message is logged.
   ///   - message: A ``Message`` to be logged.
   ///   - file: A file in which logging is occurred. Defaults to `#file`.
   ///   - line: A line in file at which logging is occurred. Defaults to `#line`.
   func log(_ level: Level, _ message: Message, in file: String, at line: UInt)
}

extension Logger {
   /// Logs a message at `VERBOSE` logging level.
   ///
   /// - Parameters:
   ///   - message: A ``Message`` to be logged.
   ///   - file: A file in which logging is occurred. Defaults to `#file`.
   ///   - line: A line in file at which logging is occurred. Defaults to `#line`.
   public func verbose(_ message: Message, file: String = #file, line: UInt = #line) {
      log(.verbose, message, in: file, at: line)
   }

   /// Logs a string at `VERBOSE` logging level.
   ///
   /// - Parameters:
   ///   - message: A string to be logged.
   ///   - file: A file in which logging is occurred. Defaults to `#file`.
   ///   - line: A line in file at which logging is occurred. Defaults to `#line`.
   public func verbose(_ message: String, file: String = #file, line: UInt = #line) {
      let message = StringMessage(message)
      log(.verbose, message, in: file, at: line)
   }

   /// Logs a message at `DEBUG` logging level.
   ///
   /// - Parameters:
   ///   - message: A ``Message`` to be logged.
   ///   - file: A file in which logging is occurred. Defaults to `#file`.
   ///   - line: A line in file at which logging is occurred. Defaults to `#line`.
   public func debug(_ message: Message, file: String = #file, line: UInt = #line) {
      log(.debug, message, in: file, at: line)
   }

   /// Logs a string at `DEBUG` logging level.
   ///
   /// - Parameters:
   ///   - message: A string to be logged.
   ///   - file: A file in which logging is occurred. Defaults to `#file`.
   ///   - line: A line in file at which logging is occurred. Defaults to `#line`.
   public func debug(_ message: String, file: String = #file, line: UInt = #line) {
      let message = StringMessage(message)
      log(.debug, message, in: file, at: line)
   }

   /// Logs a message at `INFO` logging level.
   ///
   /// - Parameters:
   ///   - message: A ``Message`` to be logged.
   ///   - file: A file in which logging is occurred. Defaults to `#file`.
   ///   - line: A line in file at which logging is occurred. Defaults to `#line`.
   public func info(_ message: Message, file: String = #file, line: UInt = #line) {
      log(.info, message, in: file, at: line)
   }

   /// Logs a string at `INFO` logging level.
   ///
   /// - Parameters:
   ///   - message: A string to be logged.
   ///   - file: A file in which logging is occurred. Defaults to `#file`.
   ///   - line: A line in file at which logging is occurred. Defaults to `#line`.
   public func info(_ message: String, file: String = #file, line: UInt = #line) {
      let message = StringMessage(message)
      log(.info, message, in: file, at: line)
   }

   /// Logs a message at `WARNING` logging level.
   ///
   /// - Parameters:
   ///   - message: A ``Message`` to be logged.
   ///   - file: A file in which logging is occurred. Defaults to `#file`.
   ///   - line: A line in file at which logging is occurred. Defaults to `#line`.
   public func warning(_ message: Message, file: String = #file, line: UInt = #line) {
      log(.warning, message, in: file, at: line)
   }

   /// Logs a string at `WARNING` logging level.
   ///
   /// - Parameters:
   ///   - message: A string to be logged.
   ///   - file: A file in which logging is occurred. Defaults to `#file`.
   ///   - line: A line in file at which logging is occurred. Defaults to `#line`.
   public func warning(_ message: String, file: String = #file, line: UInt = #line) {
      let message = StringMessage(message)
      log(.warning, message, in: file, at: line)
   }

   /// Logs a message at `ERROR` logging level.
   ///
   /// - Parameters:
   ///   - message: A ``Message`` to be logged.
   ///   - file: A file in which logging is occurred. Defaults to `#file`.
   ///   - line: A line in file at which logging is occurred. Defaults to `#line`.
   public func error(_ message: Message, file: String = #file, line: UInt = #line) {
      log(.error, message, in: file, at: line)
   }

   /// Logs a string at `ERROR` logging level.
   ///
   /// - Parameters:
   ///   - message: A string to be logged.
   ///   - file: A file in which logging is occurred. Defaults to `#file`.
   ///   - line: A line in file at which logging is occurred. Defaults to `#line`.
   public func error(_ message: String, file: String = #file, line: UInt = #line) {
      let message = StringMessage(message)
      log(.error, message, in: file, at: line)
   }

   /// Logs a message at `FAULT` logging level.
   ///
   /// - Parameters:
   ///   - message: A ``Message`` to be logged.
   ///   - file: A file in which logging is occurred. Defaults to `#file`.
   ///   - line: A line in file at which logging is occurred. Defaults to `#line`.
   public func fault(_ message: Message, file: String = #file, line: UInt = #line) {
      log(.fault, message, in: file, at: line)
   }

   /// Logs a string at `FAULT` logging level.
   ///
   /// - Parameters:
   ///   - message: A string to be logged.
   ///   - file: A file in which logging is occurred. Defaults to `#file`.
   ///   - line: A line in file at which logging is occurred. Defaults to `#line`.
   public func fault(_ message: String, file: String = #file, line: UInt = #line) {
      let message = StringMessage(message)
      log(.fault, message, in: file, at: line)
   }
}
