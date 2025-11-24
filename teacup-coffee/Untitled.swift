
//
//  Aboutview.swift
//  teacup-cafe
//
//  Created by Wilbert Baker on 11/21/25.
//

import SwiftUI

struct Aboutview: View {
    var body: some View {
        Text("About Teacup-cafe")
            .font(.largeTitle)
            .foregroundColor(.blue)
            .bold()
        
        Text("Teacup -cafe serves everyone with a taste for subs and conversation. Has wifi for eveeryone who needs to have time to talk and work in a calm andsocialble enviroment.all are 'Welcometo our Cafe!'enjoy Yourself in our calm enviroment")
            .multilineTextAlignment(.center)
            .font(.body)
            .padding(.horizontal)
        
        HStack(spacing:30){
            Image(systemName:"fork.knife")
            Image(systemName: "leaf")
            Image(systemName: "map")
        }
        .font(.system(size: 32))
        .foregroundColor(.red)
    
        
    }
}

#Preview {
    Aboutview()
}
