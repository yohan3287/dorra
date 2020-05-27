//
//  Dummy.swift
//  dorra
//
//  Created by Adella Amanda on 19/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import Foundation
import CoreData

//extension Students {
//
//    static func fetchAll(viewContext: NSManagedObjectContext) -> [Students] {
//        let request: NSFetchRequest<Students> = Students.fetchRequest()
//        let result = try? viewContext.fetch(request)
//        return result ?? []
//    }
//
//    static func save(viewContext: NSManagedObjectContext ) -> Students? {
//        let student = Students(context: viewContext)
//        student.studentName = "Axella"
//        student.studentUniversity = "university"
//        student.studentEmail = "Axella123@gmail.com"
//        do {
//            try viewContext.save()
//            return student
//        } catch {
//            return nil
//        }
//    }
//
//    static func deleteAll(viewContext: NSManagedObjectContext) {
//
//        let request: NSFetchRequest<NSFetchRequestResult> = NSFetchRequest(entityName: "Students")
//        let deleteRequest = NSBatchDeleteRequest(fetchRequest: request)
//        let _ = try? viewContext.execute(deleteRequest)
//    }
//
//}
