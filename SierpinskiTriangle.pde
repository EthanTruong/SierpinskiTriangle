public void setup() {
    size(300, 300);
    background(160,0,75);
}

public void draw() {
    sierpinski(50,235,200);
}

public void sierpinski(int x, int y, int len) {
    if (len <= 20) {
        noStroke();
        fill(255);
        triangle(x,y,x+len,y,x+len/2,y-len);
    } else {
        sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y-len/2,len/2);
    }  
}