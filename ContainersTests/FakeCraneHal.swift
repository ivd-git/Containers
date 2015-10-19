import Foundation
import Containers


public class FakeCraneHal : CraneHal {
	public var raiseCalled : Bool
	
	public init() {
		raiseCalled = false
	}
	
	public func raise(containerId: Int) -> () {
		raiseCalled = true
	}
	
	public func lower() -> Int {
		return -1
	}
	
}