<%@ Page Language="VB" %>

<% 
' ���ѡG��� For�j��
    Dim I, my_sum As Integer
             my_sum = 0

For I = 100 to 1 STEP -1
        my_sum = my_sum + I
        Response.Write(I & "<br>")
Next

    Response.Write("�q1�֥[��100�F<hr>�p��1+2+3+4+....+99+100�A���׬O--- ")
    Response.Write(my_sum)
    
%>