//
//  ContentView.swift
//  HealthStatsApp
//
//  Created by Gustavo Ramalho on 13/04/23.
//

import SwiftUI

struct ContentView: View {
    
    private var repository = HKRepository()
    
    var items: [GridItem]{
        Array(repeating: .init(.adaptive(minimum: 120)), count: 2)
    }
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                LazyVGrid(columns: items,spacing: 2) {
                    ForEach(Activity.allActivities()) {
                        activity in
                        NavigationLink(destination: DetailView(activity: activity, repository: repository)) {
                            VStack {
                                Text(activity.image)
                                    .frame(width: 50,height: 50)
                                    .background(RoundedRectangle(cornerRadius: 5)
                                        .fill(Color.blue.opacity(0.2)))
                                Text(activity.name)
                                   
                            }
                            .padding()
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color.blue.opacity(0.2)))
                        }.buttonStyle(PlainButtonStyle())
                    }
                }.padding()
            }.navigationTitle("My health stats")
        }.onAppear {
            repository.requestAuthorization {
                success in
                print("Auth success? \(success)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
