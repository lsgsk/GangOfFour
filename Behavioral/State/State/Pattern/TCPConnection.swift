import Foundation

protocol ITCPConnection {
	func activeOpen()
	func passiveOpen()
	func close()
	func send()
	func acknowledge()
	func synchronize()
	func changeState(state: ITCPState)
}

class TCPConnection: ITCPConnection {
	private var state: ITCPState

	init(state: ITCPState) {
		self.state = state
	}

	func changeState(state: ITCPState) {
		self.state = state
	}

	func activeOpen() {
		self.state.activeOpen(connection: self)
	}

	func passiveOpen() {
		self.state.passiveOpen(connection: self)
	}

	func close() {
		self.state.close(connection: self)
	}

	func send() {
		self.state.send(connection: self)
	}

	func acknowledge() {
		self.state.acknowledge(connection: self)
	}

	func synchronize() {
		self.state.synchronize(connection: self)
	}
}
