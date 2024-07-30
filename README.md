# Food Delivery App

## Overview

This Food Delivery App is built using Flutter and Firebase. It provides a seamless and user-friendly experience for customers to browse menus, add items to the cart, and place orders with real-time updates. The app includes email authentication and a backend integrated with Firebase, making it a robust solution for any food delivery service.

## Features

- **User Authentication**: Email-based sign-up and login.
- **Menu Browsing**: Users can browse through the menu and view item details.
- **Add to Cart**: Items can be added to the cart with quantity adjustments.
- **Order Placement**: Users can input card payment details to place orders.
- **Real-Time Updates**: Orders are saved into Firebase for real-time live updates.
- **Receipt Generation**: A summary receipt is generated and displayed for the user after order placement.

## Technologies Used

- **Flutter**: For building the cross-platform mobile application.
- **Firebase**: For backend services including authentication, real-time database, and cloud storage.

## Installation

1. **Clone the Repository**

   ```bash
   git clone https://github.com/ranaashutosh2923/food-delivery-app.git
   cd food-delivery-app
   ```

2. **Install Flutter**

   Follow the official Flutter installation guide: [Flutter Installation](https://flutter.dev/docs/get-started/install)

3. **Install Dependencies**

   ```bash
   flutter pub get
   ```

4. **Set Up Firebase**

   - Create a Firebase project in the [Firebase Console](https://console.firebase.google.com/).
   - Add an Android and iOS app to your Firebase project.
   - Download the `google-services.json` (for Android) and `GoogleService-Info.plist` (for iOS) files and place them in the respective directories in your Flutter project:
     - `android/app/`
     - `ios/Runner/`
   - Enable Email/Password authentication in the Firebase Authentication section.
   - Set up Firestore database and Cloud Storage in the Firebase Console.

5. **Run the App**

   ```bash
   flutter run
   ```

## Project Structure

- `lib/`: Contains all the Dart code and resources for the application.
  - `components/`: Reusable UI components.
  - `images/`: Image assets used in the application.
  - `themes/`: Theme and styling configurations for the app.
  - `models/`: Data models used in the application.
  - `services/`: Firebase service classes for authentication, database operations, etc.
  - `pages/`: The different screens or pages of the application.
  - `main.dart`: The entry point of the application.

## Usage

1. **Create an Account**: Sign up with an email and password.
2. **Login**: Use your credentials to log in to the app.
3. **Browse Menu**: Browse through the available menu items.
4. **Add to Cart**: Add desired items to the cart and adjust quantities.
5. **Place Order**: Input your card payment details and place the order.
6. **Order Confirmation**: View the order summary and receipt.
