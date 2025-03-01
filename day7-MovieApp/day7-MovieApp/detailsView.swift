//
//  detailsView.swift
//  day7-MovieApp
//
//  Created by Shaimaa on 23/03/2022.
//

import SwiftUI

struct detailsView: View {
    
   // var movie: MoviesStruct

    var body: some View {
        ZStack {
            Color.black.opacity(0.3)
                .background(
                    Image("")
                        .resizable()
                        .scaledToFill()
                        .blur(radius: 40)
                )
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .center) {
                Image("")
                    .resizable()
                    .scaledToFit()
                    .frame(height:300)
                    .overlay(Circle().stroke(Color.white, lineWidth: 6))
                    .clipShape(Circle())
                // if CW-6 then remove the below and use the HStack
                Text("")
                    .font(.system(size: 47))
                    .bold()
                    .padding()
            }.padding(.vertical)
                .foregroundColor(.white)
        }
    }
}

struct detailsView_Previews: PreviewProvider {
    static var previews: some View {
        detailsView()
    }
}
