# test_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
To start the application:

1 Install dependencies: Run flutter pub get to fetch and install all required packages.
2 Launch the app: Once dependencies are installed, execute flutter run to start the application.

App navigation flow:

Screens: The screen folder houses all the app's screens, each representing a distinct view.
Landing page: The allscreen serves as the app's entry point, displaying trending news feeds.
Feed details: Tapping a feed on the landing page navigates to the feed_details screen, showcasing comprehensive feed information, comments, replies, and the ability to add your own comments.
Project structure:

1 screen: Contains all app screens, defining the visual structure and user interactions for each view.

2 controller: Houses the business logic that dictates app behavior, connecting the UI with data sources and handling core functionalities.

3 components: Holds reusable components that can be shared across multiple screens, promoting code modularity and maintainability.

4 widget: Stores atomic components, the fundamental building blocks of the UI, some of which may require further modularization for better organization.

5 theme: Encapsulates colors, typography, and other visual styling elements, defining the app's appearance and supporting potential light/dark mode preferences.
6 services: Accommodates API interactions for fetching and managing data from external sources.

7 models: Defines data structures representing the various types of information used within the app, ensuring consistency and organization.

8 routes: Manages navigation paths between screens, defining how the app transitions from one view to another.