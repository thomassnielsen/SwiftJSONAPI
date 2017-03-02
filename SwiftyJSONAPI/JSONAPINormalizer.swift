//
//  JSONAPINormalizer.swift
//  SwiftyJSONAPI
//
//  Created by Thomas Sunde Nielsen on 11.09.15.
//  Copyright © 2015 Thomas Sunde Nielsen. All rights reserved.
//

import Foundation

func normalizeJSONAPIObjectToArray(_ object: Any?) -> [[String:Any]] {
    if object is NSArray {
        return object as? [[String:Any]] ?? []
    } else if let object = object as? NSDictionary {
        let array = [object]
        return array as? [[String:Any]] ?? []
    }
    return []
}
