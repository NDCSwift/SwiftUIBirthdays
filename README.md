# 🎂 SwiftUI Birthdays

A SwiftUI birthday tracker app — demonstrating SwiftData persistence, date handling, and countdown calculations to keep track of upcoming birthdays.

---

## 🤔 What this is

This project builds a birthday reminder app using SwiftUI and SwiftData: adding contacts with their birthdate, calculating days until their next birthday, and displaying them in a sorted list. It covers `DateComponents` for age/countdown math and `@Model` + `@Query` for persistence.

## ✅ Why you'd use it

- **SwiftData @Model** — persists birthday entries across launches
- **DateComponents** — calculates days until next birthday and current age
- **Sorted list** — orders upcoming birthdays by proximity
- **Add/delete** — full CRUD with SwiftData `ModelContext`
- **Date formatting** — formats birthdates and countdowns for display

## 📺 Watch on YouTube

[![Watch on YouTube](https://img.shields.io/badge/YouTube-Watch%20the%20Tutorial-red?style=for-the-badge&logo=youtube)](https://youtu.be/yyE4Vlc4tpQ)

> This project was built for the [NoahDoesCoding YouTube channel](https://www.youtube.com/@NoahDoesCoding97).

---

## 🚀 Getting Started

### 1. Clone the Repo
```bash
git clone https://github.com/NDCSwift/SwiftUIBirthdays.git
cd SwiftUIBirthdays
```

### 2. Open in Xcode
- Double-click `Birthdays.xcodeproj`

### 3. Set Your Development Team
In Xcode: **TARGET → Signing & Capabilities → Team**

### 4. Update the Bundle Identifier
Change `com.example.MyApp` to a unique identifier (e.g., `com.yourname.Birthdays`).

---

## 🛠️ Notes

- If you see a code signing error, check that Team and Bundle ID are set.

## 📦 Requirements

- iOS 17+ (SwiftData)
- Xcode 15+
- Swift 5.9+

---

📺 [Watch the guide on YouTube](https://youtu.be/yyE4Vlc4tpQ)
