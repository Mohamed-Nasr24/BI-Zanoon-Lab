
def remove_q(text):
    t = list(text)
    for i in range(len(t)):
        if t[i] == '"':
            for k in range(1, 4):
                if t[i + k] == '"': t[i + k] = " "
    return "".join(t)


def remove_comm(text):
    res = ""
    for line in text:
        f = list(line)
        flag = 0
        for i in range(len(f)):
            if f[i] == '"':
                flag += 1
                while f[i + 1] != '"':
                    if f[i + 1] == ',': f[i + 1] = " "
                    i += 1
                    if flag == 2: break
        res += "".join(f)
    return res

with open('test_2.csv', 'a') as f:
    f.write(remove_q(open('test.csv').read()))


with open('test_3.csv', 'a') as f:
    f.write(remove_comm(open('test_2.csv').readlines()))
