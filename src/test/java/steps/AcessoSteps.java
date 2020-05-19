package steps;

import cucumber.api.java.Before;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import java.io.File;
import java.io.IOException;
import static org.junit.Assert.*;

public class AcessoSteps {
    private WebDriver driver = new ChromeDriver();
    String pageTitle = null;

    @Before
    public void setUp() throws IOException {
        String configuracaoDriver = new File("../automacao-webDriver/chromedriver.exe").getCanonicalPath();
        System.setProperty("webdriver.chrome.driver", configuracaoDriver);
    }

    @Given("^acesso portal (.*)$")
    public void acessoPortalUtilizandoONavegadorGoogleChrome(String url) {
        driver.get(url);
    }

    @When("^verifico se portal está online$")
    public void verificoSePortalEstaONLINE() {
        pageTitle = driver.getTitle();
    }

    @Then("^valido página ativa$")
    public void validoPaginaAtiva() {
        assertEquals(pageTitle, "Submarino - Sua história começa aqui");
        driver.close();
    }
}
