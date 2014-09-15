
import com.hrzafer.fatihparser.Language;

import javax.servlet.ServletContextEvent;

public class ConfigLoader implements javax.servlet.ServletContextListener {

    public void contextInitialized(ServletContextEvent sce) {


        String path = sce.getServletContext().getRealPath("") + "/WEB-INF/lang";
        Language.setDirectoryPath(path);

    }

    public void contextDestroyed(ServletContextEvent sce) {
        throw new UnsupportedOperationException("Not supported yet.");
    }    
}