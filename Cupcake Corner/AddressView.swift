//
//  AddressView.swift
//  Cupcake Corner
//
//  Created by Sarvad shetty on 1/22/20.
//  Copyright © 2020 Sarvad shetty. All rights reserved.
//

import SwiftUI

struct AddressView: View {
    
    @ObservedObject var order = Order()
    
    var body: some View {
        Form {
            Section {
                TextField("Name",text: $order.name)
                TextField("Street address",text: $order.streetAddress)
                TextField("City",text: $order.city)
                TextField("Zip",text: $order.zip)
            }
            
            Section {
                NavigationLink(destination:CheckoutView(order: order)) {
                    Text("Check out")
                }
            }.disabled(order.isValidAddress == false)
        }
        .navigationBarTitle("Delivery details",displayMode: .inline)
    }
}

struct AddressView_Previews: PreviewProvider {
    static var previews: some View {
        AddressView(order: Order())
    }
}
