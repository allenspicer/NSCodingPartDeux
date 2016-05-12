//
//  UserProfile.swift
//  NSCodingPartDeux
//
//  Created by Allen Spicer on 5/12/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

import Foundation

class UserProfile: NSObject,NSCoding {
    var name : String?
    var userID : String?
    var password : String?
    var profilePictureURL : NSURL?
    
    init(name: String,
         userID: String,
         password: String,
         profile: NSURL) {
        self.name = name
        self.userID = userID
        self.password = password
        profilePictureURL = profile
        }
    
    required convenience init?(coder aDecoder: NSCoder) {
        guard let name = aDecoder.decodeObjectForKey("name") as? String,
                let password = aDecoder.decodeObjectForKey("password")as? String,
                let userID = aDecoder.decodeObjectForKey("userID")as? String,
                let profilePic = aDecoder.decodeObjectForKey("profileURL") as? NSURL
        else{return nil}
        
        
        self.init(name:name, userID: userID, password: password, profile: profilePic)
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(name, forKey: "name")
        aCoder.encodeObject(password, forKey: "password")
        aCoder.encodeObject(userID, forKey: "userID")
        aCoder.encodeObject(profilePictureURL, forKey: "profileURL")
    }
    
}











