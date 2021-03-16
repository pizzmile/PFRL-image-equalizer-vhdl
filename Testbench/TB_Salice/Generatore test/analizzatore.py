import json
from math import floor, log2


def findAll(source, value):
    indexes = []
    for i, x in enumerate(source):
        if value in x:
            indexes.append(i)
    return indexes


src = None

filename = input('Enter a filename: ')

with open(filename, 'r') as file:
    src = file.readlines()

idx = findAll(src, 'TEST:')

substr = []
for i in range(len(idx)):
    substr.append(src[idx[i - 1]:idx[i]])
substr = substr[1:]

jsons = []
for s in substr:
    dimensions = [int(x) for x in s[1][:-1].replace('Rows: ', '').replace('Columns: ', '').split('    ')]
    image = []
    for x in s[s.index('Image\n') + 1: s.index('Solution\n') - 1]:
        image.append([int(y) for y in x.split() if y.isdigit()])
    # solution = []
    # for x in s[s.index('Solution\n')+1:]:
    #     solution.append([int(y) for y in x.split() if y.isdigit()])
    min_value = 255
    max_value = 0
    for x in image:
        for y in x:
            if y > max_value:
                max_value = y
            if y < min_value:
                min_value = y
    delta_value = abs(max_value - min_value)
    shift_level = 8 - floor(log2(delta_value + 1))

    test_json = {
        'title': s[0][:-1],
        'dimensions': {
            'rows': dimensions[0],
            'columns': dimensions[1]
        },
        # 'image': image,
        # 'solution': solution,
        'values': {
            'min_value': min_value,
            'max_value': max_value,
            'delta_value': delta_value,
            'shift_level': shift_level
        }
    }
    jsons.append(test_json)

with open(f'analysis_{filename[:filename.index(".")]}.json', 'w') as outfile:
    json.dump(jsons, outfile, indent=2)
