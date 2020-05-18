import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class Main {
    public static void main(String[] args) {
        System.setProperty("webdriver.chrome.driver", "C:/Program Files (x86)/Common Files/Oracle/Java/javapath/chromedriver.exe");
        WebDriver driver = new ChromeDriver();

        driver.get("https://www.submarino.com.br/");

        WebElement campoDeTexto = driver.findElement(By.name("conteudo"));
        campoDeTexto.sendKeys("Cyberpunk 2077");
        campoDeTexto.submit();
    }
}
