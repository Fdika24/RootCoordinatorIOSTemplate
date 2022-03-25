//
//  NetworkAPIWorker.swift
//  RootCoordinatorTemplate
//
//  Created by Farhandika on 26/03/22.
//

import Foundation

extension NetworkAPI {
    private var rootLink:String {
        return ""
    }
    public var urlComponent:URLComponents? {
        var component = URLComponents(string: "\(self.rootLink)/\(self.path)")
        component?.queryItems = self.queryItems
        return component
    }
    
    private var queryItems:[URLQueryItem] {
        switch self {
        case .dummy:
            return []
        }
    }
    
    private var path:String {
        switch self {
        case .dummy : return ""
        }
    }
    
}
