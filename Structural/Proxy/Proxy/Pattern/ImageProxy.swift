import Foundation

class ImageProxy: IGraphic
{
    private let file: String
    private var image: IGraphic?
    
    init(file: String) {
        self.file = file
    }
    
    func draw(point: Point) {
        self.getImage().draw(point: point)
    }
    
    var extent: Point {
        return self.getImage().extent
    }
    
    private func getImage() -> IGraphic {
        if let image = self.image {
            return image
        }
        else {
            let image = Image(file: self.file)
            self.image = image
            return image
        }
    }
}
