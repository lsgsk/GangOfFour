import Foundation

let connection = TCPConnection(state: TCPClosed.instance)
connection.activeOpen()
connection.synchronize()
connection.close()
