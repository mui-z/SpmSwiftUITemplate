import SwiftUI
import Observation

public struct RootView: View {
    @State private var viewModel = RootViewModel()
    
    public init() {}
    
    public var body: some View {
        VStack {
            Text(viewModel.count.description)
                .font(.title)
                .padding()
            
            HStack(spacing: 20) {
                Button(action: { viewModel.decrement() }) {
                    Image(systemName: "minus.circle.fill")
                        .font(.title)
                }
                
                Button(action: { viewModel.increment() }) {
                    Image(systemName: "plus.circle.fill")
                        .font(.title)
                }
            }
        }
    }
}
