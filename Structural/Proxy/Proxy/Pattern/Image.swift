import Foundation

protocol IGraphic {
    func draw(point: Point)
    var extent: Point { get }
}

class Image: IGraphic {
    private let data: Data
    
    init(file: String) {
        guard let url = URL(string: file),
              let data = try? Data(contentsOf: url) else  {
            self.data = Data()
            return
        }
        self.data = data
    }
    
    func draw(point: Point) {
        print("@@@")
    }
    
    var extent: Point {
        return Point(x: data.count % 100 / 10, y: data.count % 10)
    }
}

struct Point {
    let x: Int
    let y: Int
}

