import XCTest
import IDisposable
@testable import Using

class TestDisposable : IDisposable
{
	var onDispose: () -> ()
	init (_ onDispose: @escaping () -> ())
	{
		self.onDispose = onDispose
	}

	public func dispose()
	{
		self.onDispose()
	}
}

class UsingTests: XCTestCase
{
    func test() {
		var x: Int = 0
		let d = TestDisposable { x += 1 }
        XCTAssertEqual(x, 0)
		using (d) {
			x += 1
			XCTAssertEqual(x, 1)
		}
		XCTAssertEqual(x, 2)
    }


    static var allTests : [(String, (UsingTests) -> () throws -> Void)] {
        return [
            ("test", test),
        ]
    }
}
