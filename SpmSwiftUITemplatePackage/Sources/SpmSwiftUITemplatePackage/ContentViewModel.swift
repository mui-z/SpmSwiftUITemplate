import Foundation
import SwiftUI
import Combine

@MainActor
final class ContentViewModel: NSObject, ObservableObject {
	@Published var tapTimes: Int = 0
	
	func tapButton() {
		tapTimes += 1
  }
}