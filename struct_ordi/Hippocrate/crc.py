import formulas

"""
entry2 = input("quelle est la base du message ?")
entry1 = input("entrez le message sans le 0x/0o")
CLEF = input("entrez la clé en binaire")
"""

entry2 =16
entry1 ="3E0C4"
CLEF = "110010100"


msg = formulas.base_x_to_base_y(entry1, int(entry2), 2)
msg = [int(i) for i in msg]
CLEF = [int(i) for i in CLEF]
max_size = len(msg)

for i, data in enumerate(msg):
    if data == 1 and i < max_size:
        for j, data2 in enumerate(CLEF):
            if i + j < len(msg):
                msg[i + j] = int(data2 != msg[i+j])
            elif len(msg[max_size:]) < len(CLEF) - 1:
                msg.append(int(data2 != 0))



print(msg[max_size:], "--->", formulas.base_x_to_base_y("".join(map(str ,msg[max_size:])), 2, 16))