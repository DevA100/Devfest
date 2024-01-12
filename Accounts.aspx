<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Accounts.aspx.cs" Inherits="PerformanceManagement.Accounts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="section-header">
        <h1>Accounts Department</h1>
    </div>
    <div class="container">
        <%-- 1--%>
        <div class="row">
            <div class="col-lg-5 col-sm-12">
                <p>
                    1.	Response time for treatment of requests
                </p>
            </div>
            <div class="col-lg-7 col-sm-12 ITradio1">
                <div class="row">
                    <div class="col-lg-2 col-sm-12">
                        <label>Very Poor</label><br />
                        <asp:RadioButton ID="responsetime_verypoor" runat="server" GroupName="responsetime" Font-Bold="False" AutoPostBack="True" />
                    </div>
                    <div class="col-lg-2 col-sm-12">
                        <label>Poor</label><br />
                        <asp:RadioButton ID="responsetime_poor" runat="server" GroupName="responsetime" Font-Bold="False" AutoPostBack="True" />
                    </div>
                    <div class="col-lg-2 col-sm-12">
                        <label>Good</label><br />
                        <asp:RadioButton ID="responsetime_good" runat="server" GroupName="responsetime" Font-Bold="False" AutoPostBack="True" />
                    </div>
                    <div class="col-lg-2 col-sm-12">
                        <label>Very Good</label><br />
                        <asp:RadioButton ID="responsetime_verygood" runat="server" GroupName="responsetime" Font-Bold="False" AutoPostBack="True" />
                    </div>
                    <div class="col-lg-2 col-sm-12">
                        <label>Excellent</label><br />
                        <asp:RadioButton ID="responsetime_excellent" runat="server" GroupName="responsetime" Font-Bold="False" AutoPostBack="True" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <%-- 2--%>
        <div class="row">
            <div class="col-lg-5 col-sm-12">
                <p>
                    2.	Rate posting accuracy
                </p>
            </div>
            <div class="col-lg-7 col-sm-12 ITradio1">
                <div class="row">
                    <div class="col-lg-2 col-sm-12">
                        <label>Very Poor</label><br />
                        <asp:RadioButton ID="accuracy_verypoor" runat="server" GroupName="accuracy" Font-Bold="False" AutoPostBack="True" />
                    </div>
                    <div class="col-lg-2 col-sm-12">
                        <label>Poor</label><br />
                        <asp:RadioButton ID="accuracy_poor" runat="server" GroupName="accuracy" Font-Bold="False" AutoPostBack="True" />
                    </div>
                    <div class="col-lg-2 col-sm-12">
                        <label>Good</label><br />
                        <asp:RadioButton ID="accuracy_good" runat="server" GroupName="accuracy" Font-Bold="False" AutoPostBack="True" />
                    </div>
                    <div class="col-lg-2 col-sm-12">
                        <label>Very Good</label><br />
                        <asp:RadioButton ID="accuracy_verygood" runat="server" GroupName="accuracy" Font-Bold="False" AutoPostBack="True" />
                    </div>
                    <div class="col-lg-2 col-sm-12">
                        <label>Excellent</label><br />
                        <asp:RadioButton ID="accuracy_excellent" runat="server" GroupName="accuracy" Font-Bold="False" AutoPostBack="True" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--2--%>
    <br />
    <br />
    <div class="container">
        <div class="row">
            <div class="col-lg-5 col-sm-12">
                <p>
                    3.	Level of professionalism
                    <br />
                </p>
            </div>
            <div class="col-lg-7 col-sm-12 ITradio1">
                <div class="row">
                    <div class="col-lg-2 col-sm-12">
                        <label>Very Poor</label><br />
                        <asp:RadioButton ID="professionalism_verypoor" runat="server" GroupName="professionalism" Font-Bold="False" AutoPostBack="True" />
                    </div>
                    <div class="col-lg-2 col-sm-12">
                        <label>Poor</label><br />
                        <asp:RadioButton ID="professionalism_poor" runat="server" GroupName="professionalism" Font-Bold="False" AutoPostBack="True" />
                    </div>
                    <div class="col-lg-2 col-sm-12">
                        <label>Good</label><br />
                        <asp:RadioButton ID="professionalism_good" runat="server" GroupName="professionalism" Font-Bold="False" AutoPostBack="True" />
                    </div>
                    <div class="col-lg-2 col-sm-12">
                        <label>Very Good</label><br />
                        <asp:RadioButton ID="professionalism_verygood" runat="server" GroupName="professionalism" Font-Bold="False" AutoPostBack="True" />
                    </div>
                    <div class="col-lg-2 col-sm-12">
                        <label>Excellent</label><br />
                        <asp:RadioButton ID="professionalism_excellent" runat="server" GroupName="professionalism" Font-Bold="False" AutoPostBack="True" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
    <br />
    <%--3--%>
    <div class="container">
        <div class="row">
            <div class="col-lg-5 col-sm-12">
                <p>
                    4.	Extent to which the department has made your job easier
                    <br />
                </p>
            </div>
            <div class="col-lg-7 col-sm-12 ITradio1">
                <div class="row">
                    <div class="col-lg-2 col-sm-12">
                        <label>Very Poor</label><br />
                        <asp:RadioButton ID="extentdepartment_verypoor" runat="server" GroupName="extentdepartment" Font-Bold="False" AutoPostBack="True" />
                    </div>
                    <div class="col-lg-2 col-sm-12">
                        <label>Poor</label><br />
                        <asp:RadioButton ID="extentdepartment_poor" runat="server" GroupName="extentdepartment" Font-Bold="False" AutoPostBack="True" />
                    </div>
                    <div class="col-lg-2 col-sm-12">
                        <label>Good</label><br />
                        <asp:RadioButton ID="extentdepartment_good" runat="server" GroupName="extentdepartment" Font-Bold="False" AutoPostBack="True" />
                    </div>
                    <div class="col-lg-2 col-sm-12">
                        <label>Very Good</label><br />
                        <asp:RadioButton ID="extentdepartment_verygood" runat="server" GroupName="extentdepartment" Font-Bold="False" AutoPostBack="True" />
                    </div>
                    <div class="col-lg-2 col-sm-12">
                        <label>Excellent</label><br />
                        <asp:RadioButton ID="extentdepartment_excellent" runat="server" GroupName="extentdepartment" Font-Bold="False" AutoPostBack="True" />
                    </div>
                </div>
            </div>

        </div>
    </div>
    <br />
    <br />
    <%-- 4--%>
    <div class="container">
        <div class="row">
            <div class="col-lg-5 col-sm-12">
                <p>
                    5.	Rate the department’s overall performance
                    <br />
                </p>
            </div>
            <div class="col-lg-7 col-sm-12 ITradio1">
                <div class="row">
                    <div class="col-lg-2 col-sm-12">
                        <label>Very Poor</label><br />
                        <asp:RadioButton ID="overallperformance_verypoor" runat="server" GroupName="overallperformance" Font-Bold="False" AutoPostBack="True" />
                    </div>
                    <div class="col-lg-2 col-sm-12">
                        <label>Poor</label><br />
                        <asp:RadioButton ID="overallperformance_poor" runat="server" GroupName="overallperformance" Font-Bold="False" AutoPostBack="True" />
                    </div>
                    <div class="col-lg-2 col-sm-12">
                        <label>Good</label><br />
                        <asp:RadioButton ID="overallperformance_good" runat="server" GroupName="overallperformance" Font-Bold="False" AutoPostBack="True" />
                    </div>
                    <div class="col-lg-2 col-sm-12">
                        <label>Very Good</label><br />
                        <asp:RadioButton ID="overallperformance_verygood" runat="server" GroupName="overallperformance" Font-Bold="False" AutoPostBack="True" />
                    </div>
                    <div class="col-lg-2 col-sm-12">
                        <label>Excellent</label><br />
                        <asp:RadioButton ID="overallperformance_excellent" runat="server" GroupName="overallperformance" Font-Bold="False" AutoPostBack="True" />
                    </div>
                </div>
            </div>

        </div>
    </div>
    <br />
    <br />


    <div class="container">
        <div class="row">
            <div class="col-lg-5 col-sm-12">
                <p>
                    6.	Areas for improvement for the Treasury.
                </p>
            </div>
            <div class="col-lg-7 col-sm-12 ITradio1">
                <asp:TextBox ID="txtImprovementArea" CssClass="form-control" runat="server" Width="100%" required="true"></asp:TextBox>
            </div>
        </div>
    </div>

    <br />
    <br />
    <div class="container">
        <div class="row">
            <div class="col-lg-5 col-sm-12">
                <p>
                    7.	Most outstanding staff (in terms of hard-work, thoroughness and efficiency). 
                </p>
            </div>
            <div class="col-lg-7 col-sm-12 ITradio1">
                <%-- <label>Select IT Staff </label>--%>

                <asp:DropDownList ID="Accountstaff" runat="server" CssClass="form-control">
                    <asp:ListItem Enabled="true" Text="Select Accounts Best Staff" Value="0"></asp:ListItem>
                    <asp:ListItem Text="Oladele" Value="Oladele"></asp:ListItem>
                    <asp:ListItem Text="Onifade" Value="Onifade"></asp:ListItem>
                    <asp:ListItem Text="Susan" Value="Susan"></asp:ListItem>
                    <asp:ListItem Text="Eniola" Value="Eniola"></asp:ListItem>
                    <asp:ListItem Text="Damola" Value="Damola"></asp:ListItem>

                </asp:DropDownList>
                <asp:RequiredFieldValidator ErrorMessage="Required" ControlToValidate="Accountstaff"
                    InitialValue="0" runat="server" ForeColor="Red" />
               
                <br />
                <div style="text-align: right">
                    <asp:Button ID="btnAccounts" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnAccounts_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
