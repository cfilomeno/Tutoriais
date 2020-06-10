import os
import math
import random

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from scipy import optimize, signal
from lmfit import models

xrd = pd.read_csv('LCCu1.txt', skipinitialspace=True, skiprows= 134)
xrd.dropna(axis=1, inplace = True)
xData = xrd['Angle']
yData = xrd['Det1Disc1']
plt.plot(xrd['Angle'], xrd['Det1Disc1'])
plt.show()