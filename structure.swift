//
//  File.swift
//  GPX TRACK
//
//  Created by Flavio Maria Lombardi on 18/11/22.
//

import Foundation
import SwiftUI

struct Card : Identifiable {
    init(title:String,date:String,imageName:String,desc: String, start:String, end:String, total:String) {
        self.id = UUID()
        self.title = title
        self.date = date
        self.image = Image(imageName)
        self.desc = desc
        self.start = start
        self.end = end
        self.total = total
        
    }
    var id = UUID()
    var title: String
    var date: String
    var image: Image
    var desc : String
    var start : String
    var end : String
    var total : String
}


