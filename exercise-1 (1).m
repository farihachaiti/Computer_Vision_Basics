function Exercise1
  x= [2;3;1]
  y =[-4;5;1]
  
  l= cross(x,y)  
  
 
  
  
  
 %1b
 t1 = [1 0 6;0 1 -7;0 0 1]
  x1 = t1*x
  y1 = t1*y
  
 phi = deg2rad(15)
 t2 = [cos(phi) -sin(phi) 0; sin(phi) cos(phi) 0;0 0 1]
 x2 = t2*x1
 y2 = t2*y1
 
 
 
 
 t3 = [8 0 0;0 8 0;0 0 1]
 x3 = t3*x2
 y3 = t3*y2
 
 %1c
 
 L =  transpose(inverse(t3*t2*t1)) * l
 
 %2nd solution
 %e=L*x1'
 %q=L*y1'
 
 %det(e) %FROM THE PRINCIPLE OF DUALITY00......................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................
 %det(q)


if ( x3'*L == 0)
  printf ( " x' is on the transformed line l'\n")
else
 printf ( " x' is not on the transformed line l'\n")
endif
if ( y3'*L == 0)
 printf ( " y' is on the transformed line l'\n")
else
 printf ( " y' is not on the transformed line l'\n")
endif
endfunction 