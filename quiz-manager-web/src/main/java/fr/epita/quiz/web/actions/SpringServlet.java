/**
 * Advanced Java Project 
 * Code application : Implement springServlet 
 * Composant : Servlet
 */
package fr.epita.quiz.web.actions;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import org.springframework.web.context.support.SpringBeanAutowiringSupport;

/**
 * <h3>Description</h3>
 * <p>This class allows to implement SpringServelet</p>
 *
 * <h3>Usage</h3>
 * <p>This class should be used as follows:
 *   <pre><code>${type_name} instance = new ${type_name}();</code></pre>
 * </p>
 *
 * @since $${1.0.0}
 * @see See also $${http://thomas-broussard.fr/}
 * @author ${Qiao & Hao}
 *
 * ${tags}
 */
public class SpringServlet extends HttpServlet {

	/*
	 * (non-Javadoc)
	 * @see javax.servlet.GenericServlet#init()
	 */
	@Override
	public void init() throws ServletException {
		SpringBeanAutowiringSupport.processInjectionBasedOnCurrentContext(this);
	}

}
