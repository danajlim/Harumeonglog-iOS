# 🐶 Harumeonglog: Smart Pet Care Journal
| 김민지 | 이승준 | 임지빈 |
| --- | --- | --- |
| <center> <img width="150px" src="https://avatars.githubusercontent.com/u/90819894?v=4" /></center> | <center> <img width="150px" src="https://avatars.githubusercontent.com/u/54970536?v=4" /></center> | <center> <img width="150px" src="https://avatars.githubusercontent.com/u/109071777?v=4" /></center> |
| **[@m1nzez](https://github.com/m1nzez)** | **[@Rudy-009](https://github.com/Rudy-009)** | **[@danajlim](https://github.com/danajlim)** |

> **An all-in-one iOS application for pet owners to manage daily care logs, health records, and memories efficiently.**
> *Successfully launched on the App Store | 2025 Capstone Design Excellence Award Winner*

[![Swift](https://img.shields.io/badge/Swift-5.0-orange.svg)](https://developer.apple.com/swift/)
[![SwiftUI](https://img.shields.io/badge/SwiftUI-2.0-blue.svg)](https://developer.apple.com/xcode/swiftui/)
[![Platform](https://img.shields.io/badge/Platform-iOS-lightgrey.svg)]()

## 📱 App Store Download
[Download on the App Store](https://apps.apple.com/kr/app/하루멍록/id6744280330) (Click to view)

## 📖 Project Overview
* **Goal:** To provide a seamless user experience for pet owners to track their pets' health and daily activities.
* **Role:** iOS Developer
* **Duration:** Dec 2024 – Sep 2025
* **Key Achievements:** Achieved **100+ downloads** and maintained a **99.9% crash-free rate** through rigorous QA processes.

## 📸 Screenshots
|:---:|:---:|:---:|
|![0x4096h-2](https://github.com/user-attachments/assets/15ccc578-c655-4c7a-a205-c1f46230c356)
 |  ![0x4096h-6](https://github.com/user-attachments/assets/6cbe9d1b-1ac9-4257-bea6-8df85fffcdc4)
 |![0x4096h-5](https://github.com/user-attachments/assets/6f39118e-7da3-420d-ae05-5023e14cc939)
  | ![0x4096h-4](https://github.com/user-attachments/assets/a5d38aa8-2f57-47ce-afe2-e89c7f58a3a3)
 |![0x4096h-3](https://github.com/user-attachments/assets/340f3243-2a43-4664-b3fb-4368b05a8dd1)
  | ![0x4096h-2](https://github.com/user-attachments/assets/15ccc578-c655-4c7a-a205-c1f46230c356)
 |  
## 🛠️ Tech Stack
* **Language:** Swift
* **UI Framework:** SwiftUI, UIKit (Partially)
* **Networking:** Alamofire, RESTful API
* **Async Programming:** Combine, GCD
* **Libraries:** Kingfisher (Image Caching), Firebase (FCM)
* **Tools:** Xcode, TestFlight, Git/GitHub, Figma

## 🔥 Key Troubleshooting & Performance Optimization

### 1. Resolving OOM (Out Of Memory) Crashes
* **Problem:** The app frequently crashed (Out Of Memory) when loading multiple high-resolution images in the photo album grid.
* **Analysis:** Loading full-size images directly into memory without downsampling or caching caused excessive memory usage.
* **Solution:** implemented **Kingfisher** to handle asynchronous image downloading and caching. Applied downsampling strategies to render images at appropriate thumbnail sizes.
* **Result:** Eliminated OOM crashes completely (**99.9% crash-free**) and improved scroll performance (60 FPS).

### 2. Reducing API Latency
* **Problem:** Repeated network requests for the same resources caused slow UI rendering and high data usage.
* **Solution:** Adopted an aggressive memory and disk caching strategy for static resources.
* **Result:** Reduced perceived API response latency by **30%**, significantly enhancing user experience.

### 3. Boosting User Engagement (DAU)
* **Challenge:** Low user retention rates after the initial download.
* **Solution:** Integrated **Firebase Cloud Messaging (FCM)** to send personalized push notifications for pet care reminders (e.g., walking, medication).
* **Result:** Achieved a **20% increase in Daily Active Users (DAU)** within one month of implementation.

## 🧪 QA & Testing
* **TestFlight Beta Testing:** Distributed beta versions to internal team members.
* **Scenario Testing:** Created and verified **50+ test scenarios** covering edge cases (e.g., network loss, background mode).
* **Feedback Loop:** Utilized Notion to track bugs and resolved 100% of critical issues before the official launch.

## 🏆 Awards
* **Excellence Award (Top 10%):** 2025 Capstone Design Contest, Sangmyung University.

---
*© 2025 Harumeonglog Team. All Rights Reserved.*
