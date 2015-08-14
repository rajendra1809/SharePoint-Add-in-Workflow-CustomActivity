<%-- The following 4 lines are ASP.NET directives needed when using SharePoint components --%>

<%@ Page Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" MasterPageFile="~masterurl/default.master" Language="C#" %>

<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%-- The markup and script in the following Content element will be placed in the <head> of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">


  <!-- Add your CSS styles to the following file -->
  <link rel="Stylesheet" type="text/css" href="../Content/App.css" />

</asp:Content>

<%-- The markup in the following Content element will be placed in the TitleArea of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
  SharePoint Add-in Custom Workflow Activity Sample
</asp:Content>

<%-- The markup and script in the following Content element will be placed in the <body> of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server">
  <div>
    This is the homepage for the <strong>Complete Customer Details</strong> add-in. This sample<br />
    demonstrates using a custom workflow activity in SharePoint workflow. The custom activity will<br />
    retrieve additional information about a customer from the sample Northwind OData<br />
    service hosted at <a href="http://www.odata.org">www.odata.org</a>.
    <p>To use this sample, do the following:</p>
    <ol>
      <li>Go to the <a href="../Lists/Customers">Customers</a> list in another browser window.</li>
      <li>Add a new item to the list using one of the following customer IDs: (DO NOT FILL ANY OTHER FIELDS<BR />
          OF THE NEW ITEM FORM.)
        <ul>
          <li>ALFKI</li>
          <li>ANATR</li>
          <li>EASTC</li>
        </ul>
      </li>
      <li>Click the <strong>...</strong> button for the new item and navagate to <strong>Advanced | Workflows</strong>.</li>
      <li>Start the <strong>Complete Customer Details</strong> workflow.</li>
      <li>
        After a few seconds the workflow will start and you will be redirected to the <br />
        Customer list view. Navigate back to the list item’s workflow status page and keep <br />
        refreshing it to see the progress of the workflow. It should take about 10-20 <br />
        seconds to complete
      </li>
      <li>Once the workflow completes, navigate back to the Customer list and refresh the page. The other fields have been updated</li>
    </ol>
  </div>

</asp:Content>
