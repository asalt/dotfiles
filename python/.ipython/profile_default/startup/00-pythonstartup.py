import sys
import os
import re

try:
    import numpy as np
    import pandas as pd
    import matplotlib.pyplot as plt
    import matplotlib as mpl
    import seaborn as sb
except ImportError:
    pass
try:
    from bcmproteomics_ext import ispec, wrangler
except ImportError:
    pass

def _plotting(context='talk', style='white', palette='muted', **kwargs):
    """Has matplotlib use LaTeX for for graphing and sets some defaults
    for colors and layout:
    Uses seaborn palette, context, and color codes, which can be
    changed if desired.
    """
    plt.rc('font',**{'family':'sans-serif','sans-serif':['Helvetica']})
    plt.rc('text', usetex=True)
    sb.set_context(context)
    sb.set_style(style)
    sb.set_palette(palette)
    sb.set_color_codes()
    mpl.rcParams['figure.max_open_warning'] = 0

def _pandas(width=None, max_rows=None, max_cols=0, max_colwidth=75, **kwargs):
    """
    Changes pandas default display parameters.
    """
    pd.set_option(
        "display.width", None,
        #"display.max_rows", max_rows,
        "display.max_columns", 500,
        # "display.max_colwidth", max_colwidth
                )
try:
    _plotting()
    _pandas()
except Exception as e:
    pass

del _plotting
del _pandas
