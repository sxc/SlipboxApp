//
//  Note+helper.swift
//  SlipboxApp
//
//  Created by Xiaochun Shen on 2021/2/28.
//

import Foundation
import CoreData

extension Note {
    
    convenience init(title: String, context: NSManagedObjectContext) {
        self.init(context: context)
        self.title = title
        self.creationDate = Date()
    }
    
    
    static func fetch(_ predicate: NSPredicate) -> NSFetchRequest<Note> {
        let request = NSFetchRequest<Note>(entityName: "Note")
        request.sortDescriptors = [NSSortDescriptor(key: "creationDate", ascending: false)]
        
        request.predicate = predicate
        
        return request
    }
    
}
