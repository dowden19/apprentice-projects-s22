//
//  ContentView.swift
//  p04-mood-tracker
//
//  Created by Samuel Shi on 1/17/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = MoodTrackerViewModel()
    
    var body: some View {
        ZStack {
            Color(.systemGray6)
            ScrollView {
                VStack {
                    Text("Mood Tracker")
                        .font(.title)
                        .padding(.top,100)
                    Text("New CheckIn")
                        .font(.subheadline)
                        .padding(.top, 80)
                    HStack {
                        TextField("Current mood", text: $viewModel.checkInTitle)
                            .padding()
                        Button {
                            viewModel.newCheckIn()
                            viewModel.checkInTitle = ""
                        } label: {
                            Text("Send")
                        }
                        .padding()
                    }
                    .background(Color.white)
                    .cornerRadius(100)
                    Text("Previous CheckIns")
                        .font(.subheadline)
                        .padding(.top, 30)
                    ForEach(viewModel.checkIns.reversed()) { mood in
                        VStack(alignment: .leading) {
                            Text(mood.mood)
                                .padding(.top,10)
                            Text(mood.formattedDate)
                                .padding(.bottom,10)
                        }
                        .frame(width:200)
                        .background(Color.white)
                        .cornerRadius(10)
                        .padding(2)
                    }
                }.padding()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
