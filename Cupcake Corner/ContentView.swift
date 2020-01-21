//
//  ContentView.swift
//  Cupcake Corner
//
//  Created by Sarvad shetty on 1/21/20.
//  Copyright © 2020 Sarvad shetty. All rights reserved.
//

import SwiftUI

class User: ObservableObject, Codable {
    
    //creating codingkeys enum
    enum CodingKeys: CodingKey {
        case name
    }
    
    //properties
    @Published var name = "Sarvad"
    
    //init
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
         name = try container.decode(String.self, forKey: .name)
    }
    
    //function
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
    }
}

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
