import math;
size(250,0);
pair d=(12,2);

picture box(string s, pair z=(0,0), pair sz=d) {
  picture pic;
  draw(pic,box(-sz/2,sz/2));
  label(pic,s,(0,0));

  return shift(z)*pic;
}

path boundary=(0,0)--(2,0)--(2,10)--(11,10)--(11,0)--(12,0)--(12,12)--(0,12)--cycle; 
fill(boundary, gray(0.5));
add(grid(12,12));

label(scale(1.5,5)*"\}", (12.5,3));
label(scale(1.5)*"$\mathbf{I}$", (6.5,6));

picture lsb=box("LSB replacement", (21,5), (11,2));
picture lbs=box("Marginal pixels", (21,1), (11,2));
picture mle=box("72 bits", (24,9), (5,2));
picture ovh=box("", (16,9.3), (7.6,2.6));
add(lsb);
add(lbs);
add(mle);
add(ovh);

label("overhead", (16,9.8));
label("data (part2)", (16,8.6));
label("$n,Tl,Tr,C$...", (23,12.5));
label("$W$", (6,13));
label("$H$", (-1,6));
label("72", (14,3));

//draw(lbs.N--lsb.S,EndArrow(Draw));
//draw((ovh.S-(0,4.5))--ovh.S,EndArrow(Draw));
draw((20,2)--(20,4),EndArrow(Draw));
draw((16,6)--(16,8),EndArrow(Draw));
draw((23,8)--(23,6),EndArrow(Draw));
draw((13,1)--(15,1),EndArrow(Draw));
draw((15,5)--(13,5),EndArrow(Draw));
draw((23,12)--(23,10), EndArrow(Draw));
