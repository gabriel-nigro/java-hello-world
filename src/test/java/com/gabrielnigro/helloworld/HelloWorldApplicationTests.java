package com.gabrielnigro.helloworld;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
class HelloWorldApplicationTest {

	@Autowired
	private HelloWorldApplication helloWorldApplication;

	@Test
	void contextLoads() {
		assertThat(helloWorldApplication).isNotNull();
	}
}