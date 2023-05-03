Installation Instructions:
1. You must have Ruby and Rails installed in your system. (Since it's ruby on rails, expecting it's already installed).
2. Clone the project to your PC and login to your terminal/command prompt and change the directory to the Project Folder and and starts the server with "rails s"
3. Now that the website is up and running, you have to login, after logging in,
    1. "rails c" in the command prompt
    2. @user=User.*first/second....* (will show user details) 
    3. @user.role=1 (sets user as admin/moderator) 
    4. @user.save
4. Now your first/second account you logged in with is the admin and can add clubs/events.
    
Features Demo Video:


https://user-images.githubusercontent.com/115456558/236012183-2115e09c-b92b-4e4d-a92e-213b31d7bfa6.mp4

PS: Google Calendar API is in the project but google signin for some reason isn't working. That's why when you click on the calendar there's only a blank screen with no errors because the screen is waiting for the google account to display the calendar linked to its account.
