//
//  CommunityView.swift
//  Tahada
//
//  Created by Hasna Ahmed on 08/05/1445 AH.
//

import SwiftUI

struct CommunityView: View {
    
    @State private var textInput: String = ""
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack(alignment: .leading, spacing: 10) {
                    
                    Text("مجتمعي")
                        .foregroundColor(Color("fontColor"))
                        .font(.largeTitle.bold())
                        .padding()
                    
                    Divider()
                    
                    SearchBarView(searchText: $searchText)
                    
                    ScrollView {
                    SearchedView(searchText: searchText)
                    }
                }
            }
            .background(Image("MainBackground").resizable().scaledToFill().ignoresSafeArea())
        }
    }
}

struct SearchBarView: View {
    
    @Binding var searchText: String
    
    var body: some View {
        HStack {
            TextField("بحث", text: $searchText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            
            Button(action: {
                searchText = ""
            }) {
                Image(systemName: "xmark.circle.fill")
                    .foregroundColor(.gray)
            }
            .padding(.trailing)
        }
    }
}


private struct SearchedView: View {
    
    var searchText:String

    
   
    @State var searchedName = Chat(chatName: "", chatImage: "", chatMessage: "", chatTime: "")
    
    var searchResulte:[Chat]{
        if searchText.isEmpty{
            return chats
        } else {
            return chats.filter { Fund in
                Fund.chatName.contains(searchText)
                
                
            }
        }
        
    }
    var body: some View {
        
        ForEach(searchResulte, id: \.chatName) { chat in
                HStack{
                    
                    Image("\(chat.chatImage)")
                        .resizable()
                        .frame(width: 75 , height: 75)
                        .clipShape(Circle())
                    
                    VStack(alignment:.leading){
                        Text("\(chat.chatName)")
                            .foregroundColor(Color("fontColor"))
                            .font(.system(size: 24))
                        Text("\(chat.chatMessage)")
                            .foregroundColor(Color("fontColor"))
                        
                    }//.padding()
                    
                    Spacer()
                    
                    VStack{
                        Text("\(chat.chatTime)")
                            .multilineTextAlignment(.trailing)
                            .font(.caption)
                            .foregroundColor(Color("fontColor"))
                        
                        ZStack(alignment: .center){
                            
                            Circle()
                                .foregroundColor(Color.green) // Choose your desired color
                                .frame(width: 25, height: 25)
                            
                            Text("4")
                                .font(.caption)
                        }// messages count and date
                    }

                }.frame(height: 100)
                .padding(.horizontal)
            
            Divider()

        }
    }
}

#Preview {
    
    CommunityView()
        .environment(\.layoutDirection, .rightToLeft)
}


