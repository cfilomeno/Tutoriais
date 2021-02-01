import math
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
# get_ipython().run_line_magic('matplotlib', 'inline')
from scipy.optimize import curve_fit

df = pd.read_csv('Cu2', skipinitialspace=True)
df.dropna(axis=1, inplace=True)


def pvoigt(x, A, mu, sigma, alpha, K):
    sigmag=sigma*math.sqrt(2*math.log(2))
    return ((1-alpha)*A/(sigmag*math.sqrt(2*math.pi))) * (np.exp(-(x-mu)**2 / (2*sigmag**2))) + (alpha*A/math.pi)*(sigma/((x - mu)**2 + sigma**2)) + K


def gauss(x, A, mu, sigma, K):
    return (A / (sigma * math.sqrt(2 * math.pi)) * np.exp(-(x-mu)**2 / (2*sigma**2)))+K


fig, ax = plt.subplots()
ax.plot(df['Angle'], gauss(df['Angle'], 911.575, 35.566, 0.497, 210.500), color='g', label='gauss')

ax.plot(df['Angle'], pvoigt(df['Angle'], 1508.265, 35.565, 0.564, 1.103, 149.717), color='r', label='pvoigt')
plt.scatter(df['Angle'], df['Int'], alpha=0.5, marker='x' )
plt.legend()

df['Angle'].describe()

guess = [max(df['Int']), np.mean(df['Angle']), 0.5, 0, min(df['Int'])]

n = len(df['Angle'])
y = np.empty(n)

for i in range(n):
    y[i] = pvoigt(df['Angle'][i], guess[0], guess[1], guess[2], guess[3], guess[4])

plt.scatter(df['Angle'], df['Int'])
plt.plot(df['Angle'], y, 'r')

a = df['Angle'].values
s = df['Int'].values
c, cov = curve_fit(pvoigt, a, s, guess)
# print(c)

for i in range(n):
    y[i] = pvoigt(df['Angle'][i], c[0], c[1], c[2], c[3], c[4])

plt.scatter(df['Angle'], df['Int'], alpha=0.5, color='black')
plt.plot(df['Angle'], y, 'r')

print(f'Amplitude: {c[0]:3.3f},\n Média mu: {c[1]:3.3f},\n Sigma: {c[2]:3.3f},\n Alpha: {c[3]:3.3f},\n K (offset): {c[4]:3.3f}')


from sklearn.metrics import r2_score
print('R2: ', r2_score(y, s))

print(n)


print(581-141)
plt.show()

