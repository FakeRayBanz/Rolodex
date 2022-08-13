//
//  RolodexView.swift
//  Rolodex
//
//  Created by Matthew Parker on 13/8/2022.
//

import SwiftUI

struct RolodexView: View {
    @State var greenIndex:Double = 0.0
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 350, height: 250)
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.blue)
                    .frame(width: 350, height: 250)
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.orange)
                    .frame(width: 350, height: 250)
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.purple)
                    .frame(width: 350, height: 250)
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.green)
                    .frame(width: 350, height: 250)
                    .zIndex(greenIndex)
                    .onTapGesture {
                        withAnimation(.easeInOut) {
                            greenIndex = -1                            
                        }
                    }
            }
            Button("Test") {
                
            }
        }
    }
}

struct RolodexView_Previews: PreviewProvider {
    static var previews: some View {
        RolodexView()
    }
}
