//
//  Data.swift
//  KyarLay
//
//  Created by Mg Chan on 5/20/24.
//

import Foundation
import SwiftUI

struct image : Hashable{
    let name : String
    
}
struct newArrivals : Hashable{
    let image : String
    let imageName : String
    let price : String
    let discount : String
}
struct hotCategories : Hashable{
    let name : String
    let category : String
    
}
struct relatedProducts : Hashable{
    let image : String
    let imageName : String
    
    let price : String
    let step : String
    
}
struct paymentDetail : Identifiable{
    var id: UUID
    let image : String
    let imageName : String
    let serivceFee : String
}
var arrivals = [
newArrivals(image: "BabyShirt1", imageName: "Code - 0513 (.." , price: "9500", discount: ""),
newArrivals(image: "Shoe", imageName: "Shoe", price: "12300", discount: ""),
newArrivals(image: "PBASpoon", imageName: "PBA free silico", price: "3000", discount: ""),
newArrivals(image: "BabiMild", imageName: "Baby Mild ultra...", price: "1700", discount: ""),
newArrivals(image: "AnimalMagic", imageName: "Animals magic...", price: "7300", discount: ""),
newArrivals(image: "BabyShirt2", imageName: "Baby Tshirt", price: "7500", discount: ""),
newArrivals(image: "Sock", imageName: "အရုပ်ပါခြေအိပ်", price: "5000", discount: ""),
newArrivals(image: "skillet", imageName: "ကြက်ဉကြော်အိုး", price: "3750", discount: ""),
newArrivals(image: "clothes1", imageName: "ကိုဝန်ဆောင်...", price: "17500", discount: "3̶5̶0̶0̶0̶ k̶s̶"),
newArrivals(image: "BabySkirt", imageName: "Skirt", price: "15000", discount: "2̶0̶0̶0̶0̶ k̶s̶")

]
var topSeller = [
   newArrivals(image: "BabyShirt1", imageName: "Code - 0513 (.." , price: "9500", discount: ""),
   newArrivals(image: "Shoe", imageName: "Shoe", price: "12300", discount: ""),
   newArrivals(image: "PBASpoon", imageName: "PBA free silico", price: "3000", discount: ""),
   newArrivals(image: "BabiMild", imageName: "Baby Mild ultra...", price: "1700", discount: ""),
   newArrivals(image: "AnimalMagic", imageName: "Animals magic...", price: "7300", discount: ""),
   newArrivals(image: "BabyShirt2", imageName: "Baby Tshirt", price: "7500", discount: ""),
   newArrivals(image: "Sock", imageName: "အရုပ်ပါခြေအိပ်", price: "5000", discount: ""),
   newArrivals(image: "skillet", imageName: "ကြက်ဉကြော်အိုး", price: "3750", discount: ""),
   newArrivals(image: "clothes1", imageName: "ကိုဝန်ဆောင်...", price: "17500", discount: "3̶5̶0̶0̶0̶ k̶s̶"),
   newArrivals(image: "BabySkirt", imageName: "Skirt", price: "15000", discount: "2̶0̶0̶0̶0̶ k̶s̶")

]
var imageNames = [
    image(name: "Image 1"),
    image(name: "Image 2"),
    image(name: "Image 3"),
    image(name: "Image 4"),
    image(name: "Image 5"),
    image(name: "Image 6"),
    image(name: "Image 7"),
    image(name: "Image 8"),
    image(name: "Image 9"),
    image(name: "Image 10")
]
var promotionNames = [
    image(name: "image 1"),
    image(name: "image 2"),
    image(name: "image 3"),
    image(name: "image 4"),
    image(name: "image 5"),
    image(name: "image 6"),
    image(name: "image 7"),
    image(name: "image 8"),
    image(name: "image 9"),
    image(name: "image 10")
]
var currentNames = [
    image(name: "Image1"),
    image(name: "Image2"),
    image(name: "Image3"),
    image(name: "Image4"),
    image(name: "Image5")
    
]
var hotCategoriesNames = [
    hotCategories(name: "image1",category: "Step 1"),
    hotCategories(name: "image2",category: "Step 2"),
    hotCategories(name: "image3",category: "Step 3"),
    hotCategories(name: "image4",category: "Baby Lotion"),
    hotCategories(name: "image5",category: "ဒိုက်ဗာ L"),
    hotCategories(name: "image6",category: "ဒိုက်ဗာ M"),
    hotCategories(name: "image7",category: "သေးခံ အခင်း"),
    hotCategories(name: "image8",category: "ဗိုက် Support")
    
]
var forYou = [
    newArrivals(image: "BabyShirt1", imageName: "Code - 0513 (.." , price: "9500", discount: ""),
    newArrivals(image: "Shoe", imageName: "Shoe", price: "12300", discount: ""),
    newArrivals(image: "PBASpoon", imageName: "PBA free silico", price: "3000", discount: ""),
    newArrivals(image: "BabiMild", imageName: "Baby Mild ultra...", price: "1700", discount: ""),
    newArrivals(image: "AnimalMagic", imageName: "Animals magic...", price: "7300", discount: ""),
    newArrivals(image: "BabyShirt2", imageName: "Baby Tshirt", price: "7500", discount: ""),
    newArrivals(image: "Sock", imageName: "အရုပ်ပါခြေအိပ်", price: "5000", discount: ""),
    newArrivals(image: "skillet", imageName: "ကြက်ဉကြော်အိုး", price: "3750", discount: ""),
    newArrivals(image: "clothes1", imageName: "ကိုဝန်ဆောင်...", price: "17500", discount: "3̶5̶0̶0̶0̶ k̶s̶"),
    newArrivals(image: "BabySkirt", imageName: "Skirt", price: "15000", discount: "2̶0̶0̶0̶0̶ k̶s̶"),
    
    newArrivals(image: "image1", imageName: "Code - 0513 (.." , price: "9500", discount: ""),
    newArrivals(image: "image2", imageName: "Shoe", price: "12300", discount: ""),
    newArrivals(image: "image3", imageName: "PBA free silico", price: "3000", discount: ""),
    newArrivals(image: "image4", imageName: "Baby Mild ultra...", price: "1700", discount: ""),
    newArrivals(image: "image5", imageName: "Animals magic...", price: "7300", discount: ""),
    newArrivals(image: "image6", imageName: "Baby Tshirt", price: "7500", discount: ""),
    newArrivals(image: "image7", imageName: "အရုပ်ပါခြေအိပ်", price: "5000", discount: ""),
    newArrivals(image: "image8", imageName: "ကြက်ဉကြော်အိုး", price: "3750", discount: ""),
    newArrivals(image: "Image1", imageName: "ကိုဝန်ဆောင်...", price: "17500", discount: "3̶5̶0̶0̶0̶ k̶s̶"),
    newArrivals(image: "Image2", imageName: "Skirt", price: "15000", discount: "2̶0̶0̶0̶0̶ k̶s̶"),
    newArrivals(image: "Image3", imageName: "Code - 0513 (.." , price: "9500", discount: ""),
    newArrivals(image: "Image4", imageName: "Shoe", price: "12300", discount: ""),
    newArrivals(image: "Image5", imageName: "PBA free silico", price: "3000", discount: ""),
    newArrivals(image: "image 1", imageName: "Baby Mild ultra...", price: "1700", discount: ""),
    newArrivals(image: "image 2", imageName: "Animals magic...", price: "7300", discount: ""),
    newArrivals(image: "image 3", imageName: "Baby Tshirt", price: "7500", discount: ""),
    newArrivals(image: "image 4", imageName: "အရုပ်ပါခြေအိပ်", price: "5000", discount: ""),
    newArrivals(image: "image 5", imageName: "ကြက်ဉကြော်အိုး", price: "3750", discount: ""),
    newArrivals(image: "image 6", imageName: "ကိုဝန်ဆောင်...", price: "17500", discount: "3̶5̶0̶0̶0̶ k̶s̶"),
    newArrivals(image: "image 7", imageName: "Skirt", price: "15000", discount: "2̶0̶0̶0̶0̶ k̶s̶"),
    newArrivals(image: "image 8", imageName: "Code - 0513 (.." , price: "9500", discount: ""),
    newArrivals(image: "image 9", imageName: "Shoe", price: "12300", discount: ""),
    newArrivals(image: "image 10", imageName: "PBA free silico", price: "3000", discount: ""),
    newArrivals(image: "Image 1", imageName: "Baby Mild ultra...", price: "1700", discount: ""),
    newArrivals(image: "Image 2", imageName: "Animals magic...", price: "7300", discount: ""),
    newArrivals(image: "Image 3", imageName: "Baby Tshirt", price: "7500", discount: ""),
    newArrivals(image: "Image 4", imageName: "အရုပ်ပါခြေအိပ်", price: "5000", discount: ""),
    newArrivals(image: "Image 5", imageName: "ကြက်ဉကြော်အိုး", price: "3750", discount: ""),
    newArrivals(image: "Image 6", imageName: "ကိုဝန်ဆောင်...", price: "17500", discount: "3̶5̶0̶0̶0̶ k̶s̶"),
    newArrivals(image: "Image 7", imageName: "Skirt", price: "15000", discount: "2̶0̶0̶0̶0̶ k̶s̶"),
    newArrivals(image: "Image 8", imageName: "ကြက်ဉကြော်အိုး", price: "3750", discount: ""),
    newArrivals(image: "Image 9", imageName: "ကိုဝန်ဆောင်...", price: "17500", discount: "3̶5̶0̶0̶0̶ k̶s̶"),
    newArrivals(image: "Image 10", imageName: "Skirt", price: "15000", discount: "2̶0̶0̶0̶0̶ k̶s̶"),
]
let columns: [GridItem] = [
    GridItem(.flexible()), // First column
    GridItem(.flexible())  // Second column
]
let photos = ["Image1",
"Image2",
"Image3",
"Image4",
"Image5"]
var related = [
    relatedProducts(image: "BabyShirt1", imageName: "Code - 0513 (.." , price: "9500", step: "Step (2)"),
    relatedProducts(image: "Shoe", imageName: "Shoe", price: "12300", step: "Step (2)"),
    relatedProducts(image: "PBASpoon", imageName: "PBA free silico", price: "3000", step: "Step (2)"),
    relatedProducts(image: "BabiMild", imageName: "Baby Mild ultra...", price: "1700", step: "Step (2)"),
    relatedProducts(image: "AnimalMagic", imageName: "Animals magic...", price: "7300", step: "Step (2)"),
    relatedProducts(image: "BabyShirt2", imageName: "Baby Tshirt", price: "7500", step: "Step (2)"),
    relatedProducts(image: "Sock", imageName: "အရုပ်ပါခြေအိပ်", price: "5000", step: "Step (2)"),
    relatedProducts(image: "skillet", imageName: "ကြက်ဉကြော်အိုး", price: "3750", step: "Step (2)"),
    relatedProducts(image: "clothes1", imageName: "ကိုဝန်ဆောင်...", price: "17500", step: "Step (2)"),
    relatedProducts(image: "BabySkirt", imageName: "Skirt", price: "15000", step: "Step (2)"),
    
    relatedProducts(image: "image1", imageName: "Code - 0513 (.." , price: "9500", step: "Step (2)"),
    relatedProducts(image: "image2", imageName: "Shoe", price: "12300", step: "Step (2)"),
    relatedProducts(image: "image3", imageName: "PBA free silico", price: "3000", step: "Step (2)"),
    relatedProducts(image: "image4", imageName: "Baby Mild ultra...", price: "1700", step: "Step (2)"),
    relatedProducts(image: "image5", imageName: "Animals magic...", price: "7300", step: "Step (2)"),
    relatedProducts(image: "image6", imageName: "Baby Tshirt", price: "7500", step: "Step (2)"),
    relatedProducts(image: "image7", imageName: "အရုပ်ပါခြေအိပ်", price: "5000", step: "Step (2)"),
    relatedProducts(image: "image8", imageName: "ကြက်ဉကြော်အိုး", price: "3750", step: "Step (2)"),
    relatedProducts(image: "Image1", imageName: "ကိုဝန်ဆောင်...", price: "17500", step: "Step (2)"),
    relatedProducts(image: "Image2", imageName: "Skirt", price: "15000", step: "Step (2)"),
    relatedProducts(image: "Image3", imageName: "Code - 0513 (.." , price: "9500", step: "Step (2)"),
    relatedProducts(image: "Image4", imageName: "Shoe", price: "12300", step: "Step (2)"),
    relatedProducts(image: "Image5", imageName: "PBA free silico", price: "3000", step: "Step (2)"),
    relatedProducts(image: "image 1", imageName: "Baby Mild ultra...", price: "1700", step: "Step (2)"),
    relatedProducts(image: "image 2", imageName: "Animals magic...", price: "7300", step: "Step (2)"),
    relatedProducts(image: "image 3", imageName: "Baby Tshirt", price: "7500", step: "Step (2)"),
    relatedProducts(image: "image 4", imageName: "အရုပ်ပါခြေအိပ်", price: "5000", step: "Step (2)"),
    relatedProducts(image: "image 5", imageName: "ကြက်ဉကြော်အိုး", price: "3750", step: "Step (2)"),
    relatedProducts(image: "image 6", imageName: "ကိုဝန်ဆောင်...", price: "17500", step: "Step (2)"),
    relatedProducts(image: "image 7", imageName: "Skirt", price: "15000", step: "Step (2)"),
    relatedProducts(image: "image 8", imageName: "Code - 0513 (.." , price: "9500", step: "Step (2)"),
    relatedProducts(image: "image 9", imageName: "Shoe", price: "12300", step: "Step (2)"),
    relatedProducts(image: "image 10", imageName: "PBA free silico", price: "3000", step: "Step (2)"),
    relatedProducts(image: "Image 1", imageName: "Baby Mild ultra...", price: "1700", step: "Step (2)"),
    relatedProducts(image: "Image 2", imageName: "Animals magic...", price: "7300", step: "Step (2)"),
    relatedProducts(image: "Image 3", imageName: "Baby Tshirt", price: "7500", step: "Step (2)"),
    relatedProducts(image: "Image 4", imageName: "အရုပ်ပါခြေအိပ်", price: "5000", step: "Step (2)"),
    relatedProducts(image: "Image 5", imageName: "ကြက်ဉကြော်အိုး", price: "3750", step: "Step (2)"),
    relatedProducts(image: "Image 6", imageName: "ကိုဝန်ဆောင်...", price: "17500", step: "Step (2)"),
    relatedProducts(image: "Image 7", imageName: "Skirt", price: "15000", step: "Step (2)"),
    relatedProducts(image: "Image 8", imageName: "ကြက်ဉကြော်အိုး", price: "3750", step: "Step (2)"),
    relatedProducts(image: "Image 9", imageName: "ကိုဝန်ဆောင်...", price: "17500", step: "Step (2)"),
    relatedProducts(image: "Image 10", imageName: "Skirt", price: "15000", step: "Step (2)"),
]
var payment =  [
    paymentDetail(id: UUID(), image: "dollar", imageName: "အိမ်အရောက်\nငွေချေစနစ်", serivceFee: "0.0"),
    paymentDetail(id: UUID(), image: "waveMoney", imageName: "Wave", serivceFee: "0.0"),
    paymentDetail(id: UUID(), image: "kbzPay", imageName: "KBZPay", serivceFee: "1.5"),
    paymentDetail(id: UUID(), image: "kbzBank", imageName: "KBZ Bank", serivceFee: "0.0"),
    paymentDetail(id: UUID(), image: "ayaBank", imageName: "AYA Bank", serivceFee: "0.0"),
paymentDetail( id: UUID(),image: "yomaBank", imageName: "Yoma", serivceFee: "0.0")
]
