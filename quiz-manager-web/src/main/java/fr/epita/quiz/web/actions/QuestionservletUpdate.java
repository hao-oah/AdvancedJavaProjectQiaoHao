package fr.epita.quiz.web.actions;

import java.io.IOException;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.epita.quiz.datamodel.Question;
import fr.epita.quiz.datamodel.QuestionType;
import fr.epita.quiz.services.MCQChoiceDAO;
import fr.epita.quiz.services.QuestionDAO;
import fr.epita.quiz.services.QuestionOperationsService;
import fr.epita.quiz.web.services.QuestionsServices;
/**
 * <h3>Description</h3>
 * <p>This class allows to update a question using spring framework</p>
 *
 * <h3>Usage</h3>
 * <p>This class should be used as follows:
 *   <pre><code><form action="questionupdate" method="post">
 * 
 *   </code></pre>
 * </p>
 *
 * @since $${1.0.0}
 * @see See also $${http://thomas-broussard.fr/}
 * @author ${Qiao & Hao}
 *
 * ${servlet}
 */
public class QuestionservletUpdate extends SpringServlet{
	/**
	 * 
	 */
	
	@Inject
	MCQChoiceDAO mcqChoiceDAO;
	@Inject
	QuestionDAO questionDAO;
	@Inject
	QuestionOperationsService qoService;
	@Inject
	QuestionsServices qs;
	
	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

    	Question question = qs.getQuestion(request,response);
        questionDAO.update(question);
        response.sendRedirect("welcome.jsp");
    }
    

    
}
