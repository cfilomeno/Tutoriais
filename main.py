import os
import math
import random

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from scipy import optimize, signal
from lmfit import models


def g(x,A,μ,σ):
    return A / (σ * math.sqrt(2 * math.pi)) * np.exp(-(x-μ)**2 / (2*σ**2))


x = np.linspace(-3, 3, 1000)
fig, ax = plt.subplots()
# ax.plot(x, g(x, 1, 0, 1))


def f(x):
    return np.exp(-(x-2)**2) + np.exp(-(x-6)**2/10) + 1/(x**2 + 1)


x = np.linspace(-2, 10, 1000)
fig, ax = plt.subplots()
# ax.plot(x, -f(x))


A = 100.0 # intensity
μ = 4.0  # mean
σ = 4.0 # peak width
n = 200
x = np.linspace(-10, 10, n)
y = g(x, A, μ, σ) + np.random.randn(n)

fig, ax = plt.subplots()
ax.scatter(x, y, s=2)


def cost(parameters):
    a, b, c = parameters
    # y has been calculated in previous snippet
    return np.sum(np.power(g(x, a, b, c) - y, 2)) / len(x)


result = optimize.minimize(cost, [0, 0, 1])
print('steps', result.nit, result.fun)
print(f'amplitude: {result.x[0]:3.3f} mean: {result.x[1]:3.3f} sigma: {result.x[2]:3.3f}')


g_0 = [250.0, 4.0, 5.0]
n = 150
x = np.linspace(-10, 10, n)
y = g(x, *g_0) + np.random.randn(n)

fig, ax = plt.subplots()
ax.scatter(x, y, s=1)
ax.plot(x, g(x, *g_0))
plt.show()

# g_0 = [250.0, 4.0, 5.0]
# g_1 = [20.0, -5.0, 1.0]
# n = 150
# x = np.linspace(-10, 10, n)
# y = g(x, *g_0) + g(x, *g_1) + np.random.randn(n)
#
# fig, ax = plt.subplots()
# ax.scatter(x, y, s=1)
# ax.plot(x, g(x, *g_0))
# ax.plot(x, g(x, *g_1))
# plt.show()

