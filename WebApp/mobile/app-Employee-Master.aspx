<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="app-Employee-Master.aspx.cs" Inherits="WebApp.mobile.app_Employee_Master" %>

<!doctype html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport"
        content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, viewport-fit=cover" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
    <meta name="theme-color" content="#000000">
    <title>Navy-GEN - Employee Master</title>
    <meta name="description" content="Finapp HTML Mobile Template">
    <meta name="keywords" content="bootstrap, wallet, banking, fintech mobile template, cordova, phonegap, mobile, html, responsive" />
    <link rel="icon" type="image/png" href="assets/img/favicon.png" sizes="32x32">
    <link rel="apple-touch-icon" sizes="180x180" href="assets/img/icon/192x192.png">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="manifest" href="__manifest.json">
</head>

<body class="bg-white">

    <form runat="server" id="FinancePag1">
        <!-- loader -->
        <div id="loader">
            <img src="assets/img/logo-icon.png" alt="icon" class="loading-icon">
        </div>
        <!-- * loader -->

        <!-- App Header -->
        <div class="appHeader">
            <div class="left">
                <a href="<%= string.IsNullOrWhiteSpace( Request.QueryString["EmployeeId"])?"Admin_Dashbaord.aspx":"Edit-Employee.aspx" %>" class="headerButton goBack">
                    <ion-icon name="chevron-back-outline"></ion-icon>
                </a>
            </div>
            <div class="pageTitle">
                <div>Employee Master Detail   </div>
            </div>
        </div>
        <!-- * App Header -->

        <!-- App Capsule -->
        <div id="appCapsule" class="full-height">
             <SG:MessageMobile runat="server" ID="Message"></SG:MessageMobile>
            <div class="section mt-2 mb-2">
                <div class="card">
                    <div class="card-body">

                        <div class="form-group boxed">
                            <div class="input-wrapper">
                                <label class="label" for="text4b">Employee Code</label>

                                <asp:TextBox runat="server" ID="EmployeeCode" CssClass="form-control" Placeholder="Input  Employee Code"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" Font-Bold="true" Font-Size="Smaller" ControlToValidate="EmployeeCode" ValidationGroup="ok" runat="server" ErrorMessage="Please input"></asp:RequiredFieldValidator>
                                <i class="clear-input">
                                    <ion-icon name="close-circle" role="img" class="md hydrated" aria-label="close circle"></ion-icon>
                                </i>
                            </div>
                        </div>

                        <div class="form-group boxed">
                            <div class="input-wrapper">
                                <label class="label" for="text4b">Employee Name</label>

                                <asp:TextBox runat="server" ID="Employeename" CssClass="form-control" Placeholder="Input  Employee Name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" Font-Bold="true" Font-Size="Smaller" ControlToValidate="Employeename" ValidationGroup="ok" runat="server" ErrorMessage="Please input"></asp:RequiredFieldValidator>

                                <i class="clear-input">
                                    <ion-icon name="close-circle" role="img" class="md hydrated" aria-label="close circle"></ion-icon>
                                </i>
                            </div>
                        </div>


                        <div class="form-group boxed">
                            <div class="input-wrapper">
                                <label class="label" for="text4b">Designation</label>

                                <asp:DropDownList runat="server" ID="Designation" CssClass="form-control custom-select"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" Font-Bold="true" Font-Size="Smaller" InitialValue="Select" ControlToValidate="Designation" ValidationGroup="ok" runat="server" ErrorMessage="Please input"></asp:RequiredFieldValidator>

                                <i class="clear-input">
                                    <ion-icon name="close-circle" role="img" class="md hydrated" aria-label="close circle"></ion-icon>
                                </i>
                            </div>
                        </div>

                        <div class="form-group boxed">
                            <div class="input-wrapper">
                               
                                <asp:DropDownList runat="server" ID="Location" CssClass="form-control custom-select"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" Font-Bold="true" Font-Size="Smaller" InitialValue="Select" ControlToValidate="Location" ValidationGroup="ok" runat="server" ErrorMessage="Please input"></asp:RequiredFieldValidator>

                                <i class="clear-input">
                                    <ion-icon name="close-circle" role="img" class="md hydrated" aria-label="close circle"></ion-icon>
                                </i>
                            </div>
                        </div>

                        <div class="form-group boxed">
                            <div class="input-wrapper">
                                <label class="label" for="text4b">MSPIN</label>

                                <asp:TextBox runat="server" ID="MSPIN" CssClass="form-control" Placeholder="Input  Employee MSPIN"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ForeColor="Red" Font-Bold="true" Font-Size="Smaller" ControlToValidate="MSPIN" ValidationGroup="ok" runat="server" ErrorMessage="Please input"></asp:RequiredFieldValidator>

                                <i class="clear-input">
                                    <ion-icon name="close-circle" role="img" class="md hydrated" aria-label="close circle"></ion-icon>
                                </i>
                            </div>
                        </div>
                        <div class="form-group boxed">
                            <div class="input-wrapper">
                                <label class="label" for="text4b">Mobile No</label>

                                <asp:TextBox runat="server" ID="MobileNo" CssClass="form-control" Placeholder="Input  Employee Mobile No"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ForeColor="Red" Font-Bold="true" Font-Size="Smaller" ControlToValidate="MobileNo" ValidationGroup="ok" runat="server" ErrorMessage="Please input"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationExpression="^[6-9]\d{9}$" ForeColor="Red" Font-Bold="true" Font-Size="Smaller" ControlToValidate="MobileNo" ValidationGroup="ok" runat="server" ErrorMessage="Invalid Mobile No"></asp:RegularExpressionValidator>

                                <i class="clear-input">
                                    <ion-icon name="close-circle" role="img" class="md hydrated" aria-label="close circle"></ion-icon>
                                </i>
                            </div>
                        </div>
                        <div class="form-group boxed">
                            <div class="input-wrapper">
                                <label class="label" for="text4b">EmailId</label>

                                <asp:TextBox runat="server" ID="Emailid" CssClass="form-control" Placeholder="Input  Employee Email ID"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ForeColor="Red" Font-Bold="true" Font-Size="smaller" ControlToValidate="EmailId" ValidationGroup="ok" runat="server" ErrorMessage="Please Input"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationExpression="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?" ForeColor="Red" Font-Bold="true" Font-Size="Smaller" ControlToValidate="EmailId" ValidationGroup="ok" runat="server" ErrorMessage="Invalid Email ID"></asp:RegularExpressionValidator>
                                <i class="clear-input">
                                    <ion-icon name="close-circle" role="img" class="md hydrated" aria-label="close circle"></ion-icon>
                                </i>
                            </div>
                        </div>
                        <div class="form-group boxed">
                            <div class="input-wrapper">
                                <label class="label" for="text4b">Reporting Manager</label>

                                <asp:DropDownList runat="server" ID="Reporting1" CssClass="form-control custom-select"></asp:DropDownList>

                                <i class="clear-input">
                                    <ion-icon name="close-circle" role="img" class="md hydrated" aria-label="close circle"></ion-icon>
                                </i>
                            </div>
                        </div>

                        <div class="form-group boxed">

                            <div class="form-check">
                                <asp:CheckBox runat="server" CssClass="form-check-input" ID="IsOtpEnabled" />
                                <label class="form-check-label" for="customCheckc1">OTP Enable</label>
                            </div>
                        </div>
                        <asp:LinkButton runat="server" ID="submit" CssClass="btn btn-primary btn-sm btn-block" ValidationGroup="ok" OnClick="submit_Click">Submit</asp:LinkButton>


                    </div>
                </div>
            </div>

        </div>
        <!-- * App Capsule -->

        <!-- App Bottom Menu -->
        <div class="appBottomMenu">
            <a href="Admin_Dashbaord.aspx" class="item">
                <div class="col">
                    <ion-icon name="pie-chart-outline"></ion-icon>
                    <h4 class="m-0">Home</h4>
                </div>
            </a>
        </div>
    </form>


    <!-- Android Add to Home Action Sheet -->

    <script src="assets/js/lib/jquery-3.4.1.min.js"></script>
    <!-- Bootstrap-->
    <script src="assets/js/lib/popper.min.js"></script>
    <script src="assets/js/lib/bootstrap.bundle.min.js"></script>
    <!-- Ionicons -->
    <script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>
    <%--<script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>--%>
    <!-- Splide -->
    <script src="assets/js/plugins/splide/splide.min.js"></script>
    <!-- Base Js File -->
    <script src="assets/js/base.js"></script>
      <script type="text/javascript">



          Sys.Application.add_load(BindEventsto);

          function BindEventsto() {

              debugger;
              $("div.messageBox").delay(5000).slideUp();
          }
      </script>

</body>


</html>
