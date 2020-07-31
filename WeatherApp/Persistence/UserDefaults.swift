//
//  UserDefaults.swift
//  WeatherApp
//
//  Created by Jaheed Haynes on 2/7/20.
//  Copyright © 2020 David Rifkin. All rights reserved.
//

import Foundation

struct UserPreferenceKey {
    static let zipcode = "Zipcode"
}

class UserPreference {
    
    private init() {}
    
    static let shared = UserPreference()
    
    func updateZipcode(with zipcode: String) {
        UserDefaults.standard.set(zipcode, forKey: UserPreferenceKey.zipcode)
    }
    
    func getZipCode() -> String? {
        guard let zipcode = UserDefaults.standard.object(forKey: UserPreferenceKey.zipcode) as? String else {
            return nil
        }
        
        return zipcode
    }

}
