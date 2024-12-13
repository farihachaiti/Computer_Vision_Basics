
function mainfunction

 clc
# From Given points we get homogeneous points
printf("From Given points we get homogeneous points\n")  
  x = [2; 3; 1]
  y = [-4; 5; 1]
  t = [6;-7;1]
  
 # assignment II(1(a)); connecting line l between x and y
 printf("Assignment II(1(a)); Connecting line l between x and y\n")
 l = cross(x,y)

 
 
 # assignment II(1(b)); Move x and y in the direction t = (6, -7)
 printf("Assignment II(1(b)); Move x and y in the direction t = (6, -7) using transformation matrix H1, we get transformed points x1 and y1\n")
  H1 = [1 0 6; 0 1 -7;0 0 1]
 x1 = H1 * x
 y1 = H1 * y
 
 #  assignment II(1(b)); rotate afterwards using the angle phi = 15°
  printf("Assignment II(1(b)); Rotate afterwards using the angle phi = 15° using transformation matrix H2, we get transformed points x2 and y2\n")
 #Given
 phi = 15
 H2 = [cosd(15) -sind(15) 0; sind(15) cosd(15) 0; 0 0 1]
 x2 = H2 * x1
 y2 = H2 * y1 
 
 # assignment II(1(b)); scale with factor lambda = 8
 printf("Assignment II(1(b)); Scale with factor lambda = 8 using transformation matrix H3, we get transformed points x'=x3 and y'=y3\n")
 H3 = [ 8 0 0; 0 8 0; 0 0 1]
 
 x3 = H3 * x2
 y3 = H3 * y2
 
 
 # assignment II(1(c)); the same operations with the line l.
  printf("Assignment II(1(c)); The same operations with the line l after concatenation of the 3 transformation matrices, we get transformed line l'=L by Inverse and Transpose operation on the Concatenated Transformed Matrix multiplied by l\n")
 L =  transpose(inverse(H3*H2*H1)) * l

 
 # assignment II(2); Examine whether the transformed points x3 and y3 are on the transformed line L
 printf("Assignment II(2); Examine whether the transformed points x' and y' are on the transformed line l'\n")
if ( transpose(x3)*L == 0)
  printf ( "Transformed point x' is on the transformed line l'\n")
else
 printf ( "Transformed point x' is not on the transformed line l'\n")
endif
if ( transpose(y3)*L == 0)
 printf ( "Transformed point y' is on the transformed line l'\n")
else
 printf ( "Transformed point y' is not on the transformed line l'\n")
endif
endfunction
