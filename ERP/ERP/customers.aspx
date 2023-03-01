<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="customers.aspx.cs" Inherits="ERP.customers" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="header" style="justify-content: center; text-align: center;">
        <h1>Customer</h1>
    </div>
    <div class="container-fliud">
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-6">
                        <%-- Company Details--%>
                        <div class="form-group row">
                            <label for="inputEmail3" class="col-sm-2 col-form-label">Customer ID</label>
                            <div class="col-sm-10">
                              <%--   <asp:TextBox ID="txt_cusid" runat="server" type="text" class="form-control"></asp:TextBox> --%>
                                <asp:Label ID="lbl_cusid" runat="server" type="text" class="form-control"></asp:Label>
                            </div>
                        </div>
                        <div class="form-group row">
                             <label for="inputPassword3" class="col-sm-2 col-form-label">Company Name</label>
                             <div class="col-sm-10">
                                <asp:TextBox ID="txt_cusname" runat="server" type="text" class="form-control"></asp:TextBox>
                             </div>
                        </div>
                        <div class="form-group row">
                            <label for="inputEmail3" class="col-sm-2 col-form-label">Company Address</label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="txt_cusaddress" runat="server" type="text" class="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group row">
                             <label for="inputPassword3" class="col-sm-2 col-form-label">Street Name</label>
                             <div class="col-sm-10">
                                <asp:TextBox ID="txt_cusstreetname" runat="server" type="text" class="form-control"></asp:TextBox>
                             </div>
                        </div>
                        <div class="form-group row">
                            <label for="inputEmail3" class="col-sm-2 col-form-label">City</label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="txt_cuscity" runat="server" type="text" class="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group row">
                             <label for="inputPassword3" class="col-sm-2 col-form-label">Postal Code</label>
                             <div class="col-sm-10">
                                <asp:TextBox ID="txt_cuspostalcode" runat="server" type="text" class="form-control"></asp:TextBox>
                             </div>
                        </div>
                        <!--  -->
                        <%-- Owner's Details--%>
                        <div class ="section-left-item" style="border-top: 2px solid grey;border-bottom: 2px solid grey;">
                        
                            <h4 class="head-items">Owner's Details</h4>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-2 col-form-label">First Name</label>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="txt_cusowfirstname" runat="server" type="text" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPassword3" class="col-sm-2 col-form-label">Last Name</label>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="txt_cusowlastname" runat="server" type="text" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-2 col-form-label">Email Address</label>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="txt_cusowemail" runat="server" type="text" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPassword3" class="col-sm-2 col-form-label">Telephone 1</label>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="txt_cusowtel1" runat="server" type="text" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-2 col-form-label">Telephone 2</label>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="txt_cusowtel2" runat="server" type="text" class="form-control"></asp:TextBox>
                                </div>
                            </div>                            
              
                        </div>  
                        
                        <%-- Contact person's Details--%>
                        
                        <!--  -->
                        <div class="section-left-total" style="border-bottom: 2px dashed grey; margin-top: 20px;">
                            <h4 class="head-items">Contact Person's Details</h4>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-2 col-form-label">First Name</label>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="txt_cuscpfirstname" runat="server" type="text" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row">
                                 <label for="inputPassword3" class="col-sm-2 col-form-label">Last Name</label>
                                 <div class="col-sm-10">
                                    <asp:TextBox ID="txt_cuscplastname" runat="server" type="text" class="form-control"></asp:TextBox>
                                 </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-2 col-form-label">Job Title</label>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="txt_cuscpjobtitle" runat="server" type="text" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row">
                                 <label for="inputPassword3" class="col-sm-2 col-form-label">Email Address</label>
                                 <div class="col-sm-10">
                                    <asp:TextBox ID="txt_cuscpemail" runat="server" type="text" class="form-control"></asp:TextBox>
                                 </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-2 col-form-label">Telephone 1</label>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="txt_cuscptel1" runat="server" type="text" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row">
                                 <label for="inputPassword3" class="col-sm-2 col-form-label">Telephone 2</label>
                                 <div class="col-sm-10">
                                    <asp:TextBox ID="txt_cuscptel2" runat="server" type="text" class="form-control"></asp:TextBox>
                                 </div>
                            </div>
                        </div>
                        <!--  -->

                        <div class="row" style="justify-content: center; margin-top: 20px; margin-bottom: 20px;">
                            <div style="margin-right: 20px; margin-left: 20px;">
                                <asp:Button ID="btn_cuscreate" type="submit" class="btn btn-primary" runat="server" Text="Create" OnClick="btn_cuscreate_Click" />        
                            </div>
                            <div style="margin-right: 20px;">
                                <asp:Button ID="btn_cusupdate" runat="server" class="btn btn-primary" type="submit" Text="Update" OnClick="btn_cusupdate_Click" />
                            </div>                                                           
                        </div>

                    
                   </div>
                    <div class="col md-6">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDataBound = "OnRowDataBound" OnSelectedIndexChanged = "OnSelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="customerid" HeaderText="Customer ID" ></asp:BoundField>
                                <asp:BoundField DataField="companyname" HeaderText="Company Name"></asp:BoundField>
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />  
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />  
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />  
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />  
                            <RowStyle BackColor="#EFF3FB" />  
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />  
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />  
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />  
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />  
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />  

                        </asp:GridView>
                    </div>
                </div>
                

            </div>
        </div>
    </div>
</asp:Content>
