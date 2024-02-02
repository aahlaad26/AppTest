//
//  HomeView.swift
//  TabBarControllerBeatOven
//
//  Created by mkswagger on 02/01/24.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedTab = 0
    var body: some View {
        
        NavigationView {
            ZStack{
                Color(red: 0.99, green: 0.87, blue: 0.82)
                ScrollView{
                    VStack {
                        VStack(alignment: .leading, spacing: 5) {
                            Text("Hi")
                                .font(.system(size: 20, weight: .bold))
                                .foregroundColor(.black)
                                .multilineTextAlignment(.leading)
                                .frame(width: 31.386, height: 29.64382, alignment: .topLeading)
                           
                        }.padding(.trailing,300)
                        Text("Explore today’s")
                            .font(.system(size: 22))
                            .foregroundColor(.black)
                            .padding(.trailing,190)
                        HStack(spacing: 30) {
                            ForEach(1..<5) { index in
                                VStack {
                                    Image("home-prof\(index)")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width:70, height: 75)
                                        .clipShape(RoundedRectangle(cornerRadius: 15))
                                    
                                }
                            }
                        }.padding(.bottom,30)
                    TabBarView(selectedTab: $selectedTab)
                        .fixedSize(horizontal: true, vertical: true)
                    // Content View for each tab
                    if selectedTab == 0 {
                        ScrollViewOne()
                    } else if selectedTab == 1 {
                        ScrollViewTwo()
                        
                    } else if selectedTab == 2{
                        ScrollViewThree()
                    }
                    
                    VStack{}.padding(.bottom,300)
                    // Tab Bar
                    
                }.offset(y:150)
                }
                
                
                
                
                
            }
                .ignoresSafeArea()
            }
        }
    }


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
struct TabBarView: View {
    @Binding var selectedTab: Int

    var body: some View {
        HStack() {
            Button(action: {
                selectedTab = 0
            }) {
                VStack {
                    Image(systemName: "square.grid.2x2.fill")
                        .foregroundColor(selectedTab == 0 ? Color(red: 0.92, green: 0.3, blue: 0.26) : Color.gray)
                        .imageScale(.large)
                    Text("Posts")
                        .font(selectedTab == 0 ? .headline : .subheadline)
                        .foregroundColor(selectedTab == 0 ? Color(red: 0.92, green: 0.3, blue: 0.26) : Color.gray)
                }
                .frame(width: 100,height: 50)
                .background(selectedTab == 0 ? Color(red: 1, green: 0.79, blue: 0.7) : Color(red: 0.13, green: 0.19, blue: 0.25)
                )
                .cornerRadius(30)
                .padding([.leading,.top,.bottom])
            }

            Spacer()

            Button(action: {
                selectedTab = 1
            }) {
                VStack {
                    Image(systemName: "heart.fill")
                        .foregroundColor(selectedTab == 1 ? Color.blue : Color.gray)
                        .imageScale(.large)
                    Text("Discover")
                        .font(selectedTab == 1 ? .headline : .subheadline)
                        .foregroundColor(selectedTab == 1 ? Color.blue : Color.gray)
                }.frame(width: 100,height: 50)
                    .background(selectedTab == 1 ? Color(red: 1, green: 0.79, blue: 0.7) : Color(red: 0.13, green: 0.19, blue: 0.25)
                    )
                    .cornerRadius(30)
                    .padding([.leading,.top,.bottom])
            }

            Spacer()

            Button(action: {
                selectedTab = 2
            }) {
                VStack {
                    Image(systemName: "person.fill")
                        .foregroundColor(selectedTab == 2 ? Color.green : Color.gray)
                        .imageScale(.large)
                    Text("Portfolios")
                        .font(selectedTab == 2 ? .headline : .subheadline)
                        .foregroundColor(selectedTab == 2 ? Color.green : Color.gray)
                }.frame(width: 100,height: 50)
                    .background(selectedTab == 2 ? Color(red: 1, green: 0.79, blue: 0.7) : Color(red: 0.13, green: 0.19, blue: 0.25)
                    )
                .cornerRadius(30)
                .padding([.leading,.trailing])
            }
        }
        .background(Color(red: 0.13, green: 0.19, blue: 0.25))
        .clipShape(RoundedRectangle(cornerRadius: 40))
    }
}

