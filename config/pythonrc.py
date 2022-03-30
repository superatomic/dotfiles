#!/usr/bin/env python3
"""
pythonrc.py ($PYTHONSTARTUP)
Runs at python's interactive mode startup and provides convenient imports and functions.
"""
__author__ = 'Ethan Kinnear (https://github.com/superatomic)'

import sys, os, asyncio, time, itertools, functools, inspect
from importlib import reload
from contextlib import suppress
from time import sleep


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


def await_(coroutine):
    """Runs an coroutine, for use in debugging asynchronous functions."""
    return asyncio.run(awaitable, debug=True)


def _set_ps():
    """Set the default python prompts to include color."""
    sys.ps1 = '\N{ESC}[33m' + '>>> ' + '\N{ESC}[0m'
    sys.ps2 = '\N{ESC}[33m' + '... ' + '\N{ESC}[0m'


def _print_python_version():
    """Print the python version info from `sys.version`."""
    print('\N{ESC}[90m' + sys.version + '\N{ESC}[0m')


def _print_interactive_info():
    """Print all of the variables that have been made available."""
    namespace = {
       name: value
        for name, value in globals().items()
        if not name.startswith('_')
    }
    modules_namespace = ', '.join(name for name, value in namespace.items() if inspect.ismodule(value))
    other_namespace = ', '.join(name for name, value in namespace.items() if callable(value))
    print('\N{ESC}[36m' + 'Imported modules: ' + modules_namespace + '\N{ESC}[0m')
    print('\N{ESC}[36m' + 'Added functions: ' + other_namespace + '\N{ESC}[0m')


def _set_python_history_home():
    """
    Changes the location of python history from "~/.python_history" to "$XDG_STATE_HOME/python_history".
    "$XDG_STATE_HOME/python_history" normally expands to "~/.local/state/python_history".
    """
    # HUGE thanks to https://unix.stackexchange.com/questions/630642/ for info on what to change.

    from readline import read_history_file, write_history_file
    from atexit import register

    default_xdg_state_home = os.path.expanduser('~/.local/state')
    history_file = os.path.join(os.getenv('XDG_STATE_HOME', default=default_xdg_state_home), 'python_history')

    # Read Setup
    try:
        read_history_file(history_file)
    except OSError:
        print('\N{ESC}[31m' + f'OSError: Could not load {history_file}' + '\N{ESC}[0m')
        info_message = (
            'If this is your first time launching Python interactively,\n'
            'history_file should be created at the next save.\n'
        )
        print('\N{ESC}[35m' + info_message + '\N{ESC}[0m')

    # Write Setup
    def write_history_file_atexit_hook():
        try:
            write_history_file(history_file)
        except OSError:
            print('\N{ESC}[31m' + f'OSError: Could not save to {history_file}' + '\N{ESC}[0m')
    register(write_history_file_atexit_hook)


_set_python_history_home()
_set_ps()

_print_python_version()
_print_interactive_info()
