Particle[] bob;
int r, g, b;
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
	bob[0].show();
	bob[0].move();
	background(255);
	for (int i = 0; i < bob.length; i++)
	{
		bob[i].show();
		bob[i].move();
	}
}
class NormalParticle implements Particle
{
	double nX,nY, nSpeed;
	int nTheta;
	NormalParticle() 
	{
		nX = 250;
		nY = 250;
		nTheta = (int)(Math.random()*2*Math.PI);
		nSpeed = Math.random()*10;
		r = (int)(Math.random()*100);
		g = (int)(Math.random()*150);
		b = (int)(Math.random()*200);
	}
	public void move()
	{
			nX = nX + Math.cos(nTheta)*nSpeed;
			nY = nY + Math.sin(nTheta)*nSpeed;	
		if (nX < 0 || nX > 500 || nY < 0 || nY > 500){
			nX = 250;
			nY = 250;	
		}
	}
		
		
	 public void show ()
	{
		noStroke();
		fill(r,g,b);
		ellipse((float)nX, (float)nY, 10,10);
	}
}
interface Particle
{
	public void move();
	public void show();
}
class OddballParticle implements Particle
{
	double oX, oY, oSpeed, oTheta;
	OddballParticle()
	{
		oX = 100;
		oY = 100;
		oSpeed = Math.random()*20;
		oTheta = Math.random()*2*Math.PI;
		r = (int)(Math.random()*150)+100;
		g = (int)(Math.random()*150)+100;
		b = (int)(Math.random()*200)+55;
	}
	public void move(){
		oX = oX + Math.cos(oTheta)*oSpeed;
		oY = oY + Math.sin(oTheta)*oSpeed;
	}
	public void show(){
		noStroke();
		fill(r,g,b);
		ellipse((float)oX-5,(float)oY, 10, 10);
		ellipse((float)oX+5,(float)oY, 10,10);
		ellipse((float)oX,(float)oY-5,10,10);
		ellipse((float)oX,(float)oY+5,10,10);
	}
}
class JumboParticle //uses inheritance
{
	//your code here
}

