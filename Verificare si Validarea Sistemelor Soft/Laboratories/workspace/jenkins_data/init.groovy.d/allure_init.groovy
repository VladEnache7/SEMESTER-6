import jenkins.model.*
import hudson.tools.*
import ru.yandex.qatools.allure.jenkins.tools.*
def desc = Jenkins.instance.getDescriptor(AllureCommandlineInstallation.class)
def installer = new AllureCommandlineInstaller("2.32.2")
def installSourceProperty = new InstallSourceProperty([installer])
def installation = new AllureCommandlineInstallation("allure", "", [installSourceProperty])
desc.setInstallations(installation)
desc.save()
