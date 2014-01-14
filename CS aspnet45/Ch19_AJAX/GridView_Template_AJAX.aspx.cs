using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//=======================
using System.Text;   // StringBuilder會用到。



public partial class Book_Sample_Ch19_AJAX_GridView_Template_AJAX : System.Web.UI.Page
{
    protected void ChangeQuantity(object sender, int delta)
    {
        Label quantityLabel = (Label)((Button)sender).FindControl("QuantityLabel");
        int currentQuantity = Int32.Parse(quantityLabel.Text);
        currentQuantity = Math.Max(0, currentQuantity + delta);

        quantityLabel.Text = currentQuantity.ToString(System.Globalization.CultureInfo.InvariantCulture);
    }

    protected void OnDecreaseQuantity(object sender, EventArgs e)
    {
        ChangeQuantity(sender, -1);
    }

    protected void OnIncreaseQuantity(object sender, EventArgs e)
    {
        ChangeQuantity(sender, 1);
    }

    //******************************************************************************
    protected void Button1_Click(object sender, EventArgs e)
    {
        StringBuilder sb = new StringBuilder();
        sb.Append("<hr /><font color=red>Beverage order : </font><hr />");

        foreach (GridViewRow row in GridView1.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {
                Label quantityLabel = (Label)row.FindControl("QuantityLabel");
                int currentQuantity = Int32.Parse(quantityLabel.Text);
                sb.Append(row.Cells[0].Text + "  :  <font color=blue>" + currentQuantity + "</font><br/>");
            }
        }
        SummaryLabel.Text = sb.ToString();

    }

}