import Foundation
import SwiftUI
import Combine
import CombineStorable

// MARK: - ViewModel
final class RootTodoViewModel: NSObject, ObservableObject, Storable {
	let input: Input
	let output: Output
	@ObservedObject var binding: Binding

	init(
		input: Input = .init(),
		output: Output = .init(),
		binding: Binding = .init(),
	) {
		self.input = input
		self.output = output
		self.binding = binding
		super.init()
		bind(input: input, output: output, binding: binding)
	}
}

// MARK: - Property
extension RootViewModel {
	final class Input {
		let didTapButton: PassthroughSubject<Void, Never>

		init(didTapButton: PassthroughSubject<Void, Never> = .init()) {
			self.didTapButton = didTapButton
		}
	}

	final class Output: ObservableObject {
		let dismissView: PassthroughSubject<Void, Never>

		init(
			dismissView: PassthroughSubject<Void, Never> = .init()
		) {
			self.dismissView = dismissView
		}
	}

	final class Binding: ObservableObject {
		@Published var todoTitleText: String = ""
	}
}

// MARK: Private
private extension RootViewModel {
	func bind(input: Input, output: Output, binding: Binding) {
		binding.objectWillChange
			.sink { [weak self] _ in
				self?.objectWillChange.send()
			}
			.store(in: &cancellables)

		input.didTapButton
			.sink { [unowned self] _ in
				output.dismissView.send(())
			}
			.store(in: &cancellables)
	}
}
