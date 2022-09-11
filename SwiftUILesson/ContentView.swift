//
//  ContentView.swift
//  SwiftUILesson
//
//  Created by Murat Çay on 11.09.2022.
//

import SwiftUI

struct IconFieldView : View {
    
    @State var textFieldValue: String = ""
    
    var body: some View {
        VStack {
            TextField("Placeholder", text: $textFieldValue)
            Text(textFieldValue).font(.largeTitle).bold()
            Image(systemName: textFieldValue.lowercased()) // sun.min yazarsan çalışıyor
        }
    }
}

struct ContentView: View {
    
    var body: some View {
        //        demoView()
       // demoView2()
        IconFieldView()
    }
    
    fileprivate func demoView2() -> some View {
        return VStack {
            Group {
                // MARK: Login View
                Text("Hello").frame(width: 200, height: 200, alignment: .center).background(Color(uiColor: .green)).shadow(radius: 10)
            }
            Group {
                // MARK: Content View
                VStack {
                    Image(systemName: "moon.fill").foregroundColor(.red)
                    Text("Hello2").foregroundColor(.blue).opacity(0.8)
                }
            }
        }
    }
    
    fileprivate func demoView() -> some View {
        return VStack{
            HStack {
                ZStack {
                    Circle().foregroundColor(.red)
                    Text("Merhaba SwiftUI").foregroundColor(.white).frame(width: 120, alignment: .center)
                }.frame(height: 200)
                Text("Deneme")
                Spacer(minLength: 60)
            }.frame(height: 250, alignment: .top)
            HStack
            {
                RoundedRectangle(cornerRadius: 25.0).foregroundColor(.green).padding()
                Spacer(minLength: 50)
                ZStack {
                    Circle().foregroundColor(.blue)
                    Text("Murat Çay").foregroundColor(.white).bold().fontWeight(.semibold)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13")
    }
}
