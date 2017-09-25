//
//  HttpConnect.swift
//  iOSAppleRestSample
//
//  Created by Jon Hoffman on 7/20/17.
//  Copyright © 2017 Jon Hoffman. All rights reserved.
//

import Foundation
import SystemConfiguration

public class HttpConnect {
    public enum ConnectionType {
        case nonetwork
        case mobile3GNETWORK
        case wifinetwork
    }
    
    private func urlEncode(s: String) -> String? {
        return s.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)
    }
    
    
    public typealias dataFromURLCompletionClosure = (URLResponse?, Data?) -> Void
    
    public func sendGetRequest (
        _ handler: @escaping dataFromURLCompletionClosure) {
        
        let sessionConfiguration =
            URLSessionConfiguration.default
        
        var url = URLComponents()
        url.scheme = "https"
        url.host = "itunes.apple.com"
        url.path = "/search"
        url.queryItems = [
            URLQueryItem(name: "term", value: "jimmy+buffett"),
        ]
        if let queryUrl = url.url {
            var request = URLRequest(url:queryUrl)
            request.httpMethod = "GET"
            let urlSession = URLSession(
                configuration:sessionConfiguration, delegate: nil, delegateQueue: nil)
            
            let sessionTask = urlSession.dataTask(with: request) {
                (data, response, error) in
                
                handler(response, data)
            }
            
            sessionTask.resume()
        }
    }
    
    public func sendPostRequest(_ handler: @escaping dataFromURLCompletionClosure) {
        
        let sessionConfiguration =
            URLSessionConfiguration.default
        
        var url = URLComponents()
        url.scheme = "https"
        url.host = "httpbin.org"
        url.path = "/post"
        
        if let queryUrl = url.url {
            var request = URLRequest(url:queryUrl)
            request.httpMethod = "POST"
            let params = dictionaryToQueryString(["One":"1 and 1", "Two":"2 and 2"])
            request.httpBody = params.data(
                using: String.Encoding.utf8, allowLossyConversion: true)
            
            let urlSession = URLSession(
                configuration:sessionConfiguration, delegate: nil, delegateQueue: nil)
            
            let sessionTask = urlSession.dataTask(with: request) {
                (data, response, error) in
                
                handler(response, data)
            }
            sessionTask.resume()
        }
    }
    
    private func dictionaryToQueryString(_ dict: [String : String]) -> String {
        var parts = [String]()
        for (key, value) in dict {
            let part : String = key + "=" + value
            parts.append(part);
        }
        return parts.joined(separator: "&")
        
    }
    
    public func networkConnectionType(_ hostname: NSString) -> ConnectionType {
        
        let reachabilityRef = SCNetworkReachabilityCreateWithName(nil,hostname.utf8String!)
        
        var flags: SCNetworkReachabilityFlags = SCNetworkReachabilityFlags()
        SCNetworkReachabilityGetFlags(reachabilityRef!, &flags)
        
        let reachable: Bool = (flags.rawValue & SCNetworkReachabilityFlags.reachable.rawValue) != 0
        let needsConnection: Bool = (flags.rawValue & SCNetworkReachabilityFlags.connectionRequired.rawValue) != 0
        if reachable && !needsConnection {
            // determine what type of connection is available
            
            let isCellularConnection = (flags.rawValue & SCNetworkReachabilityFlags.isWWAN.rawValue) != 0
            if isCellularConnection {
                return ConnectionType.mobile3GNETWORK // cellular connection available
            } else {
                return ConnectionType.wifinetwork // wifi connection available
            }
        }
        return ConnectionType.nonetwork // no connection at all
    }
}
