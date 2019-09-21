import Foundation

class FileReader {
    private(set) var test = 0
    
    init() {
        self.test = 10
    }
    
    static func read(fileName: String) -> String? {
        let fileManager = FileManager.default
        
        let currentDirectoryURL = URL(fileURLWithPath: fileManager.currentDirectoryPath)
        
        let fileURL = currentDirectoryURL.appendingPathComponent(fileName, isDirectory: false)
        
        return try? String(contentsOf: fileURL, encoding: .utf8)
    }
}
