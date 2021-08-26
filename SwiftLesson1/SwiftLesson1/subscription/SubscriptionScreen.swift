//
//  SubscriptionScreen.swift
//  SwiftLesson1
//
//  Created by theman on 26/08/21.
//

import SwiftUI

struct SubscriptionScreen: View {
    var body: some View {
        Subscription()
    }
}

struct SubscriptionScreen_Previews: PreviewProvider {
    static var previews: some View {
        SubscriptionScreen()
    }
}

struct Subscription: View {
    var body: some View {
        NavigationView{
            Text("kontent sunscription")
            
            .navigationBarItems(
                leading:
                    HStack{
                        Button(action: {print("haloww")}, label: {
                            Image("youtube")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: 110, height: 30.0)
                        })
                    },
                
                trailing:
                    HStack{
                        Button(action: {print("halo")}, label: {
                            Image(systemName: "tray.full")
                                .foregroundColor(Color.secondary)
                        })
                        
                        Button(action: {print("halo")}, label: {
                            Image(systemName: "video.fill")
                                .foregroundColor(Color.secondary)
                        })
                        
                        Button(action: {print("halo")}, label: {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(Color.secondary)
                        })
                        
                        Button(action: {print("halo")}, label: {
                            Image("enda")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width:20, height: 20 )
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        })
                    }
            
                )
                .navigationBarTitle("", displayMode: .inline)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
