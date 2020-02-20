#!/usr/bin/python3
from os.path import getctime
import argparse
import subprocess


def runbin(name):
    subprocess.run(['./' + name])

parser = argparse.ArgumentParser()
parser.add_argument("name", help='filename to compile')
args = parser.parse_args()

srcname = args.name
binname = '.' + args.name + '.out'

if getctime(srcname) < getctime(binname):
    print("Run>>")
    runbin(binname)
    exit(0)

print('Compiling...')
s = subprocess.run([
    'g++', '-std=c++11', '-O2', '-Wall', srcname, '-o', binname
])

if s.returncode == 0:
    print("Compilation success>>")
    runbin(binname)
else:
    print("Compilation error<<")

