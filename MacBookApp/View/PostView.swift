//
//  PostView.swift
//  MacBookApp
//
//  Created by Ayhan on 14.06.2022.
//

import SwiftUI

struct PostView: View {
    var image:String
    var body: some View {
        GeometryReader {reader in
            VStack{
                    Image(image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(20)
            }
            
        }
        .frame(height: 300)
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
  Home()
    }
}
