import Quick
import Nimble
import Containers

class StackTests: QuickSpec {

    override func spec() {

        describe("stack") {
			
			var stack : Stack!
			
			beforeEach {
				stack = Stack()
			}
			

            it("can be created") {
                expect(Stack()).toNot(beNil())
            }
			
			it("should be empty") {
				expect(Stack().isEmpty()).to(beTrue())
			}
			
			it("with raised container on the top should not be empty") {
				let containerId = 1
				stack.raise(containerId)
				
				expect(stack.isEmpty()).to(beFalse())
			}
			
			it("with no containers throws exception on lower") {
				expect{ try stack.lower()}.to(throwError());
			}
			
			it("should return the raised container id on lower") {
				let containerId = 1;
				stack.raise(containerId)
				expect{ try stack.lower() }.to(equal(containerId))
			}

        }
    }
}