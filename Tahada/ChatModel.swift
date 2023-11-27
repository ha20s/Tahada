//
//  ChatModel.swift
//  Tahada
//
//  Created by Hasna Ahmed on 09/05/1445 AH.
//

import Foundation

struct Chat : Identifiable{
    
    let id = UUID()
    let chatName: String
    let chatImage : String
    let chatMessage : String
    let chatTime : String
    
    
    init(chatName: String, chatImage: String ,chatMessage: String, chatTime : String) {
        self.chatName = chatName
        self.chatImage = chatImage
        self.chatMessage = chatMessage

        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd \nHH:mm"
        
        let today = Date()
        self.chatTime = dateFormatter.string(from: today)
    }
}

var chats : Array<Chat> = [Chat(chatName: "خالد احمد", chatImage: "khalidImage", chatMessage: "السلام عليكم", chatTime: ""), Chat(chatName: "فهد محمد", chatImage: "khalidImage", chatMessage: "و عليكم السلام", chatTime: "") , Chat(chatName: "نايف عبدالله", chatImage: "khalidImage", chatMessage: "مين معي ؟", chatTime: "") , Chat(chatName: "روميل يوسف", chatImage: "khalidImage", chatMessage: "السلام عليكم و رحمة الله و بركاته ", chatTime: "" ) , Chat(chatName: "خالد احمد", chatImage: "khalidImage", chatMessage: "السلام عليكم", chatTime: ""), Chat(chatName: "فهد محمد", chatImage: "khalidImage", chatMessage: "و عليكم السلام", chatTime: "") , Chat(chatName: "نايف عبدالله", chatImage: "khalidImage", chatMessage: "مين معي ؟", chatTime: "") , Chat(chatName: "روميل يوسف ", chatImage: "khalidImage", chatMessage: "السلام عليكم و رحمة الله و بركاته ", chatTime: "" ) ]




struct Message: Identifiable {
    let id = UUID()
    let sender: String
    let text: String
}

  var messages: [Message] = [
    Message(sender: "John", text: "Hello!"),
    Message(sender: "Alice", text: "Hi there!"),
    Message(sender: "John", text: "How are you?")
]

/*

 */
