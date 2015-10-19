import Foundation

public protocol CraneHal {
	func raise(containerId : Int) -> ()
	func lower() -> Int
}