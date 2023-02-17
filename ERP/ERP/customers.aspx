<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="customers.aspx.cs" Inherits="ERP.customers" %>
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
                                <input type="text" class="form-control" id="inputEmail3">
                            </div>
                        </div>
                        <div class="form-group row">
                             <label for="inputPassword3" class="col-sm-2 col-form-label">Company Name</label>
                             <div class="col-sm-10">
                                <input type="text" class="form-control" id="inputPassword3">
                             </div>
                        </div>
                        <div class="form-group row">
                            <label for="inputEmail3" class="col-sm-2 col-form-label">Company Address</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="inputEmail3">
                            </div>
                        </div>
                        <div class="form-group row">
                             <label for="inputPassword3" class="col-sm-2 col-form-label">Street Name</label>
                             <div class="col-sm-10">
                                <input type="text" class="form-control" id="inputPassword3">
                             </div>
                        </div>
                        <div class="form-group row">
                            <label for="inputEmail3" class="col-sm-2 col-form-label">City</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="inputEmail3">
                            </div>
                        </div>
                        <div class="form-group row">
                             <label for="inputPassword3" class="col-sm-2 col-form-label">Postal Code</label>
                             <div class="col-sm-10">
                                <input type="text" class="form-control" id="inputPassword3">
                             </div>
                        </div>
                        <!--  -->
                        <%-- Owner's Details--%>
                        <div class ="section-left-item" style="border-top: 2px solid grey;border-bottom: 2px solid grey;">
                        
                            <h4 class="head-items">Owner's Details</h4>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-2 col-form-label">First Name</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="inputEmail3">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPassword3" class="col-sm-2 col-form-label">Last Name</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="inputPassword3">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-2 col-form-label">Email Address</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="inputEmail3">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPassword3" class="col-sm-2 col-form-label">Telephone 1</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="inputPassword3">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-2 col-form-label">Telephone 2</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="inputEmail3">
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
                                    <input type="text" class="form-control" id="inputEmail3">
                                </div>
                            </div>
                            <div class="form-group row">
                                 <label for="inputPassword3" class="col-sm-2 col-form-label">Last Name</label>
                                 <div class="col-sm-10">
                                    <input type="text" class="form-control" id="inputPassword3">
                                 </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-2 col-form-label">Job Title</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="inputEmail3">
                                </div>
                            </div>
                            <div class="form-group row">
                                 <label for="inputPassword3" class="col-sm-2 col-form-label">Email Address</label>
                                 <div class="col-sm-10">
                                    <input type="text" class="form-control" id="inputPassword3">
                                 </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-2 col-form-label">Telephone 1</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="inputEmail3">
                                </div>
                            </div>
                            <div class="form-group row">
                                 <label for="inputPassword3" class="col-sm-2 col-form-label">Telephone 2</label>
                                 <div class="col-sm-10">
                                    <input type="text" class="form-control" id="inputPassword3">
                                 </div>
                            </div>
                        </div>
                        <!--  -->

                        <div class="row" style="justify-content: center; margin-top: 20px; margin-bottom: 20px;">
                            <div style="margin-right: 20px; margin-left: 20px;">
                                <button class="btn btn-primary" type="submit">Create</button>
                            </div>
                            <div style="margin-right: 20px;">
                                <button class="btn btn-primary" type="submit">Update</button>
                            </div>                                                           
                        </div>

                    
                   </div>
                    <div class="col md-6">
                        <asp:GridView ID="GridView1" runat="server">

                        </asp:GridView>
                    </div>
                </div>
                

            </div>
        </div>
    </div>
</asp:Content>
