# Ex.No 03 – Install Google App Engine (Hello World)

## Aim
Install Google App Engine, create a `hello world` app and other simple web
applications using python/java.

## Procedure
1. Install the Google Plugin for Eclipse (or the standalone Google App Engine
   Java SDK).
2. In Eclipse: **Google icon → New Web Application Project…**, set:
   - Project name: `HelloWorld`
   - Package: `com.mkyong`
   - Deselect "Use Google Web Toolkit"; keep "Use Google App Engine" checked.
3. Eclipse generates a standard Java web project:
   ```
   HelloWorld/
     src/                 ...Java source (HelloWorldServlet.java)...
     META-INF/            ...jdoconfig.xml...
     war/
       WEB-INF/
         lib/              ...App Engine JARs...
         appengine-web.xml  <-- see file in this folder
         web.xml
   ```
4. Run locally: right click project → **Run As → Web Application**.
   - Local server: http://localhost:8888/
   - Servlet: http://localhost:8888/helloworld → prints `Hello, world`
5. Deploy: **Google icon → Deploy to App Engine…**, sign in with a Google
   account, click **Deploy**.
6. Deployed app is available at `http://<application-id>.appspot.com/`.

## Result
Google App Engine was installed successfully and a Hello World web application
was developed and deployed to GAE.
