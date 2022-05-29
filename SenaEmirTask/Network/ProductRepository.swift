//
//  ProductRepository.swift
//  SenaEmirTask
//
//  Created by Sena Kurtak on 29.05.2022.
//

//Burası productla ilgili web servis işlerini yapıyor

import Foundation
import Alamofire


class ProductRepository {
    
    
    func getAll(completion: @escaping ([Product]) -> Void){
        
        let request = AF.request("https://northwind.vercel.app/api/products")
        
        request.responseDecodable(of: [Product].self){ response in
             
            completion(response.value!)
        }
    }
    
    
    
    
    func getAllProducts(completion:@escaping ([Product]) -> Void){
        
        let request = AF.request("https://northwind.vercel.app/api/products")
        
        request.responseDecodable(of: [Product].self){ response in
             
            completion(response.value!)
            
        }
    }
    
    
    func getProductById(id: Int, completion: @escaping (Product) -> Void){
        
        let request = AF.request("https://northwind.vercel.app/api/products/\(id)")
        
        request.responseDecodable(of: Product.self){ response in
             
            completion(response.value!)
            
        }
        
    }
    
    
    
    
    
    func gameStart(gameCategoryId: Int, completion:(String, Int) -> Void ) {
        
        
        //gameCategoryId 1 ise ekran çözünürlüğünü 1024*768 olarak dön
        if(gameCategoryId == 1){
            completion("1024*768",1)
        }
        else if(gameCategoryId == 2){
            completion("960*680",2)
        }
        else if(gameCategoryId == 3){
            completion("300*500",3)
        }
        
    }
    
    
    
    
    
}



