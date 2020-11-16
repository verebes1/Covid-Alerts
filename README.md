# COVID-19 Alerts

## The "fictive" User-Story:

You have to build an application for the federal state of Bavaria which's main goal
is to keep the citizens updated on new and upcoming Coronavirus / Covid-19 Regulations.
The federal state of bavaria has decided that restrictions are area based on the 7 days
incidence calculated on the basis of 100.000 Citizens per area.

To get a better feeling the federal state has decided to visualize the current situation
state based on a traffic light but later on the had to add an forth state - so the basic
traffic light idea got an fourth state:

## Inital Coronal Signals for Bavaria:

-> Always Important: Keep your distance, wear a mask, wash your hands, air rooms regularly

1, Phase GREEN
- The traffic signal is set to GREEN when and if the incidence is below 35 cases per 100.000 residents
- These rules apply
- Limitations of face-to-face contact in public spaces
- Private events ( i.e. weddings etc. ) with a maximum of 100 participants in closed spaces
and a maximum of 200 participants in the open
- Wearing a mask is mandatory when ( including, but not limited to ) using public transportation,
going shopping, eating and drinking in restaurants, bars, etc. and in case minimum distance (1.5m )
cannot be kept

2, Phase YELLOW
- The traffic signal is set to YELLOW when and if the incidence is between 35 and 50 cases per 100.000 residents
- These rules apply
- Private parties and contacts: no more than two households or ten people
- Wearing a mask is mandatory in heavily frequented spaces, in pedestrian zones, in public buildings,
in secondary schools during class, in universities, for attendees of ( sports ) events, etc.
- Curfew and ban on selling as well as consuming alcohol in public spaces from 23:00 on

3, Phase RED
- The traffic signal is set to RED when and if the incidence is higher than 50 cases per 100.000 residents
- These rules apply
- Private parties and contacts: no more than 5 households or five people
- Wearing a mask is mandatory in heavily frequented spaces, in pedestrian zones, in public buildings,
for all grades during class, in universities, for attendees of ( sports ) events, etc.
- Curfew and ban on selling as well as consuming alcohol in public spaces from 22:00 on

## The ADDITONAL Signal for Bavaria

4, Phase DARK RED
- The traffic signal is set to DARK RED when and if the incidence is higher than 100 cases per 100.000 residents
- These rules apply
- Events ( e.g. club meetings, sporting events, cultural events, etc. ) must not exceed 50 persons
- Closing time for food / gastronomy outlets, ban on alcohol sales and alcohol consumption sales in
specific public places form 21:00

Your Tasks:
Now you finally know, the corona situation in the federal state of bavaria ( and a lot of other
worldwide places of course ) is handled like a modern style guessing game of figuring out which regulations
may apply in which area - GREAT JOB.

So for let's develop an iOS Application based on swift which is able to let the user know what he/she/it has
to do in here specific place.

Development instructions for these Application:

- Use GIT
- At your first commit the application should implement all initial states
- in your second commit the application should be altered to also match the additional criteria
- use well explaining Commit Messages
- follow the DDD Pattern, use reusable components and Data Sources where ever possible
- make your Code as SOLID as possible
- work with the cleanCode principles in mind
- make your UI Work in Portrait style, you do not have to make it work in landscape
- use SWIFT 5.3 to develop this app, use the swift package manager when you think it make sense
- use localized Strings where ever text is displayed (NSLocalizedString(...))
- Text in the app should be displayed in German (if the system language is german - or in english - if the system language is not german)
- The application should check every 10 minutes for the property cases7_per_100k from the official rest api for the actual coordinates
of the devices. API and API Documentation under this URL:

https://npgeo-corona-npgeo-de.hub.arcgis.com/datasets/917fc37a709542548cc3be077a786c17_0


- If the status changes - send a notification - push message to the users screen and show him the Applying rules for his
current location in the app.
- Add an Readme.md for an following developer, where everything for the build and deployment process for this app as
well as the technical requirements are declared wisley, in a way that if you or someone else has to modify these app
you have all information to do that.
- Make a super fancy AppDesing :-) the look a like is totally up to you, very cool designs will get extra points
- If you first sketch your application in sketch/AdobeXD etc. and commit also these files - you will also get extra points.

BE CREATIVE! BE SOLID! WRITE MAINTAINABLE CODE! WRITE CLEAN CODE! MAKE BAVARIA GREAT AGAIN!