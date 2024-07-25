Introduction
The language learning App is designed to help users to learn new languages,
The app allows users to learn different languages, keep an eye on progress of there current course,
The target audience includes individuals who want to learn new languages easily and without moving to a physical class or enviroment.

Requirements
The app includes the following functionalities and features:

*Learn different languages (currently urdu, arabic and spainish),
every language have a road map and difficulty level,
each level have different lessons and
each lesson has english as defualt language so that can know what their learning and
the native language which they are learing, 
text to speach functionality to pronounce sentances and words.

*After each level user have to take a quiz (mcq's based quiz) for better learning.
*After each quiz user can see their progress report in a dedicated screen which will have the quiz history.
*Navigate between different screens for profile, courses,roadmaps and quiz reports 
*Store and retrieve data from a cloud database (Firestore).
*System Design:
Architecture
The app follows the MVVM (Model-View-ViewModel) architecture, which separates the user interface (UI) from the business logic and data handling, making the codebase more manageable and scalable.

Databases:
*The app uses Firebase Firestore to store language and quiz data. 

*User Interface Design
The UI is built using Flutter, providing a smooth and responsive user experience.

Implementation Details
*Technologies Used
*Programming Languages: Dart
*Frameworks: Flutter
*Backend Services: Firebase Firestore,Firebase Auth
*State Management: Provider
*Coding Decisions
*MVVM Architecture: Chosen for its ability to separate concerns, making the app more maintainable and testable.
*Provider: Used for state management to efficiently handle state changes and rebuild only necessary parts of the UI.
*Firestore: Selected for its real-time capabilities and seamless integration with Flutter.
*Firebase Auth: To signup and signin user with firebase.

*Future Considerations

There are several features and functionalities considered for future implementation:

*will be adding more courses and languages for user,
*there will be more types of quizez to make app fun and gamification.

screenshots:
![profile screen](https://github.com/user-attachments/assets/29038ef1-0292-4dc7-8066-e79506600f79),
![lessons roadmap](https://github.com/user-attachments/assets/2b649002-d786-4693-9aac-50f4a5844933),
![lesson](https://github.com/user-attachments/assets/50061a3c-bdbb-41bc-898b-508f15ae66f5),
![courses](https://github.com/user-attachments/assets/aeda0348-ab9f-4203-bdb1-14cf25546da8),
![roadmap](https://github.com/user-attachments/assets/cb64d261-898c-45aa-a4c4-1c9f5c62197e),
![quiz](https://github.com/user-attachments/assets/035ef777-93c7-4ac1-b5d6-e8110a1b4a4a)

