import Foundation


let mazeFactory = MazePrototypeFactory(maze: Maze(),
									   wall: Wall(),
									   room: Room(),
									   door: Door())
let game = MazeGame(mazeFactory: mazeFactory)
let maze = game.createMaze()
print("Maze generated \(maze)")
