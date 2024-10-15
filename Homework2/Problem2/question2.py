from z3 import *

p = Bool('p')
q = Bool('q')
r = Bool('r')

F = (And((Or(q, Not(r)),Or(Not(p),r),Or(Not(q),r,p),Or(p,q,Not(q)),Or(Not(r),q))))

G = (Or(Not(p),r))

s = Solver()
s.add(F==G)
s.check()
m= s.model()
print('Model')
print(m)