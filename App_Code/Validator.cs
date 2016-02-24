using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Net.Mail;
using System.IO;


public class Validator
{
    public SqlConnection con = new SqlConnection("Data Source=ABHI10-PC;Initial Catalog=Max;Integrated Security=True");
    
    public Validator()
    { }

    #region DataBase Handling

    #region Connection Open And Close

    public SqlConnection Connection()
    {
        con.Open();
        return con;
    }

    public void Close()
    {
        con.Close();
    }

#endregion

    #region Fill DataSet And DataTable

    public DataSet FillDataset(string str)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand(str,con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();
        return ds;
    }

    public DataTable FillDataTable(string str)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand(str, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con.Close();
        return dt;
    }

    #endregion

    #region Data Name Duplicate Check

    public Boolean DuplicateCheck(string Duplicate, TextBox txt,Label lbl,string Message)
    {
        int status = 0;
        DataSet dsDuplicate = FillDataset(Duplicate);
        int RowCount = dsDuplicate.Tables[0].Rows.Count;
        for (int i = 0; i < RowCount; i++)
        {
            string a = dsDuplicate.Tables[0].Rows[i][0].ToString();
            if (a.Equals(txt.Text))
                status = 1;
        }
        if (status == 1)
        {
            lbl.Text = Message;
            lbl.Visible = true;
            lbl.Font.Bold = true;
            lbl.ForeColor = System.Drawing.Color.Red;
            return false;
        }
        else
        {
            lbl.Visible = false;
        }
        return true;
    }

    #endregion

    #region Insert Update Delete Query Execution 1 To 9 Parameters

    public int QueryExecute(string str, TextBox txt1)
    {
        con.Open();
        SqlCommand CommandObject = new SqlCommand(str, con);
        CommandObject.Parameters.AddWithValue("@Param1", txt1.Text);
        int i = CommandObject.ExecuteNonQuery();
        con.Close();
        return i;
    }
    public int QueryExecute(string str,TextBox txt1,TextBox txt2)
    {
        con.Open();
        SqlCommand CommandObject = new SqlCommand(str, con);
        CommandObject.Parameters.AddWithValue("@Param1", txt1.Text);
        CommandObject.Parameters.AddWithValue("@Param2", txt2.Text);
        int i = CommandObject.ExecuteNonQuery();
        con.Close();
        return i;
    }
    public int QueryExecute(string str, TextBox txt1, TextBox txt2, TextBox txt3)
    {
        con.Open();
        SqlCommand CommandObject = new SqlCommand(str, con);
        CommandObject.Parameters.AddWithValue("@Param1", txt1.Text);
        CommandObject.Parameters.AddWithValue("@Param2", txt2.Text);
        CommandObject.Parameters.AddWithValue("@Param3", txt3.Text);
        int i = CommandObject.ExecuteNonQuery();
        con.Close();
        return i;
    }

    public int QueryExecute(string str, TextBox txt1, TextBox txt2, TextBox txt3, TextBox txt4)
    {
        con.Open();
        SqlCommand CommandObject = new SqlCommand(str, con);
        CommandObject.Parameters.AddWithValue("@Param1", txt1.Text);
        CommandObject.Parameters.AddWithValue("@Param2", txt2.Text);
        CommandObject.Parameters.AddWithValue("@Param3", txt3.Text);
        CommandObject.Parameters.AddWithValue("@Param4", txt4.Text);
        int i = CommandObject.ExecuteNonQuery();
        con.Close();
        return i;
    }

    public int QueryExecute(string str, TextBox txt1, TextBox txt2, TextBox txt3, TextBox txt4, TextBox txt5)
    {
        con.Open();
        SqlCommand CommandObject = new SqlCommand(str, con);
        CommandObject.Parameters.AddWithValue("@Param1", txt1.Text);
        CommandObject.Parameters.AddWithValue("@Param2", txt2.Text);
        CommandObject.Parameters.AddWithValue("@Param3", txt3.Text);
        CommandObject.Parameters.AddWithValue("@Param4", txt4.Text);
        CommandObject.Parameters.AddWithValue("@Param5", txt5.Text);
        int i = CommandObject.ExecuteNonQuery();
        con.Close();
        return i;
    }

