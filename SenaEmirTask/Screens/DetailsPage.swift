//
//  DetailsPage.swift
//  SenaEmirTask
//
//  Created by Sena Kurtak on 29.05.2022.
//

import SwiftUI

struct DetailsPage: View {
    var product : Product
    var body: some View {
        VStack {
            HStack {
                Text("İsim:")
                Spacer()
                Text(product.name)
            }
            HStack {
                Text("Fiyat:")
                Spacer()
                Text(String(product.unitPrice))
            }
            HStack {
                Text("Stok Adedi:")
                Spacer()
                Text(String(product.unitsInStock))
                
            }
            HStack {
                Text("Hala Satılıyor mu?:")
                Spacer()
                Text(String(product.discontinued))
            }
            
        }
        
        .padding()
    }
}

struct DetailsPage_Previews: PreviewProvider {
    static var previews: some View {
        DetailsPage(product: Product())

//        DetailsPage(product: Product(id: 2, unitPrice: 2.2, unitsInStock: 2, discontinued: true, name: "Emir"))

    }
}
