//
//  ReservationForm.swift
//  teacup-coffee
//
//  Created by Wilbert Baker on 11/22/25.
//

import SwiftUI

struct ReservationForm: View{
    // constants
    let resturantName = "Nadia Cafe"
    let maxCount = 10
    
    @State private var UserName = ""
    @State private var guestCount = 1
    @State private var phoneNumber = ""
    @State private var userName = ""
    @State private var previewText = ""
    
    
    var body: some View {
        Form {
            //header
            Section{
                Text(resturantName)
                    .font (.title3)
                    .bold()
                Text("Reservation form")
                    .foregroundColor(.secondary)
                
            }
            
            Section(header: Text("Resevation Details")) {
                TextField("Name",text: $userName)
                    .textInputAutocapitalization(.words)
                    .autocorrectionDisabled(true)
                if userName.isEmpty {
                    Text("Please enter a name.")
                        .textInputAutocapitalization(.words)
                        .foregroundColor(.purple)
                    Stepper "VIP : \(VIPcount)",value
                    
                    if userName.VIP => 0 {
                        TextField ("Name",text: .specialCode"*userName")
                            .textInputAutocapitalization(.word)
                            .foregroundColor(.green)
                    }
                }
                
                // use a constant
                Stepper("Guest: \(guestCount)",value: $guestCount, in:1 ... maxCount)
                     
            }
            Section{
                Button("Preview resuervation"){
                  previewText =
                    """
                        Name: \(userName)
                    """
                }
            }
        }
        
    }
}

#Preview {
    ReservationForm()
}