    public int QueryExecute(string str, TextBox txt1, TextBox txt2, TextBox txt3, TextBox txt4, TextBox txt5, TextBox txt6)
    {
        con.Open();
        SqlCommand CommandObject = new SqlCommand(str, con);
        CommandObject.Parameters.AddWithValue("@Param1", txt1.Text);
        CommandObject.Parameters.AddWithValue("@Param2", txt2.Text);
        CommandObject.Parameters.AddWithValue("@Param3", txt3.Text);
        CommandObject.Parameters.AddWithValue("@Param4", txt4.Text);
        CommandObject.Parameters.AddWithValue("@Param5", txt5.Text);
        CommandObject.Parameters.AddWithValue("@Param6", txt6.Text);
        int i = CommandObject.ExecuteNonQuery();
        con.Close();
        return i;
    }

    public int QueryExecute(string str, TextBox txt1, TextBox txt2, TextBox txt3, TextBox txt4, TextBox txt5, TextBox txt6,TextBox txt7)
    {
        con.Open();
        SqlCommand CommandObject = new SqlCommand(str, con);
        CommandObject.Parameters.AddWithValue("@Param1", txt1.Text);
        CommandObject.Parameters.AddWithValue("@Param2", txt2.Text);
        CommandObject.Parameters.AddWithValue("@Param3", txt3.Text);
        CommandObject.Parameters.AddWithValue("@Param4", txt4.Text);
        CommandObject.Parameters.AddWithValue("@Param5", txt5.Text);
        CommandObject.Parameters.AddWithValue("@Param6", txt6.Text);
        CommandObject.Parameters.AddWithValue("@Param7", txt7.Text);
        int i = CommandObject.ExecuteNonQuery();
        con.Close();
        return i;
    }
    public int QueryExecute(string str, TextBox txt1, TextBox txt2, TextBox txt3, TextBox txt4, TextBox txt5, TextBox txt6, TextBox txt7, TextBox txt8)
    {
        con.Open();
        SqlCommand CommandObject = new SqlCommand(str, con);
        CommandObject.Parameters.AddWithValue("@Param1", txt1.Text);
        CommandObject.Parameters.AddWithValue("@Param2", txt2.Text);
        CommandObject.Parameters.AddWithValue("@Param3", txt3.Text);
        CommandObject.Parameters.AddWithValue("@Param4", txt4.Text);
        CommandObject.Parameters.AddWithValue("@Param5", txt5.Text);
        CommandObject.Parameters.AddWithValue("@Param6", txt6.Text);
        CommandObject.Parameters.AddWithValue("@Param7", txt7.Text);
        CommandObject.Parameters.AddWithValue("@Param8", txt8.Text);
        int i = CommandObject.ExecuteNonQuery();
        con.Close();
        return i;
    }
    public int QueryExecute(string str, TextBox txt1, TextBox txt2, TextBox txt3, TextBox txt4, TextBox txt5, TextBox txt6, TextBox txt7, TextBox txt8,TextBox txt9)
    {
        con.Open();
        SqlCommand CommandObject = new SqlCommand(str, con);
        CommandObject.Parameters.AddWithValue("@Param1", txt1.Text);
        CommandObject.Parameters.AddWithValue("@Param2", txt2.Text);
        CommandObject.Parameters.AddWithValue("@Param3", txt3.Text);
        CommandObject.Parameters.AddWithValue("@Param4", txt4.Text);
        CommandObject.Parameters.AddWithValue("@Param5", txt5.Text);
        CommandObject.Parameters.AddWithValue("@Param6", txt6.Text);
        CommandObject.Parameters.AddWithValue("@Param7", txt7.Text);
        CommandObject.Parameters.AddWithValue("@Param8", txt8.Text);
        CommandObject.Parameters.AddWithValue("@Param9", txt9.Text);
        int i = CommandObject.ExecuteNonQuery();
        con.Close();
        return i;
    }
    public int QueryExecute(string str, TextBox txt1, TextBox txt2, TextBox txt3, TextBox txt4, TextBox txt5, TextBox txt6, TextBox txt7, TextBox txt8, TextBox txt9, TextBox txt10)
    {
        con.Open();
        SqlCommand CommandObject = new SqlCommand(str, con);
        CommandObject.Parameters.AddWithValue("@Param1", txt1.Text);
        CommandObject.Parameters.AddWithValue("@Param2", txt2.Text);
        CommandObject.Parameters.AddWithValue("@Param3", txt3.Text);
        CommandObject.Parameters.AddWithValue("@Param4", txt4.Text);
        CommandObject.Parameters.AddWithValue("@Param5", txt5.Text);
        CommandObject.Parameters.AddWithValue("@Param6", txt6.Text);
        CommandObject.Parameters.AddWithValue("@Param7", txt7.Text);
        CommandObject.Parameters.AddWithValue("@Param8", txt8.Text);
        CommandObject.Parameters.AddWithValue("@Param9", txt9.Text);
        CommandObject.Parameters.AddWithValue("@Param10", txt10.Text);
        int i = CommandObject.ExecuteNonQuery();
        con.Close();
        return i;
    }
    public int QueryExecute(string Query, string str1, string str2)
    {
        con.Open();
        SqlCommand CommandObject = new SqlCommand(Query, con);
        CommandObject.Parameters.AddWithValue("@Param1", str1);
        CommandObject.Parameters.AddWithValue("@Param2", str2);
        int i = CommandObject.ExecuteNonQuery();
        con.Close();
        return i;
    }

