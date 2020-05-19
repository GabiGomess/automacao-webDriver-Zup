package tests;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

import java.io.File;
import java.io.IOException;

public class Main {
    public static void main(String[] args) throws IOException {
        //System.setProperty("webdriver.chrome.driver", "C:/Program Files (x86)/Common Files/Oracle/Java/javapath/chromedriver.exe");
        String caminho = new File("../automacao-webDriver-Zup/src/main/resources/chromedriver.exe").getCanonicalPath();
        System.setProperty("webdriver.chrome.driver", caminho);

        WebDriver driver = new ChromeDriver();
        driver.get("https://www.submarino.com.br/");

        WebElement campoDeBusca = driver.findElement(By.name("conteudo"));
        campoDeBusca.sendKeys("Cyberpunk 2077");
        campoDeBusca.submit();

        driver.getPageSource().contains("Cyberpunk 2077");
    }
}
