<%@ Page Language="C#"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Session_3</title>
</head>
<body>
    <%  //--���ѡG�o�q�{���O Inline Code�A�ɦW�� Session_3.aspx�C

    Session["my_test1"] = "***�u���A�@�H�P�o�@���s����***�ݪ���o�T���I";
    Session["my_test2"] = 1000;
    
    ArrayList A =new ArrayList();    
    for (int i = 1; i < 4; i++)
    {   //�g�JArrayList
        A.Add(i);
    }
    Session["my_test3"] = A;  //ArrayList A�����e�O1 2 3�C
    
    Response.Write("****���槹���I****<hr /><br />");    
    //-------------------------------------------------------------------------------------------------------
    
    
    if (Session["my_test1"] != null)
    {
          Response.Write("<br /> my_test1����----" + Session["my_test1"]);
    }

    if (Session["my_test2"] != null)
    {    
          Response.Write("<br /> my_test2����----" + Session["my_test2"]);
    }
    
    if (Session["my_test3"] != null)
    {
        ArrayList B = (ArrayList)Session["my_test3"];
        
        Response.Write("<br /> my_test3����----");   //Ū��ArrayList
        foreach (int item in B)
        {
            Response.Write(item);
        }
        
    }    
    %>
</body>
</html>
