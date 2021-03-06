//
//  InscriptionOutputBuilder.swift
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

import Foundation

/// A default implementation of ``OutputBuilder`` provided by this library.
///
/// It logs ``Message`` as following string:
///
/// `2022-04-11 17:23:56.838 [MyFile.swift:42] — ⬜️ VERBOSE — hello world`
public final class InscriptionOutputBuilder: OutputBuilder {
   private let dateFormatter: DateFormatter

   // MARK: - Init

   init(dateFormatter: DateFormatter) {
      self.dateFormatter = dateFormatter
   }

   /// Creates and returns a new instance of ``InscriptionOutputBuilder``.
   public convenience init() {
      let dateFormatter = DateFormatter()
      dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss.SSSZZZ"

      self.init(dateFormatter: dateFormatter)
   }

   // MARK: - OutputBuilder

   public func buildOutput(
      from message: Message,
      of level: Level,
      loggedOn date: Date,
      in file: String,
      at line: UInt
   ) -> String {
      let formattedDate = dateFormatter.string(from: date)
      let fileName = file.components(separatedBy: "/").last ?? file
      var formattedLevel = level.name
      if let coloredEmoji = level.coloredEmoji {
         formattedLevel = coloredEmoji + " " + formattedLevel
      }
      let message = message.toString()
      return String(
         format: "%@ [%@:%d] — %@ — %@",
         formattedDate,
         fileName,
         line,
         formattedLevel,
         message
      )
   }
}
