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

public struct Level: Hashable {
   public let intValue: Int
   public let name: String
   public let coloredEmoji: String?

   // MARK: - Init

   public init(intValue: Int, name: String, coloredEmoji: String?) {
      self.intValue = intValue
      self.name = name
      self.coloredEmoji = coloredEmoji
   }

   // MARK: - Predefined

   public static let verbose = Level(intValue: 0, name: "VERBOSE", coloredEmoji: "📓")
   public static let debug = Level(intValue: 10, name: "DEBUG", coloredEmoji: "📘")
   public static let info = Level(intValue: 20, name: "INFO", coloredEmoji: "📗")
   public static let warning = Level(intValue: 30, name: "WARNING", coloredEmoji: "📒")
   public static let error = Level(intValue: 40, name: "ERROR", coloredEmoji: "📙")
   public static let fault = Level(intValue: 50, name: "FAULT", coloredEmoji: "📕")

   // MARK: - Equatable

   public static func ==(lhs: Level, rhs: Level) -> Bool {
      lhs.intValue == rhs.intValue && lhs.name == rhs.name
   }

   // MARK: - Hashable

   public func hash(into hasher: inout Hasher) {
      hasher.combine(intValue)
      hasher.combine(name)
   }
}

