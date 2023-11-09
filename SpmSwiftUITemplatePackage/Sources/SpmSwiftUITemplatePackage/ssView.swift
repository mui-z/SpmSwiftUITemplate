import SwiftUI

struct ssView: View {
  @StateObject var viewModel: ssViewModel
  
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

