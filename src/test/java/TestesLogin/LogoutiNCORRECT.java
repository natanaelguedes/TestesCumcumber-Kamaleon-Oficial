package TestesLogin;

import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.WindowConstants;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class LogoutiNCORRECT {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
  		   System.setProperty("webdriver.chrome.driver", "E:\\chromedriver_win32\\chromedriver.exe");
	        WebDriver wd = new ChromeDriver();   
         wd.get("https://erp.kamaleon.com.br/homologacao/login.do?metodo=loginGet");
       
 
         String variavel1 = "Não foi possível encontrar o botão logout, pois o usuário não está logado no sistema!"; //criando aqui as variaveis precisao ser inicializadas

         

         //criamos um objeto da classe scanner do pacote util

         //criamos as duas janelas e passamos por parametros as duas variaveis criadas

         





         // agora podemos mostra-las em uma janela da seguinte forma

         JOptionPane.showMessageDialog(null,  variavel1); // concatenamos na janela de saida


         
         
	}

}
