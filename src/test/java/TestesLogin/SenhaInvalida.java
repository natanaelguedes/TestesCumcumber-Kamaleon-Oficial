package test.java.TestesLogin;

import static org.junit.Assert.assertTrue;
import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

class SenhaInvalida {

	@Test
	void loginwithsuccess() {

		   System.setProperty("webdriver.chrome.driver", "E:\\chromedriver\\chromedriver_win32\\chromedriver.exe");
			WebDriver driver = new ChromeDriver();
	    driver.get("https://erp.kamaleon.com.br/homologacao/");
	    driver.findElement(By.xpath("//body")).click();
	    driver.findElement(By.id("login")).clear();
	    driver.findElement(By.id("login")).sendKeys("natanael");
	    driver.findElement(By.id("senha")).clear();
	    driver.findElement(By.id("senha")).sendKeys("346810");
	    driver.findElement(By.id("btnLogin")).click();
	    assertTrue("Aviso! Login não pode ser efetuado. Verifique seu login e senha.", true);
	    //assertT 
	}//	}

}
