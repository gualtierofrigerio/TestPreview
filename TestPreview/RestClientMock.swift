//
//  RestClientMock.swift
//  TestPreview
//
//  Created by Gualtiero Frigerio on 30/01/2020.
//  Copyright © 2020 Gualtiero Frigerio. All rights reserved.
//

import Foundation
import PromiseThen

class RESTHandlerMock : RESTClient {
    var mockData:[String:Any] = [:]
    init() {
        mockData = readFromJSON()
    }
    
    func getData(atURL url: URL, completion: @escaping (Data?) -> Void) {
        assertionFailure("not yet implemented")
    }
    
    func getData(atURL url: URL) -> Promise<Data> {
        let promise = Promise<Data>()
        
        return promise
    }
    
    private func dataForURLString(urlString:String) -> Data? {
        if urlString.contains("users") {
            
        }
        else if urlString.contains("pictures") {
            
        }
        else if urlString.contains("albums") {
            
        }
        return nil
    }
    
    private func readFromJSON() -> [String:Any] {
        return [:]
    }
}
