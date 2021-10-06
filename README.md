
# Find My Teammates

Single CAP Model to Perform CRUD Operation and use the catalog as a RestAPI to fetch the result into an SAP AppGyver Application and SAP Fiori Launchpad

Don't get lost searching for that teammate who is a wizard when it comes to solving your problems. Find your teammates easily within office with just one click.

  
# Files and Folder | Purpose


`ODATA API/` | contains the O-Data API created using CAP (SAP Cloud Application Programming Model)

`Fiori App/` | contains the build version of Find My Teammates app on Fiori Launchpad Preview.

# ODATA CAP Model

***ODATA API FOLDER***

`app/` | content for UI frontends goes here

`db/` | your domain models and data go here

`srv/` | your service models and code go here

`package.json` | project metadata and configuration

 
# Technologies Used

 - [CAP (SAP Cloud Application Programming Model)](https://cap.cloud.sap/docs/get-started/in-a-nutshell)
 - [SAP HANA](https://www.sap.com/uk/products/hana.html)
 - [SAP Fiori Tools](https://help.sap.com/viewer/product/SAP_FIORI_tools/Latest/en-US)
 - [SAP AppGyver](https://blogs.sap.com/2021/03/17/appgyver-a-new-joy-to-build-apps/)
 - [ODATA RestAPI](https://www.odata.org/)

# Next Steps

  ### Run the ODATA Model Locally

- Open a new terminal and run `cds watch`

- (in VS Code simply choose _**Terminal** > Run Task > cds watch_)

- Start adding content, for example, a [db/schema.cds](db/schema.cds).

### Launch The App on SAP Fiori Launchpad ([SAP Fiori Tools](https://help.sap.com/viewer/product/SAP_FIORI_tools/Latest/en-US))

- In order to launch the generated app, simply run the following from the generated app root folder:

    ```  npm start  ```


### Connect your Rest-API to AppGyver Application (For AppGyver Deployment)


 - Get Started with AppGyver [AppGyver by SAP](https://www.appgyver.com/)
 - AppGyver Tutorials [SAP Developer Tutorial](https://developers.sap.com/tutorial-navigator.html?search=Appgyver)
 - Connect AppGyver to your ODATA API [SAP Community](https://blogs.sap.com/2021/04/05/appgyver-and-sap-business-technology-platform-a-match-made-in-heaven/)
  

### # Deploy a CAP Business Application to SAP Business Technology Platform

  Refer to this tutorial [SAP Developer Tutorial](https://developers.sap.com/tutorials/cap-service-deploy.html)
  
  ## UML diagrams

![UML Diagram](https://i.ibb.co/0B2tT7f/uml-diagram.png)

# Screenshots

## Application Built on Fiori using Fiori Tools (Open Application Generator)

#### Add A Record

![Add A Record](https://i.ibb.co/y5LSkyx/fioriaddrecord.png)

#### Teammates Finder Section

![enter image description here](https://i.ibb.co/hmVK1Cj/Fiori-preview.png)
## Application Built on Appgyver.

#### Homepage

![Homepage](https://i.ibb.co/v1Dy4X5/2.jpg)




#### Add A Record




![enter image description here](https://i.ibb.co/xm2D8TX/3.jpg)





#### Fetched Result





![Fetched Result](https://i.ibb.co/M68c8LP/1.jpg)

