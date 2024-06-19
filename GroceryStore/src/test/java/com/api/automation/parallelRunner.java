package com.api.automation;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;

public class parallelRunner {
	@Test
    public void executeKarateTest() {
    	  Results results = Runner.path("classpath:com/api/automation/mainseq").parallel(5);
    	  assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }

}
