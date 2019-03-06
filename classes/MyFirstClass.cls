public class MyFirstClass {
    public integer s{get;set;} 
    public integer sMUX{get;set;}
    public integer x{get;set;}
    public integer y{get;set;}
    
    public MyFirstClass(){  
        x=2;
        y=3;        
    }
    
    public void excMethod(){
         //s=mySecMethod(x,y); 
        // sMUX=mysample3Method(x+1,y+1);
         //system.debug('my output is' +s); 
    }
    
    public void mySecMethod(){ 
        s=x+y;
        sMUX=10;         
    }
    
    /*public integer mysample3Method(integer x,integer y){
        integer z=mySecMethod(x,y);  
        return z; 
    }*/
} // an example of using addition in VF page and Class.