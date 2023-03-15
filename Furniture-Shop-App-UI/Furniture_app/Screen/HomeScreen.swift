//
//  HomeScreen.swift
//  Furniture_app
//
//  Created by user on 3/14/23.
//

import SwiftUI

struct HomeView:  View{
    @State var selectedIndex: Int = 0
    let categories = ["All", "Chair", "Sofa", "Lamp", "Kitchen", "Table"]
    var body: some View{
        NavigationView {
            ZStack {
                Color("Bg").edgesIgnoringSafeArea(.all)
                ScrollView {
                    VStack (alignment: .leading){
                       
                        AppView
                        TagLineView().padding()
                        SearchAndScanView()
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(0 ..< categories.count) {item in
                                    // if index == 1 then is isActive is true
                                    CategoryView(isActive: item == selectedIndex, text: categories[item]).onTapGesture {
                                        selectedIndex = item
                                    }
                                }
                                
                            }.padding()
                        }
                        
                        Text("Popular").font(.custom("PlayfairDisplay-Bold", size: 24)).padding(.horizontal)
                        
                        ScrollView (.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(0 ..< 4) {
                                    item in
                                    NavigationLink(destination: DetailsScreen(), label: {
                                        ProductCardView(image: Image("chair_\(item + 1)"), size: 210)
                                    }).navigationBarHidden(true).foregroundColor(.black)
                                }.padding(.trailing)
                                
                            }.padding(.leading)
                        }
                        
                        Text("Best").font(.custom("PlayfairDisplay-Bold", size: 24)).padding(.horizontal).padding(.top)
                        
                        ScrollView (.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(0 ..< 4) {
                                    item in
                                    ProductCardView(image: Image("chair_\(item + 1)"), size: 180)
                                }.padding(.trailing)
                                
                            }.padding(.leading)
                        }
                       
                    }
                }
                // custom bottom nambar
                HStack {
                    BottomNavBarItem(image: Image("Home")){}
                    BottomNavBarItem(image: Image("love")){}
                    BottomNavBarItem(image: Image("shop")){}
                    BottomNavBarItem(image: Image("User")){}
                }.padding().background(Color.white).clipShape(Capsule()).padding(.horizontal).shadow(color: Color.black.opacity(0.15), radius: 8, x: 2, y: 6).frame(maxHeight: .infinity, alignment: .bottom)
            }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

var AppView: some View{
    HStack {
        Button(action: {}) {
            Image("menu").padding().background(Color(.white)).cornerRadius(10.0)
        }
        Spacer()
        Button(action: {}) {
            Image("Profile").resizable().frame(width: 42, height:  42).cornerRadius(10.0)
        }
    }.padding(.horizontal)
}
struct TagLineView:  View{
    var body: some View{
        Text("Find The \nBest ").font(.custom("PlayfairDisplay-Regular", size: 28)).foregroundColor(Color("Primary")) + Text("Furniture!").font(.custom("PlayfairDisplay-Bold", size: 28)).foregroundColor(Color("Primary"))
    }
   
}
struct SearchAndScanView: View {
    @State var search: String = ""
    var body: some View{
        HStack {
            HStack{
                Image("Search").padding(.trailing, 8)
                TextField("Search Furniture", text: $search)
            }.padding(.all, 20).background(Color.white).cornerRadius(10.0)
            
            Button(action: {}){
                Image("Scan").resizable().frame(width: 40, height:  30).padding().background(Color("Primary")).cornerRadius(10.0)
            }
        }.padding(.horizontal)
    }
    
}
struct CategoryView: View {
    let isActive: Bool
    let text: String
    var body: some View{
       
        VStack (alignment: .leading, spacing: 0) {
            Text(text).font(.system(size: 18)).fontWeight(.medium).foregroundColor(isActive ? Color("Primary"): Color.black.opacity(0.5))
            if (isActive) { Color("Primary").frame(width: 15, height: 2).clipShape(Capsule())
            }
            }.padding(.trailing)
        
       
    }
}

struct ProductCardView:  View{
    let image: Image
    let size: CGFloat
    var body: some View{
        VStack {
            image.resizable().frame(width: size, height: 200 * (size/210)).cornerRadius(20.0)
            Text("Luxury Swedian chair").font(.title3).fontWeight(.bold)
            
            HStack(spacing: 2) {
                ForEach(0 ..< 5) {
                    item in
                    Image("star")
                }
                Spacer()
                
                Text("$1299").font(.title3).fontWeight(.bold)
            }
        }.frame(width: size).padding().background(Color.white).cornerRadius(20)
    }
}

struct BottomNavBarItem:  View{
    let image: Image
    let action: ()-> Void
    var body: some View{
        Button(action: {}, label: {
            image.resizable().frame(width: 30, height:  25).frame(maxWidth: .infinity)
        })
    }
}
