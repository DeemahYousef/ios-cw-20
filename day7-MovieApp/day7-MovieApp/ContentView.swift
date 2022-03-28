//
//  ContentView.swift
//  day7-MovieApp
//
//  Created by Shaimaa on 23/03/2022.
//

import SwiftUI

struct ContentView: View {
    let movies = ["The GodFather", "Spider man no way home", "Demon slayer"]
    var body: some View {
        NavigationView{
        List(movies, id: \.self){ movie in
            NavigationLink(destination:detailsView()){
                movieRow(movie: movie)}
        }.navigationTitle("Movies")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct movieRow: View {
    var movie:String
    var body: some View {
        HStack{
            Image(movie)
                .resizable()
                .scaledToFit()
                .frame( height: 120, alignment: .center)
                .clipShape(Circle())
            Text(movie)
                .font(.headline)
                .fontWeight(.bold)
        }
    }
}
