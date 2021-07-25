//
//  Communicator.swift
//  DesignMode
//
//  Created by 孟德林 on 2021/7/25.
//

import Foundation

protocol ClearMessageChannel {
    
    func send(message:String);
    
}

protocol SecureMessageChannel {
    
    func sendEncrytedMessage(encryptedText:String);
    
}

class Communicator {
    
    private let clearChannel:ClearMessageChannel;
    
    private let secureChannel: SecureMessageChannel;
    
    
    init(clearChannel: ClearMessageChannel,
         secureChannel: SecureMessageChannel ) {
        self.clearChannel = clearChannel;
        self.secureChannel = secureChannel;
    }
    
    func sendCleartextMessage(message:String) {
        self.clearChannel.send(message: message)
    }
    
    func sendSecureMessage(message:String) {
        self.secureChannel.sendEncrytedMessage(encryptedText: message)
    }
    
}



