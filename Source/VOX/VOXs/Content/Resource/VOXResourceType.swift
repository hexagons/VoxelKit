
public enum VOXResourceType: String, Codable, Hashable, CaseIterable, Identifiable {
    
    public var id: String { rawValue }
    
    case object
    
    public var name: String {
        switch self {
        case .object:
            return "Object"
        }
    }
    
    public var type: VOXResource.Type {
        switch self {
        case .object:
            return ObjectVOX.self
        }
    }
    
}
