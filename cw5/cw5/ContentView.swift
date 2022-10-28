//
//  ContentView.swift
//  cw5
//
//  Created by ... on 23/06/2022.
//

import SwiftUI

struct ContentView: View {
    var name = String()
    @State var counter : [Int] = [0, 0, 0]
    var body: some View {
        VStack{
            Alarbash(name: "استغفرالله", eman: $counter[0])
            Alarbash(name: "الحمدلله", eman: $counter[1])
            Alarbash(name: "سبحان الله", eman: $counter[2])
            }.padding()
        }
    }



// يجب عمل extract

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Alarbash: View {
     var name: String
    @Binding var eman: Int
    var body: some View {
        HStack{
    Text(name).font(.title)
            Spacer()
            Text("\(eman)")
                .font(.largeTitle)
                .frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(.white)
                .background(Color.green)
                .clipShape(Circle())
                .padding()
                .onTapGesture {
                    eman += 1
                }
        }.padding()
    }
}
