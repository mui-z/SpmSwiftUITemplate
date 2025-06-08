import SwiftUI
import Observation

@Observable
class RootViewModel {
    var count = 0
    
    func increment() {
        count += 1
    }
    
    func decrement() {
        count -= 1
    }
} 