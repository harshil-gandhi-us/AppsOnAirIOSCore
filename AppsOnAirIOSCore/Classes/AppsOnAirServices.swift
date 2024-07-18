

import UIKit
import AVFoundation

public class AppsOnAirServices : NSObject, NetworkServiceDelegate {
    
    
    private var appId: String = ""
    public var isNetworkConnected: Bool = false {
            didSet {
                // This block will be executed when the value changes
                if isNetworkConnected {
                    // Call your specific function when streaming starts
                    startStreaming()
                } else {
                    // Call another function when streaming stops
                    stopStreaming()
                }
            }
        }
    private var window: UIWindow?
    
    func startStreaming() {
            print("Streaming started!")
            // Your implementation here
        }

        func stopStreaming() {
            print("Streaming stopped!")
            // Your implementation here
        }
    var networkService: NetworkService = ReachabilityNetworkService()

    public func getAppId() -> (String) {
        networkService.delegate = self
        networkService.startMonitoring()
        let appId = Bundle.main.infoDictionary?["appId"] as? String ?? ""
        self.appId = appId;
        return appId
    }
    
    func networkStatusDidChange(status: Bool) {
        print("Network is \(status)")
        isNetworkConnected = status
    }
    
    
    public func networkStatusDidChange()->Bool {
        print("Network is \(isNetworkConnected)")
        return isNetworkConnected
    }
    
}
