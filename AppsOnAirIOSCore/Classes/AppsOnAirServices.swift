

import UIKit
import AVFoundation

public class AppsOnAirServices : NSObject, NetworkServiceDelegate {
    
    
    private var appId: String = ""
    private var isNetworkConnected: Bool = false
    private var window: UIWindow?

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
}
