using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP2
{
    public partial class coursesdetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            XmlDataSource1.DataFile = "http://acesso.ua.pt/xml/curso.asp?i=" + Request.QueryString["ID"];
            XmlDataSource1.DataBind();
        }

        protected void XmlDataSource1_Load(object sender, EventArgs e)
        {
            if (XmlDataSource1.GetXmlDocument().DocumentElement.Attributes["guid"].Value == "")
            {
                Response.Redirect("~/Courses");
            }
        }
    }
}