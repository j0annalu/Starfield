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
	double oX, oY, oTheta;
	int oSpeed;
	OddballParticle()
	{
		oX = 250;
		oY = 250;
		oSpeed = (int)(Math.random()*2);
		oTheta = Math.random()*2*Math.PI;
		}
	public void move(){
		oTheta = oTheta++;
		oX = oX + Math.cos(oTheta)*oSpeed;
		oY = oY + Math.sin(oTheta)*oSpeed;
	}
	public void show(){
		noStroke();
		fill(255);
		rect((float)oX,(float)oY, 25,25);
	}
}
class JumboParticle //uses inheritance
{
	//your code here
}

