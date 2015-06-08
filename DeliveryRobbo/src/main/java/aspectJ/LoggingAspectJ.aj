package aspectJ;

public aspect LoggingAspectJ {

	pointcut beforeCallAspect() : execution(* *(..));
	pointcut aftercallAspect() : execution(* *(..));
	
	String timeStamp = "[" + String.valueOf(System.currentTimeMillis()) + "] ";
		
	before() : beforeCallAspect() {
		System.out.print(timeStamp  + " "+ thisJoinPointStaticPart.getSignature().getName());

		Object[] args = thisJoinPoint.getArgs();

		if(args != null) {
			for(Object obj : args) {
				System.out.print(" " + obj.toString());
			}
		}

		System.out.println();
	}


	after() : aftercallAspect() { 
		System.out.print(timeStamp  + " " + thisJoinPointStaticPart.getSignature().getName().getBytes());

		Object[] args = thisJoinPoint.getArgs();

		if(args != null) {
			for(Object obj : args) {
				System.out.print(" " + obj.toString());
			}
		}
		
		System.out.println();
	}

}
