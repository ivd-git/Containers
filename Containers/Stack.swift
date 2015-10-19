import Foundation


public enum StackError: ErrorType {
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
	
	public func lower() throws -> (Int)  {
		if (!isEmpty()) {
			let id = containerIds
			containerIds = 0
			return id
		}
		
		throw StackError.AwesomeContainerMissing
	}
}