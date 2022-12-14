<%@ Page Title="" Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" CodeBehind="NotReadeemCoupon.aspx.cs" Inherits="WebApp.admin.NotReadeemCoupon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .t01 th, td {
            border: 1px solid black;
            border-collapse: collapse;
            padding: 2px 2px 2px 2px;
            font-size: 12px;
        }

        .t02 th {
            background-color: navy;
            color: white;
        }

        .disn {
            display: none;
        }

        .disy {
            display: block;
        }
    </style>




</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FormName" runat="server">
    Remaining Insurance Coupon List
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FromContener" runat="server">


    <div class="row">
        <SG:Message runat="server" ID="MessageBox" />


        <div class="col-md-12">

            <!-- general form elements disabled -->
            <div class="box box-success box-solid" style="border: 3px solid #0b0336!important;">
                <div class="box-header with-border" style="background: #0b0336!important; background-color: #0b0336!important;">
                    <h3 class="box-title">Data List</h3>
                </div>
                <!-- /.box-header -->
                <div class="box-body">




                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <div style="text-align: right; padding: 5px;">
                                     <asp:TextBox runat="server" ID="StuclsIds" CssClass="form-control" Style="display: none;"
                                                        AutoPostBack="true" OnTextChanged="StuclsIds_TextChanged"></asp:TextBox>
                                             <div class="input-group input-group-sm">
                                                         <input id="myInput" type="text" placeholder="Search.." >

                                                        <span class="input-group-btn">
                                                            <a  class="btn btn-primary" OnClick="Print_Click()" >Export</a>

                                                        </span>
                                                    </div>
                                </div>
                                <div class="table-responsive">
                                    <asp:GridView ID="gvlocation" Style='width: 100%' CssClass='t02 t01' HeaderStyle-BackColor="LightBlue" runat="server" AutoGenerateColumns="false" Width="98%" align="center">
                                        <Columns>




                                            <asp:TemplateField HeaderText="CreateBy">
                                                <ItemTemplate>
                                                    <%# Eval("CreateBy")%>

                                                    <asp:HiddenField runat="server" ID="InsuranceIndividualId" Value='<%# Eval("InsuranceIndividualId")%>' />
                                                    <asp:HiddenField runat="server" ID="InsuranceCouponId" Value='<%# Eval("InsuranceCouponId")%>' />

                                                </ItemTemplate>

                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText="Approve By">
                                                <ItemTemplate>
                                                    <%# Eval("ApproveBy")%>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText=" Customer Name">
                                                <ItemTemplate>
                                                    <a onclick="<%# Eval("InsuranceIndividualId","showLeter('CouponStatusSpecificCustomer.aspx?InsuranceCouponId={0}')") %>"><%# Eval("CustomerName")%></a>
                                                </ItemTemplate>

                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText=" EmailId">
                                                <ItemTemplate>

                                                    <asp:Label runat="server" ID="EmailId" Text='<%# Eval("EmailId")%>' Width="200" />


                                                </ItemTemplate>

                                            </asp:TemplateField>




                                        </Columns>
                                        <EmptyDataTemplate>
                                            No Record Exists
                                        </EmptyDataTemplate>
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>

    </div>
    <asp:Literal runat="server" ID="UpdatePanels"></asp:Literal>



</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Script" runat="server">
    <script>
        var popup;
        function showLeter(str) {
           
           
            var wird = parseInt(((screen.width * 75) / 100.00).toFixed(0));
            var left = (screen.width - wird) / 2; var top = (screen.height - 500) / 4;

            var popup = window.open(str, "Responce Pending", 'toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no, width=' + wird + ', height=' + 500 + ', top=' + top + ', left=' + left);
            popup.focus();
        }


    </script>
     <script src="js/jquery.table2excel.js"></script>
    <script>

        $(document).ready(function () {
            $('#<%=gvlocation.ClientID %>').prepend($("<thead></thead>").append($('#<%=gvlocation.ClientID %>').find("tr:first")));
            $("#myInput").on("keyup", function () {
                var value = $(this).val().toLowerCase();
                $("#<%=gvlocation.ClientID %> tbody").find("tr").filter(function () {
        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
        });
   
			
        function Print_Click() {
            
            var table =$('#<%=gvlocation.ClientID %>').prepend($("<thead></thead>").prev($('#<%=gvlocation.ClientID %>').find("tr:first")));
					if(table && table.length){
					    debugger;
						$(table).table2excel({
							
							name: "Data",
							filename: "Export_Notredeem " + new Date().toISOString().replace(/[\-\:\.]/g, "") + ".xls",
							fileext: ".xls",
							exclude_img: true,
							exclude_links: true,
							exclude_inputs: true,
							preserveColors: true
						});
					}
				}
				
			
		</script>


</asp:Content>
