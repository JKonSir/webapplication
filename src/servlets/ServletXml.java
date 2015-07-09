package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/ServletXml")
public class ServletXml extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletXml() {
        super();
        // TODO Auto-generated constructor stub
    }

    public void marshallExample(HttpServletRequest request, HttpServletResponse response) {
        try {
            HttpSession session = request.getSession();
            ServerBean serverBean = (ServerBean) session.getAttribute("serverBean");
            PrintWriter printWriter = response.getWriter();
            if (serverBean != null) {
                JAXBContext context = JAXBContext.newInstance(ServerBean.class);
                Marshaller marshaller = context.createMarshaller();

                marshaller.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, Boolean.TRUE);
                marshaller.marshal(serverBean, printWriter);
            }
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (JAXBException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    // public void getXml(HttpServletRequest request, HttpServletResponse
    // response) {
    //
    // PrintWriter printWriter = null;
    // try {
    // HttpSession session = request.getSession(true);
    // ServerBean serverBean = (ServerBean) session.getAttribute("serverBean");
    // printWriter = response.getWriter();
    // if (serverBean != null) {
    // request.getServletContext().getRequestDispatcher("/response.jsp")
    // .forward(request, response);
    // } else {
    // printWriter.println("<html>");
    // printWriter.println("<head>");
    // response.setCharacterEncoding("UTF-8");
    // printWriter.println("<meta http-equiv='refresh' content='5;index.jsp'>");
    // printWriter.println("</head>");
    // printWriter.println("<body>");
    // printWriter.println("<p>Îáúåêò çàäàíèÿ íå íàéäåí!!!</p>");
    // printWriter.println("<p>Íàæìèòå äëÿ íåìåäëåííîãî ïåðåõîäà</p>");
    // printWriter.println("<a href='index.jsp'>index.jsp</a>");
    // printWriter.println("</body>");
    // printWriter.println("</html>");
    // }
    // } catch (IOException ex) {
    // System.out.println(ex.getMessage());
    // } catch (ServletException ex) {
    // System.out.println(ex.getMessage());
    // } finally {
    // printWriter.close();
    // }
    // }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // TODO Auto-generated method stub
        marshallExample(request, response);
        // getXml(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // TODO Auto-generated method stub
        // getXml(request, response);
    }
}
