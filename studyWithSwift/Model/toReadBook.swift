//
//  toReadBook.swift
//  studyWithSwift
//
//  Created by admin on 16/6/2567 BE.
//

import Foundation
import SwiftData

@Model
class toReadBook{
    var bookName: String
    var isComplete: Bool
    var page: String
    var dueDate: Date
    
    init(bookName: String = "", isComplete: Bool = false, page: String = "", dueDate: Date = Date.now) {
        self.bookName = bookName
        self.isComplete = isComplete
        self.page = page
        self.dueDate = dueDate
    }
}
