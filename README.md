# Roundtable – Collaborative Meeting Agenda Tool

**Roundtable** is a small Ruby on Rails app I built to showcase my skills for the Junior Programmer role at 37signals. It is inspired by the way Basecamp approaches simple, purposeful software : focused, clean and thoughtful.

# What It Does

Roundtable helps teams build meeting agendas together.

- Create meetings and assign a date/time.
- Add agenda items that need to be discussed.
- Mark items as discussed once they are covered.
- See everything update instantly with Turbo. 

It is a lightweight internal tool: no fluff, just exactly what is needed.

# Why I Built It

When I saw the 37signals job post, I didn’t want to just send a CV , I wanted to build something small but useful so they can see that i resonate with their idea of applications . This project gave me a chance to show that I care about clean architecture, good design, and useful tools. 

# Built With

- **Ruby on Rails 7**
- **Hotwire (Turbo)**
- **Tailwind CSS**
- **SQLite** (development Database)

# Screenshots
![First, the empty index page look like this :](screenshots/MeetingsIndexBlank.png) 
![New Meeting Creation](screenshots/NewMeeting.png)
![Meetings list with agenda preview](screenshots/MeetingsIndex.png)  
![Single meeting with live agenda management](screenshots/MeetingShow.png)

# Things I Focused On

- **Turbo Streams** for instant UI updates (no JS needed)
- **Clean RESTful controllers** with before_action and strong params
- **Tailwind CSS** for fast, cool UI with utility classes
- **Empty state UX** so the app always feels intentional
- **Graceful error handling** and flash messages

 # To Run Locally

```bash
git clone https://github.com/deniz14k/roundtable.git
cd roundtable

bundle install
yarn install #if you use tailwind with js bundler

ruby bin/rails db:create
ruby bin/rails db:migrate

ruby bin/dev
then open localhost in your browser. 

About me. 
I am an engineering student with a passion for building useful tools. I love projects that stay small on purpose and help people get work done without getting in the way.

This app was a lot of fun to build, and I would be excited to work on similar tools at 37signals or anywhere that shares those values.

Thanks for checking it out!