 #endregion

    #endregion

    #region Data Validation

    public Boolean Required(TextBox txt, Label lbl)
    {
        if (txt.Text.ToString() == "")
        {
            lbl.Text = "This Field Cannot Be Empty";
            lbl.Visible = true;
            lbl.Font.Bold=true;
            lbl.ForeColor = System.Drawing.Color.Red;
            txt.Focus();
            return false;
        }
        return true;
    }

   public Boolean Required(TextBox txt, Label lbl, string Message)
    {
        if (txt.Text.ToString() == "")
        {
            lbl.Text = Message;
            lbl.Visible = true;
            lbl.Font.Bold = true;
            lbl.ForeColor = System.Drawing.Color.Red;
            txt.Focus();
            return false;
        }
        return true;
    }

    public Boolean Alphabet(TextBox txt, Label lbl)
    {
        string s = txt.Text.ToString();
        for (int i = 0; i < s.Length; i++)
        {
            if ((int)s[i] >= 65 && (int)s[i] <= 90)
            {
                lbl.Visible = false;
            }
            else if ((int)s[i] >= 97 && (int)s[i] <= 122)
            {
                lbl.Visible = false;
            }
            else
            {
                lbl.Text = "This Field Can Contain Only Alphabets";
                lbl.Visible = true;
                lbl.Font.Bold = true;
                lbl.ForeColor = System.Drawing.Color.Red;
                txt.Focus();
                return false;
            }

        }
        return true;
    }

    public Boolean Numeric(TextBox txt, Label lbl)
    {
        string s = txt.Text.ToString();
        for (int i = 0; i < s.Length; i++)
        {
            if ((int)s[i] >= 48 && (int)s[i] <= 57)
            {
                lbl.Visible = false;
            }

            else
            {
                lbl.Text = "This Field Can Contain Only Nummeric Values";
                lbl.Visible = true;
                lbl.Font.Bold = true;
                lbl.ForeColor = System.Drawing.Color.Red;
                txt.Focus();
                return false;
            }

        }
        return true;
    }
    public Boolean Rate(TextBox txt, Label lbl)
    {
        string s = txt.Text.ToString();
        for (int i = 0; i < s.Length; i++)
        {
            if ((int)s[i] >= 48 && (int)s[i] <= 57)
            {
                lbl.Visible = false;
            }

            else if (s[i] == '.')
            {
                lbl.Visible = false;
            }
            else
            {
                lbl.Text = "This Field Can Contain Only Nummeric Values";
                lbl.Visible = true;
                lbl.Font.Bold = true;
                lbl.ForeColor = System.Drawing.Color.Red;
                txt.Focus();
                return false;
            }

        }
        return true;
    }

    public Boolean Decimal(TextBox txt, Label lbl)
    {
        string s = txt.Text.ToString();
        int c = 0;
        for (int i = 0; i < s.Length; i++)
        {
            if (s[i] == '.' && c == 1)
            {
                lbl.Text = "This Field Cannot Contain More Than One Decimal Points";
                lbl.Visible = true;
                lbl.Font.Bold = true;
                lbl.ForeColor = System.Drawing.Color.Red;
                txt.Focus();
                return false;
            }

            if (s[i] == '.' && c == 0)
                c = 1;
        }
        return true;

    }

#endregion

    #region Verfication Mail

