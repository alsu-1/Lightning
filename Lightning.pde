int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;
int rectGlow = 255;

void setup()
{
  size(300,300);
  strokeWeight(5);
  background(0);
}
void draw()
{
	while (rectGlow > 0){
		fill(rectGlow);
		rect(0, 0, 300, 300);
		rectGlow -= 0.01;
	}
}
void mousePressed()
{
	startX = 150;
	startY = 0;
	endX = 150;
	endY = 0;
	stroke((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
	while (endX < 300){
		endX = startX + (int)(Math.random()*19) - 9;	
		endY = startY + (int)(Math.random()*10);
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}
	rectGlow = 255;
}

