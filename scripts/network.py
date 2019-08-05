import argparse
import os
import sys

parser = argparse.ArgumentParser()

parser.add_argument("-e", help="return essid", type=str)
parser.add_argument("-s", help="return signal strength", type=str)

string = str(os.system("iwconfig"))

print(string)

#print( string.find("=") )
