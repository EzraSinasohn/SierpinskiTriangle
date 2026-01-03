int baseLength = 500;
public void setup()
{
  size(1000, 1000);
}
public void draw()
{
  background(0);
  sierpinski(width/2-baseLength/2, height/2-baseLength/2, baseLength);
}
public void mouseDragged()//optional
{
  baseLength = (int) (Math.sqrt((mouseX-width/2)*(mouseX-width/2)+(mouseY-height/2)*(mouseY-height/2))*Math.sqrt(2));
}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 20) {
    triangle(x, y, x+len, y, x+len/2, y+len);
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y+len/2, len/2);
  }
}
