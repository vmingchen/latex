import math;	// for the grid function
size(400,0);
int u = 20;
defaultpen(fontsize(20,20*1.2));

int[] hist = {21, 26, 28, 32, 29, 27, 20};
int len = hist.length;
int ci = floor(len/2);

picture seek(int tl, int tr, pair pos=(0,0), int achieved, int desired) {
    picture pic;

    // draw the histogram
    pic.add(grid(len+2, 1));
    for (int f=0; f<len; f=f+1) {
	label(pic, format("%d", hist[f]), (1.5+f,0.5));
	label(pic, format("%d", f-ci), (1.5+f,1.2));
    }
    label(pic, "...", (0.5,0.5));
    label(pic, "...", (len+1.5,0.5));

    // draw the thresholds
    real xl = ci + tl + 1 + 0.2;
    real xr = ci + tr + 1 + 0.8;
    real ylbl = -0.8; // y of labels
    real yarw = -0.6; // y of arrows
    label(pic, "$Tl$", (xl, ylbl));
    label(pic, "$Tr$", (xr, ylbl));
    draw(pic, (xl,yarw)--(xl,0),EndArrow(Draw));
    draw(pic, (xr,yarw)--(xr,0),EndArrow(Draw));

    // draw label
    pair lbl_pos = (len+1.2, -0.4);
    string g_or_l = achieved>desired ? "$>$" : "$<$";
    string lbl_str = "(" + format("%d", achieved) + g_or_l + format("%d", desired) + ")";
    label(pic, lbl_str, lbl_pos);

    return shift(pos)*pic;
}

pair pos = (1.2, 0);
pair gap = (0, -2.8);
int tl = 0;
int tr = 0;
int desired = 103;
int achieved = hist[ci];
int i = 1;

while ( achieved < desired ) {
    label(format("Step %d:", i), pos-(1.2,0));
    picture ns = seek(-1*tl, tr, pos, achieved, desired);
    add(ns);
    pos += gap;
    i += 1;
    if ( tl == tr ) {
	tr = tr + 1;
	achieved += hist[ci+tr];
    } else {
	tl = tl + 1;
	achieved += hist[ci-tl];
    }
}

label(format("Step %d:", i), pos-(1.2,0));
picture ns = seek(-1*tl, tr, pos, achieved, desired);
add(ns);
