﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Main : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "CPU Scheduling")
        {
            Response.Redirect("CPUSched.aspx");
        }

        else if (DropDownList1.SelectedValue == "Memory Management")
        {
            Response.Redirect("MM.aspx");
        }

    }
}
