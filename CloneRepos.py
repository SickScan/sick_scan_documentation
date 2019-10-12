#!/usr/bin/env python3
# This file is derived from the work of
# Francesco Conti <f.conti@unibo.it>
# https://github.com/pulp-platform/bigpulp/blob/master/ipstools_cfg.py

#REPOSITORY = "https://github.com/kaidoho/Generator.git"
#CHECKOUT_DIR = '../src/generator'
#COMMIT = '' #leave this blank to checkout HEAD



import sys,os,subprocess

class tcolors:
    OK      = '\033[92m'
    WARNING = '\033[93m'
    ERROR   = '\033[91m'
    ENDC    = '\033[0m'

def execute(cmd, silent=False):
    if silent:
        devnull = open(os.devnull, 'wb')
        stdout = devnull
    else:
        stdout = None
    ret = subprocess.call(cmd.split(), stdout=stdout)
    if silent:
        devnull.close()
    return ret

def execute_out(cmd, silent=False):
    p = subprocess.Popen(cmd.split(), stdout=subprocess.PIPE)
    out, err = p.communicate()
    return out

def checkout(repository, commit, checkoutDir):
  if not os.path.exists(checkoutDir):
      execute("git clone {} {}".format(repository, checkoutDir))
  elif not os.path.isdir(checkoutDir):
      sys.exit("Error: '{}' exists but is not a directory!".format(checkoutDir))
  cwd = os.getcwd()
  os.chdir(checkoutDir)
  execute("git fetch --all", silent=True)
  if 0 != len(commit):
      execute("git checkout {}".format(commit))

  os.chdir(cwd)


if __name__ == "__main__":

  checkout("https://github.com/SickScan/sick_scan_base.git", "",         "src/sick_scan_base")
  checkout("https://github.com/SickScan/sick_scan_base_examples.git", "", "src/sick_scan_base_examples")
  

