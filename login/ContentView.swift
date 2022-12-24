//
//  ContentView.swift
//  login
//
//  Created by Sajed Shaikh on 24/12/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var userName: String = String()
    @State private var userPassword: String = String()
    
    var body: some View {
        VStack {
            Text("Login")
                .font(.largeTitle)
                .padding()
            Text("Login form with SwiftUI")
                .font(.subheadline)
                .padding()
            TextField("Username", text: $userName)
                .padding()
                .background(Color.white)
                .border(.gray)
                .cornerRadius(4.0)
            SecureField("Password", text: $userPassword)
                .padding()
                .background(Color.white)
                .border(.gray)
                .cornerRadius(4.0)
            
            HStack {
                Button("Login", action: {
                    debugPrint("Login tapped")
                })
                
                Spacer()
                
                Button("Forgot password", action: {
                    debugPrint("Forgot password tapped")
                })

            }
            .padding()
        }
        .padding()
        
   
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
