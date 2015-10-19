import Foundation


enum StackError: ErrorType {
	case AwesomeContainerMissing
}

public class Stack {

	var containerIds : Int
	
    public init() {
		containerIds = 0
    }
	
	public func isEmpty() -> (Bool) {
		
		return 0 == containerIds
	}
	
	public func raise(containerId: Int) -> () {
		containerIds = containerId
	}
	
	public func lower() throws -> ()  {
		throw StackError.AwesomeContainerMissing
	}
}