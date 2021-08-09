//
//  Created by Лысов Александр on 09.08.2021.
//

import Foundation

var buffer = RingBuffer<Int>(count: 5)

for i in 0..<12 {
	buffer.write(i)
}

for i in buffer {
	print(i)
}