struct ScrollViewOne: View {
    var body: some View {
        ScrollView {
            VStack {
                
                    Text("Posts")
                    .font(.system(size: 40))
                      .fontWeight(.bold)
                      .multilineTextAlignment(.leading)
                      .foregroundColor(Color(red: 0.92, green: 0.36, blue: 0.25))
                      .padding(.bottom,100)
                    
                VStack{HStack(spacing: 30){
                    Image("post-prof") // Replace "your_image_name" with the actual name of your image asset
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 32, height: 32)// Adjust the frame size as needed
                    
                        .clipShape(Ellipse())
                    VStack(alignment: .leading){
                        Text("feelmybicep")
                            .font(.system(size: 14))
                            .foregroundColor(.black)
                        Text("Electronic|Breakbeat")
                            .font(.system(size: 14))
                            .foregroundColor(.black)
                    }
                    Text("2 hours ago")
                        .font(.system(size: 12))
                    
                }
                    Image("post-1")
                        .foregroundColor(.clear)
                        .frame(width: 298.41, height: 275.58)
                        .cornerRadius(19.54)
                        .padding()
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 302.28, height: 3.74)
                        .background(.black)
                        .cornerRadius(4)
                        .opacity(0.30)
                    
                    HStack(spacing: 10){
                        Image(systemName:"pause")
                            .resizable()
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .frame(width: 20,height: 20)
                        VStack(alignment: .leading){
                            Text("Sundial")
                                .font(.system(size: 14))
                            Text("Bicep")
                                .font(.system(size: 14))
                        }.padding(.trailing,80)
                        Image(systemName: "bubble")
                            .resizable()
                            .frame(width: 24,height: 24)
                        Image(systemName: "square.and.arrow.down")
                            .resizable()
                            .frame(width: 24,height: 24)
                        Image(systemName: "link")
                            .resizable()
                            .frame(width: 24,height: 24)
                        Image(systemName: "heart")
                            .resizable()
                            .frame(width: 24,height: 24)
                    }
                }.cornerRadius(10)
                .padding()
                .background(Color(red: 1, green: 0.79, blue: 0.7))
                .frame(width: 370,height: 350)
                .padding(.bottom,100)
                VStack{HStack(spacing: 30){
                    Image("post-prof") // Replace "your_image_name" with the actual name of your image asset
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 32, height: 32)// Adjust the frame size as needed
                    
                        .clipShape(Ellipse())
                    VStack(alignment: .leading){
                        Text("feelmybicep")
                            .font(.system(size: 14))
                            .foregroundColor(.black)
                        Text("Electronic|Breakbeat")
                            .font(.system(size: 14))
                            .foregroundColor(.black)
                    }
                    Text("2 hours ago")
                        .font(.system(size: 12))
                    
                }
                    Image("post-1")
                        .foregroundColor(.clear)
                        .frame(width: 298.41, height: 275.58)
                        .cornerRadius(19.54)
                        .padding()
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 302.28, height: 3.74)
                        .background(.black)
                        .cornerRadius(4)
                        .opacity(0.30)
                    
