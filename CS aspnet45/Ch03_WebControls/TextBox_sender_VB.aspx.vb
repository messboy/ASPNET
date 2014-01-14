
Partial Class Book_Sample_Ch03_WebControls_TextBox_sender
    Inherits System.Web.UI.Page

    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs) _
        Handles TextBox1.TextChanged, TextBox2.TextChanged
        '*** 重點是上面 Handles這一段。兩個 TextBox共用同一個事件。 ***

        Dim TB As TextBox = sender
        Response.Write("<H3>" & TB.Text & "</H3>")


    End Sub
End Class
