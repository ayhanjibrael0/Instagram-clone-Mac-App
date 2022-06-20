//
//  SideView.swift
//  MacBookApp
//
//  Created by Ayhan on 14.06.2022.
//

import SwiftUI

struct SideView: View {
    var screen = NSScreen.main!.visibleFrame
    @State var selected = "Explore"
    @Namespace var animation
    var body: some View {
        VStack(spacing: 15){
            
            HStack(spacing: 10){
                Image("Profile")
                    .resizable()
                    .clipShape(Circle())
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
              
                Text("Ayhan App")
                    .font(.title3.bold())
                
                Spacer()
                
            }
            .padding()
            .padding(.top, 20)
            
            Image("Profile")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 65, height: 65)
                .clipShape(Circle())
                .padding(6)
                .background(
                  Circle()
                    .stroke(gradient,lineWidth: 2)
                )
                .clipShape(Circle())
            Text("Ayhan")
                .font(.title)
                .foregroundColor(.white)
        
            Text("@ayhan_08")
                .foregroundColor(.gray)
            
            HStack {
                VStack(spacing: 5){
                    Text("60")
                        .foregroundColor(.white)
                    
                    Text("Post")
                }
                .frame(maxWidth: .infinity)
                
                Divider()
                
                VStack(spacing: 8){
                    Text("400")
                        .foregroundColor(.white)
                    
                    Text("Followers")
                }
                .frame(maxWidth: .infinity)
                Divider()
                VStack(spacing: 5){
                    Text("40")
                        .foregroundColor(.white)
                    
                    Text("Following")
                }
                .frame(maxWidth: .infinity)
            }
            .frame(height: 50)
            
            Group{
                TabButton(image: "rectangle.3.offgrid", title: "Explore", selected: $selected, animation: animation)
                    .padding(.top)
                
                TabButton(image: "magnifyingglass", title: "Feed", selected: $selected, animation: animation)
                 
                TabButton(image: "bell", title: "Notification", selected: $selected, animation: animation)
               
                TabButton(image: "gear", title: "Settings", selected: $selected, animation: animation)
            
            }
            
            Spacer()
            Divider()
                .padding(.horizontal, 20)
            Spacer()
            
            
            TabButton(image: "arrow.down.forward.square", title: "Logout", selected: .constant(""), animation: animation)
                .padding(.bottom, 20)
            
        }
        .frame(maxWidth: (screen.width / 1.4) / 3.5, maxHeight: .infinity)
        .background(BlurWindow())
    }
}

struct SideView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
