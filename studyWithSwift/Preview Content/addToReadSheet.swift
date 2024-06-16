//
//  addToReadSheet.swift
//  studyWithSwift
//
//  Created by admin on 16/6/2567 BE.
//

import SwiftUI

struct addToReadSheet: View {
    
    @Environment(\.modelContext) var context
    @Environment(\.dismiss) var dismiss
    @State var ToReadBook = toReadBook()
    
    var body: some View {
        NavigationStack{
            List{
                TextField("Book Name", text: $ToReadBook.bookName)
                TextField("page", text: $ToReadBook.page)
                DatePicker("date", selection: $ToReadBook.dueDate, displayedComponents: .date)
            }
            .navigationTitle("Add To Read")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement:.topBarLeading){
                    Button("Cancle"){
                        dismiss()
                        
                    }
                }
                
                ToolbarItem(placement:.topBarLeading){
                    Button("Add"){
                         context.insert(ToReadBook)
                        
                    }
                }
            }
        }
    }
}


