//
//  DataLoader.swift
//  ReadingJSONDemo
//
//  Created by Nguyễn Đức Hiếu on 10/20/20.
//  Copyright © 2020 Nguyễn Đức Hiếu. All rights reserved.
//

import Foundation

class DataLoader {
    
    var studentData = [Student]()
    
    init(){
        loadData()
    }
    
    func loadData() {
        if let fileLocation = Bundle.main.url(forResource: "mydata", withExtension: "json") {
            do {
                let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson = try jsonDecoder.decode([Student].self, from: data)
                
                self.studentData = dataFromJson
            } catch {
                print(error)
            }
        }
    }
}
