//
//  HomeView.swift
//  lesson7
//
//  Created by Javlonbek on 25/01/22.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var status: Status
    var body: some View {
        NavigationView{
            VStack {
                Button {
                    UserDefaults.standard.removeObject(forKey: "userid")
                    status.listen()
                } label: {
                    Text("Log Out")
                        .foregroundColor(.red)
                }
            .font(.title)
            }
            .navigationBarItems(leading: Image(systemName: "camera"), trailing: Image(systemName: "paperplane")).foregroundColor(.red)
            .navigationBarTitle("Instagram", displayMode: .inline)
        }

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
