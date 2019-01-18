#!/usr/bin/env python

import os 
import sys
import yaml

def exporting(env):
    f = "config/" + env + "/config.yaml"
    with open(f, 'r') as stream:
        try:
            yfile = yaml.load(stream)
            data = yfile['data']
            for k,v in data.items():
                line = 'echo export {}={} >> /tmp/.bashrc'.format(k.upper(),v)
                os.system(line)
        except yaml.YAMLError as exc:
            print(exc)


def main():
    env = sys.argv[1]
    exporting(env)
if __name__ == '__main__':
  main()