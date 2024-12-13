"""OLD Formulas Module"""

import math

ALPHA = list("0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ")


def dec_to_bin(nbr, nbits=0):
    binary_repr = []
    abs(nbr)
    while nbr > 0:
        if nbr % 2 == 0:
            binary_repr.insert(0, 0)
        else:
            binary_repr.insert(0, 1)
        nbr //= 2
    while nbits > len(binary_repr):
        binary_repr.insert(0, 0)
    return binary_repr


def bin_to_dec(binary_repr):
    result = 0
    size = len(binary_repr)
    while len(binary_repr) > 0:
        result += (2 ** (size - len(binary_repr))) * binary_repr.pop()
    return result


def bit_fort(nbr, x):
    i = 0
    while True:
        if nbr <= (x**i) - 1:
            return i
        i += 1


def x_to_dec(rep, base):
    """takes a string representing a number in any base and return the number in decimal"""
    nbr = 0
    repr_index = str_to_list(rep)
    for i, actu in enumerate(repr_index):
        if actu >= base:
            return "overflow"
        nbr += repr_index[-i - 1] * base**i
    return nbr


def dec_to_y(nbr, x):
    val_actu = nbr
    bitfort = bit_fort(val_actu, x)
    oui = []
    for j in range(1, bitfort + 1):
        for i in range(x - 1, -1, -1):
            if (val_actu - (i * x ** (bitfort - j))) >= 0:
                oui.append(ALPHA[i])
                val_actu -= i * x ** (bitfort - j)
                break
    return oui


def x_to_y(nbr, x, y):
    nbr = str(nbr)
    return dec_to_y(x_to_dec(nbr, x), y)


def virgule(nbr, nbr_bits=11):
    binary_rep = []
    nbr -= int(nbr)
    for _ in range(nbr_bits):
        nbr *= 2
        if nbr >= 1:
            binary_rep.append(1)
            nbr -= 1
        else:
            binary_rep.append(0)
    return binary_rep


def half_float(nbr_dec):
    hf_final = [0 for i in range(16)]
    if nbr_dec < 0:
        hf_final[0] = 1
        nbr_dec *= -1
    binary_repr = dec_to_bin(int(nbr_dec))
    rBin_unsigned = binary_repr[1:]
    exponent = 15 + len(rBin_unsigned)
    exponent_bits = dec_to_bin(exponent, 5)
    for i in range(len(rBin_unsigned)):
        if i >= 10:
            break
        hf_final[i + 6] = rBin_unsigned[i]
    for i in range(5):
        hf_final[i + 1] = exponent_bits[i]
    vir = virgule(nbr_dec)
    for i in range(10 - len(rBin_unsigned)):
        if i >= 0:
            hf_final[i + 6 + len(rBin_unsigned)] = vir[i]
        else:
            break
    return hf_final


def float_format(nbr_dec, tot=32, mantisse=23):
    hf_final = [0 for i in range(tot)]
    if nbr_dec < 0:
        hf_final[0] = 1
        nbr_dec *= -1
    binary_repr = dec_to_bin(int(nbr_dec))
    rBin_unsigned = binary_repr[1:]
    for i in range(len(rBin_unsigned)):
        if i >= mantisse:
            break
        hf_final[i + (tot - mantisse)] = rBin_unsigned[i]
    n = dec_to_bin(127 + (len(rBin_unsigned)), tot - mantisse - 1)
    for i in range(tot - mantisse - 1):
        hf_final[i + 1] = n[i]
    vir = virgule(nbr_dec, mantisse)
    for i in range(mantisse - len(rBin_unsigned)):
        if i >= 0:
            hf_final[i + (tot - mantisse) + len(rBin_unsigned)] = vir[i]
        else:
            break
    return hf_final


def half_float_to_dec(binary_repr):
    sign = -1 if binary_repr[0] == 1 else 1
    exponent = bin_to_dec(binary_repr[1:6]) - 15
    mantissa = 1 + bin_to_virgule(binary_repr[6:])
    return sign * mantissa * (2**exponent)


def bin_to_virgule(binary_repr):
    nbr = 0
    for i in range(len(binary_repr)):
        try:
            nbr += 1 / (binary_repr[i] * 2 ** (i + 1))
        except:
            continue
    return nbr


def pribi(binary):
    slices = []

    if len(binary) % 4 != 0:
        for _ in range(4 - (len(binary) % 4)):
            binary.insert(0, "0")

    for step in range(int(len(binary) / 4)):
        slices.append("".join(binary[step * 4 : (step + 1) * 4]))

    return " ".join(slices)


def str_to_list(entry):
    """takes a string representing a number in any base and returns a list of each of its digits
    from the integer part only"""
    entry = entry.split(".")[0]
    return list(map(ALPHA.index, entry.upper()))


if __name__ == "__main__":
    # for i in range(10):
    #     j=random.randint(1,2000)
    #     if dec_to_bin(j)!=x_to_y(j,10,2):
    #         print("chef", j)
    # print(dec_to_bin(1005))
    # print(x_to_y(1005,10,2))
    # print("fini")
    print(half_float(120.55))
