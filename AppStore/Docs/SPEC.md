# MindWeaver — Specification Document

> App Name: MindWeaver
> Bundle ID: com.ggsheng.MindWeaver
> Display Name: MindWeaver
> Version: 1.0
> Created: 2026-05-03

---

## 🎯 Concept

MindWeaver is an AI-powered mind exploration app that predicts your thoughts and challenges you to think differently. Using advanced AI, it predicts what you'll think next and invites you to deny or accept its predictions, creating a unique gamified experience of self-discovery.

---

## 📱 Three-Layer Naming

| Layer | Name | Value |
|-------|------|-------|
| App Store Name | MindWeaver | MindWeaver |
| Bundle ID | com.ggsheng.MindWeaver | com.ggsheng.MindWeaver |
| Display Name | MindWeaver | MindWeaver |

---

## 🏷️ Tags & Categories

- **Primary Category**: Lifestyle / Entertainment
- **Secondary**: Education / Games
- **Target Audience**: Teens, Young Adults, Adults (欧美 13-45)
- **Price Tier**: Free (with IAP)

---

## 🎨 Design Specification

### Color Palette
| Name | Hex | Usage |
|------|-----|-------|
| Background | #0F0F14 | Main background |
| Primary | #9B8FE8 | Buttons, highlights |
| Secondary | #6EE7B7 | Success, accents |
| Accent | #FCD34D | Gold, rewards |
| Destructive | #EF4444 | Sign out, warnings |
| Text Primary | #FFFFFF | Main text |
| Text Secondary | #A1A1AA | Subtle text |
| Card Background | #1C1C1E | Cards, surfaces |

### Typography
- **Titles**: SF Pro Display, 20-34pt, Bold
- **Body**: SF Pro Text, 15-17pt, Regular
- **Caption**: SF Pro Text, 11-13pt, Regular

### Spacing System
- 8pt grid system
- Padding: 16pt (standard), 24pt (sections)
- Corner radius: 12pt (cards), 8pt (buttons)

---

## 📋 Core Features (72 total)

### 1. AI Prediction Challenge (15 features)
1. Random prediction generation
2. Prediction display with animation
3. Accept/Deny button system
4. Prediction history log
5. Streak counter
6. Points accumulation
7. Level progression
8. Daily challenge bonus
9. Prediction categories (colors, objects, emotions, places)
10. Difficulty levels (Easy/Medium/Hard)
11. AI confidence display
12. Hint system
13. Skip prediction option
14. Share prediction result
15. Achievement badges

### 2. Mirror Self (12 features)
16. AI conversation with "Mirror You"
17. Personality analysis quiz
18. Thought pattern visualization
19. Emotional trend tracking
20. Daily reflection prompts
21. Journal entry integration
22. Mind map of thoughts
23. Mood tracker
24. Insight cards generation
25. Reflection themes
26. Self-comparison over time
27. "What would you do?" scenarios

### 3. Dream Analysis (10 features)
28. Dream input form
29. AI dream interpretation engine
30. Symbol dictionary
31. Dream journal
32. Recurring dream detection
33. Dream emotion tagging
34. Lucid dream tips
35. Sleep quality correlation
36. Dream mood indicators
37. Share dream stories

### 4. Thought Traps (10 features)
38. Logic puzzles generation
39. Brain teaser challenges
40. Mind trap detection tips
41. Paradox thinking exercises
42. Cognitive bias awareness
43. "Think Different" daily challenges
44. Contrarian Thinking Training
45. Decision making scenarios
46. Moral dilemma discussions
47. Creative thinking exercises

### 5. Points & Achievements (12 features)
48. Points earned per action
49. Daily login bonus
50. Streak rewards
51. Achievement unlock system
52. Badge collection
53. Leaderboard (optional)
54. Unlock new prediction categories
55. Custom avatar items
56. Theme unlocks
57. Challenge mode unlocks
58. Special event points
59. Referral bonus points

### 6. Profile & Settings (13 features)
60. Profile Management
61. Statistics Dashboard
62. Prediction History Export
63. Account Settings
64. Notification Preferences
65. Privacy Controls
66. Appearance (Dark mode default, font size)
67. Data Management
68. Help & FAQ
69. Contact Support
70. About / Legal
71. Sign Out

---

## 🗂️ Project Structure

```
ios-MindWeaver/
├── Sources/
│   ├── App/
│   │   ├── AppDelegate.swift
│   │   └── SceneDelegate.swift
│   ├── Models/
│   ├── Views/
│   │   ├── Home/
│   │   ├── Challenge/
│   │   ├── Mirror/
│   │   ├── Dreams/
│   │   ├── Profile/
│   │   └── Components/
│   ├── ViewModels/
│   ├── Services/
│   └── Extensions/
├── Resources/
│   └── Assets.xcassets/
├── AppStore/
│   ├── Assets/
│   │   ├── Icon/
│   │   └── UI/
│   └── Docs/
│       ├── SPEC.md
│       └── FeatureList.md
└── project.yml
```

---

## 📦 Dependencies

- **SwiftUI** (native, iOS 15.0+)
- **Combine** (native)
- **CoreML** (on-device AI prediction)
- **UserDefaults** (local storage)
- **WidgetKit** (optional future)

---

## 🔧 Technical Notes

- **Deployment Target**: iOS 15.0
- **Swift Version**: 5.9
- **Architecture**: MVVM
- **AI Approach**: On-device CoreML for predictions (privacy-first)

---

*Document Version: 1.0*
*Last Updated: 2026-05-03*