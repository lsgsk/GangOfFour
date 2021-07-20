import Foundation

let pool = Pool<String>(["a", "b", "c"])

let a = pool.acquire()
print("\(a ?? "n/a") acquired")
let b = pool.acquire()
print("\(b ?? "n/a") acquired")
let c = pool.acquire()
print("\(c ?? "n/a") acquired")

DispatchQueue.global(qos: .default).asyncAfter(deadline: .now() + .seconds(2)) {
	if let item = b {
		pool.release(item)
	}
}

print("No more resource in the pool, blocking thread until...")
let x = pool.acquire()
print("\(x ?? "n/a") acquired again")

