import Foundation

protocol IMazeBuilder {
	func buildMaze()
	func buildRoom(room: Int)
	func buildDoor(roomFrom: Int, roomTo: Int)
	func getMaze() -> IMaze?
}
