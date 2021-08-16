import Foundation

protocol ISubject: AnyObject {
	func attach(observer: IObserver)
	func detach(observer: IObserver)
	func notify()
}

class ClockTimer: ISubject {
	private var observers = [IObserver]()

	func start() {
		(0..<10).forEach { _ in tick() }
	}

	func getHour() -> Int {
		return Calendar.current.component(.hour, from: Date())
	}

	func getMinute() -> Int  {
		return Calendar.current.component(.minute, from: Date())
	}

	func getSecond() -> Int  {
		return Calendar.current.component(.second, from: Date())
	}

	@objc func tick() {
		print("Tick")
		notify()
	}

	func attach(observer: IObserver) {
		self.observers.append(observer)
	}

	func detach(observer: IObserver) {
		self.observers.removeAll(where: { $0 === observer })
	}

	func notify() {
		for item in self.observers {
			item.update(subject: self)
		}
	}
}
