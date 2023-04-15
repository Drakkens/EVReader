import binascii
import threading
import sys
import codecs

from scapy.all import *

conf.sniff_promisc = 0
isRunning = True


def tick_packet(data):
    # print(f'{time.time()}: {data.hex()}')

    # idk = (struct.unpack("?", data[2:3]))[0]
    # print(f'{data[2:3]:} {idk}')
    #
    # random_number = struct.unpack("I", data[3:7])[0]
    # print(random_number)
    pass


def noop_packet(data):
    packet_id = (struct.unpack('>H', data[0:2])[0])
    print(f'Unknown Packet! {packet_id}: {data[2:].hex()}')
    pass


def packet_test(data):
    length = struct.unpack("H", data[2:4])[0]
    print(length)

def ignore(data):
    pass


packet_handlers = {
    # 0x2e: tick_packet,  # ID = Server Number to Hex
    # 0x01: noop_packet,
    # 0x39: ignore
}


def process_packet(received_packet):
    packet_data = received_packet[UDP].load
    # print(f'{datetime.now()}: {packet_data}')

    packet_id = (struct.unpack('>H', packet_data[0:2])[0])
    packet_handlers.get(packet_id, noop_packet)(packet_data)


packets = sniff(iface=r"\Device\NPF_{5340879B-61BF-4E41-9FD8-E3842DBCB698}", filter="udp and src host 198.252.160.100",
                prn=process_packet)

# for packet in sniff_packets():
#     print(bytes(packet[UDP].payload))
