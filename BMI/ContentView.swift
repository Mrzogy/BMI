//
//  ContentView.swift
//  BMI
//
//  Created by 3bood on 01/11/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State var Hight:Float = 0
    @State var Witdth:Float = 0
    @State var result = 0
    var body: some View {
        VStack {
            VStack{
            
                   
                Text("Height")
                Slider(value: $Hight, in: 1.3...2)
                    .accentColor(.red)
                Text("\(Hight)")
                
                Text("Width")
                Slider(value: $Witdth, in: 30...100)
                    .accentColor(.yellow)
                Text("\(Witdth)")
                
                Button("Click"){
                    result =   Int(Witdth/(Hight * Hight))
                    
                    
                }
                .foregroundColor(.white)
                .frame(width: 100)
                .frame(height: 50)
                .background(.blue)
                .cornerRadius(10)
              Text("\(result)")
                
                switch result {
                case 0...18:
                    Text("UnderWeight")
                case Int(18.5)...24:
                    Text("Normal")
                case 25...Int(29.5):
                    Text("OverWeight")
                case 30...Int(34.9):
                    Text("Obese")
                case 35...40:
                    Text("Extremely Obese")
                default:
                    Text("error")
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
