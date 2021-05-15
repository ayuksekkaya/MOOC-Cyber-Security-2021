#!/usr/bin/env python3
import sys
import socket


def get_accessible_ports(address, min_port, max_port):
    found_ports = []
    # write code here

    s = socket.socket()

    for port_number in range(min_port, max_port + 1):
        if s.connect_ex((address, port_number)) == 0:
            found_ports.append(port_number)

    return found_ports


def main(argv):
    address = sys.argv[1]
    min_port = int(sys.argv[2])
    max_port = int(sys.argv[3])
    ports = get_accessible_ports(address, min_port, max_port)
    for p in ports:
        s = socket.socket()
        s.connect((address, p))
        print(s.recv(1024))


# This makes sure the main function is not called immediatedly
# when TMC imports this module
if __name__ == "__main__":
    if len(sys.argv) != 4:
        print('usage: python %s address min_port max_port' % sys.argv[0])
    else:
        main(sys.argv)
