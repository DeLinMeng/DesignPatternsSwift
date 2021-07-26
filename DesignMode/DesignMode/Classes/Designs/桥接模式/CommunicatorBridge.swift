//
//  CommunicatorBridge.swift
//  DesignMode
//
//  Created by 孟德林 on 2021/7/26.
//

import Foundation


// 实现信息部分
protocol Message {
    
    init(message:String)
    
    func prepareMessage()
    
    var contentToSend:String { get }
    
}

class ClearMessage: Message {
    
    private var message:String
    
    required init(message: String) {
        self.message = message;
    }
    
    func prepareMessage() {
        // no action required
    }
    
    var contentToSend: String {
        return message;
    }
    
}

class EncryptedMessage: Message {
    
    private var clearText:String
    
    private var cipherText:String?
    
    required init(message: String) {
        self.clearText = message
    }
    
    func prepareMessage() {
        cipherText = clearText;
    }
    
    var contentToSend: String {
        return cipherText ?? "";
    }
}


// 实现通道部分
protocol Channel {
    func sendMessage(msg:Message)
}


class LandLineChannel: Channel {
    
    func sendMessage(msg: Message) {
        print("Landline:\(msg.contentToSend)")
    }
}

class WirelessChannel: Channel {
    
    func sendMessage(msg: Message) {
        print("Wireless :\(msg.contentToSend)")
    }
}


class CommunicatorBridge: ClearMessageChannel, SecureMessageChannel {
    
    private var channel: Channel
    
    init(channel: Channel) {
        self.channel = channel
    }
    
    func send(message: String) {
        let msg = ClearMessage(message: message)
        channel.sendMessage(msg: msg)
    }
    
    func sendEncrytedMessage(encryptedText: String) {
        let msg = EncryptedMessage(message: encryptedText)
        sendMessage(msg: msg)
    }
    
    private func sendMessage(msg:Message) {
        msg.prepareMessage();
        channel.sendMessage(msg: msg)
    }
}

class TestFunc {
    
    func test() {
        
        let bridge = CommunicatorBridge.init(channel: LandLineChannel())
        let comms = Communicator.init(clearChannel: bridge, secureChannel: bridge)
        comms.sendSecureMessage(message: "hello")
        comms.sendCleartextMessage(message: "this is secret")
    }
    
    
    var initCallBack:(String) -> Void {
        
        return { p in }
        
    }
    
}
