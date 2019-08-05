from __future__ import (absolute_import, division, print_function)

import os

from ranger.api.commands import Command

class fasd(Command):
    """
    :fasd
    Jump to directory using fasd
    """
    def execute(self):
        import subprocess
        arg = self.rest(1)
        if arg:
            directory = subprocess.check_output(["fasd", "-d"]+arg.split(), universal_newlines=True).strip()
            self.fm.cd(directory)
