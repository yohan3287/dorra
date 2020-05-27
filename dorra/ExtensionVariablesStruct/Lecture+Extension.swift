//
//  Lecture+Extension.swift
//  dorra
//
//  Created by Jacob Andrean on 19/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import Foundation
import CoreData

extension Lecture {
    
    static func fetchAll(viewContext: NSManagedObjectContext) -> [Lecture] {
        let request: NSFetchRequest<Lecture> = Lecture.fetchRequest()
        let result = try? viewContext.fetch(request)
        return result ?? [] //kalo error jadi nil
    }
    
    static func save(viewContext: NSManagedObjectContext, name: String, phone: String, university: String, email: String, password: String ) -> Lecture? {
        let lecture = Lecture(context: viewContext)
        lecture.lectureName = name
        lecture.lecturePhone = phone
        lecture.lectureUniversity = university
        lecture.lectureEmail = email
        lecture.lecturePassword = password
        do {
            try viewContext.save()
            return lecture
        } catch {
            return nil
        }
    }
    
    static func deleteAll(viewContext: NSManagedObjectContext) {
        
        let request: NSFetchRequest<NSFetchRequestResult> = NSFetchRequest(entityName: "Lecture")
        let deleteRequest = NSBatchDeleteRequest(fetchRequest: request)
        let _ = try? viewContext.execute(deleteRequest)
    }
    
}
