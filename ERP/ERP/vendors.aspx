<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="vendors.aspx.cs" Inherits="ERP.vendors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="header" style="justify-content: center; text-align: center;">
        <h1>Vendor</h1>
    </div>
    <div class="container-fliud">
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-6">
                        <%-- Company Details --%>
                        <div class="form-group row">
                            <label for="inputEmail3" class="col-sm-2 col-form-label">Vendor ID</label>
                            <div class="col-sm-10">
                           <%-- <asp:TextBox ID="txt_venid" type="text" class="form-control" runat="server"></asp:TextBox> --%>
                                <asp:Label ID="lbl_venid" runat="server" type="text" class="form-control"></asp:Label>
                            </div>
                        </div>
                        <div class="form-group row">
                             <label for="inputPassword3" class="col-sm-2 col-form-label">Vendor Name</label>
                             <div class="col-sm-10">
                                <asp:TextBox ID="txt_venname" type="text" class="form-control" runat="server"></asp:TextBox>
                             </div>
                        </div>
                        <div class="form-group row">
                            <label for="inputEmail3" class="col-sm-2 col-form-label">Vendor Address</label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="txt_venaddress" type="text" class="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group row">
                             <label for="inputPassword3" class="col-sm-2 col-form-label">Street Name</label>
                             <div class="col-sm-10">
                                <asp:TextBox ID="txt_venstreetname" type="text" class="form-control" runat="server"></asp:TextBox>
                             </div>
                        </div>
                        <div class="form-group row">
                            <label for="inputEmail3" class="col-sm-2 col-form-label">City</label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="txt_vencity" type="text" class="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group row">
                             <label for="inputPassword3" class="col-sm-2 col-form-label">Postal Code</label>
                             <div class="col-sm-10">
                                <asp:TextBox ID="txt_venpostalcode" type="text" class="form-control" runat="server"></asp:TextBox>
                             </div>
                        </div>
                        <!--  -->
                        <%-- Owner's Details--%>
                        <div class ="section-left-item" style="border-top: 2px solid grey;border-bottom: 2px solid grey;">
                        
                            <h4 class="head-items">Owner's Details</h4>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-2 col-form-label">First Name</label>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="txt_venowfirstname" type="text" class="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPassword3" class="col-sm-2 col-form-label">Last Name</label>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="txt_venowlastname" type="text" class="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-2 col-form-label">Email Address</label>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="txt_venowemail" type="text" class="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPassword3" class="col-sm-2 col-form-label">Telephone 1</label>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="txt_venowtel1" type="text" class="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-2 col-form-label">Telephone 2</label>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="txt_venowtel2" type="text" class="form-control" runat="server"></asp:TextBox>
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
                                    <asp:TextBox ID="txt_vencpfirstname" type="text" class="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row">
                                 <label for="inputPassword3" class="col-sm-2 col-form-label">Last Name</label>
                                 <div class="col-sm-10">
                                    <asp:TextBox ID="txt_vencplastname" type="text" class="form-control" runat="server"></asp:TextBox>
                                 </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-2 col-form-label">Job Title</label>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="txt_vencpjobtitle" type="text" class="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row">
                                 <label for="inputPassword3" class="col-sm-2 col-form-label">Email Address</label>
                                 <div class="col-sm-10">
                                    <asp:TextBox ID="txt_vencpemail" type="text" class="form-control" runat="server"></asp:TextBox>
                                 </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-2 col-form-label">Telephone 1</label>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="txt_vencptel1" type="text" class="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row">
                                 <label for="inputPassword3" class="col-sm-2 col-form-label">Telephone 2</label>
                                 <div class="col-sm-10">
                                    <asp:TextBox ID="txt_vencptel2" type="text" class="form-control" runat="server"></asp:TextBox>
                                 </div>
                            </div>
                        </div>
                        <!--  -->

                        <div class="row" style="justify-content: center; margin-top: 20px; margin-bottom: 20px;">
                            <div style="margin-right: 20px; margin-left: 20px;">
                                <asp:Button ID="btn_vencreate" class="btn btn-primary" type="submit" runat="server" Text="Create" OnClick="btn_vencreate_Click" />
                            </div>
                            <div style="margin-right: 20px;">
                                <asp:Button ID="btn_venupdate" class="btn btn-primary" type="submit" runat="server" Text="Update" OnClick="btn_venupdate_Click" />
                            </div>                                                           
                        </div>

                    
                   </div>
                    <div class="col md-6">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <Columns>
                                <asp:BoundField DataField="vendorid" HeaderText="Vendor ID"></asp:BoundField>
                                <asp:BoundField DataField="vendorname" HeaderText="Vendor Name"></asp:BoundField>
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
