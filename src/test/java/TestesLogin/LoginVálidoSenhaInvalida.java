package TestesLogin;

import javax.swing.JOptionPane;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class LoginV�lidoSenhaInvalida {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
	//	src/A01_Compras/Fornecedor/testFornecedor/Teste.java	
		   System.setProperty("webdriver.chrome.driver", "E:\\chromedriver_win32\\chromedriver.exe");
	        WebDriver wd = new ChromeDriver();   
            wd.get("https://erp.kamaleon.com.br/homologacao/login.do?metodo=loginGet");
            WebElement we = wd.findElement(By.name("login"));
            we.sendKeys("natanael");
            WebElement we1 = wd.findElement(By.name("senha"));
            		we1.sendKeys("247412");
          //  we.findElement(By.name("senha")).sendKeys("246810");
            WebElement webEl = wd.findElement(By.id("btnLogin"));
            webEl.click();

            String variavel1 = "N�o foi poss�vel logar  no sistema , pois  o login est� v�lido e a senha inv�lida!"; //criando aqui as variaveis precisao ser inicializadas

            

            //criamos um objeto da classe scanner do pacote util

            //criamos as duas janelas e passamos por parametros as duas variaveis criadas

            





            // agora podemos mostra-las em uma janela da seguinte forma

            JOptionPane.showMessageDialog(null,  variavel1); 
	}

}
