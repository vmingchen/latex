prologues:=3;
filenametemplate "%j.mps";
verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
etex
beginfig(0);
u:=30;                    % 25 = 25bp = 25 PostScript points = 30/72 in
wi:=5;                   % width in units u
he:=3;                   % height in units u
hoehe:=he*u;              % height
breite:=wi*u;             % width

  for i=0 upto he:
    draw (0, i*u)--(breite, i*u) withcolor .7white;
  endfor
  for j=0 upto wi:
    draw (j*u, 0)--(j*u, hoehe) withcolor .7white;
  endfor

label(btex $X_i$ etex, (2.5u, 0.5u));
label(btex $X_i(1)$ etex, (1.5u, 0.5u));
label(btex $X_i(2)$ etex, (2.5u, 1.5u));
label(btex $X_i(3)$ etex, (1.5u, 1.5u));
label(btex $X_i(4)$ etex, (3.5u, 1.5u));
label(btex $X_i(5)$ etex, (0.5u, 0.5u));
label(btex $X_i(6)$ etex, (2.5u, 2.5u));
label(btex $X_i(7)$ etex, (0.5u, 1.5u));
label(btex $X_i(8)$ etex, (1.5u, 2.5u));
label(btex $X_i(9)$ etex, (3.5u, 2.5u));
label(btex $X_i(10)$ etex, (4.5u, 1.5u));
label(btex $X_i(11)$ etex, (0.5u, 2.5u));
label(btex $X_i(12)$ etex, (4.5u, 2.5u));
endfig;
end
