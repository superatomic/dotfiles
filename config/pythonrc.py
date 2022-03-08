#!/usr/bin/env python3
import sys, os, asyncio, time
from importlib import reload


def read_file(file_name, split_lines=False):
    """
    Convenience function when using python interactively.
    Used to get the contents of a file in a single line.
    """
    with open(file_name) as file:
        if split_lines:
            return file.readlines()
        else:
            return file.read()


def _set_ps():
    sys.ps1 = '\N{ESC}[33m' + '>>> ' + '\N{ESC}[0m'
    sys.ps2 = '\N{ESC}[33m' + '... ' + '\N{ESC}[0m'

def _interactive_info():
    """
    Print all of the variables that have been made available.
    """
    namespace = ', '.join(
        name
        for name in globals()
        if not name.startswith('_')
    )
    print('\N{ESC}[36m' + 'Added variables: ' + namespace + '\N{ESC}[0m')


_interactive_info()
_set_ps()
