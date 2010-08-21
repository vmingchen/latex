

prologues:=3;
filenametemplate "%j.mps";
verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
etex
beginfig(0);
u:=30;                    % 25 = 25bp = 25 PostScript points = 30/72 in
wi:=7;                   % width in units u
he:=5;                   % height in units u
hoehe:=he*u;              % height
breite:=wi*u;             % width

drawarrow (0,5u) -- (7u,5u);
drawarrow (0,5u) -- (0,0);

  for i=1 upto he:
    draw (0, i*u)--(breite, i*u) withcolor .7white;
  endfor
  for j=1 upto wi:
    draw (j*u, 0)--(j*u, hoehe) withcolor .7white;
  endfor

label(btex $x$ etex, (3.5u, 1.5u));
label(btex $x_w$ etex, (2.5u, 1.5u));
label(btex $x_n$ etex, (3.5u, 2.5u));
label(btex $x_{nw}$ etex, (2.5u, 2.5u));
label(btex $x_{ne}$ etex, (4.5u, 2.5u));
label(btex $x_{ww}$ etex, (1.5u, 1.5u));
label(btex $x_{nn}$ etex, (3.5u, 3.5u));
label(btex $x_{nww}$ etex, (1.5u, 2.5u));
label(btex $x_{nnw}$ etex, (2.5u, 3.5u));
label(btex $x_{nne}$ etex, (4.5u, 3.5u));
label(btex $x_{nee}$ etex, (5.5u, 2.5u));
endfig;
end
