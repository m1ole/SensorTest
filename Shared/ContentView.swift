import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            Home()
                .tabItem() {
                    Image(systemName: "")
                    Text("Home")
                }
            Sensors()
                .tabItem() {
                    Image(systemName: "")
                    Text("Sensors")
                }
            Data()
                .tabItem() {
                    Image(systemName: "")
                    Text("Data")
                }
            Database()
                .tabItem() {
                    Image(systemName: "")
                    Text("Database")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
