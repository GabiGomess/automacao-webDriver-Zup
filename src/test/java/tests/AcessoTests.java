package tests;
import cucumber.api.CucumberOptions;
import net.serenitybdd.cucumber.CucumberWithSerenity;
import org.junit.runner.RunWith;
@RunWith(CucumberWithSerenity.class)
@CucumberOptions(
        features = {"src/test/resources/features/acesso.feature"},
        glue = {"src/test/java/steps/AcessoSteps.java"}
)
public class AcessoTests { }

