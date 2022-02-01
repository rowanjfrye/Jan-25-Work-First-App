import SwiftUI
import Subsonic

struct ContentView: View {
    let names = ["Rowan", "Dwayne", "Murakami"]
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(names, id: \.self) { name in
                    Button {
                        play(sound: "\(name)")
                    } label: {
                    Image(name)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(25)
                        .padding(.horizontal)
                    }
                }
            }
            .navigationTitle("lol")
        }
        .navigationViewStyle(.stack)
    }
}
