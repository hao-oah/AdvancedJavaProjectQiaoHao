package fr.epita.quiz.web.actions;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.epita.quiz.datamodel.MCQChoice;
import fr.epita.quiz.services.MCQChoiceDAO;
import fr.epita.quiz.services.QuestionDAO;
import fr.epita.quiz.web.services.QuestionsServices;
/**
 * <h3>Description</h3>
 * <p>This class allows to delete a choice using Spring</p>
 *
 * <h3>Usage</h3>
 * <p>This class should be used as follows:
 *   <pre><code><form action="choicedelete" method="post">
 * 
 *   </code></pre>
 * </p>
 *
 * @since $${1.0.0}
 * @see See also $${http://thomas-broussard.fr/}
 * @author ${Qiao & Hao}
 *
 * ${spring}
 */
public class MCQservletDelete extends SpringServlet{
	@Inject
	MCQChoiceDAO mcqChoiceDAO;
	@Inject
	QuestionDAO questionDAO;
	@Inject
	QuestionsServices qs;

	@Override
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		MCQChoice mcqc = qs.getselectChoice(request,response);
        mcqChoiceDAO.delete(mcqc);
        response.sendRedirect("welcome.jsp");
		}
}
