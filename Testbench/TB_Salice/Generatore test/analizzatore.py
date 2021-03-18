import json
from math import floor, log2


def findAll(source, value):
    indexes = []
    for i, x in enumerate(source):
        if value in x:
            indexes.append(i)
    return indexes


def analyzeTest():
    with open('test1.txt') as file:
        src = file.readlines()
    src = [s[:-1] for s in src if s != '\n']

    test_indexes = findAll(src, 'TEST')
    test_json = {
        'count': len(test_indexes),
        'passed': len(test_indexes),
        'failed': 0,
        'tests': []
    }
    for i in range(len(test_indexes)):
        idx = test_indexes[i]

        id = int(src[idx].split(' ')[-1])
        rows = int(src[idx+1].split(' ')[1])
        columns = int(src[idx+1].split(' ')[-1])

        if rows != 0 and columns != 0:
            image_idx = idx + 2
            if i < len(test_indexes)-1:
                solution_idx = src[idx:test_indexes[i+1]].index('Solution') + idx
                solution = [[int(s) for s in i.split() if s.isdigit()] for i in src[solution_idx + 1:test_indexes[i+1]]]
            else:
                solution_idx = src[idx:].index('Solution') + idx
                solution = [[int(s) for s in i.split() if s.isdigit()] for i in src[solution_idx + 1:]]
            image = [[int(s) for s in i.split() if s.isdigit()] for i in src[image_idx+1:solution_idx]]
            image = [item for sublist in image for item in sublist]
            solution = [item for sublist in solution for item in sublist]

            min_value = min(image)
            max_value = max(image)
            delta_value = max_value - min_value
            shift_level = 8 - floor(log2(delta_value + 1))
            shift_multiplier = pow(2, shift_level)
        else:
            image = []
            solution = []
            min_value = None
            max_value = None
            delta_value = None
            shift_level = None
            shift_multiplier = None

        test_json['tests'].append({
            'id': id,
            'passed': True,
            'dimensions': {
                'rows': rows,
                'columns': columns
            },
            'aggregate parameters': {
                'min value': min_value,
                'max value': max_value,
                'delta value': delta_value,
                'shift level': shift_level,
                'shift multiplier': shift_multiplier
            },
            # 'image': image,
            # 'solution': solution,
        })

    with open('ramNotPassed.txt') as file:
        src = file.readlines()
    src = [s[:-1].replace('TEST ', '').split(':') for s in src if s != '\n']

    last_id = 0
    failed_count = 0
    for s in src:
        if int(s[0]) != last_id:
            last_id = int(s[0])
            for test in test_json['tests']:
                if test['id'] == last_id:
                    test['passed'] = False
            failed_count += 1
    print(failed_count)
    test_json['passed'] -= failed_count
    test_json['failed'] += failed_count
    print(test_json['count'])

    with open('analysis.json', 'w') as outfile:
        json.dump(test_json, outfile, indent=2)





def analyzeNotPassed(filename):
    pass


analyzeTest()
