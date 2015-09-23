 //declare bacteria variables here 
 Bacteria[] borg;
 void setup()   
 {     
 	size(500,500);
 	//initialize bacteria variables here 
 	borg=new Bacteria[500]; 
 	for(int b=0; b<borg.length; b++)
 	{
 		borg[b]=new Bacteria();
 	}
 }   
 void draw()   
 {    
 	//move and show the bacteria 
 	background(0,0,0);
 	for(int b=0; b<borg.length; b++)
 	{
 		borg[b].move();
 		borg[b].show();
 	}
 }  
 class Bacteria    
 {   
    int myX;
    int myY;

    Bacteria()
    {
        myX=250;
        myY=250;
    }
 	void move()
 	{
 		int direction=(int)(Math.random()*4);
 		if(direction==0)
 		{
 			myX=myX+2; //right
 		}
 		else if(direction==1)
 		{
 			myX=myX-2; //left
 		}
 		else if(direction==2)
 		{
 			myY=myY+2; //down
 		}
 	    else if(direction==3)
 		{
 			myY=myY-2; //up
 		}
 		
 		//myX=myX+(int)(Math.random()*5)-2;
 		//myY=myY+(int)(Math.random()*5)-2;
 		//if(myX<mouseX)
 		//{
 		//	myX=myX+(int)(Math.random()*5)-1;
 		//}
 		//else if(myX>mouseX)
 		//{
 		//	myX=myX+(int)(Math.random()*5)-3;
 		//}
 		//else if(myY<mouseY)
 		//{
 		//	myY=myY+(int)(Math.random()*5)-1;
 		//}
 		//else if(myY>mouseY)
 		//{
 		//	myY=myY+(int)(Math.random()*5)-3;
 		//}
 	} 
 	void show()
 	{
 		fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
 		noStroke();
 		ellipse(myX,myY,10,10);	

 	}
 }    