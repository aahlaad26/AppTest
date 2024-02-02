//
//  TryScroll.swift
//  AppTest
//
//  Created by user2 on 02/02/24.
//
import SwiftUI

struct TryScroll: View {
    var body: some View {
        NavigationView {
            
            ScrollView() {
                VStack {
                   
                    ScrollViewOne()
                    ScrollViewTwo()
                    ScrollViewThree()
                    ScrollViewFour()
                    ScrollViewFive()
                }
                
            }
        }
    }
}



#Preview {
    TryScroll()
}
