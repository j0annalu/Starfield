NormalParticle[] bob;
void setup()
{
	size(500,500);
	bob = new NormalParticle[10];
	for (int i = 0; i < bob.length; i++)
	{
		bob[i] = new NormalParticle();
	}
}
void draw()
{
	background(255);
	for (int i = 0; i < bob.length; i++)
	{
		bob[i].show();
		bob[i].move();
	}
}
class NormalParticle implements Particle
{
	double dX,dY, dSpeed,dTheta;
	int r, g, b;
	NormalParticle() 
	{
		dX = 250;
		dY = 250;
		dTheta = Math.random()*2*Math.PI;
		dSpeed = Math.random()*10;
		r = (int)(Math.random()*100);
		g = (int)(Math.random()*150);
		b = (int)(Math.random()*200);
	}
	public move()
	{
		dX = dX + Math.cos(dTheta)*dSpeed;
		dY = dY + Math.sin(dTheta)*dSpeed;
	}
	 public show()
	{
		noStroke();
		fill(r,g,b);
		ellipse((float)dX, (float)dY, 10,10);
	}
}
interface Particle
{
	public void move();
	public void show();
}
class OddballParticle implements Particle
{
	OddballParticle()
	{

	}
	public move(){

	}
	public show(){

	}
}
class JumboParticle //uses inheritance
{
	//your code here
}

