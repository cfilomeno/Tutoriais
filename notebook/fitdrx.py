import pandas as pd
import matplotlib.pyplot as plt

xrd = pd.read_csv('LCCu1.txt', skipinitialspace=True, skiprows=134)
xrd.dropna(axis=1, inplace=True)

fig, ax = plt.subplots()
ax.plot(xrd['Angle'], xrd['Det1Disc1'], label='experimental data')
plt.legend()
plt.show()

