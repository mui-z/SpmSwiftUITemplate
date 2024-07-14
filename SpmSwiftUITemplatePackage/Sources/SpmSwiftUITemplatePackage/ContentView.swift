import SwiftUI

struct ContentView: View {
  @StateObject var viewModel: ContentViewModel

  var body: some View {
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

