<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="invoice.aspx.cs" Inherits="ERP.invoice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="header" style="justify-content: center; text-align: center;">
        <h1>Invoice</h1>
    </div>
    <div class="container-fliud">
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group row">
                            <label for="inputEmail3" class="col-sm-2 col-form-label">Invoice No</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="inputEmail3">
                            </div>
                        </div>
                        <div class="form-group row">
                             <label for="inputPassword3" class="col-sm-2 col-form-label">Date</label>
                             <div class="col-sm-10">
                                <input type="text" class="form-control" id="inputPassword3">
                             </div>
                        </div>
                        <div class="form-group row">
                            <label for="inputEmail3" class="col-sm-2 col-form-label">Customer Id</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="inputEmail3">
                            </div>
                        </div>
                        <div class="form-group row">
                             <label for="inputPassword3" class="col-sm-2 col-form-label">Customer Name</label>
                             <div class="col-sm-10">
                                <input type="text" class="form-control" id="inputPassword3">
                             </div>
                        </div>

                        <!--  -->
                        <div class ="section-left-item" style="border-top: 2px solid grey;border-bottom: 2px solid grey;">
                        
                            <h4 class="head-items">Items</h4>
                            <table class="table">
                                <thead class="thead-dark">
                                    <tr>
                                      <th scope="col">#</th>
                                      <th scope="col">Item Code</th>
                                      <th scope="col">Description</th>
                                      <th scope="col">Quantity</th>
                                      <th scope="col">Unit Price</th>
                                      <th scope="col">Total Price</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                      <th scope="row">1</th>
                                      <td>Mark</td>
                                      <td>Otto</td>
                                      <td>@mdo</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">2</th>
                                      <td>Jacob</td>
                                      <td>Thornton</td>
                                      <td>@fat</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">3</th>
                                      <td>Larry</td>
                                      <td>the Bird</td>
                                      <td>@twitter</td>
                                    </tr>
                                </tbody>
                            </table>
        
                            <div class="row" style="justify-content:center">
                                <button class="btn btn-primary" type="submit" style="justify-content: center; margin-top: 20px;margin-bottom: 20px;">Add Line Item</button>
                            </div>
        
                        </div>    
                        
                        <!--  -->

                        <div class="section-left-total" style="border-bottom: 2px dashed grey; margin-top: 20px;">
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-2 col-form-label">Total</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="inputEmail3">
                                </div>
                            </div>
                            <div class="form-group row">
                                 <label for="inputPassword3" class="col-sm-2 col-form-label">Discount</label>
                                 <div class="col-sm-10">
                                    <input type="text" class="form-control" id="inputPassword3">
                                 </div>
                            </div>
                        
                        </div>

                        <!--  -->

                        <div class="row" style=" justify-content: center; margin-top: 20px; margin-bottom: 20px;">
                            <div style="margin-right: 20px; margin-left: 20px;">
                                <button class="btn btn-primary" type="submit">Create</button>
                            </div>
                            <div style="margin-right: 20px;">
                                <button class="btn btn-primary" type="submit">Update</button>
                            </div>
                            <div style="margin-right: 20px;">
                                <button class="btn btn-primary" type="submit">Print</button>
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
