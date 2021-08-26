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
            
            //kontent 1
            VStack{
                ZStack(alignment: .bottomTrailing){
                    Image("movie")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    
                    Text("01:20.00")
                        .padding(.all, 5)
                        .foregroundColor(.white)
                        .font(.caption)
                        .background(Color.black)
                        .cornerRadius(10)
                        .padding(.trailing, 5)
                        .padding(.bottom, 5.0)
                }
                
                HStack {
                    Image("enda")
                        .resizable()
                        .frame(width:20, height:20)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    
                    VStack(alignment:.leading){
                        Text("The East war movie").font(.headline)
                        HStack{
                            Text("The East war movie film yang menceritakan kisah peperangan di asia tenggara").font(.caption)
                        }
                    }
                    Spacer()
                    Image(systemName: "list.bullet")
                }
            }
            
            
            //kontent 2
            VStack{
                ZStack(alignment: .bottomTrailing){
                    Image("movie1")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    
                    Text("01:20.00")
                        .padding(.all, 5)
                        .foregroundColor(.white)
                        .font(.caption)
                        .background(Color.black)
                        .cornerRadius(10)
                        .padding(.trailing, 5)
                        .padding(.bottom, 5.0)
                }
                
                HStack {
                    Image("enda")
                        .resizable()
                        .frame(width:20, height:20)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    
                    VStack(alignment:.leading){
                        Text("The Mystery of Dragon").font(.headline)
                        HStack{
                            Text("karya dari jacki chan sangat antusian anda jangann lupa ya").font(.caption)
                        }
                    }
                    Spacer()
                    Image(systemName: "list.bullet")
                }
            }
            
            //kontent 3
            VStack{
                ZStack(alignment: .bottomTrailing){
                    Image("movie2")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    
                    Text("01:20.00")
                        .padding(.all, 5)
                        .foregroundColor(.white)
                        .font(.caption)
                        .background(Color.black)
                        .cornerRadius(10)
                        .padding(.trailing, 5)
                        .padding(.bottom, 5.0)
                }
                
                HStack {
                    Image("enda")
                        .resizable()
                        .frame(width:20, height:20)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    
                    VStack(alignment:.leading){
                        Text("The 10 film horor").font(.headline)
                        HStack{
                            Text("Film horo disini juga lengkap bangget").font(.caption)
                        }
                    }
                    Spacer()
                    Image(systemName: "list.bullet")
                }
            }
            
            //kontnet4
            VStack{
                ZStack(alignment: .bottomTrailing){
                    Image("movie3")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    
                    Text("01:20.00")
                        .padding(.all, 5)
                        .foregroundColor(.white)
                        .font(.caption)
                        .background(Color.black)
                        .cornerRadius(10)
                        .padding(.trailing, 5)
                        .padding(.bottom, 5.0)
                }
                
                HStack {
                    Image("enda")
                        .resizable()
                        .frame(width:20, height:20)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    
                    VStack(alignment:.leading){
                        Text("The Kids movie").font(.headline)
                        HStack{
                            Text("Film anak anak lengkap juga di Mola").font(.caption)
                        }
                    }
                    Spacer()
                    Image(systemName: "list.bullet")
                }
            }
            
        }
    }
}

