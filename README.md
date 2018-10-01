# Lab 4 - *Parse Chat*

**Parse Chat** is a Chat app using an [open source Parse](http://parseplatform.org/) backend.

Time spent: **6** hours spent in total

## User Stories

The following **required** user stories are complete:

- [x] User can sign up and sign in to the login screen (+1pt)
- [x] User sees alerts for login exceptions, i.e. "account already exists", "wrong credentials", etc. (+1pt)
- [x] User can compose and send chat messages (+2pt)
- [x] User can view a list of chat messages in chronological order (+2pt)
- [x] Automatically Adjust Cell Size to Fit Text (+1pt)
- [x] Username of chat author is displayed in each chat message (+2pt)
- [x] Persist Logged in User (+1pt)

The following **stretch** user stories are implemented:

- [ ] User sees an activity indicator while waiting for authentication (+1pt)
- [ ] User can pull to refresh Chat feed (+1pt)
- [ ] Add an "Adorable Avatar" for each user by requesting an avatar from the [Adorable Avatars API](https://github.com/adorableio/avatars-api) (+2pt)
- [ ] Chat Bubble Style Design (+3pt)
- [ ] Expand or contract the cell layout as needed to show the chat message author (user) if it exists (+2pt)

The following **additional** user stories are implemented:

- [ ] List anything else that you can get done to improve the app functionality! (+1-3pts)

Please list two areas of the assignment you'd like to **discuss further with your peers** during the next class (examples include better ways to implement something, how to extend your app in certain ways, etc):

1. I had issues with the server given to us so I had to make my own server on heroku to get it to run. I want to discuss what exactly happened as my application was working a few days ago. 
2. 

## Video Walkthrough

Here's a walkthrough of implemented user stories:

![parse_chat_lab_4](https://user-images.githubusercontent.com/8825679/46318841-7481c880-c59d-11e8-91c4-e76b7f43fe28.gif)

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

The only challenge I had was while I was displaying the username. At one point all the usernames were the same but then I figured out 
I was accessing the wrong element in my messagesArray and that fixed the issue!

## License

    Copyright [2018] [Vidhu Appalaraju]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
