#!/bin/bash
cat /home/end/.cache/xfce4/clipman/textsrc | tr ";" "\n" > /home/end/clipman.txt && kate /home/end/clipman.txt
