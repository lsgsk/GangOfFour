//
//  Created by Лысов Александр on 31.07.2021.
//

import Foundation

protocol IStream {}

class Stream: IStream {
}

class Compiler {
	func compile(input: IStream, output: IStream){
		let scanner = Scanner(input);
		let builder = ProgramNodeBuilder()
		let parser = Parser()
		parser.parse(scanner, builder);
		let generator = RISCCodeGenerator(output)
		let parseTree = builder.getRootNode()
		parseTree.traverse(generator);
	}
}

private class Scanner {
	private let input: IStream

	init(_ input: IStream) {
		self.input = input
	}
}

private class Parser {
	func parse(_ scaner: Scanner, _ builder: ProgramNodeBuilder) {
		print("parce")
	}
}

private class ProgramNodeBuilder {
	func getRootNode() -> ProgramNode {
		return ProgramNode()
	}
}

private class ProgramNode {
	func traverse(_ generator: ICodeGenerator) {
		print("traverse")
	}
}

private protocol ICodeGenerator {}
private class RISCCodeGenerator: ICodeGenerator {
	private let output: IStream
	init(_ output: IStream) {
		self.output = output
	}
}

