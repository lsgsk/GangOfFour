import Foundation

class GlyphFactory {
	private var characters = [Character: CharGlyph]()

	func createCharacter(char: Character) -> CharGlyph {
		if let char = characters[char] {
			print("reuse glyph")
			return char
		}
		else {
			let newchar = CharGlyph(char: char)
			self.characters[char] = newchar
			return newchar
		}
	}
}
