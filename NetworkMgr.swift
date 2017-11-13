import Foundation
import Alamofire

class NetworkMgr {
    
    let MESSAGE_API_URL = "https://api.wit.ai/message?q="
    
    let headers: HTTPHeaders = [
        "Authorization": "Bearer LWXP3BTDZPRXRYAQHTBBMZHBTTD4RWY5"
    ]
    
    /// sharedInstance: the NetworkMgr singleton
    public static let sharedInstance = NetworkMgr()
    
    let sessionId: String = NSUUID().uuidString

    /// sendMessage(msg: String): Sends a message to Wit
    /// - Parameter msg: string of the message
    func sendMessage(msg: String) {
        
        let msgUrl = MESSAGE_API_URL + msg.addingPercentEncoding(withAllowedCharacters: NSCharacterSet.urlPathAllowed)!
        
        Alamofire.request(msgUrl, headers: headers).responseJSON { response in
            debugPrint("got response from Wit:")
            debugPrint(response)
        }
    }
}
