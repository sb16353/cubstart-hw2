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
                .font(.system(size: 25, weight: .bold))
                .padding([.trailing], 283)
                .foregroundColor(.white)
            HStack{
                Text("Sabrina Carpenter")
                    .font(.system(size: 14, weight: .bold))
                    .padding([.trailing], 230)
                    .foregroundColor(.white)
                Image(systemName: "plus.circle.fill" )
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 25)
                    .foregroundColor(.white)
            }
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
                        .fontWeight(.bold)
                    Spacer()
                    Text("-2:53")
                        .opacity(0.6)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                }
                .padding([.trailing, .leading], 10)
            }
        }
    }
    
struct playbackView: View {
    var body: some View {
        HStack(spacing: 44){
            Image(systemName: "shuffle")
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 25)
                .foregroundColor(.white)

            Image(systemName: "backward.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .foregroundColor(.white)

            Image(systemName: "play.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
                .foregroundColor(.white)

            Image(systemName: "forward.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .foregroundColor(.white)

            Image(systemName: "repeat")
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 25)
                .foregroundColor(.white)
        }
        .padding(.vertical, 40)
    }
}

    
    struct albumView : View {
        var body: some View {
            Image("Espresso")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
                .padding(10)
        }
    }
    
    struct extraView : View {
        var body: some View {
            HStack{
                Image(systemName: "chevron.down")
                    .foregroundColor(.white)
                    .padding([.trailing], 300)
                Image(systemName: "ellipsis")
                    .foregroundColor(.white)
            }
            .padding(.vertical, -20)
        }
    }
    
    #Preview {
        ContentView()
    }
