//
//  ContentView.swift
//  studyWithSwift
//
//  Created by admin on 16/6/2567 BE.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment(\.dismiss) var dismiss
    @Environment(\.modelContext) var context
    @Query var todos: [toReadBook]
    @State var showAddToReadSheet: Bool = false
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(todos){ item in
                    test(item:item)
                }
            }
            .navigationTitle("To-Read")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .topBarTrailing){
                    Button("Add"){
                        showAddToReadSheet.toggle()
                    }
                }
            }
            .sheet(isPresented: $showAddToReadSheet,
                   content: {
                addToReadSheet()
                    .presentationDetents([.medium, .large])
                    .presentationDragIndicator(.visible)
            })
        }
    }
}
#Preview {
    ContentView()
}
