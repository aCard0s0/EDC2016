using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP2
{
    public partial class Courses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { }

        protected void ddl_grau_SelectedIndexChanged(object sender, EventArgs e)
        {
            XMLdb.XPath = "/cursos/curso[@Grau='" + ddl_grau.SelectedValue + "' and @Local='" + dll_local.SelectedValue + "']";
        }

        protected void dll_local_SelectedIndexChanged(object sender, EventArgs e)
        {
            XMLdb.XPath = "/cursos/curso[@Grau='" + ddl_grau.SelectedValue + "' and @Local='" + dll_local.SelectedValue + "']";
        }

        protected void GridView1_DataBound(object sender, EventArgs e)
        {
            XMLdb.XPath = "/cursos/curso[@Grau='" + ddl_grau.SelectedValue + "' and @Local='" + dll_local.SelectedValue + "']";
        }
    }
}