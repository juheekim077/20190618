package org.zerock.domain;

import lombok.Data;
import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class PageMaker {

	private Criteria cri;
	private boolean prev, next;
	private int totalCount;
	private int current, start, end;
	
	
	public PageMaker(Criteria cri, int totalCount) {
		
		this.current = cri.getPage();
		this.totalCount = totalCount;
		this.cri = cri;
		
		
		int tempEnd = ((int)Math.ceil(current/10.0))*10;
		
		start = tempEnd - 9;
		
		prev = start != 1;
		
		int tempTotal = tempEnd * cri.getAmount();
		
		if(tempTotal > totalCount) {
			end = (int)(Math.ceil(totalCount / (double)cri.getAmount()));
		}else {
			end = tempEnd;
		}
		next = tempTotal < totalCount;
		
	}
}
