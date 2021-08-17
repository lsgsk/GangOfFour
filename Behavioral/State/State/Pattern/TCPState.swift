import Foundation

protocol ITCPState {
	func activeOpen(connection: ITCPConnection)
	func passiveOpen(connection: ITCPConnection)
	func close(connection: ITCPConnection)
	func synchronize(connection: ITCPConnection)
	func acknowledge(connection: ITCPConnection)
	func send(connection: ITCPConnection)
}

extension ITCPState {
	func activeOpen(connection: ITCPConnection) {}
	func passiveOpen(connection: ITCPConnection) {}
	func close(connection: ITCPConnection) {}
	func synchronize(connection: ITCPConnection) {}
	func acknowledge(connection: ITCPConnection) {}
	func send(connection: ITCPConnection) {}
}

class TCPClosed: ITCPState {
	static let instance: ITCPState = TCPClosed()
	private init() {}

	func activeOpen(connection: ITCPConnection) {
		print("Try open Connection")
		connection.changeState(state: TCPListen.instance)
		for _ in 0..<10 {
			print("Try connect...")
		}
		connection.changeState(state: TCPEstablished.instance)
		print("Connected")
	}

	func passiveOpen(connection: ITCPConnection) {
		print("Try open Connection")
		connection.changeState(state: TCPEstablished.instance)
		print("Connected")
	}
}

class TCPEstablished: ITCPState {
	static let instance: ITCPState = TCPEstablished()
	private init() {}

	func synchronize(connection: ITCPConnection) {
		print("Synchronize")
	}

	func close(connection: ITCPConnection) {
		print("Try to close connection")
		connection.changeState(state: TCPListen.instance)
		for _ in 0..<10 {
			print("Closing...")
		}
		connection.changeState(state: TCPClosed.instance)
		print("Closed successfully")
	}
}

class TCPListen: ITCPState {
	static let instance: ITCPState = TCPListen()
	private init() {}
}
