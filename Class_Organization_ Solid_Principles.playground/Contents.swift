
import UIKit

//Class Organization with Solid Principles

protocol Token {
    func getToken() -> String
    func isValidToken() -> Bool
}

class RefreshToken: Token {
    
    private var isActiveToken:Bool = true
    private let refeshId:String
    var time:Double?
    
    init(refeshId:String, time:Double? = nil) {
        self.refeshId = refeshId
        self.time = time
    }
    
    static func getStaticToken() -> String? {
        return nil
    }
    
    func getToken() -> String {
        return "NewToken"
    }
    
    func isValidToken() -> Bool {
        return true
    }
}

class OldToken: Token {
    
    private var isActiveToken:Bool = true
    private let oldId:String
    
    init(oldId:String) {
        self.oldId = oldId
    }
    
    func getToken() -> String {
        return "OldToken"
    }
    
    func isValidToken() -> Bool {
        return false
    }
}

class App {
    
  static func startApp(token:Token) {
      // do every thing
  }
    
}

// we can use from both of them in startApp

App.startApp(token: OldToken(oldId: "test"))
App.startApp(token: RefreshToken(refeshId: "test", time: nil))



