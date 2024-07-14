import SwiftUI
import ComposableArchitecture


@Reducer
public struct Content {
  @ObservableState
  public struct State {
    var count = 0
  }
  
  public enum Action {
    case increment
    case decrement
  }
  
  public var body: some Reducer<State, Action> {
    Reduce { state, action in
      switch action {
        case .increment:
          state.count += 1
          return .none
        case .decrement:
          state.count += 1
          return .none
      }
    }
  }
}


public struct ContentView: View {
  public init() {
    store = Store(initialState: .init(), reducer: { Content() })
  }
  
  public let store: StoreOf<Content>
  
  public var body: some View {
    VStack {
      Text(store.count.description)
      HStack {
        Button("-") {
          store.send(.decrement)
        }
        Button("+") {
          store.send(.increment)
        }
      }
    }
  }
}
