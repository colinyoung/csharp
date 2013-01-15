<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="Default.aspx.cs" Inherits="Homework1.Default" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Styles/bootstrap.min.css" />
    <link rel="stylesheet" href="Styles/bootstrap-responsive.min.css" />
    <link rel="stylesheet" href="Styles/metro-bootstrap.css" />
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="Javascript/bootstrap.min.js" type="text/javascript"></script>
    <script src="Javascript/coffee-crafter.js" type="text/javascript"></script>
    <link rel="stylesheet" href="Styles/style.css" />
    <title>Coffee Crafter</title>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="span12">
               <div class="page-header">
                 <h1>Coffee Crafter
                     <small>everything you need for the perfect setup</small>
                 </h1>
               </div>

               <hgroup>
                   <h3>because once you've tasted craft coffee, it's impossible to go back.</h3>
                   <h4>
                    Handpicked components for the perfect cafe-quality brew set. Order them together and start brewing right away.
                   </h4>
               </hgroup>
            </div>
        </div>

        
        <% if (!string.IsNullOrEmpty(choices.Text)) { %>
        <div class="row">
            <div class="span12">
                <p><strong>Your choices:</strong></p>
                <asp:Label ID="choices" runat="server" />
                <hr />
            </div>
        </div>
        <% } %>

        <form id="form1" runat="server">
            <div class="row">
                <div class="span4">
                    <p><strong><span class="label label-info">1.</span> Pick your coffee beans</strong></p>
                    <asp:CheckBoxList ID="beans" runat="server" RepeatLayout="UnorderedList" CssClass="form-inline unstyled">
                        <asp:ListItem>Ethiopia</asp:ListItem>
                        <asp:ListItem>Guatemala</asp:ListItem>
                        <asp:ListItem>Ecuador</asp:ListItem>
                        <asp:ListItem>Salvadoran</asp:ListItem>
                    </asp:CheckBoxList>
                </div>

                <div class="span4">
                    <p><strong><span class="label label-info">2.</span> Pick your brewer(s)</strong></p>
                    <asp:CheckBoxList ID="brewers" runat="server" RepeatLayout="UnorderedList" CssClass="form-inline unstyled">
                        <asp:ListItem>Chemex</asp:ListItem>
                        <asp:ListItem>Aeropress</asp:ListItem>
                        <asp:ListItem>V60</asp:ListItem>
                        <asp:ListItem>French Press</asp:ListItem>
                    </asp:CheckBoxList>
                </div>

                <div class="span4">
                    <p><strong><span class="label label-info">3.</span> Pick your grinder(s)</strong></p>
                    <asp:CheckBoxList ID="grinders" runat="server" RepeatLayout="UnorderedList" CssClass="form-inline unstyled">
                        <asp:ListItem>Disc burr grinder</asp:ListItem>
                        <asp:ListItem>Conical burr grinder</asp:ListItem>
                    </asp:CheckBoxList>
                </div>
            </div>

            <div class="row">
                <div class="span12">
                    <asp:Button UseSubmitBehavior="true" runat="server" Text="Finalize selections" CssClass="btn btn-primary btn-large" />
                    <button id="clearAll" class="btn btn-large">Start over</button>
                </div>
            </div>
        </form>

    </div>
</body>
</html>
