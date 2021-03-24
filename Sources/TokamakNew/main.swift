import TokamakDOM

struct TokamakApp: App {
    var body: some Scene {
        WindowGroup("Tokamak App") {
            ContentView()
        }
    }
}

struct ContentView: View {
    var body: some View {
        VStack() {
                            Text("Hello, world!")
                                .padding()
                    HTML("img", ["src":"https://www.w3schools.com/images/picture.jpg", "alt":"Falcon"])
            HTML("img", ["src":"picture.jpg", "alt":"Falcon"])
                            Circle()
                                .frame(width: 100.0, height: 100.0)
                                .foregroundColor(.blue)
                                .padding()
                            Text("This is from Swift WebAssembly !")
                                .padding()
            Image("picture.jpg", bundle: .module)
            Image("DSCF85721.jpg", bundle: .module)
                .frame(width: 300)
                
                        }
    }
}

// @main attribute is not supported in SwiftPM apps.
// See https://bugs.swift.org/browse/SR-12683 for more details.

TokamakApp.main()
