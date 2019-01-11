#!/usr/bin/env python

import os 
import yaml

with open("kube/config.yaml", 'r') as stream:
    try:
        yfile = yaml.load(stream)
        data = yfile['data']
        for k,v in data.items():
            line = 'echo export {}={} >> /tmp/.bashrc'.format(k,v)
            os.system(line)
    except yaml.YAMLError as exc:
        print(exc)