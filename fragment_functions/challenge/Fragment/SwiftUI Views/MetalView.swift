import SwiftUI
import MetalKit

struct MetalView: View {
  let options: Options
  @State private var metalView = MTKView()
  @State private var renderer: Renderer?

  var body: some View {
    MetalViewRepresentable(
      renderer: renderer,
      metalView: $metalView,
      options: options)
      .onAppear {
        renderer = Renderer(
          metalView: metalView,
          options: options)
      }
  }
}

#if os(macOS)
typealias ViewRepresentable = NSViewRepresentable
#elseif os(iOS)
typealias ViewRepresentable = UIViewRepresentable
#endif

struct MetalViewRepresentable: ViewRepresentable {
  let renderer: Renderer?
  @Binding var metalView: MTKView
  let options: Options

#if os(macOS)
  func makeNSView(context: Context) -> some NSView {
    metalView
  }
  func updateNSView(_ uiView: NSViewType, context: Context) {
    updateMetalView()
  }
#elseif os(iOS)
  func makeUIView(context: Context) -> MTKView {
    metalView
  }

  func updateUIView(_ uiView: MTKView, context: Context) {
    updateMetalView()
  }
#endif

  func updateMetalView() {
    renderer?.options = options
  }
}

#Preview {
  VStack {
    MetalView(options: Options())
    Text("Metal View")
  }
}
