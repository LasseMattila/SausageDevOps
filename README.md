# Introduction 
This is a recruitment homework used in DevOps personnel recruitment. The idea of the assignment is to create all the necessary deployment logic to get the whole solution running in Azure and configure Azure DevOps with best practices in Git.

# Assignment
Your colleague has just left for a refreshing summer vacation, leaving you to take care of the deployment of the brand new Nakkitehdas application. He has already built all of the required application code, but has not yet thought about the code deployment to Azure. The customer wants this solution to have it's own project in Azure DevOps.
"What have you gotten yourself into?", you think, but decide to get this done within a week anyway. 

## Requirements
The solution should follow these requirements:
- DevOps platform needs to be Azure DevOps or GitHub, depending on your interest. -> Azure DevOps more familiar
- Bicep is the IaC tool (preferred). -> No previous hands-on experience from Bicep, but would like to learn. Previous experience from Terraform.
- Solution should use only Azure PaaS or Serverless components - specifically Azure SQL, Azure Web Apps etc. -> Azure Static Web Apps could be also one good option for Frontend. 
- The Frontend should be deployed as a static SPA, check out the Deployment folder for hints. -> Static website hosting in Azure Storage (https://learn.microsoft.com/en-us/azure/storage/blobs/storage-blob-static-website)
- Any errors in builds need to be caught as early as possible.
- Repo needs to follow a pull request process.
- **🚩 Note: Only changes you should do to the code is if some configurations need to be changed to match your environment**.
- The app will handle DB migrations on startup, don't worry about those - however a good exercise: review the code and understand how it is done.

Certain future proofing needs to be taken into account:
- The frontend requires a custom domain in the future, create an architecture that supports this with HTTPS. -> Mapping a custom domain to a static website URL. Azure CDN needed for HTTPS. (https://learn.microsoft.com/en-us/azure/storage/blobs/storage-blob-static-website#mapping-a-custom-domain-to-a-static-website-url)

Bonus:
- How would you break these requirements down as work items?
- Demonstrate your line of thought using Azure Boards and Wiki.
- Document your approach using for example Azure DevOps Wiki.
- Deployment architecture and choices you made.
- Application architecture.
- Prepare a presentation for your "customer" and explain benefits of your DevOps solution and used Azure services. You can assume that your customer is technical fellow with quite good knowledge on modern cloud solutions.

Note:
- Your colleague encourages you to just get the solution running on Azure. Running the backend locally with localDB on a Mac might not work out of the box.

## Expected outcomes

- Working end to end solution with three Nakki products represented by the frontend as plain text without any formatting.
- Deployment pipelines that automate the whole flow.
- Configured Azure DevOps instance to match the requirements.
- Your backend should return data at /api/products endpoint.

## Getting started

Start by setting up your Azure subscription and a Azure DevOps instance to work in.
If you don't have those already, start here:
- [Azure Trial](https://azure.microsoft.com/en-us/free/)
- [Creating a new Azure DevOps organization -> Start free](https://azure.microsoft.com/en-us/services/devops/)
- [IMPORTANT: Request access to Microsoft Hosted agents in Azure DevOps. Takes a few business days.](https://forms.office.com/pages/responsepage.aspx?id=v4j5cvGGr0GRqy180BHbR63mUWPlq7NEsFZhkyH8jChUMlM3QzdDMFZOMkVBWU5BWFM3SDI2QlRBSC4u)

## Stuck!?!

No worries! Even though your colleague is on holiday, you can always ask help from your soon-to-be fellow Zurean (send your questions to your assignment reviewers). 

# When your MVP solution is ready

Send invitations to the Azure DevOps organization to the reviewers before your next interview.

# During your next interview

Prepare to explain and go through your thinking and solution.

- Why did you go a certain route?
- Explain technology choices you made and perhaps alternatives you identified. 
- What could have been improved in the solution or in the assignment? 
- How could the security of the solution be improved?
- What was difficult?
- What did you learn during this exercise?