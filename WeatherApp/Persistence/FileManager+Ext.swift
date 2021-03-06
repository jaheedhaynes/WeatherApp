//
//  FileManager+Ext.swift
//  WeatherApp
//
//  Created by Jaheed Haynes on 2/7/20.
//  Copyright © 2020 David Rifkin. All rights reserved.
//

import Foundation

    extension FileManager {
        static func getDocumentsDirectory() -> URL {
            return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        }
        static func pathToDocumentsDirectory(with filename: String) -> URL {
            return getDocumentsDirectory().appendingPathComponent(filename)
        }
    }
