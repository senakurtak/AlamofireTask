//
//  ProductScreen.swift
//  SenaEmirTask
//
//  Created by Sena Kurtak on 29.05.2022.
//

import SwiftUI
import Alamofire

struct ProductScreen: View {
    
    @State var sortAsc = true
    
    
    
    @State var productList : [Product] = []
    //    var productList : [Product] = [Product(id: 67890, unitPrice: 3.4, unitsInStocks: 2, discountinued: false, name: "Ayakkabı"),Product(id: 456789, unitPrice: 4.6, unitsInStocks: 3, discountinued: true, name: "Çanta")]
    var body: some View {
        VStack{
        Button("Sort") {
            if sortAsc == true {
                productList.sort() {
                    $0.name < $1.name
                }
                
                sortAsc = false
              
            } else {
                productList.sort() {
                    $0.name > $1.name
                }
                
                sortAsc = true
              
            }

        }
        
        NavigationView{
            
            VStack {
                
                ScrollView {
                    ForEach(productList, id:\.self){item in
                        
                        NavigationLink(destination: DetailsPage(product: item)){
                            Text(item.name)
                            
                        }
                    }
                }
                
            }.onAppear(){
                
                var productRepository = ProductRepository()
                
                productRepository.getAll(){ data in
                    productList = data
                }
            }
        }
        }
    }
}



struct ProductScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProductScreen()
    }
}