                    HStack(spacing: 10){
                        Image(systemName:"pause")
                            .resizable()
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .frame(width: 20,height: 20)
                        VStack(alignment: .leading){
                            Text("Sundial")
                                .font(.system(size: 14))
                            Text("Bicep")
                                .font(.system(size: 14))
                        }.padding(.trailing,80)
                        Image(systemName: "bubble")
                            .resizable()
                            .frame(width: 24,height: 24)
                        Image(systemName: "square.and.arrow.down")
                            .resizable()
                            .frame(width: 24,height: 24)
                        Image(systemName: "link")
                            .resizable()
                            .frame(width: 24,height: 24)
                        Image(systemName: "heart")
                            .resizable()
                            .frame(width: 24,height: 24)
                    }
                }.cornerRadius(10)
                .padding()
                .background(Color(red: 1, green: 0.79, blue: 0.7))
                .frame(width: 370,height: 350)
                .padding(.bottom,100)
                VStack{HStack(spacing: 30){
                    Image("post-prof") // Replace "your_image_name" with the actual name of your image asset
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 32, height: 32)// Adjust the frame size as needed
                    
                        .clipShape(Ellipse())
                    VStack(alignment: .leading){
                        Text("feelmybicep")
                            .font(.system(size: 14))
                            .foregroundColor(.black)
                        Text("Electronic|Breakbeat")
                            .font(.system(size: 14))
                            .foregroundColor(.black)
                    }
                    Text("2 hours ago")
                        .font(.system(size: 12))
                    
                }
                    Image("post-1")
                        .foregroundColor(.clear)
                        .frame(width: 298.41, height: 275.58)
                        .cornerRadius(19.54)
                        .padding()
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 302.28, height: 3.74)
                        .background(.black)
                        .cornerRadius(4)
                        .opacity(0.30)
                    
                    HStack(spacing: 10){
                        Image(systemName:"pause")
                            .resizable()
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .frame(width: 20,height: 20)
                        VStack(alignment: .leading){
                            Text("Sundial")
                                .font(.system(size: 14))
                            Text("Bicep")
                                .font(.system(size: 14))
                        }.padding(.trailing,80)
                        Image(systemName: "bubble")
                            .resizable()
                            .frame(width: 24,height: 24)
                        Image(systemName: "square.and.arrow.down")
                            .resizable()
                            .frame(width: 24,height: 24)
                        Image(systemName: "link")
                            .resizable()
                            .frame(width: 24,height: 24)
                        Image(systemName: "heart")
                            .resizable()
                            .frame(width: 24,height: 24)
                    }
                }.cornerRadius(10)
                .padding()
                .background(Color(red: 1, green: 0.79, blue: 0.7))
                .frame(width: 370,height: 350)
                
                
                
            }.offset(y:10)
            .padding(.bottom,100)
        }
    }
}

