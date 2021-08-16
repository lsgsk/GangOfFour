import Foundation

protocol IObserver: AnyObject {
	func update(subject: ISubject)
}

class DigitalClock: IObserver {
	private let timer: ClockTimer
	init(timer: ClockTimer) {
		self.timer = timer
		self.timer.attach(observer: self)
	}

	deinit {
		self.timer.detach(observer: self)
	}

	func update(subject: ISubject) {
		if subject === timer {
			print("Time: \(timer.getHour()) \(timer.getMinute()) \(timer.getSecond())")
		}
	}
}
