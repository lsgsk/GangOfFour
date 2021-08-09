import Foundation

struct RingBuffer<T>
{
	private var array: [T?]
	private var readIndex = 0
	private var writeIndex = 0

	init(count: Int) {
		self.array = [T?](repeating: nil, count: count)
	}

	mutating func write(_ element: T) {
		self.readIndex += self.isFull ? 1 : 0
		self.array[self.writeIndex % self.array.count] = element
		self.writeIndex += 1
	}

	mutating func read() -> T? {
		guard isEmpty == false else { return nil }
		defer {
			self.array[self.readIndex % self.array.count] = nil
			self.readIndex += 1
		}
		return self.array[self.readIndex % self.array.count]
	}
}

private extension RingBuffer
{
	var isEmpty: Bool {
		return self.availableSpaceForReading == 0
	}

	var isFull: Bool {
		return self.availableSpaceForWriting == 0
	}

	var availableSpaceForReading: Int {
		return self.writeIndex - self.readIndex
	}

	var availableSpaceForWriting: Int {
		return self.array.count - self.availableSpaceForReading
	}
}

extension RingBuffer: Sequence
{
	func makeIterator() -> AnyIterator<T> {
		var index = self.readIndex
		return AnyIterator {
			guard index < self.writeIndex else { return nil }
			defer {
				index += 1
			}
			return self.array[index % self.array.count]
		}
	}
}
