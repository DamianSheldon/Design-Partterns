//
//  ImageProxy.swift
//  Structural
//
//  Created by Meiliang Dong on 13/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class ImageProxy: Graphic {
    open var imageFileName: String
    
    private lazy var _realImage = Image(fileName: imageFileName)
    
    public override init() {
        fatalError("Must init with image")
    }
    
    public init(fileName: String) {
        imageFileName = fileName
    }
    
    open override func draw(atPoint point: CGPoint) {
        _realImage.draw(atPoint: point)
    }
    
    open override func handleMouse(_ event: UIEvent) {
        _realImage.handleMouse(event)
    }
    
    open override func getExtent() -> CGSize {
        return _realImage.getExtent()
    }
    
    open override func load(_ from: InputStream) {
        _realImage.load(from)
    }
    
    open override func save(_ to: OutputStream) {
        _realImage.save(to)
    }
}
