//
//  toReadRowItem.swift
//  studyWithSwift
//
//  Created by admin on 16/6/2567 BE.
//

import SwiftUI

struct ToDoRowItem: View {
    
    var item = toReadBook()
    @Environment(\.modelContext) var context
    
    var body: some View {
        HStack(spacing: 10){
            Image(systemName: item.isComplete ? "checkmark.circle.fill" : "circle")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(.blue)
                .onTapGesture {
                    item.isComplete.toggle()
                    try? context.save()
                }
            VStack(alignment: .leading) {
                Text(item.bookName)
                    .font(.title3)
                    .strikethrough(item.isComplete)
                    .foregroundColor(item.isComplete ? .secondary : .primary)
                
                Text(item.page)
                    .font(.title3)
                    .strikethrough(item.isComplete)
                    .foregroundColor(item.isComplete ? .secondary : .primary)
                
                Text(item.dueDate, style: .date)
                    .font(.caption)
                    .foregroundColor(item.isComplete ? .secondary : .primary)
                
                
            }
        }
    }
}
