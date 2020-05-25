//
//  CloudKitHelper.swift
//  dorra
//
//  Created by Jacob Andrean on 25/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import Foundation
import CloudKit

class CloudKitHelper {
    
    func createNewRecord() {
        // create record id
        //let recordId = CKRecord.ID(recordName: "1")
        
        // create record object
        let recordObject = CKRecord(recordType: "Courses")
        
        // create dictionary
        recordObject["title"] = "Math"
        recordObject["day"] = "Monday"
        recordObject["createdAt"] = Date()
        
        saveRecord(record: recordObject)
    }
    
    func saveRecord(record: CKRecord) {
        let container = CKContainer.default()
        let containerType = container.publicCloudDatabase
        
        containerType.save(record) { (resultRecord, error) in
            if let err = error {
                print("failed to save record \(err.localizedDescription)")
                return
            }
        }
        print("record saved")
        print(record)
    }
    
    func saveRecord2(title: String, day: String) {
        let container = CKContainer.default()
        let containerType = container.publicCloudDatabase
        let records = CKRecord(recordType: "Courses")
        records.setValue(title, forKey: "title")
        records.setValue(day, forKey: "day")
        //        print(record.allTokens(),record.allKeys())
        containerType.save(records) { (savedRecord, error) in
            if error == nil {
                print("Record Saved")
            } else {
                print("Record Not Saved")
            }
        }
    }
    
    func fetchAll() {
        let container = CKContainer.default()
        let containerType = container.publicCloudDatabase
        
        // fetch all record
        let predicate = NSPredicate(value: true)
        let query = CKQuery(recordType: "Courses", predicate: predicate)
        
        // sort description
        let sort = NSSortDescriptor(key: "createdAt", ascending: false)
        query.sortDescriptors = [sort]
        
        containerType.perform(query, inZoneWith: nil) { (result, error) in
            if let err = error {
                print(err.localizedDescription)
                return
            }
        }
    }
    
    func fetchByName(contain: String) {
        let container = CKContainer.default()
        let containerType = container.publicCloudDatabase
        
        let predicate = NSPredicate(format: "title CONTAINS %@", contain)
        let query = CKQuery(recordType: "Courses", predicate: predicate)
        
        containerType.perform(query, inZoneWith: nil) { (result, error) in
            if let err = error {
                print(err.localizedDescription)
                return
            }
            if let record = result {
                record.forEach{print($0)}
            }
        }
    }
}
