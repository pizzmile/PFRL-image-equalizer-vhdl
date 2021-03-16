import json
from math import floor, log2


def findAll(source, value):
    indexes = []
    for i, x in enumerate(source):
        if value in x:
            indexes.append(i)
    return indexes


def analyzeTest(filename):
    with open(filename, 'r') as file:
        src = file.readlines()

    idx = findAll(src, 'TEST:')

    substr = []
    for i in range(len(idx)):
        substr.append(src[idx[i - 1]:idx[i]])
    substr = substr[1:]

    jsons = {'count': 0,
             'passed': 0,
             'failed': 0,
             'failed_tests': [],
             'tests': []}
    for s in substr:
        dimensions = [int(x) for x in s[1][:-1].replace('Rows: ', '').replace('Columns: ', '').split('    ')]
        image = []
        image_origin = s[s.index('Image\n') + 1: s.index('Solution\n') - 1]
        for pixels in image_origin:
            pixels = [int(pixel) for pixel in pixels.split() if pixel.isdigit()]
            image += pixels

        solution = []
        solution_origin = s[s.index('Solution\n')+1:]
        for pixels in solution_origin:
            pixels = [int(pixel) for pixel in pixels.split() if pixel.isdigit()]
            solution += pixels

        min_value = 255
        max_value = 0
        for pixel in image:
            if pixel > max_value:
                max_value = pixel
            if pixel < min_value:
                min_value = pixel
        delta_value = abs(max_value - min_value)
        shift_level = 8 - floor(log2(delta_value + 1))

        test_json = {
            'title': s[0][:-1],
            'passed': True,
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
        jsons['tests'].append(test_json)

    jsons['count'] = len(jsons['tests']) + 1
    jsons['passed'] = jsons['count']

    with open(test_json_filename, 'w') as outfile:
        json.dump(jsons, outfile, indent=2)


def analyzeNotPassed(filename):
    with open(test_json_filename) as file:
        test_json = json.load(file)

    with open(filename, 'r') as file:
        src = file.readlines()
    src = [s[:-1].split(": ") for s in src]
    for sub in src:
        sub[0] = int(sub[0].replace('TEST ', ''))
        sub[1] = [int(s) for s in sub[1].replace('pixel ', '').replace('expected ', '').replace('found ', '').split(' ')]
        sub += sub[1]
        del sub[1]

    last = 0
    failed_count = 0
    for sub in src:
        if sub[0] != last:
            failed_count += 1
            last = sub[0]
            test_json['failed_tests'].append(sub[0])
            test_json['tests'][last-1]['passed'] = False

    test_json['passed'] -= failed_count
    test_json['failed'] = failed_count

    with open(test_json_filename, 'w') as outfile:
        json.dump(test_json, outfile, indent=2)

src = None

test_filename = 'test1.txt'
test_json_filename = f'analysis_{test_filename[:test_filename.index(".")]}.json'
# input('Enter a filename: ')
notPassed_filename = 'ramNotPassed.txt'

analyzeTest(test_filename)
analyzeNotPassed(notPassed_filename)
