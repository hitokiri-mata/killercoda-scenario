### Build Triggers

In the classic pipeline view in Jenkins, click **Configure**.

![Picture32](./assets/Picture32.png)

Click the **Build Trigger** tab at the top of the page to scroll down to the **Build Trigger** section. Check “_Poll SCM_” and specify the cron expression `* * * * *`{{copy}} in the **Schedule** text box we can get Jenkins to poll the repository for changes every minute. 

![Picture33](./assets/Picture33.png)

Click **Save**.

In your GitHub repository, edit **application.py** to introduce a bug in the script.

![Picture34](./assets/Picture34.png)

Click **Commit Change** to commit the change to the main branch.

Go back to the **Open Blue Ocean view** in Jenkins. Jenkins will poll Github every one minute for new commits and trigger the pipeline.

![Picture35](./assets/Picture35.png)

The red colour indicates that there is a failed step in the pipeline.

![Picture36](./assets/Picture36.png)

Example console output:

![Picture37](./assets/Picture37.png)

![Picture38](./assets/Picture38.png)

Correct the bug in GitHub and commit change. The new commit will trigger the pipeline which should be executed successfully.

![Picture39](./assets/Picture39.png)

Navigate back to the classic pipeline view in Jenkins.

![Picture40](./assets/Picture40.png)

<br/>
