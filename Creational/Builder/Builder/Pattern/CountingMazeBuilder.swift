import Foundation

final class CountingMazeBuilder: IMazeBuilder {
	private(set) var doors = 0
	private(set) var rooms = 0

	func buildMaze() {
	}

	func buildRoom(room: Int) {
		self.rooms += 1
	}

	func buildDoor(roomFrom: Int, roomTo: Int) {
		self.doors += 1
	}

	func getMaze() -> IMaze? {
		return nil
	}
}
