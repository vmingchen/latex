size(400,0);
pair d = (10,4);
pair loc = (5,6);
pair s = (10,0);
pair v = (0,1);

picture box(string s, pair z=(0,0), pair sz=d) {
  picture pic;
  draw(pic,box(-sz/2,sz/2));
  label(pic,s,(0,0));

  return shift(z)*pic;
}

picture brace(string s="", pair pos=(0,0), pair sz=(10,2), int dir=0) {
	picture pic;
	
	return pic;
}

void distance(picture pic=currentpicture, pair A, pair B, Label L="", real n=0,
              pen p=currentpen) 
{
  real d=3mm;
  path g=A--B;
  transform T=shift(-n*d*unit(B-A)*I);
  pic.add(new void(frame f, transform t) {
      picture opic;
      path G=T*t*g;
      draw(opic,Label(L,Center,UnFill(1)),G,p,Arrows(NoFill),Bars,PenMargins); 
      add(f,opic.fit());
    });
  pic.addBox(min(g),max(g),T*min(p),T*max(p));
} 


picture nfbp = box("$\mathit{NFBP}$", loc, d);
picture fbp1 = box("$\mathit{FBP_1}$", loc+s, d);
picture dots = box("$\cdots$", loc+2s, d);
picture fbpn = box("$\mathit{FBP_{NFBP}}$", loc+3s, d);
picture wm = box("Watermark", loc+5s, d+2s);

add(nfbp);
add(fbp1);
add(fbpn);
add(dots);
add(wm);

distance(loc-d/2, loc-d/2+s, "14", 1);
distance(loc-d/2+s, loc-d/2+2s, "18", 1);
distance(loc-d/2+3s, loc-d/2+4s, "18", 1);

distance(loc-d/2, loc-d/2+4s, scale(1.2)*"Overhead: $14+18\mathit{NFBP}$", 4);
distance(loc-d/2+4s, loc-d/2+7s, scale(1.2)*"Pure capacity", 4);

distance(loc-d/2, loc-d/2+7s, scale(1.5)*"Overall capacity", 7);
