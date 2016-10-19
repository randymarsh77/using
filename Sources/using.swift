import IDisposable

public func using(_ disposable: IDisposable, closure: () -> ())
{
	closure()
	disposable.dispose()
}

public func using(_ disposable: IDisposable, closure: () throws -> ())
{
	defer { disposable.dispose() }
	try? closure()
}
