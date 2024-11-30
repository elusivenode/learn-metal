import SwiftUI
import Observation

enum RenderChoice {
  case train, quad
}

@Observable
class Options {
  var renderChoice = RenderChoice.quad
}
