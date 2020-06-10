import os
import math
import random

import inline as inline
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from scipy import optimize, signal
from lmfit import models
from werkzeug.utils import secure_filename

image = 'fig'


def save_image_plot(fig1, figure_name):
    filename = os.path.expanduser(f'{image}')
    fig1.savefig(filename)
    return filename


xrd = pd.read_csv('LCCu1.txt', skipinitialspace=True, skiprows=134)
xrd.dropna(axis=1, inplace=True)

fig, ax = plt.subplots()
ax.plot(xrd['Angle'], xrd['Det1Disc1'])
save_image_plot(fig, 'xrd-LCCu1.png')

