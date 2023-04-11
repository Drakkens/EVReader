import socket
import json

HOST = '127.0.0.1'
PORT = 55463


class Connection:
    socket = None
    data = {'itemName': 'Test',
            'itemLevel': 1234,
            'x0': 1, 'y0': 2, 'x1': 3, 'y1': 4
            }
    json_data = json.dumps(data)

    def __init__(self):
        self.socket = socket.socket()
        self.socket.connect((HOST, PORT))
        
        
        # ToDo: Send data when tooltips found (Needs JSON encoding for all tooltips data, WIP).
        self.socket.sendall(self.json_data.encode('utf-8'))


Connection()
