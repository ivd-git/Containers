import Foundation

public class Crane {
	let craneHal : CraneHal
	
	public init(usingHal hal : CraneHal) {
		craneHal = hal
	}
	
	public func raise(containerId : Int) -> () {
		craneHal.raise(containerId)
	}
}