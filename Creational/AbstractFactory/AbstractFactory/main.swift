import Foundation

func createMaze(factory: IMazeFactory) -> IMaze {
	var aMaze = factory.makeMaze()
	var r1 = factory.makeRoom(number: 1)
	var r2 = factory.makeRoom(number: 2)
	let aDoor = factory.makeDoor(room1: r1, room2: r2)

	aMaze.addRoom(room: r1)
	aMaze.addRoom(room: r2)

	r1[.north] = factory.makeWall()
	r1[.east] = aDoor
	r1[.south] = factory.makeWall()
	r1[.west] = factory.makeWall()
	r2[.north] = factory.makeWall()
	r2[.east] = factory.makeWall()
	r2[.south] = factory.makeWall()
	r2[.west] = aDoor

	return aMaze
}

print("Maze generated \(createMaze(factory: BombedMazefactory()))")
print("Maze generated \(createMaze(factory: EnchantedMazeFactory()))")
