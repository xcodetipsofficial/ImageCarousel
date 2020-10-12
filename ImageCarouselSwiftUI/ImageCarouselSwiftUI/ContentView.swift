//
//  ContentView.swift
//  ImageCarouselSwiftUI
//
//  Created by Kyle Wilson on 2020-10-10.
//


//Credit Brandon Baars: https://levelup.gitconnected.com/swiftui-create-an-image-carousel-using-a-timer-ed546aacb389

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            
            GeometryReader { geometry in
                        ImageCarousel(numberOfImages: 3) {
                            Image("photo1")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geometry.size.width, height: geometry.size.height)
                                .clipped()
                            Image("photo2")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geometry.size.width, height: geometry.size.height)
                                .clipped()
                            Image("photo3")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geometry.size.width, height: geometry.size.height)
                                .clipped()
                        }
                    }.frame(width: UIScreen.main.bounds.width, height: 300, alignment: .center)
            
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Image("xcodetips")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 55, height: 55)
                        .clipShape(Circle())
                        .shadow(radius: 4)
                    
                    VStack(alignment: .leading) {
                        Text("Article Written By")
                            .font(.avenirNext(size: 12))
                            .foregroundColor(.gray)
                            .bold()
                        Text("Xcode Tips")
                            .font(.avenirNext(size: 17))
                            .bold()
                    }
                }
                
                Text("11 October 2020 • 1 min read")
                                    .font(.avenirNextRegular(size: 12))
                                    .foregroundColor(.gray)
                                
                                Text("How to Build an Image Carousel")
                                    .font(.avenirNext(size: 28))
                                    .bold()
                                
                                Text(text)
                                    .lineLimit(nil)
                                    .font(.avenirNextRegular(size: 17))
            }
            .padding(.horizontal)
            .padding(.top, 16)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Font {
    static func avenirNext(size: Int) -> Font {
        return Font.custom("Avenir Next", size: CGFloat(size))
    }
    
    static func avenirNextRegular(size: Int) -> Font {
        return Font.custom("AvenirNext-Regular", size: CGFloat(size))
    }
}


let text = "This post will show you how to create an image carousel that cycles between images on top of an article. Includes even the three dots to show the index of what photo you are seeing and we have a timer that fires every three seconds that will cycle to the next photo using spring animation. \n\n Apply this feature to your own applications and check out Brandon Baars on Medium who did a full tutorial on this. Link to his article is in the code."
