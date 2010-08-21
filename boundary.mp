input boxes;
filenametemplate "%j.mps";
beginfig(0);

boxjoin(a.se=b.sw; a.ne=b.nw);
boxit.ci1(btex 255 etex);
boxit.ci2(btex 255 etex);
boxit.ci3(btex 254 etex);

boxjoin(a.se=b.sw; a.ne=b.nw);
boxit.ci4(btex 254 etex);
boxit.ci5(btex 253 etex);
boxit.ci6(btex 253 etex);

boxjoin(a.se=b.sw; a.ne=b.nw);
boxit.ci7(btex 255 etex);
boxit.ci8(btex 254 etex);
boxit.ci9(btex 254 etex);

ci1.sw=ci4.nw; ci1.se=ci4.ne;
ci4.sw=ci7.nw; ci4.se=ci7.ne;

boxjoin(a.se=b.sw; a.ne=b.nw);
boxit.si1(btex 255 etex);
boxit.si2(btex 255 etex);
boxit.si3(btex 255 etex);

boxjoin(a.se=b.sw; a.ne=b.nw);
boxit.si4(btex 254 etex);
boxit.si5(btex 254 etex);
boxit.si6(btex 253 etex);

boxjoin(a.se=b.sw; a.ne=b.nw);
boxit.si7(btex 255 etex);
boxit.si8(btex 255 etex);
boxit.si9(btex 254 etex);

si1.sw=si4.nw; si1.se=si4.ne;
si4.sw=si7.nw; si4.se=si7.ne;

interim defaultdy:=7bp;
interim defaultdx:=7bp;

boxjoin(a.sw=b.nw; a.se=b.ne);
boxit.bm1(btex 0 etex);
boxit.bm2(btex 0 etex);
boxit.bm3(btex 1 etex);
boxit.bm4(btex 0 etex);
boxit.bm5(btex 1 etex);

si1.nw = ci3.ne + (40,0);
bm1.nw = ci3.ne + (10,15);

drawboxed(ci1,ci2,ci3, ci4, ci5, ci6, ci7, ci8, ci9);
drawboxed(si1,si2,si3, si4, si5, si6, si7, si8, si9);
drawboxed(bm1, bm2, bm3, bm4, bm5);

label.bot("cover-image", ci8.s);
label.bot("stego-image", si8.s);
label.top(btex embed data etex, bm1.n+(0,10));
drawarrow ci2.n..(bm1.n+(0,5))..si2.n;

pickup pencircle scaled 0.3pt;
drawarrow bm1.e..si1.w;
drawarrow bm2.e..si2.w;
drawarrow bm3.e..si3.w;
drawarrow bm4.e..si7.w;
drawarrow bm5.e..si8.w;

endfig;
