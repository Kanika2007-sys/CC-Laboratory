# Ex.No 04 – Use the GAE Launcher to Launch Web Applications

## Aim
Use the GAE launcher to launch the web applications.

## Procedure
1. Create/select a Cloud Console project and note its project ID.
2. Install and initialize the Google Cloud SDK.
3. Project structure:
   ```
   <project-id>/
     app.yaml        <-- see file in this folder
     www/
       index.html    <-- see www/index.html in this folder
       css/style.css
       js/
   ```
4. `app.yaml` maps `/` to `www/index.html` and all other paths to files under
   `www/`.
5. Deploy and view the app using the commands in `commands.sh`:
   ```
   gcloud app deploy
   gcloud app browse
   ```
6. The app is served at `https://PROJECT_ID.REGION_ID.r.appspot.com`.

## Result
The GAE launcher was used to launch the web application successfully.
