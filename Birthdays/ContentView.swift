//
    //  Project: ContentView.swift
    //  Created by Noah Carpenter
    //  🐱 Follow me on YouTube! 🎥
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
    //  Dream Big, Code Bigger
    

import SwiftUI
import SwiftData

struct ContentView: View {
    @Query(sort: \Friend.birthday) private var friends: [Friend]
    @Environment(\.modelContext)private var context
    @State private var newName = ""
    @State private var newDate = Date.now
    
    
    var body: some View {
        VStack {
            NavigationStack {
                List(friends) { friend in
                    HStack{
                        if friend.isBirthdayToday{
                            Image(systemName: "birthday.cake.fill")
                        }
                        Text(friend.name)
                            .bold(friend.isBirthdayToday)
                        Spacer()
                        Text(friend.birthday, format: .dateTime.month(.wide).day().year())
                    }
                }
                .navigationTitle("Birthdays")
                .safeAreaInset(edge: .bottom){
                    VStack(alignment: .center, spacing: 20){
                        Text("New Birthday")
                            .font(.headline)
                        DatePicker(selection: $newDate, in: Date.distantPast...Date.now, displayedComponents: .date){
                            TextField("Name", text: $newName)
                                .textFieldStyle(.roundedBorder)
                        }
                        Button("Save"){
                            let newFirend = Friend(name: newName, birthday: newDate)
                            context.insert(newFirend)
                            newName = ""
                            newDate = .now
                        }
                        .bold()
                    }
                    .padding()
                    .background(.bar)
                }
//                .task {
//                    context.insert(Friend(name: "Elton Lin", birthday: .now))
//                    context.insert(Friend(name: "Jenny Court", birthday: Date(timeIntervalSince1970: 0)))
//                    context.insert(Friend(name: "Robbert Smith", birthday: Date(timeIntervalSince1970: 1000000000)))
//                    
//                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Friend.self, inMemory: true)
}
