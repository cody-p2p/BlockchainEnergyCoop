import socket

# Create a socket
sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

# Bind the socket to a specific address and port
sock.bind(("localhost", 8080))

# Listen for incoming connections
sock.listen(1)

print("Server listening on port 8080...")

while True:
    # Accept an incoming connection
    conn, addr = sock.accept()
    print("Connected by", addr)

    # Receive data from the client
    data = conn.recv(1024)
    print("Received data:", data)

    # Send data back to the client
    conn.sendall(b"Hello, client!")

    # Close the connection
    conn.close()
