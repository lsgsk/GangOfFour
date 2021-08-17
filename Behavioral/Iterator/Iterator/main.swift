import Foundation

var buffer = RingBuffer<Int>(count: 5)

for i in 0..<12 {
	buffer.write(i)
}

for i in buffer {
	print(i)
}
