# import numpy as np

# # Edit Distance


# def levenshtein(s1, s2):
#     size_x = len(s1)+1
#     size_y = len(s2)+1
#     matrix = np.zeros((size_x, size_y))

#     for x in range(size_x):
#         matrix[x, 0] = x
#     for y in range(size_y):
#         matrix[0, y] = y
#     for x in range(1, size_x):
#         for y in range(1, size_y):
#             if s1[x-1] == s2[y-1]:
#                 matrix[x, y] = min(matrix[x-1, y] +
#                                    1, matrix[x-1, y-1], matrix[x, y-1]+1)
#             else:
#                 matrix[x, y] = min(matrix[x-1, y] +
#                                    1, matrix[x-1, y-1]+1, matrix[x, y-1]+1)
#     print(matrix)
#     return (matrix[size_x-1, size_y-1])


# levenshtein("Hello", "hallo")


# Edit Distance

import numpy as np


def levenshtein_distance(s1, s2):
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


def main():
    s1 = input("Enter string 1: ")
    s2 = input("Enter string 2: ")
    ans = levenshtein_distance(s1, s2)
    print(f"Edit distance from {s1} to {s2}: {ans} ")


if __name__ == '__main__':
    main()
