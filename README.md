# Use a custom workflow activity in a SharePoint Add-in #

## Summary
Use a custom workflow, and a custom workflow activity to retrieve data from a remote source and merge it with SharePoint list data.

### Applies to ###
-  SharePoint Online and on-premise SharePoint 2013 and later 

### Provided by ###

[Andrew Connell](http://social.msdn.microsoft.com/profile/andrew%20connell%20%5bmvp%5d/), [www.andrewconnell.com/](http://www.andrewconnell.com)
----------
## Prerequisites ##
This sample requires the following:


- A SharePoint 2013 (or later) development environment that is configured for add-in isolation and for workflow development. A SharePoint Online Developer Site is automatically configured. For an on premise development environment, see all of the following:
 -  [Set up an on-premises development environment for SharePoint Add-ins](https://msdn.microsoft.com/library/office/fp179923.aspx)) 
 -  [Prepare to set up and configure a SharePoint workflow development environment](https://msdn.microsoft.com/library/office/dn413607.aspx)
 -  [Using the pairing cmdlet Register-SPWorkflowService](https://msdn.microsoft.com/library/office/dn411563.aspx)
 -  [How to: Configure MSMQ for SharePoint 2013 workflows](https://msdn.microsoft.com/library/office/dn467936.aspx)

- Visual Studio and the Office Developer Tools for Visual Studio installed on your developer computer 


## Description of the code ##
The sample includes a "no-code" (XAML) custom workflow activity, called **GetNorthwindCustomerDetails**, that gets data from the sample NorthWinds database hosted by OData.org. This activity is used in a custom workflow, called **CompleteCustomerDetails**, that is associated with items in a custom Customers list on the add-in web. The workflow is configured to be manually triggered from the Workflows Status page of any Customer list item. 

The end user of the add-in can add an item to the Customer list, specifying only the customer's ID. The user can optionally start the **CompleteCustomerDetails** workflow for the item. The workflow uses the **GetNorthwindCustomerDetails** activity to look up the customer in the Northwinds database and retrieve other data about the user. This data is then used to fill the other fields on the Customer list.

The sample demonstrates the following:


- Custom "no code" (XAML) workflows. 

- Custom "no code" (XAML) workflow activities. 

- Calling to a remote data source from a XAML workflow activity.



## To use the sample #

12. Open **Visual Studio** as an administrator.
13. Open the .sln file.
13. In **Solution Explorer**, highlight the SharePoint add-in project and replace the **Site URL** property with the URL of your SharePoint developer site.
14. Press F5.
15. After the add-in installs, the start page opens with instructions for how to add items to the Customer list and how to manually start the workflow. 


## Troubleshooting


- [Debugging SharePoint Server 2013 workflows](https://msdn.microsoft.com/library/office/dn508412.aspx)
- [Common error messages in SharePoint workflow development](https://msdn.microsoft.com/library/office/dn449112.aspx)

## Questions and comments

We'd love to get your feedback on this sample. You can send your questions and suggestions to us in the [Issues](https://github.com/OfficeDev/SharePoint-Add-in-Workflow-CustomActivity/issues) section of this repository.

<a name="resources"/>
## Additional resources

- [SharePoint Add-ins](https://msdn.microsoft.com/library/office/fp179930.aspx )
- [Get started with workflows in SharePoint 2013](http://msdn.microsoft.com/library/jj163917.aspx)
- [SharePoint 2013 workflow fundamentals](http://msdn.microsoft.com/library/jj163181.aspx)

### Copyright ###

Copyright (c) Microsoft. All rights reserved.




