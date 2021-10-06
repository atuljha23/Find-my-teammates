
# Find My Teammates

 

Don't get lost searching for that teammate who is a wizard when it comes to solving your problems. Find your teammates easily within office with just one click.

  
# Files and Folder | Purpose


---------|----------
`ODATA API/` | contains the O-Data API created using CAP (SAP Cloud Application Programming Model)

`Appgyver App/` | contains the build version of  Web Version of the Find My Teammates app.

# ODATA CAP Model

***ODATA API FOLDER***

`app/` | content for UI frontends goes here

`db/` | your domain models and data go here

`srv/` | your service models and code go here

`package.json` | project metadata and configuration

  

# Next Steps

  ### Run the ODATA Model Locally

- Open a new terminal and run `cds watch`

- (in VS Code simply choose _**Terminal** > Run Task > cds watch_)

- Start adding content, for example, a [db/schema.cds](db/schema.cds).

### Connect your Rest-API to AppGyver Application


 Get Started with AppGyver [AppGyver by SAP](https://www.appgyver.com/)
 AppGyver Tutorials [SAP Developer Tutorial](https://developers.sap.com/tutorial-navigator.html?search=Appgyver)
 Connect AppGyver to your ODATA API [SAP Community](https://blogs.sap.com/2021/04/05/appgyver-and-sap-business-technology-platform-a-match-made-in-heaven/)
  

### # Deploy a CAP Business Application to SAP Business Technology Platform

  Refer to this tutorial [SAP Developer Tutorial](https://developers.sap.com/tutorials/cap-service-deploy.html)
  
  ## UML diagrams

```mermaid
sequenceDiagram
Find My Teammates ->> Backend Rest-API: Find everyone coming to office on 2021-10-05
Backend Rest-API-->>CAP Model (Rest-API): GET Users Available on 2021-10-05?
CAP Model (Rest-API)->> Backend Rest-API: Returns an Array in form of JSON
Backend Rest-API-->> Find My Teammates: List of everyone coming to office on 2021-10-05 along with their respective building and desk information.
Note right of CAP Model (Rest-API): This CAP Model is using HANA <br/>as a backend database<br/>and returns metadata and<br/>query results in form of rest-api results.

Find My Teammates->>Backend Rest-API: Search for Bob in office on this.date
Backend Rest-API->>CAP Model (Rest-API): Select Users Where UserName eq 'Bob' and date eq '2021-10-06'
CAP Model (Rest-API)-->>Backend Rest-API: Returns an Array with the searched query
Backend Rest-API-->> Find My Teammates: Bob is available in office today, Bob location is sent along with building name and desk location.
```

## Screenshots

![Homepage](https://i.ibb.co/v1Dy4X5/2.jpg)

![enter image description here](https://i.ibb.co/xm2D8TX/3.jpg)

![Fetched Result](https://i.ibb.co/M68c8LP/1.jpg)

