//
//  ContentView.swift
//  BMI
//
//  Created by Amona Alarbash on 01/04/1444 AH.
//

import SwiftUI

struct ContentView: View {
    
    @State var length = ""
    @State var height = ""
    @State var weight = ""
    
    
    @State var BMI = ""
    @State var Status = ""
    

    var body: some View {
       
        VStack{
            Image("calculator")
                .resizable()
                .scaledToFit()
                .frame(width: 100 , height: 100)
            Text("enter your wieght and height")
                .font(.title)
                .fontWeight(.semibold)
            
            TextField("Enter your hieght in meters" , text: $height)
            
            TextField("Enter your weight in kg" , text: $weight)
          
            Button(action: {} , label: {
                Text("calc")
                    .font(.title)
                    .foregroundColor(.green)
                
            })
            .frame(width: 350, height: 65)
            .background(Color.gray)
            .cornerRadius(10)
            
            Text("BMI = \(BMI)")
            Text("Status = \(Status)")
        }
        
        .padding()
    }
    func BMICalculator(height: Double , weight: Double ){
        var person = weight / (height * height)
        if person <= 20 {
            Status = "weak"
        }else if person <= 25 {
            Status = "good"
            
        }else {
            Status = "overweight"
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
