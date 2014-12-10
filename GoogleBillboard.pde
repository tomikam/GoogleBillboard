public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
public void setup()  //2.718281828
{            
     noLoop(); 
     int i = 3;
     boolean noPrime = true;

     while (noPrime) {
     	String digits = e.substring(i, i + 10);
     	Double dNum = Double.parseDouble(digits);
     	
     	if (isPrime(dNum)) {
     		//noPrime = false;
     		System.out.println(dNum);
     		break;
     	}

     	if (i == 100) {  //Saftey so loop doesn't go crazy. 
     		break;
     	}

     	i ++;
     }
}  
public void draw()  
{   
	//not needed for this assignment
}  
public boolean isPrime(double dNum)  
{    
    for (int i = 2; i <= Math.sqrt(dNum); i ++) {
    	//System.out.println(Math.sqrt(dNum));
    	if ( dNum % i == 0 ) {
    		return false;
    	}
    }
    return true;  
} 