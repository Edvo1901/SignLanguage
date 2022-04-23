import SwiftUI


// Main function screen
struct ContentView: View {
    @AppStorage("choosenTab") var choosenTab: OpenTab = .tutor
    @EnvironmentObject var model: Model
    
    var body: some View {
        
        // Show available tab bar
        ZStack(alignment: .bottom) {
            switch choosenTab {
            case .tutor:
                DiscoveryView()
                    .navigationBarHidden(true)
            case .exam:
                QuizView()
                    .navigationBarHidden(true)
            case .inform:
                InformView()
                    .navigationBarHidden(true)
            }
            
            TabBar()
                .offset(y: model.showDetail ? 200 : 0)
        }
        .safeAreaInset(edge: .bottom, content: {
            Color.clear.frame(height: 44)
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Model())
    }
}
