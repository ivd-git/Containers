import Foundation

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
}