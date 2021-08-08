import Foundation

protocol IGlyph {
	func draw(windows: Window, conext: GlyphContext)
}

class CharGlyph: IGlyph {
	private let char: Character
	init(char: Character) {
		self.char = char
	}

	func draw(windows: Window, conext: GlyphContext) {
		print("draw \(self.char)")
	}
}
