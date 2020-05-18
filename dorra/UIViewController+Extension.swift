//
//  UIViewController+Extension.swift
//  dorra
//
//  Created by Jacob Andrean on 19/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import Foundation
import UIKit
import CoreData

extension UIViewController {
    
    func getViewContext() -> NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        let container = appDelegate?.persistentContainer //untuk akses variabel yang ada di container
        return container!.viewContext
    }
}
