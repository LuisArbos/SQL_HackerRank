"""
Class 2 - Find the Torsional Angle

You are given four points A,B,C and D in a 3-dimensional Cartesian coordinate system. You are required to print the angle between the plane made by the points A,B,C and B,C,D in degrees(not radians). Let the angle be PHI.

cos(PHI) = (X.Y)/|X||Y| where x = AB x BC and y = BC x CD.

Here, X.Y means the dot product of X and Y, and AB x BC means the cross product of vectors AB and BC. Also, AB = B - A.

Input Format

One line of input containing the space separated floating number values of the X, Y and Z coordinates of a point.

Output Format

Output the angle correct up to two decimal places.

"""
#Python 3:

import math

class Points(object):
    def __init__(self, x, y, z):
        self.x = x
        self.y = y
        self.z = z
        self.coor = [x, y, z]
        
    def __sub__(self, no):
        return Points(*[x1 - x2 for x1, x2 in zip(self.coor, no.coor)])
        
    def dot(self, no):
        return sum(x1 * x2 for x1, x2 in zip(self.coor, no.coor))
        
    def cross(self, no):
        x = (self.coor[1] * no.coor[2]) - (self.coor[2] * no.coor[1])
        y = (self.coor[2] * no.coor[0]) - (self.coor[0] * no.coor[2])
        z = (self.coor[0] * no.coor[1]) - (self.coor[1] * no.coor[0])
        return Points(x, y, z)
        
    def absolute(self):
        return pow((self.x ** 2 + self.y ** 2 + self.z ** 2), 0.5)

if __name__ == '__main__':
    points = list()
    for i in range(4):
        a = list(map(float, input().split()))
        points.append(a)

    a, b, c, d = Points(*points[0]), Points(*points[1]), Points(*points[2]), Points(*points[3])
    x = (b - a).cross(c - b)
    y = (c - b).cross(d - c)
    angle = math.acos(x.dot(y) / (x.absolute() * y.absolute()))

    print("%.2f" % math.degrees(angle))

    