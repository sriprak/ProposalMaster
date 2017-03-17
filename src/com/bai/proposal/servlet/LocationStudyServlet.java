package com.bai.proposal.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.docx4j.openpackaging.packages.WordprocessingMLPackage;
import org.docx4j.wml.Text;

import com.bai.proposal.file.Docx4j;

/**
 * Servlet implementation class LocationStudyServlet
 */
@WebServlet("/LocationStudyServlet")
public class LocationStudyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LocationStudyServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		final String[] memName;
		final String[] prodName;
		final String[] memDesgn;
		final String[] pocName;
		final String[] pocMobNumber;
		final String[] pocDesgn;
		final String[] pocEmail;
		final String[] baPocName;
		final String[] baPocMobNumber;
		final String[] baPocDesgn;
		final String[] baPocEmail;
		final String[] baPocAddress;

		final String fullName = request.getParameter("fullName");
		final String shortName = request.getParameter("shortName");
		final String descpt = request.getParameter("descpt");
		final String address = request.getParameter("address");
		final String telNo = request.getParameter("telNum");
		final String faxNum = request.getParameter("faxNum");
		final String webSite = request.getParameter("webSite");
		final String bkgInfo = request.getParameter("bkgInfo");
		final String scopeWork = request.getParameter("scopeWork");
		final String suppInfo = request.getParameter("suppInfo");
		final int manDay = Integer.parseInt(request.getParameter("manDay"));
		final int duration = Integer.parseInt(request.getParameter("duration"));
		final double proffee = Double.parseDouble(request
				.getParameter("proffee"));
		final double servTax = Double.parseDouble(request
				.getParameter("servTax"));
		final double ope = Double.parseDouble(request.getParameter("ope"));
		final double totalAmt = Double.parseDouble(request
				.getParameter("totalAmt"));
		final double advFee = Double
				.parseDouble(request.getParameter("advFee"));
		final String date = new SimpleDateFormat("dd/MM/yyyy")
				.format(new Date());
		final String fodate = new SimpleDateFormat("yyyyMMdd")
				.format(new Date());
		
		HttpSession session = request.getSession();
		session.setAttribute("shortName", shortName);

		prodName = request.getParameterValues("prodName");
		memName = request.getParameterValues("memName");
		memDesgn = request.getParameterValues("memDesgn");
		pocName = request.getParameterValues("pocName");
		pocMobNumber = request.getParameterValues("pocMobNumber");
		pocDesgn = request.getParameterValues("pocDesgn");
		pocEmail = request.getParameterValues("pocEmail");
		baPocName = request.getParameterValues("baPocName");
		baPocAddress = request.getParameterValues("baPocAddress");
		baPocMobNumber = request.getParameterValues("baPocMobNumber");
		baPocDesgn = request.getParameterValues("baPocDesgn");
		baPocEmail = request.getParameterValues("baPocEmail");

		try {
			String filePath = "E:\\PROPOSAL FORMAT\\PROPOSAL FORMAT\\Proposal Docx\\";
			String file = "Location study.docx";

			Docx4j docx4j = new Docx4j();
			WordprocessingMLPackage template = docx4j.getTemplate(filePath
					+ file);

			// MainDocumentPart documentPart = template.getMainDocumentPart();

			List<Object> texts = Docx4j.getAllElementFromObject(
					template.getMainDocumentPart(), Text.class);
			docx4j.searchAndReplace(texts, new HashMap<String, Object>() {
				/**
					 * 
					 */
				private static final long serialVersionUID = 1L;
				{
					this.put("${ fullName }", fullName);
					this.put("${ shortName }", shortName + " ");
					this.put("${ descpt }", " " + descpt);
					this.put("${ address }", " " + address);
					this.put("${ telNum }", " " + telNo);
					this.put("${ faxNum }", " " + faxNum);
					this.put("${ webSite }", " " + webSite + " ");
					this.put("${ bkgInfo }", bkgInfo);
					this.put("${ scopeWork }", scopeWork);
					this.put("${ suppInfo }", suppInfo);
					this.put("${ manDay }", " " + manDay + " ");
					this.put("${ duration }", duration);
					this.put("${ proffee }", proffee);
					this.put("${ servTax }", servTax);
					this.put("${ ope }", ope);
					this.put("${ totalAmt }", totalAmt);
					this.put("${ advFee }", advFee);
					this.put("${ date }", date);
					this.put("${ fodate }", fodate);
					this.put("${ prodName }",
							" " + (StringUtils.join(prodName, ", ")) + " ");
					this.put("${ memName }",
							" " + (StringUtils.join(memName, ", ")) + " ");
					this.put("${ memDesgn }",
							" " + (StringUtils.join(memDesgn, ", ")) + " ");
					this.put("${ pocName }",
							" " + (StringUtils.join(pocName, ", ")) + " ");
					this.put("${ pocMobNumber }",
							" " + (StringUtils.join(pocMobNumber, ", ")) + " ");
					this.put("${ pocDesgn }",
							" " + (StringUtils.join(pocDesgn, ", ")) + " ");
					this.put("${ pocEmail }",
							" " + (StringUtils.join(pocEmail, ", ")) + " ");
					this.put("${ baPocName }",
							" " + (StringUtils.join(baPocName, ", ")) + " ");
					this.put("${ baPocAddress }",
							" " + (StringUtils.join(baPocAddress, ", ")) + " ");
					this.put("${ baPocMobNumber }",
							" " + (StringUtils.join(baPocMobNumber, ", "))
									+ " ");
					this.put("${ baPocDesgn }",
							" " + (StringUtils.join(baPocDesgn, ", ")) + " ");
					this.put("${ baPocEmail }",
							" " + (StringUtils.join(baPocEmail, ", ")) + " ");
				}

				@Override
				public Object get(Object key) {
					// TODO Auto-generated method stub
					return super.get(key);
				}
			});
			docx4j.writeDocxToStream(template,
					"C:\\Users\\BAI-MUM\\Desktop\\Reports\\Location Study Reports\\Location_Study_"
							+ shortName + ".docx");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		RequestDispatcher rd = request.getRequestDispatcher("FileUploadLocStdServlet");
		rd.forward(request, response);

	}

}
