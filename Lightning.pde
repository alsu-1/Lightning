int startX = 480;
int startY = 0;
int endX = 480;
int endY = 0;
int rectGlow = 0;

void setup()
{
  size(960,720);
  strokeWeight(5);
  background(0);
}
void draw()
{
	stroke((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
	if (rectGlow > 0){
		background(rectGlow);
		rectGlow -= 5;
	}
	while (endY < 720){
		endX = startX + (int)(Math.random()*19) - 9;	
		endY = startY + (int)(Math.random()*10);
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}
	

}
void mousePressed()
{
	startX = 480;
	startY = 0;
	endX = 480;
	endY = 0;
	rectGlow = 255;

}

