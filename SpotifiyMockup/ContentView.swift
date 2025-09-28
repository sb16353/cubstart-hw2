//
//  ContentView.swift
//  discussion3
//
//  Created by Dylan Chhum on 7/26/24.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        ZStack {
            albumView()
                
            
            BlurView(style: .systemMaterialDark)
                .ignoresSafeArea(.all)
//           
            VStack {
                extraView()
                albumView()
                titleView()
                timeView()
                playbackView()
            }
        }
    }
     
}

// Do not worry about this
struct BlurView: UIViewRepresentable {
    var style: UIBlurEffect.Style

    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: style))
        return view
    }

    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: style)
    }
}


struct titleView: View {
    var body: some View {
        VStack{
            Text("Espresso")
                .font(.system(size: 22, weight: .bold))
                .padding([.trailing], 293)
                .foregroundColor(.white)
            Text("Sabrina Carpenter")
                .font(.system(size: 14, weight: .bold))
                .padding([.trailing], 260)
                .foregroundColor(.white)
        }
    }
}
    
    struct timeView: View {
        var body: some View {
            VStack {
                ZStack {
                    Circle()
                        .frame(height:10)
                        .foregroundColor(.white)
                        .padding([.trailing], 370)
                    Rectangle()
                        .cornerRadius(3.0)
                        .frame(height: 5)
                        .padding([.leading, .trailing], 10)
                        .foregroundColor(.white)
                        .opacity(0.3)
                }
                
                HStack {
                    Text("0:00")
                        .opacity(0.6)
                        .foregroundColor(.white)
                    Spacer()
                    Text("-2:53")
                        .opacity(0.6)
                        .foregroundColor(.white)
                }
                .padding([.trailing, .leading], 10)
            }
        }
    }
    
    struct playbackView: View {
        var body: some View {
            Text("Implement Me")
        }
    }
    
    struct albumView : View {
        var body: some View {
            Image("Image")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(10)
        }
    }
    
    struct extraView : View {
        var body: some View {
            Text("Implement Me")
        }
    }
    
    #Preview {
        ContentView()
    }
