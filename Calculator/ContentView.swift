//
//  ContentView.swift
//  Calculator
//
//  Created by Emine Büşra Yıldız on 17.11.2023.
//

import SwiftUI

enum CalcButton: String {
    case one
    case two
    case three
    case four
    case five
    case six
    case seven
    case eight
    case nine
    case ten
    case zero
    case add
    case subtract
    case divide
    case multiply
    case equal
    case clear
    case decimal
    case percent
    case negative
}

struct ContentView: View {
    
    let buttons: [[CalcButton]] = [
        [.seven, .eight, .nine]
        
    
    
    ]
    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack{
                HStack{
                    Spacer()
                    Text("0")
                        .bold()
                        .font(.system(size: 64))
                        .foregroundColor(.white)
                }
                .padding()
                
                ForEach(buttons, id: \.self){row in
                    ForEach(row, id:\.self){item in
                        Button(action: {
                            
                        },label: {
                            Text(item.rawValue)
                                .frame(width:70, height:70)
                                .background(Color.orange)
                        })
                        
                    }
                    
                }
                
            }
        }
        
        
    }
}

#Preview {
    ContentView()
}
