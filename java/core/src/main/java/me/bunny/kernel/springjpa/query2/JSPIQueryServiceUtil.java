package me.bunny.kernel.springjpa.query2;

import me.bunny.kernel.springjpa.spi.JGenericQueryService;
import me.bunny.kernel.springjpa.spi.JHibernateQueryService;


public class JSPIQueryServiceUtil {

	protected static JSPIFoundService spiFoundService=new JSPIFoundService();
	
	protected static JSPIQueryService spiQueryService;
	static {
		JJPASPI jpaSpi=spiFoundService.getSpi();
		switch (jpaSpi) {
		case HIBERNATE:
			spiQueryService=new JHibernateQueryService();
			break;
		case EMPTY:
			spiQueryService=new JGenericQueryService();
			break;
		default:
			spiQueryService=new JGenericQueryService();
		}
	}
	
	public static JSPIQueryService getSPIQueryService(){
		return spiQueryService;
	}
	
}
