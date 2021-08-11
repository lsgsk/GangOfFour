//
//  main.swift
//  Memento
//
//  Created by Лысов Александр on 11.08.2021.
//

struct Point {
	let x: Int
	let y: Int
}


protocol IMemento {
}

struct Parallelepiped {
	private var x: Int
	private var y: Int
	private var width: Int
	private var height: Int

	init(x: Int, y: Int, width: Int, height: Int) {
		self.x = x
		self.y = y
		self.width = width
		self.height = height
	}

	mutating func move(_ point: Point) {
		self.x += point.x
		self.y += point.y
	}

	func save() -> IMemento {
		return Memento(graphic: self)
	}

	mutating func restore(memento: IMemento) {
		guard let momento = memento as? Memento else { return }
		momento.restore(graphic: &self)
	}

	private struct Memento: IMemento {
		private let x1y1: Point
		private let x1y2: Point
		private let x2y1: Point
		private let x2y2: Point

		init(graphic: Parallelepiped) {
			self.x1y1 = Point(x: graphic.x, y: graphic.y)
			self.x1y2 = Point(x: graphic.x, y: graphic.y + graphic.height)
			self.x2y1 = Point(x: graphic.x + graphic.width, y: graphic.y)
			self.x2y2 = Point(x: graphic.x + graphic.width, y: graphic.y + graphic.height)
		}

		func restore(graphic: inout Parallelepiped) {
			graphic.x = x1y1.x
			graphic.y = x1y1.y
			graphic.width = x2y2.x - x1y1.x
			graphic.height = x2y2.y - x2y1.y
		}
	}
}


var shots = [IMemento]()
var parallelepiped = Parallelepiped(x: 0, y: 0, width: 100, height: 100)
print(parallelepiped)
shots.append(parallelepiped.save())
parallelepiped.move(Point(x: 15, y: 10))
print(parallelepiped)
shots.append(parallelepiped.save())
parallelepiped.move(Point(x: 5, y: 10))
print(parallelepiped)
shots.append(parallelepiped.save())
parallelepiped.move(Point(x: 20, y: 30))
print(parallelepiped)
parallelepiped.restore(memento: shots[1])
print(parallelepiped)
