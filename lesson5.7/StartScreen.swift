//
//  ContentView.swift
//  lesson7
//
//  Created by Javlonbek on 25/01/22.
//

import SwiftUI

struct StartScreen: View {
    @EnvironmentObject var status: Status
    var body: some View {
        VStack{
            if self.status.userid != nil {
                HomeView()
            }
            else {
                SignInView()
            }
        }
        .onAppear {
            status.listen()
        }
    }
}

struct StartScreen_Previews: PreviewProvider {
    static var previews: some View {
        StartScreen()
            .previewInterfaceOrientation(.portrait)
    }
}