    /// <summary>
    /// This Function Is Used To Send E Mails
    /// </summary>
    /// <param name="to">The E Mail Address Of The Receiver</param>
    public void Send(String to, string password,string subject,string body)
    {

        String from = "maxjewelleryperficio@gmail.com";

        System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
        mail.To.Add(to);
        mail.From = new MailAddress(from, "Max Jewellery", System.Text.Encoding.UTF8);
        mail.Subject = subject;
        mail.SubjectEncoding = System.Text.Encoding.UTF8;
        mail.Body = body + "\nYour Password Is " + password;
        mail.BodyEncoding = System.Text.Encoding.UTF8;
        mail.IsBodyHtml = true;
        mail.Priority = MailPriority.High;
        SmtpClient client = new SmtpClient();
        client.Credentials = new System.Net.NetworkCredential(from, "perficio");
        client.Port = 587;
        client.Host = "smtp.gmail.com";
        client.EnableSsl = true;
        try
        {
            client.Send(mail);
        }
        catch (Exception ex)
        {
            Exception ex2 = ex;
            string errorMessage = string.Empty;
            while (ex2 != null)
            {
                errorMessage += ex2.ToString();
                ex2 = ex2.InnerException;
            }
            HttpContext.Current.Response.Write(errorMessage);
        }
    }
    #endregion

    #region Grid View Bind Data

    public void BindData(GridView gvDetails, string str)
    {
        DataSet ds = FillDataset(str); 
          
        if (ds.Tables[0].Rows.Count > 0)
        {
            gvDetails.DataSource = ds;
            gvDetails.DataBind();
        }
        else
        {
            ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
            gvDetails.DataSource = ds;
            gvDetails.DataBind();
            int columncount = gvDetails.Rows[0].Cells.Count;
            gvDetails.Rows[0].Cells.Clear();
            gvDetails.Rows[0].Cells.Add(new TableCell());
            gvDetails.Rows[0].Cells[0].ColumnSpan = columncount+1;
            gvDetails.Rows[0].Cells[0].Text = "No Records Found";
        }
    }

    #endregion

    #region Data List Bind Data

    public void BindDataList(string Query,DataList dtl)
    {
        DataTable dset = new DataTable();
        dset = FillDataTable(Query);
        dtl.DataSource = dset;
        dtl.DataBind();
    }

    #endregion

    #region Password Salting

    public string Salt(string Password)
    {
        char[] temp = Password.ToCharArray();
        for (int i = 0; i < temp.Length / 2; i++)
        {
            char c = temp[i];
            temp[i] = temp[temp.Length - i - 1];
            temp[temp.Length - i - 1] = c;
        }
        Password = new string(temp);
        return Password;
    }

    #endregion

    #region File Upload Function

    /// <summary>
    /// This Function Inserts File To The Required Folder
    /// </summary>
    /// <param name="BrowserControl">This Is The Control For upload</param>
    /// <param name="SaveLocation">This Is The Path Of The File</param>
    /// <returns>It Retuns The Name Of The File Stored</returns>
    public string InsertFileToFolder(FileUpload BrowserControl, string SaveLocation)
    {
        string ImageFileName = "";
        string ImageSaveLocation = "";


        if (BrowserControl.PostedFile.ContentLength != 0)
        {
            ImageFileName = System.IO.Path.GetFileName(BrowserControl.PostedFile.FileName.ToString());
            ImageSaveLocation = HttpContext.Current.Server.MapPath(SaveLocation) + "\\" + ImageFileName;

            if (!System.IO.File.Exists(ImageSaveLocation))
            {
                BrowserControl.PostedFile.SaveAs(ImageSaveLocation);
            }
            else
            {
                System.IO.File.Delete(ImageSaveLocation);
                BrowserControl.PostedFile.SaveAs(ImageSaveLocation);
            }
        }

        return ImageFileName;
    }

    #endregion

    #region Image Delete From Folder

    public void FolderImageDelete(string location, string filename)
    {

        string a = System.Web.HttpContext.Current.Server.MapPath(location) + "\\" + filename;
        File.Delete(a);
    }

    public void FolderImageDelete(string path)
    {
        int status = 0;
        string[] allPaths = Directory.GetFiles(System.Web.HttpContext.Current.Server.MapPath(path));
        string Query = "Select location FROM Product_Images";
        DataSet ds = FillDataset(Query);
        int RowCount = ds.Tables[0].Rows.Count;

        foreach (string filePath in allPaths)
        {
            status = 0;
            for (int i = 0; i < RowCount; i++)
            {
                string a = ds.Tables[0].Rows[i][0].ToString();
                string q = System.Web.HttpContext.Current.Server.MapPath(path);
                a = a.Remove(0, 11);
                string b = q + "\\" + a;
                if (b.Equals(filePath) == true)
                    status = 1;
            }
            if (status == 0)
                File.Delete(filePath);
        }
    }

    #endregion

}