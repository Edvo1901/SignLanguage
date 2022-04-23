import SwiftUI

@main
struct MyApp: App {
    @StateObject var model = Model()
    
    var body: some Scene {
        WindowGroup {
            AppWelcomeView()
        }
    }
}

