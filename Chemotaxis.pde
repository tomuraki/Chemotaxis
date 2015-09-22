 //declare bacteria variables here 
 Bacteria borg;  
 void setup()   
 {     
 	size(200,200);
 	//initialize bacteria variables here 
 	borg=new Bacteria();  
 }   
 void draw()   
 {    
 	//move and show the bacteria 
 	background(0,0,0);
 	borg.walk();
 	borg.show();
 	

 }  
 class Bacteria    
 {   
    int myX;
    int myY;

    Bacteria()
    {
        myX=100;
        myY=100;
    }
 	void walk()
 	{
 		myX=myX+(int)(Math.random()*3)-1;
 		myY=myY+(int)(Math.random()*3)-1;
 	} 
 	void show()
 	{
 		fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
 		ellipse(myX,myY,10,10);	

 	}
 }    