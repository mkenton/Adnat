# Adnat
### (Ruby on Rails Challenge)
---


# Requirements: 
This application requires the following
- Ruby: version 3.1.2
- Rails version 7.0.3
- PostgreSQL application (downloads are available for your operating system at https://www.postgresql.org/download/)

# How to run this application

## Clone project
Fork this project to create your own forked repsoitory. Clone your repository to the desired folder of your choosing via the green Code button on the github repo page (e.g. by using SSH, GitHub CLI, GitHub Desktop, or downloading and decompressing the ZIP file.)

## Get PostgreSQL Running
Open your native PostgreSQL application (if not installed, see Requirements section above for download link). Once PostgreSQL is open, if you do not yet have a server running, click the '+' sign to create a new server. Ensure the the port is configured *5432*. If the server is not already running, click __Start__.

## Automatically Boot the Full Application with Setup File
In terminal, navigate to folder of the newly cloned repository. A setup file has been provided to fully boot the app (install gems, create the database, run migrations,  seed the database, and start the server at localhost:3000). To run this file, you must first give persmissions to allow it to execute by running the following command:
<pre>
% sudo chmod +x ./setup.sh
</pre>
Follow the terminal instructions and enter your system password. Then run the following command:
<pre>
% ./setup.sh
</pre>

The terminal will output many lines to show the success of each step of creating the environment and then boot up the server, listening on port 3000. __The application is now ready to use!__ Simply navigate to __localhost:3000__ in your browser.

### Alternative (Manual) Setup to Boot the Full Application
As an alternative of using the ./setup.sh file, you can manually run each command necessary to get the app running. Ensure that your parent working directory is the newly cloned repository. Then, run each of the the following commands in order:
<pre>
% bundle install
% rails db:create
% rails db:migrate
% rails db:seed
% bin/dev
</pre>
After each command, the terminal will output messages pertaining to the sucess of each setup step. After entering the last command (*bin/dev*), the terminal will run scripts, boot up the server and stay in listening mode on port 3000. __The application is now ready to use!__ Simply navigate to __localhost:3000__ in your browser.
