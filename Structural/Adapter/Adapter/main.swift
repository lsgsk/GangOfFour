import Foundation

func useShape(shape: IShape) {
	print(shape.boundingBox())
}

let textView = TextView()
useShape(shape: TextShapeAdapter(adaptee: textView))
