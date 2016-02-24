using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

using Microsoft.SqlServer.Management.Smo;
using Microsoft.SqlServer.Management.Common;


public partial class Administrator_DBBack : System.Web.UI.Page
{
    Validator z = new Validator();

    #region File Delete From Folder

    void FolderFileDelete()
    {

        string[] allPaths = Directory.GetFiles(Server.MapPath("~/Backup"));
        foreach (string filePath in allPaths)
                File.Delete(filePath);
    }

    #endregion

    #region Backup

    public void BackupDataBase()
    {
        Backup sqlBackup = new Backup();

        sqlBackup.Action = BackupActionType.Database;
        sqlBackup.BackupSetDescription = "BackUp of:" + "Max" + "on" + DateTime.Now.ToShortDateString();
        sqlBackup.BackupSetName = txtBackupName.Text;
        sqlBackup.Database = "Max";
        txtBackupName.Text = txtBackupName.Text.Trim();


        BackupDeviceItem deviceItem = new BackupDeviceItem(Server.MapPath("~/Backup/") + txtBackupName.Text + DateTime.Now.ToShortDateString() + ".bak", DeviceType.File);

        ServerConnection connection1 = new ServerConnection(z.con);

        Server sqlServer = new Server(connection1);
        sqlServer.ConnectionContext.StatementTimeout = 60 * 60 * 60;
        Database db = sqlServer.Databases["Max"];

        sqlBackup.Initialize = true;
        sqlBackup.Checksum = true;
        sqlBackup.ContinueAfterError = true;

        sqlBackup.Devices.Add(deviceItem);
        sqlBackup.Incremental = false;

        sqlBackup.ExpirationDate = DateTime.Now.AddDays(3);
        sqlBackup.LogTruncation = BackupTruncateLogType.Truncate;

        sqlBackup.FormatMedia = false;
        sqlBackup.SqlBackup(sqlServer);
        sqlBackup.Devices.Remove(deviceItem);
        
    }

    #endregion

    #region Restore

    public void RestoreDatabase()
    {
        Restore sqlRestore = new Restore();

        sqlRestore.Action = RestoreActionType.Database;
        sqlRestore.NoRecovery = false;
        sqlRestore.Database = "Max";
        sqlRestore.ReplaceDatabase = true;
        sqlRestore.PercentCompleteNotification = 10;

        BackupDeviceItem deviceItem = new BackupDeviceItem(Server.MapPath("~/Backup/"), DeviceType.File);
        ServerConnection connection = new ServerConnection(z.con);
        Server sqlServer = new Server(connection);
        sqlServer.ConnectionContext.StatementTimeout = 60 * 60 * 60;
        sqlRestore.Checksum = true;
        sqlRestore.ContinueAfterError = true;
        sqlRestore.Devices.Add(deviceItem);

        sqlRestore.SqlRestore(sqlServer);
        sqlRestore.Devices.Remove(deviceItem);

    }

    #endregion

    protected void Page_Load(object sender, EventArgs e)
    {
         if (Session["User"] == null)

        { Response.Redirect("~/Administrator/AdminLogin.aspx?ADD=~/Administrator/BackupAndRestore.aspx"); }

    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        FolderFileDelete();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "temp", "<script language='javascript'>alert('Backup Successful');</script>", false);
        regularExpression.Enabled = true;
        requiredExpression.Enabled = true;
        requiredExpression.Validate();
        regularExpression.Validate();
        if(Page.IsValid)
        BackupDataBase();
        lblBackupDisplay.Visible = true;
        lblBackupDisplay.Text = "BackUp Completed";
        btnRestore.Enabled = false;
        txtBackupName.Enabled = false;
        btnSave.Enabled = false;

        string InsertLog = "INSERT INTO Log_Desc(Date_Time,Description) VALUES(@Param1,@Param2);";
        int statusLog = z.QueryExecute(InsertLog, System.DateTime.Now.ToString(), "Backup File Updated");
    }

    protected void btnRestore_Click(object sender, EventArgs e)
    {
        
        regularExpression.Enabled = false;
        requiredExpression.Enabled = false;
        txtBackupName.Enabled = false;
        btnSave.Enabled = false;
        RestoreDatabase();
        lblRestoreDisplay.Visible = true;
        lblRestoreDisplay.Text = "Restore Successful";
        btnRestore.Enabled = false;
        txtBackupName.Enabled = false;
        btnSave.Enabled = false;

        string InsertLog = "INSERT INTO Log_Desc(Date_Time,Description) VALUES(@Param1,@Param2);";
        int statusLog = z.QueryExecute(InsertLog, System.DateTime.Now.ToString(), "Backup Restored");

    }
}


