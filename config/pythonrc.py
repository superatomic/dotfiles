#!/usr/bin/env python3
"""
pythonrc.py ($PYTHONSTARTUP)
Runs at python's interactive mode startup and provides convenient imports and functions.
"""
__author__ = 'Ethan Kinnear (https://github.com/superatomic)'

import sys, os, asyncio, time
from importlib import reload


def read_file(file_name, split_lines=False):
    """
    Convenience function when using python interactively.
    Used to get the contents of a file in a single line.

    :param str file_name: The path to the file to read.
    :param bool split_lines: If true, return a list of lines instead of one string.
    """
    with open(file_name) as file:
        if split_lines:
            return file.readlines()
        else:
            return file.read()


def _set_ps():
    """Set the default python prompts to include color."""
    sys.ps1 = '\N{ESC}[33m' + '>>> ' + '\N{ESC}[0m'
    sys.ps2 = '\N{ESC}[33m' + '... ' + '\N{ESC}[0m'


def _interactive_info():
    """Print all of the variables that have been made available."""
    namespace = ', '.join(
        name
        for name in globals()
        if not name.startswith('_')
    )
    print('\N{ESC}[36m' + 'Added variables: ' + namespace + '\N{ESC}[0m')


_interactive_info()
_set_ps()
