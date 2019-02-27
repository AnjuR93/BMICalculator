<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BMICalculator.aspx.cs" Inherits="Project2.BMICalculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
        <script type="text/javascript">
        function ShowLabel() {
        document.getElementById('lblBMI').style.display = 'inherit'; }
        </script>
        <title>BMI Calculator</title>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <link href="Content/bootstrap.min.css" rel="stylesheet"/>
        <link href="Content/site.css" rel="stylesheet"/>
        <script src="Scripts/jquery-1.9.1.min.js"></script>
        <script src="Scripts/bootstrap.min.js"></script>
        <link href="Content/BMICalculatorStyle.css" rel="stylesheet" />
</head>
<body>
<header>
    <figure>
    <img src="Images/Logo525200.png" alt="Application Logo"/>
    </figure>
</header>
<main>
    <h1>BMI Calculator</h1>
    <form id="form2" runat="server">
        <label for="txtWeight">Enter your weight:</label>
        <asp:TextBox ID="txtWeight" runat="server" CssClass="entry" TabIndex="1"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
            runat="server" CssClass="validator"
            ErrorMessage="Weight is a required field." 
            ControlToValidate="txtWeight" Display="Dynamic" 
            ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1"
             runat="server" CssClass="validator" 
             ErrorMessage="Weight must range from 1 to 999."
             ControlToValidate="txtWeight" Display="Dynamic"
             MaximumValue="9999" MinimumValue="1" 
            Type="Double"
            ForeColor="Red" ></asp:RangeValidator><br />

        <label id="txtHeight">Enter your height:</label><br />
        <br />
        <label for="txtHeightFeet">feet:</label>
        <asp:TextBox ID="txtHeightFeet" runat="server" CssClass="entry" TabIndex="2"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
            runat="server" CssClass="validator"
            ErrorMessage="Height in feet is a required field."
            ControlToValidate="txtHeightFeet" Display="Dynamic" 
            ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator2"
            runat="server" CssClass="validator"
            ErrorMessage="Height in feet must range from 1 to 999."
            ControlToValidate="txtHeightFeet" Display="Dynamic"  ForeColor="Red" 
            MaximumValue="9999" MinimumValue="1" 
            Type="Double" TabIndex="2"></asp:RangeValidator><br />
 
        <label for="textHeightInches">inches:</label>
        <asp:TextBox ID="textHeightInches" runat="server" CssClass="entry" TabIndex="3"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
            runat="server" CssClass="validator"
            ErrorMessage="Height in inches is a required field."
            ControlToValidate="textHeightInches" Display="Dynamic" 
            ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator3" 
            runat="server" CssClass="validator"
            ErrorMessage="Height in inches must range from 1 to 999."
            ControlToValidate="textHeightInches" Display="Dynamic" ForeColor="Red"
            MaximumValue="9999" MinimumValue="1" 
            Type="Double"></asp:RangeValidator><br />
 
        <label for="txtName">Enter your Name:</label>
        <asp:TextBox ID="txtName" runat="server" CssClass="entry" TabIndex="4"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" 
            runat="server" CssClass="validator"
            ErrorMessage="Name is a required field."
            ControlToValidate="txtName" Display="Dynamic" 
            ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
            runat="server" CssClass="validator" 
            ValidationExpression="[A-Za-z]+"
            ErrorMessage="Only letters are allowed, no digits!"
            ControlToValidate="txtName" Display="Dynamic"></asp:RegularExpressionValidator>
        <br/>

        <asp:Button ID="btnCalculate" runat="server" Text="Calculate BMI" 
            CssClass="button" 
            OnClick="btnCalculate_Click" 
            OnClientClick="ShowLabel();" TabIndex="5"/>
        <asp:Button ID="btnClear" runat="server" Text="Clear" 
            CssClass="button"  
            OnClick="btnClear_Click"
            CausesValidation="False" TabIndex="6"/><br />
        <br />
        <asp:Label ID="lblBMI" runat="server" 
            type="hidden"></asp:Label>
        <br />
        <br />
        <asp:Image runat="server" ID="Image2" src="Images/Untitled.png" alt="BMI Classification"/>
        <br />
        <br />
        <div></div>

  </form>
 </main>
</body>
</html>
