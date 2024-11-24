import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      MetalView()
        .border(Color.black, width: 2)
    }
    .padding()
  }
}

#Preview {
  ContentView()
}
