import SwiftUI

public struct ContentView: View {
  public init() {}

  @StateObject var viewModel: ContentViewModel = .init()

  public var body: some View {
    VStack {
      Text(viewModel.tapTimes.description)
      Button(action: {
        viewModel.tapButton()
      }, label: {
        Text("Tap!")
      })
    }
  }
}
