import sys
import os
import re
proceed = True

if not sys.executable.lower().endswith('virtualenvs/py35/bin/python3.5'):
    proceed = False
if proceed:
    import matplotlib as mpl

    mpl.use("pgf")
    pgf_with_pdflatex = {
        "pgf.texsystem": "xelatex",
        "pgf.preamble": [
            # r"\usepackage[utf8x]{inputenc}",
            # r"\usepackage[T1]{fontenc}",
            r"\usepackage{cmbright}",
            ]
    }
    mpl.rcParams.update(pgf_with_pdflatex)


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
    # plt.rc('text', usetex=True)
    plt.rc('text', usetex=False)  # explicitly change to True when desired
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
