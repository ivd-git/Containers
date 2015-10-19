import Quick
import Nimble
import Containers

class CraneTests: QuickSpec {
	override func spec() {
		describe("crane") {
			it("should raise the crane") {
				let containerId = 1
				let craneHal = FakeCraneHal()
				let crane = Crane(usingHal: craneHal)
				
				crane.raise(containerId)
				
				expect(craneHal.raiseCalled).to(beTrue())
			}
		}
	}
}