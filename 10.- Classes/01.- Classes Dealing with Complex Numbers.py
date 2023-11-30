"""
Classes: Dealing with Complex Numbers

For this challenge, you are given two complex numbers, and you have to print the result of their addition, subtraction, multiplication, division and modulus operations.

The real and imaginary precision part should be correct up to two decimal places.

Input Format

One line of input: The real and imaginary part of a number separated by a space.

"""
#Python 3:

import math

class Complex(object):
    def __init__(self, real, imaginary):
        self.real = real
        self.imaginary = imaginary
        
    def __add__(self, no):
        result_real = self.real + no.real
        result_imag = self.imaginary + no.imaginary
        if result_imag >= 0:
            return "%.2f+%.2fi" % (result_real, result_imag)        
        else:
            return "%.2f%.2fi" % (result_real, result_imag)
            
    def __sub__(self, no):
        result_real = self.real - no.real
        result_imag = self.imaginary - no.imaginary
        if result_imag >= 0:
            return "%.2f+%.2fi" % (result_real, result_imag)  
        else:
            return "%.2f%.2fi" % (result_real, result_imag)
                  
    def __mul__(self, no):
        result_real = self.real * no.real - self.imaginary * no.imaginary
        result_imag = self.imaginary * no.real + self.real * no.imaginary
        if result_imag >= 0:
            return "%.2f+%.2fi" % (result_real, result_imag)  
        else:
            return "%.2f%.2fi" % (result_real, result_imag)
            
    def __truediv__(self, no):
        result_real = ((self.real * no.real + self.imaginary * no.imaginary)/(no.real**2 + no.imaginary**2))
        result_imag = ((self.imaginary * no.real - self.real * no.imaginary)/(no.real**2 + no.imaginary**2))
        if result_imag >= 0:
            return "%.2f+%.2fi" % (result_real, result_imag)  
        else:
            return "%.2f%.2fi" % (result_real, result_imag)
               
    def mod(self):
        return "%.2f+0.00i" % math.sqrt(self.real**2 + self.imaginary**2)
           
    def __str__(self):
        if self.imaginary == 0:
            result = "%.2f+0.00i" % (self.real)
        elif self.real == 0:
            if self.imaginary >= 0:
                result = "0.00+%.2fi" % (self.imaginary)
            else:
                result = "0.00-%.2fi" % (abs(self.imaginary))
        elif self.imaginary > 0:
            result = "%.2f+%.2fi" % (self.real, self.imaginary)
        else:
            result = "%.2f-%.2fi" % (self.real, abs(self.imaginary))
        return result

if __name__ == '__main__':
    c = map(float, input().split())
    d = map(float, input().split())
    x = Complex(*c)
    y = Complex(*d)
    print(*map(str, [x+y, x-y, x*y, x/y, x.mod(), y.mod()]), sep='\n')
    