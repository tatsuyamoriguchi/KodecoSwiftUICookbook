import SwiftUI
import CoreImage
import CoreImage.CIFilterBuiltins

struct FilterToImage: View {
    let image: Image
    
    init() {
        // Loads a UIImage from the app bundle with the name “CoolCat”. If this fails, it initializes an empty UIImage.
        let uiImage = UIImage(named: "CoolCat") ?? UIImage()
        // Calls a static function applySepiaFilter(to:) that applies a sepia filter to the loaded image. The result is then wrapped in a SwiftUI Image and stored in image.
        let filteredUIImage = FilterToImage.applySepiaFilter(to: uiImage)
        image = Image(uiImage: filteredUIImage)
    }
    
    var body: some View {
        image
            .resizable()
            .scaledToFit()
    }
    
    // Takes a UIImage as input.
    // Converts it into a CIImage (a representation of an image for processing with Core Image).
    static func applySepiaFilter(to inputImage: UIImage) -> UIImage {
        guard let ciImage = CIImage(image: inputImage) else { return inputImage }
        
        // Applies a sepia filter to the image by using CIFilter.sepiaTone(). The intensity of the filter effect is set to the maximum (1.0).
        let filter = CIFilter.sepiaTone()
        filter.inputImage = ciImage
        filter.intensity = 1.0
        
        // Converts the CIImage back to a CGImage and then to a UIImage.
        // Get a CIContext
        let context = CIContext()
        
        // Create a CGImage from the CIImage
        // If any of these conversions fail, the original, unfiltered image is returned.
        guard let outputCIImage = filter.outputImage,
              let cgImage = context.createCGImage(outputCIImage, from: outputCIImage.extent) else {
            return inputImage
        }
        
        // Create a UIImage from the CGImage
        let outputUIImage = UIImage(cgImage: cgImage)
        
        return outputUIImage
    }
}

struct FilterToImage_Previews: PreviewProvider {
    static var previews: some View {
        FilterToImage()
    }
}
