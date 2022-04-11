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

public struct LevelConfiguration: Hashable {
   public let intValue: Int

   // MARK: - Init

   public init(intValue: Int) {
      self.intValue = intValue
   }

   // MARK: - Predefined

   public static let verbose = LevelConfiguration(intValue: 0)
   public static let debug = LevelConfiguration(intValue: 10)
   public static let info = LevelConfiguration(intValue: 20)
   public static let warning = LevelConfiguration(intValue: 30)
   public static let error = LevelConfiguration(intValue: 40)
   public static let fault = LevelConfiguration(intValue: 50)
   public static let disabled = LevelConfiguration(intValue: .max)

   // MARK: - Stuff

   public func allowsLog(of level: Level) -> Bool {
      level.intValue >= intValue
   }
}
