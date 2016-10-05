Particle[] particles;
int r, g, b;
void setup()
{
	size(500,500);
	particles = new Particle[1000];
	for (int i = 0; i < particles.length; i++)
	{
		particles[i] = new NormalParticle();
	}
	particles[0] = new OddballParticle();
	particles[1] = new JumboParticle();
}

void draw()
{
	background(0);
	for (int i = 0; i < particles.length; i++)
	{
		r = (int)(Math.random()*100);
		g = (int)(Math.random()*150);
		b = (int)(Math.random()*200);
		particles[i].show();
		particles[i].move();
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
		nSpeed = Math.random()*3+2;
	}
	public void move()
	{
			nX = nX + (int)(Math.cos(nTheta)*nSpeed);
			nY = nY + (int)(Math.sin(nTheta)*nSpeed);	
		if (nX < 0 || nX > 500 || nY < 0 || nY > 500){
			nX = 250;
			nY = 250;
		}
		nTheta = nTheta + .025;
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
	double oX, oY, oTheta;
	int oSpeed;
	OddballParticle()
	{
		oX = 250-12.5;
		oY = 250-12.5;
		oSpeed = 2;
		oTheta = Math.random()*2*Math.PI;
		}
	public void move(){
		oX = oX + Math.cos(oTheta)*oSpeed;
		oY = oY + Math.sin(oTheta)*oSpeed;
		oTheta = oTheta - .025;
	}
	public void show(){
		noStroke();
		fill(200);
		rect((float)oX,(float)oY, 25,25);
		fill(255);
		quad((float)oX, (float)oY, (float)oX+25, (float)oY, (float)oX+37.5, (float)oY-12.5, (float)oX+12.5, (float)oY-12.5);
		fill(100);
		quad((float)oX+25, (float)oY, (float)oX+25, (float)oY+25, (float)oX+37.5, (float)oY+12.5, (float)oX+37.5, (float)oY-12.5);
	}
}
class JumboParticle implements Particle
{
	double nSpeed, nTheta;
	int nX,nY; 

	JumboParticle()	{
		nX = 250;
		nY = 250;
		nTheta = Math.random()*2*Math.PI;
		nSpeed = Math.random()*10+1;
	}
	public void move()
	{
			nX = nX + (int)(Math.cos(nTheta)*nSpeed);
			nY = nY + (int)(Math.sin(nTheta)*nSpeed);	
		if (nX < 0 || nX > 500 || nY < 0 || nY > 500){
			nX = 250;
			nY = 250;
		}
		nTheta = nTheta + .025;
	}
		
		
	 public void show ()
	{
		g = (int)(Math.random()*255);
		noStroke();
		fill(0,g,0);
		ellipse((float)nX, (float)nY, 50, 50);
	}
}

