import Foundation
import SwiftUI
import Combine

@MainActor
final class ssViewModel: NSObject, ObservableObject {
	@Published var tapTimes: Int = 0
	
	func tapButton() {
		tapTimes += 1
  }
}