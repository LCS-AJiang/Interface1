//
//  ContentView.swift
//  Interface
//
//  Created by Audrey Jiang on 2022-11-18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            // First layer (background)
            Color.black
                .ignoresSafeArea(.all)
            
            // Second layer (rest of interface)
            VStack {
                VStack {
                    
                    Text("Welcome to")
                        .font(Font.system(size: 40, weight: .bold))
                        .foregroundColor(.white)
                    
                    Text("Interval Pro")
                        .font(Font.system(size: 43, weight: .bold))
                        .foregroundColor(.blue)
                }
                .padding(.bottom, 80)
                
                VStack (alignment:.leading, spacing: 30) {
                    
                    HStack (spacing: 20){
                        Image(systemName: "timer")
                            .resizable()
                            .foregroundColor(.green)
                            .frame(width: 40, height: 40)
                        VStack(alignment: .leading) {
                            Text("Custom Interval Timers")
                                .font(.title2)
                                .foregroundColor(.white)
                            Text("Create custom interval timers for running, HIIT, strength training, yoga, meditation and more.")
                                .font(.body)
                                .foregroundColor(.gray)
                        }
                    }
                    
                    HStack (spacing: 20){
                        Image(systemName: "bubble.left")
                            .resizable()
                            .foregroundColor(.purple)
                            .frame(width: 40, height: 40)
                        VStack(alignment: .leading) {
                            Text("Spoken Alarts")
                                .font(.title2)
                                .foregroundColor(.white)
                            Text("Spoken interval names and alerts to guide you through your workouts.")
                                .font(.body)
                                .foregroundColor(.gray)
                        }
                    }
                    
                    HStack (spacing: 20){
                        Image(systemName: "music.note.list")
                            .resizable()
                            .foregroundColor(.orange)
                            .frame(width: 40, height: 40)
                        VStack(alignment: .leading) {
                            Text("Listen to Music, Podcasts, Video")
                                .font(.title2)
                                .foregroundColor(.white)
                            Text("Play music, podcasts or video using the app of your choice. Run in the background with your phone locked.")
                                .font(.body)
                                .foregroundColor(.gray)
                        }
                    }
                }
                
                Spacer()
                
                ZStack {
                    RoundedRectangle(cornerRadius: 30)
                        .frame(height: 60)
                        .foregroundColor(.blue)
                    Text("Continue")
                        .font(Font.system(size: 20))
                        .bold()
                        .foregroundColor(.white)
                }
            }
            .padding(.horizontal, 10)
            .padding(.top, 80)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
