//
//  ContentView.swift
//  Production
//
//  Created by Benjamin Rojo on 13/05/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
           // here are the two views
            ProductView()
            RepeticionView()
        }
        .padding()
    }
}

//Estructura con id
struct ProductView: View{
    let productos = ["melon", "sandia", "papa", "fresa", "papaya"]
    var body: some View{
        VStack{
            ForEach(productos, id: \.self){name in
                    Text(name)
                    .foregroundColor(.blue)
                    .font(.title)
            }
        }
    }
}

//Estructura sin id usando Identifiable and UUID()
struct Perfiles: Identifiable {
    let id = UUID()
    let usuarios: String
    let rol: String
}
let trabajadores = [
    Perfiles(usuarios: "Benjamin", rol: "iOS Developer"),
    Perfiles(usuarios: "Frank", rol: "iOS Developer"),
    Perfiles(usuarios: "Taylor", rol: "iOS Developer"),
    Perfiles(usuarios: "Selena", rol: "iOS Developer")
]

struct RepeticionView: View{
    var body:some View{
        VStack{
            ForEach(trabajadores){name in
                HStack{
                    Text(name.usuarios)
                    Text(name.rol)

                }
                .foregroundColor(.red)
                .font(.headline)
            }
        }
    }
}

 

#Preview {
    ContentView()
}
