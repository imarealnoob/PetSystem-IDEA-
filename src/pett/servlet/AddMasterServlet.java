package pett.servlet;

import pett.bean.MasterBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddMasterServlet")
public class AddMasterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                 doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String mrId = new String(request.getParameter("mrId"));
        String mrName = new String(request.getParameter("mrName"));
        String mrSex = new String(request.getParameter("mrSex"));
        String mrAge = new String(request.getParameter("mrAge"));
        String mrAddress = new String(request.getParameter("mrAddress"));
        String mrTel = new String(request.getParameter("mrTel"));
        String mrPet = new String(request.getParameter("mrPet"));
        System.out.println(mrId);
        System.out.println(mrName);
        System.out.println(mrSex);
        System.out.println(mrAge);
        System.out.println(mrAddress);
        System.out.println(mrTel);
        System.out.println(mrPet);
        MasterBean db = new MasterBean();
        if (db.addmaster(mrId,mrName,mrSex,mrAge,mrAddress,mrTel,mrPet)){
            response.sendRedirect("masterbox/success.jsp");
        }
    }
}
