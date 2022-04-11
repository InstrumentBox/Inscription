//
//  LevelConfiguration.swift
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

/// A configuration that allows to enable or disable needed log ``Level``.
public struct LevelConfiguration: Hashable {
   let intValue: Int

   // MARK: - Init

   /// Creates and returns a new instance of level configuration with given parameters.
   ///
   /// - Parameters:
   ///   - intValue: A numeric value of level configuration to check if level allowed.
   public init(intValue: Int) {
      self.intValue = intValue
   }

   // MARK: - Predefined

   /// A configuration that allows to log messages of `VERBOSE` level and higher. The `intValue`
   /// equals to 0.
   public static let verbose = LevelConfiguration(intValue: 0)

   /// A configuration that allows to log messages of `DEBUG` level and higher. The `intValue`
   /// equals to 10.
   public static let debug = LevelConfiguration(intValue: 10)

   /// A configuration that allows to log messages of `INFO` level and higher. The `intValue`
   /// equals to 20.
   public static let info = LevelConfiguration(intValue: 20)

   /// A configuration that allows to log messages of `WARNING` level and higher. The `intValue`
   /// equals to 30.
   public static let warning = LevelConfiguration(intValue: 30)

   /// A configuration that allows to log messages of `ERROR` level and higher. The `intValue`
   /// equals to 40.
   public static let error = LevelConfiguration(intValue: 40)

   /// A configuration that allows to log messages of `FAULT` level and higher. The `intValue`
   /// equals to 50.
   public static let fault = LevelConfiguration(intValue: 50)

   /// A configuration that disables all log messages. The `intValue` equals to `.max`.
   public static let disabled = LevelConfiguration(intValue: .max)

   // MARK: - Stuff

   /// Checks if message of a given level can be logged according to this configuration. It makes
   /// decision depending on `intValue` of ``Level`` and ``LevelConfiguration``. Logging is allowed
   /// if `intValue` of ``Level`` greater than or equal to `intValue` of ``LevelConfiguration``.
   ///
   /// - Parameters:
   ///   - level: A ``Level`` to be check if it can be logged.
   /// - Returns: `true` if message of given level can be logged. Otherwise `false`.
   public func allowsLog(of level: Level) -> Bool {
      level.intValue >= intValue
   }
}
