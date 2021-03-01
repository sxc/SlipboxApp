//
//  ContentView.swift
//  SlipboxPad
//
//  Created by Xiaochun Shen on 2021/2/28.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    
    @FetchRequest(fetchRequest: Note.fetch(NSPredicate.all)) private var notes: FetchedResults<Note>
    
   
    
//    @FetchRequest(
//        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
//        animation: .default)
//    private var items: FetchedResults<Item>

    var body: some View {
        
        VStack {

            Text("Notes")
                .font(.title)
            
            Button(action: {
                
                _ = Note(title: "added on phone", context: viewContext)
            }) {
                Label("Add Item", systemImage: "plus")
            }
            
            List {
                ForEach(notes) { note in
                    Text("title \(note.title ?? "") date \(note.creationDate ?? Date(), formatter: itemFormatter)")
                }
            
            }
            
        }


    }
}


private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
