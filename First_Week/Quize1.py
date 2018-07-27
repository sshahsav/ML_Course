#Linear Regression with One Variable
import math
import numpy as np

x = [3,1,0,4]
y = [2,2,1,3]

x_np = np.asarray(x)
y_np = np.asarray(y)

def h(theta0,theta1,x_):
    return (theta0 + theta1*x_)

def sum_(m,theta0,theta1):
    return (1./m)*np.sum(((theta0 + theta1*x_np) - y_np)**2)

Question2 = sum_(4.,0.,1.)

print "Question2 = " , Question2

Question3 = h(0.,1.5,2)
print "Question3 = " , Question3
