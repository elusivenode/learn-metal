import SwiftUI

let size: CGFloat = 400

struct ContentView: View {
  @State private var showGrid = true

  var body: some View {
    VStack(alignment: .leading) {
        MetalView()
          .border(Color.black, width: 2)
    }
    .frame(height: size)
    .padding()
  }
}
//
//#Preview {
//  ContentView()
//}
