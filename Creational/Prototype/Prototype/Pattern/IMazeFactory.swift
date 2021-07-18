import Foundation

protocol IMazeFactory {
	func makeMaze() -> IMaze
	func makeWall() -> IWall
	func makeRoom(number: Int) -> IRoom
	func makeDoor(room1: IRoom, room2: IRoom) -> IDoor
}
