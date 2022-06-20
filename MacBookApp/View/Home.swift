//
//  Home.swift
//  MacBookApp
//
//  Created by Ayhan on 14.06.2022.
//

import SwiftUI

let gradient = LinearGradient(gradient: .init(colors: [Color.purple, Color.yellow]), startPoint: .leading, endPoint: .trailing)

struct Home: View {
    var screen = NSScreen.main!.visibleFrame
    @State var search = ""
    
    @State var currentFeed = "Latest"
    
    var body: some View {
        HStack(spacing: 0){
       
          SideView()
            
            ScrollView {
                VStack{
                    HStack{
                        
                        TextField("Search", text: $search)
                            .textFieldStyle(PlainTextFieldStyle())
                            .padding(.vertical,10)
                            .padding(.horizontal)
                            .background(Color.white.opacity(0.25))
                            .cornerRadius(25)
                        
                        Button(action: {}, label: {
                            Label(
                                title: { Text("Add Photos")}, icon: {Image(systemName: "plus.square")})
                            .foregroundColor(.white)
                            .padding(10)
                            .background(gradient)
                            .cornerRadius(10)
                        })
                        .buttonStyle(PlainButtonStyle())
                    }
                    .padding()
                    .padding(.top, 20)
                    
                    Text("Stories")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                    
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        HStack(spacing: 15){
                            Button(action: {}, label: {
                                Image(systemName: "plus")
                                    .font(.title2)
                                    .foregroundColor(.white)
                                    .frame(width: 55, height: 55)
                                    .background(Color.orange.opacity(0.15))
                                    .clipShape(Circle())
                            })
                            .buttonStyle(PlainButtonStyle())
                            ForEach(1...6,id: \.self){index in
                                
                                Image("S\(index)")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 65, height: 65)
                                    .clipShape(Circle())
                                    .background(Circle().stroke(gradient,lineWidth: 8))
                                
                            }
                            .padding()
                        }
                    })
                    
                    HStack(alignment: .top) {
                        Text("Feed")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                 
                        Spacer()
                        ForEach(["Latest","Popular"],id: \.self){type in
                            Button(action: {
                                withAnimation {currentFeed = type}
                            }, label: {
                                VStack(spacing: 8){
                                    Text(type)
                                        .foregroundColor(currentFeed == type ? .white : .gray)
                                    
                                    ZStack{
                                        Circle()
                                            .fill(Color.clear)
                                            .frame(width: 5, height: 5)
                                        
                                        if currentFeed == type {
                                            Circle()
                                                .fill(Color.white)
                                                .frame(width: 5, height: 5)
                                        }
                                    }
                                }
                            })
                            .buttonStyle(PlainButtonStyle())
                        }
                     }
                    .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                .padding(.top, 8)
                    
                    
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible(),spacing: 15), count: 2), content: {
                        ForEach(1...8,id: \.self){index in
                            PostView(image: "BG\(index)")
                            
                        }
                    })
                }
                
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color("gradient"))
            }
                
     }
        .ignoresSafeArea(.all, edges: .all)
        .frame(width: screen.width / 1.4, height: screen.height - 60)
        .background(BlurWindow())
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
