//
//  Level.swift
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

/// A level of logging to differentiate messages.
public struct Level: Hashable {
   let intValue: Int
   let name: String
   let coloredEmoji: String?

   // MARK: - Init

   /// Creates and returns a new instance of level with given parameters.
   ///
   /// - Parameters:
   ///   - intValue: A numeric value of level to be used with ``LevelConfiguration``.
   ///   - name: A name of level to be a part of log message.
   ///   - coloredEmoji: An emoji symbol to visualize level in message.
   public init(intValue: Int, name: String, coloredEmoji: String?) {
      self.intValue = intValue
      self.name = name
      self.coloredEmoji = coloredEmoji
   }

   // MARK: - Predefined

   /// A `VERBOSE` logging level. The lowest level with `intValue` equals to 0.
   public static let verbose = Level(intValue: 0, name: "VERBOSE", coloredEmoji: "⬜️")

   /// A `DEBUG` logging level. The `intValue` of this level equals to 10.
   public static let debug = Level(intValue: 10, name: "DEBUG", coloredEmoji: "🟦")

   /// An `INFO` logging level. The `intValue` of this level equals to 20.
   public static let info = Level(intValue: 20, name: "INFO", coloredEmoji: "🟩")

   /// A `WARNING` logging level. The `intValue` of this level equals to 30.
   public static let warning = Level(intValue: 30, name: "WARNING", coloredEmoji: "🟨")

   /// An `ERROR` logging level. The `intValue` of this level equals to 40.
   public static let error = Level(intValue: 40, name: "ERROR", coloredEmoji: "🟧")

   /// A `FAULT` logging level. The `intValue` of this level equals to 50. The highest logging
   /// level.
   public static let fault = Level(intValue: 50, name: "FAULT", coloredEmoji: "🟥")

   // MARK: - Equatable

   /// Checks equality of two instances of level. It uses `intValue` and `name` fields to do this
   /// check.
   /// 
   /// - Parameters:
   ///   - lhs: The first instance to check equality.
   ///   - rhs: The second instance to check equality.
   /// - Returns: `true` if two instances are equal. Otherwise `false`.
   public static func ==(lhs: Level, rhs: Level) -> Bool {
      lhs.intValue == rhs.intValue && lhs.name == rhs.name
   }

   // MARK: - Hashable

   /// Combines values of `intValue` and `name` field and return a hash number.
   ///
   /// - Parameters:
   ///   - hasher: A `Hasher` object which is used to calculate hash.
   public func hash(into hasher: inout Hasher) {
      hasher.combine(intValue)
      hasher.combine(name)
   }
}
