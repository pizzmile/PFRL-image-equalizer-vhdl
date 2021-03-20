from PIL import Image
import numpy as np
from math import sqrt

inputfile = '.txt'

with open(inputfile) as infile:
    src = infile.readlines()

src = [int(s) for s in src.split(',')]

w, h = sqrt(len(src)), sqrt(len(src))

data = np.zeros((h, w, 3), dtype=np.uint8)

for y in h:
    for x in w:
        data[x, y] = [src[x*y], src[x*y], src[x*y]]

# data[0:500, 0:500] = [0, 0, 0] # pixel 0
# data[0:500, 500:1000] = [255, 255, 255] # pixel 0
# data[500:1000, 0:500] = [114, 114, 114] # pixel 0
# data[500:1000, 500:1000] = [228, 228, 228] # pixel 0
img = Image.fromarray(data, 'RGB')
img.save('esempio_in.png')
img.show()
