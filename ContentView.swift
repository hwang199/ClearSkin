//
//  ContentView.swift
//  LoginScreen
//
//  Created by Federico on 13/11/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername: Float = 0
    @State private var wrongPassword: Float  = 0
    @State private var showingLoginScreen = false
    @State private var stackPath : [String] = []

    var body: some View {
        NavigationView {
            ZStack {
                /*
                Color.blue
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white)
                 */
                Image("SplashScreen")
                    .resizable()
                    //.scaledToFit()
                    .frame(width:280, height:280)
                    .position(x:185,y:200)

                VStack {

                    Text("Email")
                        .padding()
                        .foregroundColor(Color.black)
                        .font(.system(size: 14))
                        .position(x:65,y:300)
                    
                    TextField("Email", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(20)
                        .border(.red, width: CGFloat(wrongUsername))
                        .position(x:195,y:235)
                    
                    Text("Password")
                        .padding()
                        .foregroundColor(Color.black)
                        .font(.system(size: 14))
                        .position(x:80,y:180)
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(20)
                        .border(.red, width: CGFloat(wrongPassword))
                        .position(x:195,y:115)
                    
                    Text("Forgot Password?")
                        .padding()
                        .foregroundColor(Color("lightblue"))
                        .font(.system(size: 12))
                        .position(x:285,y:60)

                    Button("Sign In") {
                        authenticateUser(username: username, password: password)
                        }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color("lightblue"))
                    .cornerRadius(30)
                    .position(x:195,y:5)
                    
                    /*
                    Text("OR LOG IN WITH")
                        .padding()
                        .foregroundColor(Color.black)
                        .font(.system(size: 12))
                        .position(x:195,y:0)
                    
                     Button("Google") {
                        
                     .foregroundColor(.red)
                     .frame(width: 100, height: 100)
                     .background(Color.white)
                     .cornerRadius(90)
                     .padding()
                     .position(x:195,y:20)
                     
                     Button("Facebook") {
                         authenticateUser(username: username, password: password)
                         }
                     .foregroundColor(.blue)
                     .frame(width: 100, height: 100)
                     .background(Color.white)
                     .cornerRadius(90)
                     .padding()
                     .position(x:200,y:20)
                    
                    Button("Apple") {
                        authenticateUser(username: username, password: password)
                        }
                    .foregroundColor(.black)
                    .frame(width: 100, height: 100)
                    .background(Color.white)
                    .cornerRadius(90)
                    .padding()
                    .position(x:200,y:20)
                     */
                    
                    Text("Don't have an account?")
                        .padding()
                        .foregroundColor(Color.black)
                        .font(.system(size: 12))

                    Button("Sign Up"){
                        authenticateUser(username: username, password: password)
                        }
                        .padding()
                        .foregroundColor(Color("lightblue"))
                        .font(.system(size: 12))

                        .position(x:195,y:5)
                    
                    
                    NavigationLink(destination: Text("You are logged in @\(username)"), isActive: $showingLoginScreen) {
                        EmptyView()
                    }
                    
                    
                }
            }.navigationBarHidden(true)
        }
    }

    func authenticateUser(username: String, password: String) {
        if username == "Admin" {
            wrongUsername = 0
            if password == "Pass" {
                wrongPassword = 0
                showingLoginScreen = true
            } else {
                wrongPassword = 2
            }
        } else {
            wrongUsername = 2
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