struct ScrollViewTwo: View {
    var body: some View {
        ScrollView {
            
            VStack {
                Text("Discover")
                .font(.system(size: 40))
                  .fontWeight(.bold)
                  .multilineTextAlignment(.leading)
                  .foregroundColor(Color(red: 0.92, green: 0.36, blue: 0.25))
                  .padding(.bottom,80)
                  .offset(y:5)
                ScrollView(.horizontal){
                    VStack {
                        
                        VStack(alignment: .leading){
                            Text("Opus")
                            .font(.system(size: 30))
                              .fontWeight(.bold)
                              .multilineTextAlignment(.leading)
                              .foregroundColor(Color(red: 0.92, green: 0.36, blue: 0.25))
                              .padding(.leading,15)
                              .padding(.bottom,30)
                            
                            HStack{
                                ZStack{
                                    
                                    Image("Portfo")
                                        .resizable()
                                        .frame(width: 161.00, height: 253.00)
                                        .aspectRatio(contentMode: .fit)
                                        .clipShape(RoundedRectangle(cornerRadius: 20))
                                    RoundedRectangle(cornerRadius: 10)
                                      .fill(LinearGradient(gradient: Gradient(stops: [.init(color: Color.white.opacity(0), location: 0.00), .init(color: Color.white.opacity(0.60), location: 0.30), .init(color: Color.white, location: 0.62)]), startPoint: .top, endPoint: .bottom))
                                      .frame(width: 161.00, height: 38.00)
                                      .offset(y:107)
                                    Text(":10")
                                        .font(.system(size: 14))
                                      .multilineTextAlignment(.center)
                                      .foregroundColor(Color.black)
                                      .frame(minWidth: 42.87, minHeight: 16.96, alignment: .top)
                                      .offset(x:60,y:-105)
                                    HStack {
                                        Text("Neque porro quisquam\nest qui dolorem ipsu")
                                          .font(Font.custom("Catamaran-Bold", size: 12))
                                          .multilineTextAlignment(.center)
                                          .foregroundColor(Color.black)
                                          .frame(minWidth: 40, minHeight: 40.00, alignment: .top)
                                        Image(systemName: "ellipsis").rotationEffect(.degrees(-90))
                                            .offset(y:-4)
                                        
                                    }.offset(y:107)
                                    Image(systemName: "play.fill")
                                        .resizable()
                                        .foregroundColor(Color(red: 0.92, green: 0.3, blue: 0.26))
                                        .frame(width: 24, height: 24)


                                }.padding(.leading)
                                ZStack{
                                    
                                    Image("Portfo")
                                        .resizable()
                                        .frame(width: 161.00, height: 253.00)
                                        .aspectRatio(contentMode: .fit)
                                        .clipShape(RoundedRectangle(cornerRadius: 20))
                                    RoundedRectangle(cornerRadius: 10)
                                      .fill(LinearGradient(gradient: Gradient(stops: [.init(color: Color.white.opacity(0), location: 0.00), .init(color: Color.white.opacity(0.60), location: 0.30), .init(color: Color.white, location: 0.62)]), startPoint: .top, endPoint: .bottom))
                                      .frame(width: 161.00, height: 38.00)
                                      .offset(y:107)
                                    Text(":10")
                                        .font(.system(size: 14))
                                      .multilineTextAlignment(.center)
                                      .foregroundColor(Color.black)
                                      .frame(minWidth: 42.87, minHeight: 16.96, alignment: .top)
                                      .offset(x:60,y:-105)
                                    HStack {
                                        Text("Neque porro quisquam\nest qui dolorem ipsu")
                                          .font(Font.custom("Catamaran-Bold", size: 12))
                                          .multilineTextAlignment(.center)
                                          .foregroundColor(Color.black)
                                          .frame(minWidth: 40, minHeight: 40.00, alignment: .top)
                                        Image(systemName: "ellipsis").rotationEffect(.degrees(-90))
                                            .offset(y:-4)
                                        
                                    }.offset(y:107)
                                    Image(systemName: "play.fill")
                                        .resizable()
                                        .foregroundColor(Color(red: 0.92, green: 0.3, blue: 0.26))
                                        .frame(width: 24, height: 24)


                                }.padding(.leading)
                                ZStack{
                                    
                                    Image("Portfo")
                                        .resizable()
                                        .frame(width: 161.00, height: 253.00)
                                        .aspectRatio(contentMode: .fit)
                                        .clipShape(RoundedRectangle(cornerRadius: 20))
                                    RoundedRectangle(cornerRadius: 10)
                                      .fill(LinearGradient(gradient: Gradient(stops: [.init(color: Color.white.opacity(0), location: 0.00), .init(color: Color.white.opacity(0.60), location: 0.30), .init(color: Color.white, location: 0.62)]), startPoint: .top, endPoint: .bottom))
                                      .frame(width: 161.00, height: 38.00)
                                      .offset(y:107)
                                    Text(":10")
                                        .font(.system(size: 14))
                                      .multilineTextAlignment(.center)
                                      .foregroundColor(Color.black)
                                      .frame(minWidth: 42.87, minHeight: 16.96, alignment: .top)
                                      .offset(x:60,y:-105)
                                    HStack {
                                        Text("Neque porro quisquam\nest qui dolorem ipsu")
                                          .font(Font.custom("Catamaran-Bold", size: 12))
                                          .multilineTextAlignment(.center)
                                          .foregroundColor(Color.black)
                                          .frame(minWidth: 40, minHeight: 40.00, alignment: .top)
                                        Image(systemName: "ellipsis").rotationEffect(.degrees(-90))
                                            .offset(y:-4)
                                        
                                    }.offset(y:107)
                                    Image(systemName: "play.fill")
                                        .resizable()
                                        .foregroundColor(Color(red: 0.92, green: 0.3, blue: 0.26))
                                        .frame(width: 24, height: 24)


                                }.padding([.leading])
                                
                                
                                
                            }.padding(.bottom,40)
                        }
                    }
                }
                .frame(width: 393, height: 390)
                .background(Color(red: 0.369, green: 0.16, blue: 0.12))
                
                
            .padding(.bottom,100)
            }
        }
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .leading){
                //Discover
                Text("Profiles").font(.system(size: 30, weight: .bold)).foregroundColor(Color(#colorLiteral(red: 0.92, green: 0.3, blue: 0.26, alpha: 1))).multilineTextAlignment(.center)
                    .padding(.bottom,20)
                
                VStack {
                    VStack(alignment: .center){
                        HStack(spacing:40){
                            Image("Portfo")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                            VStack(alignment: .leading){
                                //Large
                                Text("Rohini").font(.system(size: 16)).foregroundColor(Color(#colorLiteral(red: 0.41, green: 0.43, blue: 0.43, alpha: 1)))
                                Text("Delhi,IN").font(.system(size: 14)).foregroundColor(Color(#colorLiteral(red: 0.37, green: 0.16, blue: 0.12, alpha: 1)))
                            }.padding(.trailing,70)
                                .padding(.leading,-10)
                            Image(systemName: "arrow.up.forward.app.fill")
                                .resizable()
                                .frame(width: 35, height: 35)
                                .foregroundColor(Color(#colorLiteral(red: 0.37254902720451355, green: 0.1568627506494522, blue: 0.11764705926179886, alpha: 1)))
                        }
                        //Divider
                        Rectangle()
                            .fill(Color(#colorLiteral(red: 0.9882352948188782, green: 0.8705882430076599, blue: 0.8156862854957581, alpha: 1)))
                        .frame(width: 230, height: 3)
                        .offset(x:3)
                        HStack{
                            //Button
                            Text("Skill").font(.custom("Poppins SemiBold", size: 14)).foregroundColor(Color(#colorLiteral(red: 1, green: 0.79, blue: 0.7, alpha: 1))).multilineTextAlignment(.center)
                                .frame(width: 98, height: 32)
                                .background(Color(#colorLiteral(red: 0.37254902720451355, green: 0.1568627506494522, blue: 0.11764705926179886, alpha: 1)))
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .shadow( radius: 1)
                            Text("Skill").font(.custom("Poppins SemiBold", size: 14)).foregroundColor(Color(#colorLiteral(red: 1, green: 0.79, blue: 0.7, alpha: 1))).multilineTextAlignment(.center)
                                .frame(width: 98, height: 32)
                                .background(Color(#colorLiteral(red: 0.37254902720451355, green: 0.1568627506494522, blue: 0.11764705926179886, alpha: 1)))
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .shadow( radius: 1)
                            Text("Skill").font(.custom("Poppins SemiBold", size: 14)).foregroundColor(Color(#colorLiteral(red: 1, green: 0.79, blue: 0.7, alpha: 1))).multilineTextAlignment(.center)
                                .frame(width: 98, height: 32)
                                .background(Color(#colorLiteral(red: 0.37254902720451355, green: 0.1568627506494522, blue: 0.11764705926179886, alpha: 1)))
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .shadow( radius: 1)
                            
                        }
                        .shadow( radius: 1)
                        
                        
                    }
                    .frame(width: 341, height: 214)
                    .background(Color(#colorLiteral(red: 1, green: 0.7944080829620361, blue: 0.696666955947876, alpha: 1)))
                    .shadow( radius: 1)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.bottom,30)
                    VStack(alignment: .center){
                        HStack(spacing:40){
                            Image("Portfo")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                            VStack(alignment: .leading){
                                //Large
                                Text("Rohini").font(.system(size: 16)).foregroundColor(Color(#colorLiteral(red: 0.41, green: 0.43, blue: 0.43, alpha: 1)))
                                Text("Delhi,IN").font(.system(size: 14)).foregroundColor(Color(#colorLiteral(red: 0.37, green: 0.16, blue: 0.12, alpha: 1)))
                            }.padding(.trailing,70)
                                .padding(.leading,-10)
                            Image(systemName: "arrow.up.forward.app.fill")
                                .resizable()
                                .frame(width: 35, height: 35)
                                .foregroundColor(Color(#colorLiteral(red: 0.37254902720451355, green: 0.1568627506494522, blue: 0.11764705926179886, alpha: 1)))
                        }
                        //Divider
                        Rectangle()
                            .fill(Color(#colorLiteral(red: 0.9882352948188782, green: 0.8705882430076599, blue: 0.8156862854957581, alpha: 1)))
                        .frame(width: 230, height: 3)
                        .offset(x:3)
                        HStack{
                            //Button
                            Text("Skill").font(.custom("Poppins SemiBold", size: 14)).foregroundColor(Color(#colorLiteral(red: 1, green: 0.79, blue: 0.7, alpha: 1))).multilineTextAlignment(.center)
                                .frame(width: 98, height: 32)
                                .background(Color(#colorLiteral(red: 0.37254902720451355, green: 0.1568627506494522, blue: 0.11764705926179886, alpha: 1)))
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .shadow( radius: 1)
                            Text("Skill").font(.custom("Poppins SemiBold", size: 14)).foregroundColor(Color(#colorLiteral(red: 1, green: 0.79, blue: 0.7, alpha: 1))).multilineTextAlignment(.center)
                                .frame(width: 98, height: 32)
                                .background(Color(#colorLiteral(red: 0.37254902720451355, green: 0.1568627506494522, blue: 0.11764705926179886, alpha: 1)))
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .shadow( radius: 1)
                            Text("Skill").font(.custom("Poppins SemiBold", size: 14)).foregroundColor(Color(#colorLiteral(red: 1, green: 0.79, blue: 0.7, alpha: 1))).multilineTextAlignment(.center)
                                .frame(width: 98, height: 32)
                                .background(Color(#colorLiteral(red: 0.37254902720451355, green: 0.1568627506494522, blue: 0.11764705926179886, alpha: 1)))
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .shadow( radius: 1)
                            
                        }
                        .shadow( radius: 1)
                        
                        
                    }
                    .frame(width: 341, height: 214)
                    .background(Color(#colorLiteral(red: 1, green: 0.7944080829620361, blue: 0.696666955947876, alpha: 1)))
                    .shadow( radius: 1)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.bottom,30)
                    VStack(alignment: .center){
                        HStack(spacing:40){
                            Image("Portfo")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                            VStack(alignment: .leading){
                                //Large
                                Text("Rohini").font(.system(size: 16)).foregroundColor(Color(#colorLiteral(red: 0.41, green: 0.43, blue: 0.43, alpha: 1)))
                                Text("Delhi,IN").font(.system(size: 14)).foregroundColor(Color(#colorLiteral(red: 0.37, green: 0.16, blue: 0.12, alpha: 1)))
                            }.padding(.trailing,70)
                                .padding(.leading,-10)
                            Image(systemName: "arrow.up.forward.app.fill")
                                .resizable()
                                .frame(width: 35, height: 35)
                                .foregroundColor(Color(#colorLiteral(red: 0.37254902720451355, green: 0.1568627506494522, blue: 0.11764705926179886, alpha: 1)))
                        }
                        //Divider
                        Rectangle()
                            .fill(Color(#colorLiteral(red: 0.9882352948188782, green: 0.8705882430076599, blue: 0.8156862854957581, alpha: 1)))
                        .frame(width: 230, height: 3)
                        .offset(x:3)
                        HStack{
                            //Button
                            Text("Skill").font(.custom("Poppins SemiBold", size: 14)).foregroundColor(Color(#colorLiteral(red: 1, green: 0.79, blue: 0.7, alpha: 1))).multilineTextAlignment(.center)
                                .frame(width: 98, height: 32)
                                .background(Color(#colorLiteral(red: 0.37254902720451355, green: 0.1568627506494522, blue: 0.11764705926179886, alpha: 1)))
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .shadow( radius: 1)
                            Text("Skill").font(.custom("Poppins SemiBold", size: 14)).foregroundColor(Color(#colorLiteral(red: 1, green: 0.79, blue: 0.7, alpha: 1))).multilineTextAlignment(.center)
                                .frame(width: 98, height: 32)
                                .background(Color(#colorLiteral(red: 0.37254902720451355, green: 0.1568627506494522, blue: 0.11764705926179886, alpha: 1)))
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .shadow( radius: 1)
                            Text("Skill").font(.custom("Poppins SemiBold", size: 14)).foregroundColor(Color(#colorLiteral(red: 1, green: 0.79, blue: 0.7, alpha: 1))).multilineTextAlignment(.center)
                                .frame(width: 98, height: 32)
                                .background(Color(#colorLiteral(red: 0.37254902720451355, green: 0.1568627506494522, blue: 0.11764705926179886, alpha: 1)))
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .shadow( radius: 1)
                            
                        }
                        .shadow( radius: 1)
                        
                        
                    }
                    .frame(width: 341, height: 214)
                    .background(Color(#colorLiteral(red: 1, green: 0.7944080829620361, blue: 0.696666955947876, alpha: 1)))
                    .shadow( radius: 1)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                 
                
                
                
                
            }
        }
        .padding(.bottom,100)
    }
}

struct ScrollViewThree: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .center){
                Text("Popular Porfolios")
                .font(.system(size: 40))
                  .fontWeight(.bold)
                  .multilineTextAlignment(.leading)
                  .foregroundColor(Color(red: 0.92, green: 0.36, blue: 0.25))
                  .padding(.bottom,50)
                HStack{
                    VStack(alignment: .center){
                        Text("Rohini")
                            .font(.system(size: 20))
                            .fontWeight(.semibold)
                            .lineSpacing(17)
                            .foregroundColor(.white)
                        ZStack{
                            Image("Portfo")
                                .resizable()
                                .frame(width: 270, height: 261)
                                .cornerRadius(20)
                            Image(systemName: "person.fill")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.black)
                                .offset(x:-100,y:100)
                        }.padding(.bottom,20)
                        Text("“If you can't say it word for word, music is the alternative rescue.”")
                            .font(.system(size: 16))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                    }.foregroundColor(.clear)
                        .frame(width: 374, height: 429)
                        .background(Color(red: 0.37, green: 0.16, blue: 0.12))
                        .cornerRadius(20)
                        
                     
                }.padding()
                HStack{
                    VStack(alignment: .center){
                        Text("Rohini")
                            .font(.system(size: 20))
                            .fontWeight(.semibold)
                            .lineSpacing(17)
                            .foregroundColor(.white)
                        ZStack{
                            Image("Portfo")
                                .resizable()
                                .frame(width: 270, height: 261)
                                .cornerRadius(20)
                            Image(systemName: "person.fill")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.black)
                                .offset(x:-100,y:100)
                        }.padding(.bottom,20)
                        Text("“If you can't say it word for word, music is the alternative rescue.”")
                            .font(.system(size: 16))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                    }.foregroundColor(.clear)
                        .frame(width: 374, height: 429)
                        .background(Color(red: 0.37, green: 0.16, blue: 0.12))
                        .cornerRadius(20)
                        
                     
                }.padding()

            }
        }
        .offset(y: 10)
        .padding(.bottom, 100)
    }
}

struct ScrollViewFour: View {
    var body: some View {
        ScrollView {
            VStack {
                // Your content for ScrollViewFour
            }
        }
        .offset(y: 140)
        .padding(.bottom, 100)
    }
}

struct ScrollViewFive: View {
    var body: some View {
        ScrollView {
            VStack {
                // Your content for ScrollViewFive
            }
        }
        .offset(y: 140)
        .padding(.bottom, 100)
    }
}

#Preview{
    HomeView()
}
