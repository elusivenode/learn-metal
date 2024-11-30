import SwiftUI

let size: CGFloat = 600

struct ContentView: View {
  @State var options = Options()
  @State private var showGrid = true

  var body: some View {
    VStack {
      MetalView(options: options)
        .border(Color.black, width: 2)
        .frame(width: size, height: size)
      Picker(
        selection: $options.renderChoice,
        label: Text("Render Options")) {
          Text("Train").tag(RenderChoice.train)
          Text("Quad").tag(RenderChoice.quad)
      }
      .pickerStyle(SegmentedPickerStyle())
      .containerRelativeFrame(.horizontal) { width, _ in
        return width * 0.6
      }

    }
    .padding()
  }
}

#Preview {
  ContentView()
}
