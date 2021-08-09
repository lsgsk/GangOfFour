
import Foundation

class Switch {
	func execute(_ command: ICommand) {
		command.execute()
	}
}

class Light {
	func turnOn() {
		print("The light is ON")
	}
	func turnOff() {
		print("The light is OFF")
	}
}

class SwitchOnCommand: ICommand {

	private var light: Light

	init(_ light: Light) {
		self.light = light
	}

	func execute() {
		light.turnOn()
	}
}

class SwitchOffCommand: ICommand {

	private var light: Light

	init(_ light: Light) {
		self.light = light
	}

	func execute() {
		light.turnOff()
	}
}
