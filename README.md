# DevOps2000

Task -1A 

For the Remove hardcoding of the S3 bucket name app.py code , used the option of os.getenv which will read the environment value.

GithubActions  created on .github folder (pipeline1.yml) of source code and we have to provide 

AWS_ACCESS_KEY_ID  and AWS_SECRET_ACCESS_KEY 

values in Settings --> Secrets and variables option --> Actions > New Repository secrets .

In pipeline1.yml, we are providing dynamic runtime variables -stack-name app2000 (which will be created on runtime) --s3-bucket hamid-lambda-deployments-2000  (for AWS-SAM files storage)


Task - 1B

Docker file is created in /kjell/hello_world folder and we can create image using below command.

docker build -t kjellpy .

we can test the same using below command.  (We need to change the bucket name containing images)

docker run -e
AWS_ACCESS_KEY_ID=XXX -e AWS_SECRET_ACCESS_KEY=YYY -e
BUCKET_NAME=Bucket_Name_containingImages kjellpy


Task  2A


Docker file is created in the same root folder and we can create docker image using 

docker build -t ppe .

we can test the same using below command.  (We need to change the bucket name containing images)

docker run -p 8080:8080 -e
AWS_ACCESS_KEY_ID=XXX -e AWS_SECRET_ACCESS_KEY=YYY -e
BUCKET_NAME=Bucket_Name_containingImages ppe


Task 2B



For this, we have to create a repository, which is already build  2000-repo 

we have to pass Access key and secret access key which need to be updated in settings and updated in Task 1A
Additionally we have to update 



Task 3A

Necessary changes has been done in the terraform code in Infra folder of source code.

Task 3B 

we have to pass below environment variables 

values in Settings --> Secrets and variables option --> Actions > New Repository secrets 

Secrets -- AWS_ACCESS_KEY_ID , AWS_SECRET_ACCESS_KEY , CANDIDATE_NUMBER, EMAIL_ADDRESS

addionally we have to provide Environment variables   

Directory --- (infra)  where code resides for terraform files.


4 Feedback -- >

Chose and use counter, Gauge, and LongTaskTimer Counter

To count how many PPE breaks and scans occur over time. can be used to know how much PPE breakage is occurring and whether measures must be taken
Gauge how many weapons have been scanned and need handling. used gauge since it should decrement when one is handled and increment when more are added
used longTaskTimer for scanning the images. since this is an external service, I would like information on how long this takes in terms of price etc.


4 --- Discussions:

Continuous integration.


continuous integration is automating the integration of the code from multiple developers, automatically running tests and merging the code into the project once the automated tools have verified the code. This gives developers the opportunity to work on an updated Branch to be sure that the code they submit is OK if it passes the tests.

There are many advantages to continuous integration, among other things, we don't have to have people whose job it is to test and go through the code to integrate it into the code base. Then developers don't have to wait as long to find out if their code fits in or not. With automatic integration, this will happen faster and you will eliminate human error in the test phase. As long as there are good tests, code quality can be guaranteed to a certain extent. This also gives developers more time to develop the project and less time waiting to see if their code is OK. Not only does the developers save time by not having to wait for someone to test their code, but it also gives them the security that they won't be able to destroy the entire codebase with a simple mistake, which will make them work with more confidence and thus more efficiently.

Infrastructure as code together with CI makes it very convenient to manage the infrastructure on. then both infrastructure changes can also be tested by automatic processes. And will ensure that all the tests are run on the same infrastructure, which will in turn ensure that the quality of the code is good.

CI in github, in practical terms, will be an example of making sure that no one can directly commit code to the Main Branch by setting up branch protection. And only gives the option to submit pull request to Main from another Branch. After a pull request is late, the code must be tested using github actions, which run and test the code to make sure it works, then it can be considered that another developer is required to review the request before it is merged in Main. If the tests fail, the request is stopped and the code must be fixed and the process must be repeated. When a developer is going to develop something in the project, they first create a new Branch from main, and only work on it if necessary. Write new tests to test the new code. When they are finished, they send a pull request that runs all the tests automatically and possibly requires a review from another developer in the team before it is merged. 


Scrum 

The Scrum methodology is based on "sprints" that lasted 1-4 weeks. At the start of a sprint, you have sprint planning, which revolves around planning what is to be done this sprint based on a backlog of tasks that the product owner creates and any decisions regarding this sprint. Every day there is a stand-up meeting in which everyone in the team must take part in saying what they are working on and, if necessary, blocked in order to complete what they are working on. At the end of a sprint, the product owner comes into a meeting where they talk about what needs to be done next and the status of the project. After a sprint, there must be something deliverable to the product owner.

