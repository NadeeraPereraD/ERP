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
                        <form>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-2 col-form-label">Email</label>
                                <div class="col-sm-10">
                                    <input type="email" class="form-control" id="inputEmail3">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
                                <div class="col-sm-10">
                                    <input type="password" class="form-control" id="inputPassword3">
                                </div>
                            </div>
                            <fieldset class="form-group row">
                                <legend class="col-form-label col-sm-2 float-sm-left pt-0">Privilages</legend>
                                <div class="col-sm-10">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                        <label class="form-check-label" for="gridCheck1">
                                            Quotations
                                        </label>
                                    </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="gridCheck2">
                                    <label class="form-check-label" for="gridCheck2">
                                        Invoices
                                    </label>
                                </div>
                                <div class="form-check disabled">
                                    <input class="form-check-input" type="checkbox" id="gridCheck3">
                                    <label class="form-check-label" for="gridCheck3">
                                        Vendors
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="gridCheck4">
                                    <label class="form-check-label" for="gridCheck4">
                                        Customers
                                    </label>
                                </div>
                                <div class="form-check disabled">
                                    <input class="form-check-input" type="checkbox" id="gridCheck5">
                                    <label class="form-check-label" for="gridCheck5">
                                        Inventory
                                    </label>
                                </div>
                            </div>
                        </fieldset>
                        
                        <div class="form-group row">
                            <div class="col-sm-10">
                                <button type="submit" class="btn btn-primary">Confirm</button>
                            </div>
                        </div>
                    </form>
                    </div>
                    <div class="section-left-bottom">
                        <h3 class="header"> Delete or Edit Users </h3>
                        <form>
                            <div class="form-group row">
                                <label for="inputEmail4" class="col-sm-2 col-form-label">Email</label>
                                <div class="col-sm-10">
                                    <input type="email" class="form-control" id="inputEmail4">
                                </div>
                            </div>
                            
                            <fieldset class="form-group row">
                                <legend class="col-form-label col-sm-2 float-sm-left pt-0">Privilages</legend>
                                <div class="col-sm-10">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="gridCheck6">
                                        <label class="form-check-label" for="gridCheck6">
                                            Quotations
                                        </label>
                                    </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="gridCheck7">
                                    <label class="form-check-label" for="gridCheck7">
                                        Invoices
                                    </label>
                                </div>
                                <div class="form-check disabled">
                                    <input class="form-check-input" type="checkbox" id="gridCheck8">
                                    <label class="form-check-label" for="gridCheck8">
                                        Vendors
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="gridCheck9">
                                    <label class="form-check-label" for="gridCheck9">
                                        Customers
                                    </label>
                                </div>
                                <div class="form-check disabled">
                                    <input class="form-check-input" type="checkbox" id="gridCheck10">
                                    <label class="form-check-label" for="gridCheck10">
                                        Inventory
                                    </label>
                                </div>

                            </div>
                        </fieldset>
                        
                        <div class="form-group row">
                            <div class="col-sm-10">
                                <button type="submit" class="btn btn-primary">Confirm</button>
                            </div>
                        </div>
                    </form>
                    </div>
                    </div>

                </div>
            </div>

        </div>
<%-- --%>
</asp:Content>
