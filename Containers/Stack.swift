import Foundation


public enum StackError: ErrorType {
	case AwesomeContainerMissing
}

public class Stack {
	
	var containers : [Int]
	
    public init() {
		containers = [Int]()
    }
	
	public func isEmpty() -> (Bool) {
		return containers.isEmpty
	}
	
	public func raise(containerId: Int) -> () {
		containers.append(containerId)
	}
	
	public func lower() throws -> (Int)  {
		if (isEmpty()) {
		    throw StackError.AwesomeContainerMissing
		}
		
		return containers.removeLast()
	}
}