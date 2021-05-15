
if __name__ == "__main__":
    import socket

    s = socket.socket()
    data = ''
    for port in range(20050, 20150 + 1):
        if s.connect_ex(('localhost', port)) == 0:
            data = s.recv(1024)

    print(data)
