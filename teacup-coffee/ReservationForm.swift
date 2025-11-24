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
    let maxCount = 20
    
    @State private var UserName = ""
    @State private var guestCount = 1    @State private var phoneNumber = ""
    @State private var userName = ""
    @State private var previewText = ""
    @State private var vipMembers = 1
    
    
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
                }
                
                Stepper("VIP members: \(vipMembers)", value: $vipMembers, in: 1 ... 8)
                
                if vipMembers >= 5 {
                    Text("You can add up to 5 VIP members")
                        .foregroundColor(.green)
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
