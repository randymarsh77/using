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

public func using<T: IDisposable>(_ disposable: IDisposable, closure: (_ arg: T) -> ())
{
	closure(disposable as! T)
	disposable.dispose()
}

public func using<T: IDisposable>(_ disposable: IDisposable, closure: (_ arg: T) throws -> ())
{
	defer { disposable.dispose() }
	try? closure(disposable as! T)
}
