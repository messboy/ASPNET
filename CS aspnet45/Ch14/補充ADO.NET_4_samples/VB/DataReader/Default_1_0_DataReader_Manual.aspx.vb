'----自己（宣告）寫的----
Imports System
Imports System.Web.Configuration
Imports System.Data
Imports System.Data.SqlClient
'----自己（宣告）寫的----

Partial Class test_ADO_NET_Default_1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        '=======微軟SDK文件的範本=======
        Dim Conn As SqlConnection = New SqlConnection
        '----上面已經事先寫好 Imports System.Web.Configuration ----
        Conn.ConnectionString = WebConfigurationManager.ConnectionStrings("testConnectionString").ConnectionString
        '----或是寫成下面這一行 (連結資料庫)----
        'Dim Conn As New SqlConnection(WebConfigurationManager.ConnectionStrings("testConnectionString").ConnectionString)

        Dim dr As SqlDataReader = Nothing

        Dim cmd As SqlCommand
        cmd = New SqlCommand("select id,test_time,summary,author from test", Conn)
        '---- 或是寫成這一行 Dim cmd As New SqlCommand("select id,test_time,summary,author from test", Conn)

        Try     '==== 以下程式，只放「執行期間」的指令！=================
            '== 第一，連結資料庫。
            Conn.Open()   '---- 這時候才連結DB

            '== 第二，執行SQL指令。
            dr = cmd.ExecuteReader()   '---- 這時候執行SQL指令，取出資料

            '==第三，自由發揮，把執行後的結果呈現到畫面上。
            GridView1.DataSource = dr
            GridView1.DataBind()

        Catch ex As Exception   '---- 如果程式有錯誤或是例外狀況，將執行這一段
            Response.Write("<b>Error Message----  </b>" + ex.ToString() + "<HR/>")

        Finally
            '== 第四，釋放資源、關閉資料庫的連結。
            '---- Always call Close when done reading.
            If Not (dr Is Nothing) Then
                cmd.Cancel()
                '----關閉DataReader之前，一定要先「取消」SqlCommand
                '參考資料： http://blog.darkthread.net/blogs/darkthreadtw/archive/2007/04/23/737.aspx
                dr.Close()
            End If

            '---- Close the connection when done with it.
            If (Conn.State = ConnectionState.Open) Then
                Conn.Close()
                Conn.Dispose() '---- 一開始宣告有用到 New的,最後必須以 .Dispose()結束
            End If

            GridView1.Dispose()
        End Try
    End Sub
End Class
