//
//  ContentView.swift
//  SwiftInitAndEnum
//
//  Created by Fatih Gümüş on 7.04.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading,spacing: 10){
            Home(location: "İstanbul", squareMeter: 100, hasBalcony: true, homeType: .Apartman)
                .padding(20)
                .frame(width: 200)
                .background(.red)
            
            
            Home(location: "Ankara", squareMeter: 120, hasBalcony: false, homeType: .Rezidans)
                .padding(20)
                .frame(width: 200)
                .background(.orange)
                
        }
        .frame(width: 300,height: 300)
 
    }
}

struct Home : View{
    
    var location : String
    var squareMeter : Int
    var hasBalcony : Bool
    var homeType : HomeType
    
    init(location: String, squareMeter: Int, hasBalcony: Bool, homeType: HomeType) {
        self.location = location
        self.squareMeter = squareMeter
        self.hasBalcony = hasBalcony
        self.homeType = homeType
    }
    
    
    var body: some View{
        VStack(alignment: .leading){
            Text("Konum :  \(location)")
            Text("Büyüklük : \(squareMeter)")
            if hasBalcony{
                Text("Balkon : Var")
            }else{
                Text("Balkon : Yok")
            }
            
            switch homeType{
                case .Apartman:
                    Text("Apartman Dairesi")
                case .Müstakil:
                    Text("Müstakil Bina")
                case .Rezidans:
                    Text("Rezidans")
            }
           
        }
    }
}

enum HomeType {
    case Müstakil
    case Apartman
    case Rezidans
}

#Preview {
    ContentView()
}
