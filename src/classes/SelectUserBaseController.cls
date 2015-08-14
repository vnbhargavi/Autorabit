public class SelectUserBaseController{   
    public String selectedUserEmail{set;get;}
    public String selectedUserIds{set;get;}
    public String selectedUserNames{set;get;}
    
    public SelectUserBaseController()
    {
        // a pre-text to guide the user to click on the icon to select one or may records
        selectedUserNames = '-- Click on the icon to select User/s --';
        selectedUserIds = '';
        selectedUserEmail ='';
    }
}