Particle[] bob;
int r, g, b;
void setup()
{
	size(500,500);
	bob = new NormalParticle[1000];
	
	for (int i = 0; i < bob.length; i++)
	{
		bob[i] = new NormalParticle();
	}
	bob[0] = new OddballParticle();
}
void draw()
{
	bob[0].show();
	bob[0].move();
	background(0);
	for (int i = 0; i < bob.length; i++)
	{
		r = (int)(Math.random()*100);
		g = (int)(Math.random()*150);
		b = (int)(Math.random()*200);
		bob[i].show();
		bob[i].move();
	}
}
class NormalParticle implements Particle
{
	double nSpeed, nTheta;
	int nX,nY;
	NormalParticle() 
	{
		nX = 250;
		nY = 250;
		nTheta = Math.random()*2*Math.PI;
		nSpeed = Math.random()*10;
	}
	public void move()
	{
			nX = nX + (int)(Math.cos(nTheta)*nSpeed);
			nY = nY + (int)(Math.sin(nTheta)*nSpeed);	
		if (nX < 0 || nX > 500 || nY < 0 || nY > 500){
			nX = 250;
			nY = 250;
		}
	}
		
		
	 public void show ()
	{
		noStroke();
		fill(r,g,b);
		ellipse((float)nX, (float)nY, 5, 5);
	}
}
interface Particle
{
	public void move();
	public void show();
}
class OddballParticle implements Particle
{
	double oX, oY, oTheta, oR,oG,oB;
	int oSpeed;
	OddballParticle()
	{
		oX = mouseX;
		oY = mouseY;
		oSpeed = (int)(Math.random()*20);
		oTheta = Math.random()*2*Math.PI;
		oR = (int)(Math.random()*150)+100;
		oG = (int)(Math.random()*150)+100;
		oB= (int)(Math.random()*200)+55;
	}
	public void move(){
		oX = oX + Math.cos(oTheta)*oSpeed;
		oY = oY + Math.sin(oTheta)*oSpeed;
	}
	public void show(){
		noStroke();
		fill((float)oR,(float)oG,(float)oB);
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

