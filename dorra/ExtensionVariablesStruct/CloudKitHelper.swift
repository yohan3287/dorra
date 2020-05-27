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
    
    func createClassRecord() {
        // create record id
        //let recordId = CKRecord.ID(recordName: "1")
        
        // create record object
        let recordObject = CKRecord(recordType: "Class")
        
        // create dictionary
//        recordObject["title"] = String
//        recordObject["code"] = "0001"
//        recordObject["period"] = "Monday"
//        recordObject["createdAt"] = Date()
        
        saveRecord(record: recordObject)
    }
    
    func createClass(title: String, code: String, shift:Date, period: String, days: String) {
        let container = CKContainer.default()
        let containerType = container.publicCloudDatabase
        let records = CKRecord(recordType: "Class")
        records.setValue(title, forKey: "title")
        records.setValue(code, forKey: "code")
        records.setValue(shift, forKey: "shift")
        records.setValue(period, forKey: "period")
        records.setValue(days, forKey: "days")
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
        /*
        let container = CKContainer.default()
        let containerType = container.publicCloudDatabase
        
        // fetch all record
        let predicate = NSPredicate(value: true)
        let query = CKQuery(recordType: "Class", predicate: predicate)
        
        // sort description
        let sort = NSSortDescriptor(key: "createdAt", ascending: false)
        query.sortDescriptors = [sort]
        
        containerType.perform(query, inZoneWith: nil) { (result, error) in
            if let err = error {
                print(err.localizedDescription)
                return
            }
        }*/
    }
    
    func fetchAllData()  {
        let container = CKContainer.default()
        let containerType = container.publicCloudDatabase
        let predicate = NSPredicate(value: true)
        let query = CKQuery(recordType: "Class", predicate: predicate)
        
        containerType.perform(query, inZoneWith: nil) { (record, error) in
            
            for record: CKRecord in record! {
                //...
                
                // if you want to access a certain 'field'.
                //                let name = record.value(forKeyPath: "Name") as! String
                //                let name = record.value(forKey: "code") as! String
                let title = record.value(forKey: "title") as! String
                let code = record.value(forKey: "code") as! String
                let shift = record.value(forKey: "shift") as! Date
                let period = record.value(forKey: "period") as! String
                let days = record.value(forKey: "days") as! String
                
                let course = Course(title: title, code: code, shift: shift, period: period, day: days)
                arrayAllClass2.append(course)
            }
            print("===============================================>\(arrayAllClass2)")
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
