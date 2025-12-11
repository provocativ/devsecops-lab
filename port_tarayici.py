import socket
import sys

hedef = "scanme.nmap.org" 
print("-" * 50)
print(f"Hedef Taranıyor: {hedef}")
print("-" * 50)

try:
    for port in range(20, 85): 
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        s.settimeout(0.5)
        sonuc = s.connect_ex((hedef, port))
        if sonuc == 0:
            print(f"Port {port} AÇIK!")
        s.close()
except:
    sys.exit()
print("-" * 50)
print("Tarama Bitti.")
