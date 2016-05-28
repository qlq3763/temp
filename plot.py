import matplotlib.pyplot as plt
import math

ns = []
ts = []
for line in open('data').read().split('\n'):
    if line == '': break
    strn, strt = line.split()
    ns.append(int(strn))
    ts.append(float(strt))

ts = [math.sqrt(x) for x in ts]

plt.xlabel("Size")
plt.ylabel("Time(ticks)")
plt.xticks(ns)
plt.yticks(ts)

plt.plot(ns, ts)
plt.show()
