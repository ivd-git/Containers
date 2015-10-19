import Quick
import Nimble
import Containers

class StackTests: QuickSpec {

    override func spec() {

        describe("stack") {

            it("can be created") {
                expect(Stack()).toNot(beNil())
            }
			
			it("should be empty") {
				expect(Stack().isEmpty()).to(beTrue())
			}
			
			it("with raised container on the top should not be empty") {
				var containerId = 1
				var stack = Stack()
				stack.raise(containerId)
				
				expect(stack.isEmpty()).to(beFalse())
			}

        }
    }
}