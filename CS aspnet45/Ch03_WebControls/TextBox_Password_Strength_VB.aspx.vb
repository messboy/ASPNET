
Partial Class Book_Sample_Ch03_WebControls_TextBox_Password_Strength_VB
    Inherits System.Web.UI.Page

    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles TextBox1.TextChanged

        Dim password_strength As Integer = 0

        If TextBox1.Text.Length > 3 Then
            '-- 密碼長度超過三個字
            password_strength += 1
        End If

        '**********************************************
        '*** 沿用（上集）第十八章 FileUpload的範例。 ***
        '-- 註解：用「字串陣列」來存放允許輸入的密碼。
        Dim allowedNumber As String() = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"}

        For i = 0 To (allowedNumber.Length - 1)
            If TextBox1.Text.IndexOf(allowedNumber(i)) > 0 Then
                password_strength += 1
                Exit For   '-- 離開 For迴圈
            End If
        Next

        Dim allowedSignal As String() = {"~", "!", "@", "#", "$", "%", "^", "&", "*", "(", ")"}

        For j = 0 To (allowedSignal.Length - 1)
            If TextBox1.Text.IndexOf(allowedSignal(j)) > 0 Then
                password_strength += 1
                Exit For   '-- 離開 For迴圈
            End If
        Next

        Select Case password_strength
            Case 0
                Response.Write("<h3><font color=red>密碼強度不足！至少需要三個字以上！</font></h3>")
            Case 1   '-- 強度低
                Image1.ImageUrl = "MIS2000Lab_book_image\Password_01.jpg"
            Case 2   '-- 強度中
                Image1.ImageUrl = "MIS2000Lab_book_image\Password_02.jpg"
            Case 3   '-- 強度高
                Image1.ImageUrl = "MIS2000Lab_book_image\Password_03.jpg"
            Case Else
                Exit Select
        End Select

    End Sub
End Class
