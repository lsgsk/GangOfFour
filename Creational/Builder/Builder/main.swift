import Foundation

func createMaze(buider: IMazeBuilder) -> IMaze? {
	buider.buildMaze()
	buider.buildRoom(room: 1)
	buider.buildRoom(room: 2)
	buider.buildDoor(roomFrom: 1, roomTo: 2)
	return buider.getMaze()
}

if let maze = createMaze(buider: StandardMazeBuilder()) {
	print("Maze generated \(maze)")
}

let countingMazeBuilder = CountingMazeBuilder()
_ = createMaze(buider: countingMazeBuilder)
print("There are \(countingMazeBuilder.rooms) rooms and \(countingMazeBuilder.doors) doors in the maze")

