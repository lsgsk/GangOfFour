import Foundation

protocol IMazeGame {
	func createMaze() -> IMaze
}

class MazeGame: IMazeGame {
	private let mazeFactory: IMazeFactory

	init(mazeFactory: IMazeFactory) {
		self.mazeFactory = mazeFactory
	}

	func createMaze() -> IMaze {
		let aMaze = mazeFactory.makeMaze()
		let r1 = mazeFactory.makeRoom(number: 1)
		let r2 = mazeFactory.makeRoom(number: 2)
		let aDoor = mazeFactory.makeDoor(room1: r1, room2: r2)

		aMaze.addRoom(room: r1)
		aMaze.addRoom(room: r2)

		r1[.north] = mazeFactory.makeWall()
		r1[.east] = aDoor
		r1[.south] = mazeFactory.makeWall()
		r1[.west] = mazeFactory.makeWall()
		r2[.north] = mazeFactory.makeWall()
		r2[.east] = mazeFactory.makeWall()
		r2[.south] = mazeFactory.makeWall()
		r2[.west] = aDoor

		return aMaze
	}
}
