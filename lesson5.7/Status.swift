//
//  Status.swift
//  lesson7
//
//  Created by Javlonbek on 25/01/22.
//

import Foundation
import Combine

class Status: ObservableObject{
    var didChange = PassthroughSubject<Status, Never>()
    @Published var userid: String? {didSet { self.didChange.send(self)}}
    
    func listen(){
        if let userid = UserDefaults.standard.string(forKey: "userid") {
            self.userid = userid
        } else {
            self.userid = nil
        }
    }
}
