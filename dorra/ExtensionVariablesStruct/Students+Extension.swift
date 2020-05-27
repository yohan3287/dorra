//
//  Students+Extension.swift
//  dorra
//
//  Created by Jacob Andrean on 19/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import Foundation
import CoreData

extension Students {
    
    static func fetchAll(viewContext: NSManagedObjectContext) -> [Students] {
        let request: NSFetchRequest<Students> = Students.fetchRequest()
        let result = try? viewContext.fetch(request)
        return result ?? [] //kalo error jadi nil
    }
    
    static func save(viewContext: NSManagedObjectContext, name: String, phone: String, university: String, email: String, password: String ) -> Students? {
        let student = Students(context: viewContext)
        student.studentName = name
        student.studentPhone = phone
        student.studentUniversity = university
        student.studentEmail = email
        student.studentPassword = password
        do {
            try viewContext.save()
            return student
        } catch {
            return nil
        }
    }
    
    static func deleteAll(viewContext: NSManagedObjectContext) {
        
        let request: NSFetchRequest<NSFetchRequestResult> = NSFetchRequest(entityName: "Students")
        let deleteRequest = NSBatchDeleteRequest(fetchRequest: request)
        let _ = try? viewContext.execute(deleteRequest)
    }
    
}
