NormalParticle[] bob;
void setup()
{
	size(500,500);
	bob = new NormalParticle[10];
}
void draw()
{
	
}
class NormalParticle
{
	double myX, myY, angle, speed;
	int r, g, b;
	NormalParticle()
	{
		dX = 250;
		dY = 250;
		dTheta = Math.random()*2Math.PI;
		dSpeed = Math.random()*10;
		r = (int)(Math.random()*100);
		g = (int)(Math.random()*150);
		b = (int)(Math.random()*200);
	}
	void move()
	{
		dX = dX + Math.cos(dTheta)*dSpeed;
		dY = dY + Math.sin(dTheta)*dSpeed;
	}
	void show()
	{
		noStroke();
		fill(r,g,b);
		ellipse((float)dX, (float)dY, 10,10);
	}
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

