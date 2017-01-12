//
//  User.swift
//  DevChat
//
//  Created by Paul Hottell on 1/11/17.
//  Copyright © 2017 HSCS. All rights reserved.
//

import Foundation

struct User {
    private var _firstName: String
    private var _uid: String
    
    var uid: String {
        return _uid
    }
    
    var firstName: String {
        return _firstName
    }
    
    init(uid: String, firstName: String) {
        _uid = uid
        _firstName = firstName
    }
}