All the tasks in a sprint have a definition of done that must be filled before a task can be "done", this could be running unit tests, user tests, etc.

Irons with scrum/agile, one of the great advantages of scrum is the possibility of changing direction in the project. As it is not planned long in advance. But instead, it is decided when it is needed. This means that a team can work very freely and flexibly in relation to the needs of the customer. Daily standups means that if someone is stuck with something, it must be discovered as quickly as possible so that they can get help to solve it. Each sprint is limited in scope, which makes it easier not to lose the direction of the project. Together with the fact that the customer has frequent meetings with the team, this means that both are updated on the status of the project. The fact that the customer is so involved means that the customer will more often get a product they actually want.

The fact that a sprint is "isolated" considering that it has its own planning, development and integration part means that the sprint will be very open to change without requiring an extremely large amount of work. And since the integration will be smaller in scale compared to waterfall, there will not be as much work

One of the biggest drawbacks of scrum is how much time these meetings can take. It takes time for a developer to get into the problem they were working on, and having to step out of that mindset and into a meeting they had nothing to say can be a waste of time. If automatic integration is not used in the definition of done, this can lead to more errors getting through. And since the integration takes place at the end of the weather sprint, major errors can occur that take a long time to fix. So a developer may be required to be present and integrate the code into the product. This then requires a lot of time and can lead to worse quality and efficiency.



Devops methodology


The basic principles of DevOps are, Flow, Feedback and continuous improvement. All these principles try to ensure that development happens quickly and efficiently, but at the same time have high code quality.

Flow, Flow is about the fact that when a developer makes a change, it should "flow" as much as possible to the product, or sent through a "pipeline". With the help of the pipeline, we can get CI/CD continuous integration and continuous delivery. In this pipeline, the code is tested, built and delivered, all automatically.

Feedback involves using tools such as logging, the alarm and metrics to see the status of the project. Ex. how many customers use the service, or how much resources the server uses.

continuous improvement, in order to achieve continuous improvement, we take the feedback we received from metrics, logging etc. and try to improve the process. Blameless postmortem, when an error occurs, there is no time to find someone who is "to blame", but rather to find out what caused the error and how it can be avoided next time.

The effect of these 3 principles means that all developers can work with increased confidence and speed. They receive continuous feedback on what they have created themselves and can improve the code in an effective and fast way. This can lead to a sense of responsibility for what they have written themselves and will in turn motivate them to do a better job. As opposed to if they had given the code for operation, whether to "take over" the code and put it into operation, send it to the customer.

The customer will also get to see the product faster than if it had been e.g. waterfall, as the product comes at the very end of the process which can take months/years. Not only can the customer use the product earlier, but it is also easier for the product to develop according to needs over time.

With a good Pipeline, productivity will also increase, so there will be more time for development and less time for commissioning. Which can lead to a better product.

One of the major drawbacks of DevOps is that it requires a good pipeline and that those in the team look for opportunities to improve the pipeline. If the pipeline is bad, e.g. bad testers that do not catch the errors and lack of monitoring when logging, metrics etc. then many errors can get through without being detected quickly enough. And may have consequences for customers who use the product, eg downtime on the service.

In certain types of projects where mistakes are extremely critical, you don't have the opportunity to make mistakes and learn from them. Ex. games, Space rockets.


Functionality

To make sure that a new functionality meets the user's needs, I would first map out their needs. Then I would have used, among other things, logs and metrics to be able to get an overview of the application. If it's an online store, it can be everything from how many customers enter the site, how many fill the shopping cart without buying anything, etc.

After I can see how the application does in relation to the needs of the user. Then I can roll out new functionality. I would, for example, use A/B Testing to verify that it actually makes the application better. By first rolling out the update on region A for 50% of the users and keeping the old version on region B. then I would look at the metrics and logs from both regions and region A has a worse performance compared to region B then I would have rolled back that update.

If this happens, I would then do an analysis of what and why the new update made it worse. shown region A had a critical error, large loss of customers, no sales coming through etc. I would have done a more thorough investigation of the problem. Made a Blameless postmortem where we try to find the cause of the error without assigning "blame" to anyone for the error. And then improve the pipeline so that such errors do not occur again.

