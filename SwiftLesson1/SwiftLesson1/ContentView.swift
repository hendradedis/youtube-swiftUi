//
//  ContentView.swift
//  SwiftLesson1
//
//  Created by theman on 26/08/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            TabView{
                Home()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Beranda")
                    }
                
                ExploreScreen()
                    .tabItem {
                        Image(systemName: "paperplane.fill")
                        Text("Explore")
                    }
                SubscriptionScreen()
                    .tabItem {
                        Image(systemName: "tray.fill")
                        Text("Subscription")
                    }
                PesanScreen()
                    .tabItem {
                        Image(systemName: "envelope.fill")
                        Text("Kotak masuk")
                    }
                koleksiScreen()
                    .tabItem {
                        Image(systemName: "play.rectangle.fill")
                        Text("Koleksi")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home: View {
    var body: some View {
        NavigationView{
            Kontent()
            
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

struct Kontent: View {
    var body: some View {
        List{
            CellKontent(imageKontent: "movie3", profileKontent: "enda", judul: "The mola show", deskription: "Lord akan kembali lagi coming soon", durasi: "10:00")
            
            CellKontent(imageKontent: "movie", profileKontent: "enda", judul: "The mola show 2", deskription: "Lord akan kembali lagi coming soon 2", durasi: "10:00")
            
        }
    }
}

struct CellKontent: View {
    var imageKontent: String
    var profileKontent: String
    var judul: String
    var deskription: String
    var durasi : String
    
    var body: some View {
        //kontent 1
        VStack{
            ZStack(alignment: .bottomTrailing){
                Image(imageKontent)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                
                Text(durasi)
                    .padding(.all, 5)
                    .foregroundColor(.white)
                    .font(.caption)
                    .background(Color.black)
                    .cornerRadius(10)
                    .padding(.trailing, 5)
                    .padding(.bottom, 5.0)
            }
            
            HStack {
                Image(profileKontent)
                    .resizable()
                    .frame(width:20, height:20)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                VStack(alignment:.leading){
                    Text(judul).font(.headline)
                    HStack{
                        Text(deskription).font(.caption)
                    }
                }
                Spacer()
                Image(systemName: "list.bullet")
            }
        }
    }
}

