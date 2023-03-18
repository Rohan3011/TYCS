
# Edit Distance

import numpy as np


def levenshtein(s1, s2):
    m = len(s1)
    n = len(s2)

    distance = np.zeros((m+1, n+1))

    for i in range(1, m+1):
        distance[i][0] = i

    for j in range(1, n+1):
        distance[0][j] = j

    for j in range(1, n+1):
        for i in range(1, m+1):
            if s1[i-1] == s2[j-1]:
                cost = 0
            else:
                cost = 1

            distance[i][j] = min(distance[i][j-1] + 1,
                                 distance[i-1][j] + 1,
                                 distance[i-1][j-1] + cost)

    return distance[m][n]


ans = levenshtein("Hello", "hallo")
print("Edit distance:", ans)
