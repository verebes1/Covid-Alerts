# COVID-19 Alerts

## Introduction

The app is built using UIKit. Using pure programmatic approach.
Time taken 3 days.

## Structure:

All the components of the app are categorised into separate groups for readability:
- View for the UIView elements.
- Model for the Model elements.
- Controller for the UIViewController elements.
- Networking for the networking components of the app.
- Extensions for any Swift Standard Library extensions.
- Supporting files for the AppDelegate, SceneDelegate and Assets


## What is done:

- The UI layout and the creation of the reusable UI elements
- The traffic-light.json for easy app extensibility.
- The implementation of the additional Alert element "Dark-Red" is done by replacing the contents of traffic-lights.json with the contents of the traffic-lights-additional.json and re-runing the code. Not a single line of code needs changing.

## What needs doing:
- Robust extensible language changing mechanism
- Networking layer
- The second ViewController which needs to display the details of each covid level
    - Add the elements of the second ViewController. Either as a UIScrollView with a custom UIView as a bullet pointed row as per the design document. Or as a UITableView and UITableVIewCell as a bullet pointed row.
- Add Unit and UITests
