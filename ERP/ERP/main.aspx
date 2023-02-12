<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="ERP.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- --%>
        <div class="header">
            <h1>Dash Board</h1>
        </div>

        <div class="row">
            <div class="row col-md-12">
                <div class="col-md-4">
                    <div class="section-left-top">
                        <h3 class="header"> Add Users </h3>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-2 col-form-label">Email</label>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="txt_addusermail" runat="server" type="email" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="txt_adduserpassword" runat="server" type="password" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <fieldset class="form-group row">
                                <legend class="col-form-label col-sm-2 float-sm-left pt-0">Privilages</legend>
                                <div class="col-sm-10">
                                    <div class="form-check">
                                        <asp:CheckBox ID="cb_addquotation" runat="server" class="form-check-input" type="checkbox"/>
                                        <label class="form-check-label" for="cb_addquotation">
                                            Quotations
                                        </label>
                                    </div>
                                <div class="form-check">
                                    <asp:CheckBox ID="cb_addinvoice" runat="server" class="form-check-input" type="checkbox"/>
                                    <label class="form-check-label" for="cb_addinvoice">
                                        Invoices
                                    </label>
                                </div>
                                <div class="form-check disabled">
                                    <asp:CheckBox ID="cb_addvendors" runat="server" class="form-check-input" type="checkbox"/>
                                    <label class="form-check-label" for="cb_addvendors">
                                        Vendors
                                    </label>
                                </div>
                                <div class="form-check">
                                    <asp:CheckBox ID="cb_addcustomers" runat="server" class="form-check-input" type="checkbox"/>
                                    <label class="form-check-label" for="cb_addcustomers">
                                        Customers
                                    </label>
                                </div>
                                <div class="form-check disabled">
                                    <asp:CheckBox ID="cb_addinventory" runat="server" class="form-check-input" type="checkbox"/>
                                    <label class="form-check-label" for="cb_addinventory">
                                        Inventory
                                    </label>
                                </div>
                            </div>
                        </fieldset>
                        
                        <div class="form-group row">
                            <div class="col-sm-10">
                                <asp:Button ID="btn_addconfirm" type="submit" class="btn btn-primary" runat="server" Text="Confirm" OnClick="btn_addconfirm_Click" />
                            </div>
                        </div>
                    </div>
                    <div class="section-left-bottom">
                        <h3 class="header"> Delete or Edit Users </h3>
                            <div class="form-group row">
                                <label for="inputEmail4" class="col-sm-2 col-form-label">Email</label>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="txt_deluseremail" runat="server" type="email" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                            
                            <fieldset class="form-group row">
                                <legend class="col-form-label col-sm-2 float-sm-left pt-0">Privilages</legend>
                                <div class="col-sm-10">
                                    <div class="form-check">
                                        <asp:CheckBox ID="cb_delquotation" runat="server" class="form-check-input" type="checkbox"/>
                                        <label class="form-check-label" for="cb_delquotation">
                                            Quotations
                                        </label>
                                    </div>
                                <div class="form-check">
                                    <asp:CheckBox ID="cb_delinvoice" runat="server" class="form-check-input" type="checkbox"/>
                                    <label class="form-check-label" for="cb_delinvoice">
                                        Invoices
                                    </label>
                                </div>
                                <div class="form-check disabled">
                                    <asp:CheckBox ID="cb_delvendors" runat="server" class="form-check-input" type="checkbox"/>
                                    <label class="form-check-label" for="cb_delvendors">
                                        Vendors
                                    </label>
                                </div>
                                <div class="form-check">
                                    <asp:CheckBox ID="cb_delcustomers" runat="server" class="form-check-input" type="checkbox"/>
                                    <label class="form-check-label" for="cb_delcustomers">
                                        Customers
                                    </label>
                                </div>
                                <div class="form-check disabled">
                                    <asp:CheckBox ID="cb_delinventory" runat="server" class="form-check-input" type="checkbox"/>
                                    <label class="form-check-label" for="cb_delinventory">
                                        Inventory
                                    </label>
                                </div>

                            </div>
                        </fieldset>
                        
                        <div class="form-group row">
                            <div class="col-sm-10">
                                <asp:Button ID="btn_delconfirm" type="submit" class="btn btn-primary" runat="server" Text="Confirm" />

                            </div>
                        </div>
                    </div>
                    </div>

                </div>
            </div>

 
<%-- --%>
</asp:Content>
