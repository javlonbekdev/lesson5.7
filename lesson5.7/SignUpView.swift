//
//  SignUpView.swift
//  lesson5.6
//
//  Created by Javlonbek on 24/01/22.
//

import SwiftUI

struct SignUpView: View {
    @Environment(\.presentationMode) var presentation
    @State private var isModal = false
    @State var email = ""
    @State var password = ""
    var body: some View {
        VStack{
            Spacer()
            TextField("Firstname", text: $email)
                .frame(height: 45).padding(.leading, 10)
                .background(.gray.opacity(0.2))
                .cornerRadius(22)
            TextField("Lastname", text: $email)
                .frame(height: 45).padding(.leading, 10)
                .background(.gray.opacity(0.2))
                .cornerRadius(22)
            TextField("Email", text: $email)
                .frame(height: 45).padding(.leading, 10)
                .background(.gray.opacity(0.2))
                .cornerRadius(22)
            TextField("Address", text: $email)
                .frame(height: 45).padding(.leading, 10)
                .background(.gray.opacity(0.2))
                .cornerRadius(22)
            SecureField("Password", text: $password)
                .frame(height: 45).padding(.leading, 10)
                .background(.gray.opacity(0.2))
                .cornerRadius(22)
            Button {
                
            } label: {
                HStack{
                    Spacer()
                    Text("Sign Up")
                        .foregroundColor(.white)
                    Spacer()
                }
            }.frame(height: 45)
                .background(.red)
                .cornerRadius(22)
            Spacer()
            HStack{
                Text("Already have an account?")
                    .foregroundColor(.blue)
                Button {
                    presentation.wrappedValue.dismiss()
                } label: {
                    Text("Sign In")
                        .font(.system(size: 18))
                        .foregroundColor(.blue)
                }

            }

        }.padding()
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
