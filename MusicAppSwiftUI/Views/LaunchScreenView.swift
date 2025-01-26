//
//  LaunchScreenView.swift
//  MusicAppSwiftUI
//
//  Created by sai kumar on 26/01/25.
//

import SwiftUI

struct LaunchScreenView: View {
    @State private var path = NavigationPath()
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                Spacer()
                //Customising logo image
                Image(AppImg.logoImage)
                    .resizable()
                    .frame(width: 120, height: 120)
                //Creating Label
                Text(LaunchView.firstTitle)
                    .font(.system(.title))
                    .foregroundStyle(.white)
                //Creating Label
                Text(LaunchView.secondTitle)
                    .font(.system(.title2))
                    .foregroundStyle(.white)
                Spacer()
                Spacer()
                VStack {
                    //Creating signup button
                    Button(LaunchView.signupTitle) {
                        path.append(LaunchView.signupPath)
                    }
                    .padding()
                    .tint(.black)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                            .fill(Color(red: 51/255, green: 255/255, blue: 153/255))
                    )
                    //Creating login button
                    Button(LaunchView.loginTitle) {
                        path.append(LaunchView.loginPath)
                    }
                    .padding()
                    .tint(.white)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                            .fill(Color(red: 32/255, green: 32/255, blue: 32/255))
                            .stroke(.gray, lineWidth: 1.0)
                    )
                }
                .padding()
                .padding(.bottom, 45)
                .navigationDestination(for: String.self) { value in
                    if value == LaunchView.signupPath {
                        LoginView(loginType: .constant(false))
                    }else if value == LaunchView.loginPath {
                        LoginView(loginType: .constant(true))
                    }
                }
            }
            .background(
                LinearGradient(gradient: Gradient(colors: [Color(red: 96/255, green: 96/255, blue: 96/255),Color(red: 32/255, green: 32/255, blue: 32/255, opacity: 1),Color(red: 32/255, green: 32/255, blue: 32/255, opacity: 1)]), startPoint: .top, endPoint: .bottom)//Background to view
            )
            .ignoresSafeArea()
        }
    }
}

#Preview {
    LaunchScreenView()
}
