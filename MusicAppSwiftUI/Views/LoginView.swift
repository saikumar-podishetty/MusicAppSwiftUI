//
//  LoginView.swift
//  MusicAppSwiftUI
//
//  Created by sai kumar on 15/01/25.
//

import SwiftUI

struct LoginView: View {
    //LoginViewCtrl
    @Binding private var loginType: Bool
    
    init(loginType: Binding<Bool>) {
        self._loginType = loginType
    }
    var body: some View {
        VStack {
            Spacer()
            //Customising Image
            Image(AppImg.logoImage)
                .resizable()
                .frame(maxWidth: 120, maxHeight: 120)
            //Title
            Text("\(!loginType ? LoginViewCtrl.labelSignupTitle : LoginViewCtrl.labelLoginTitle)")
                .foregroundStyle(.white)
                .fontWeight(.heavy)
            Spacer()
            
            VStack {
                //Creating continue with email stack
                HStack {
                    Image(systemName: LoginViewCtrl.emailImageTitle)
                        .frame(width: 60, height: 30)
                    Button(LoginViewCtrl.emailButtonTitle) {
                        
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .fontWeight(.bold)
                    .foregroundStyle(.black)
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                }
                .background(
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(Color(red: 51/255, green: 255/255, blue: 153/255))
                )
                //Creating continue with phone number stack
                HStack {
                    Image(systemName: LoginViewCtrl.phoneImageTitle)
                        .frame(width: 60, height: 30)
                        .foregroundStyle(.white)
                        .scaledToFit()
                    Button(LoginViewCtrl.phoneButtonTitle) {
                        
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                }
                .background(
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(Color(red: 32/255, green: 32/255, blue: 32/255))
                        .stroke(.gray, lineWidth: 1.0)
                )
                //Creating continue with Google stack
                HStack {
                    Image(AppImg.googleImage)
                        
                        .frame(width: 60, height: 30)
                        .foregroundStyle(.white)
                    Button(LoginViewCtrl.googleButtonTitle) {
                        
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                }
                .background(
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(Color(red: 32/255, green: 32/255, blue: 32/255))
                        .stroke(.gray, lineWidth: 1.0)
                )
                //Creating continue with Facebook stack
                HStack {
                    Image(AppImg.facebookImage)
                        
                        .frame(width: 60, height: 30)
                        .foregroundStyle(.white)
                    Button(LoginViewCtrl.facebookButtonTitle) {
                        
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                }
                .background(
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(Color(red: 32/255, green: 32/255, blue: 32/255))
                        .stroke(.gray, lineWidth: 1.0)
                )
            }
            .padding()
            //Creating stack for login button and dont have account label
            VStack {
                Text("\(!loginType ? LoginViewCtrl.alreadyHaveAccountLabel : LoginViewCtrl.dontHaveAccountLabel)")
                    .foregroundStyle(.white)
                Button("\(!loginType ? LoginViewCtrl.loginTitle : LoginViewCtrl.signupTitle)") {
                    
                }
                .padding()
                .foregroundStyle(.white)
                .fontWeight(.semibold)
            }
            .padding()
        }
        .padding()
        .background(
            Color(red: 32/255, green: 32/255, blue: 32/255)
        )
        .ignoresSafeArea()
            
    }
}

#Preview {
    LoginView(loginType: .constant(false))
}
