package fr.epita.quiz.web.actions;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.epita.quiz.web.services.QuestionsServices;
/**
 * <h3>Description</h3>
 * <p>This class allows to jump to editquestion.jsp</p>
 *
 * <h3>Usage</h3>
 * <p>This class should be used as follows:
 *   <pre><code><form action="jumptoquestion" method="post">
 * 
 *   </code></pre>
 * </p>
 *
 * @since $${1.0.0}
 * @see See also $$http://thomas-broussard.fr/}
 * @author ${Qiao & Hao}
 *
 * ${spring}
 */


public class JumptoQuestionServlet extends SpringServlet{
	@Inject
	QuestionsServices qs;
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		qs.sendAllQuestions(request, response);
			response.sendRedirect("editquestion.jsp");

		
		}
		
	}