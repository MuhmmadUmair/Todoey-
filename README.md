Here’s the **complete, professional README** rewritten to reflect your **new file structure** and the features you mentioned (Provider + long-press delete):

---

# 📝 Flutter To-Do App with Provider

A clean and elegant **To-Do List application** built with Flutter.
It uses **Provider** for state management, stores tasks locally with **Hive**, and supports both swipe-to-delete and **long-press deletion**.

---

## 🚀 Features

* ✅ Add tasks quickly with a dialog box
* ✏️ Mark tasks as complete or incomplete
* 🗑️ Delete tasks by:

  * Swiping left *(via `flutter_slidable`)*, or
  * Long-pressing the task tile
* 💾 Local persistence with **Hive** — works entirely offline
* 🪄 **Provider** for state management (separates UI from logic)
* 🎨 Beautiful Material 3 UI with custom colors

---

## 📂 Project Structure

```
lib/
├── main.dart                      # App entry point, Provider setup
│
├── models/
│   ├── task.dart                  # Model class for a single task
│   └── task_data.dart             # ChangeNotifier for managing tasks
│
├── screens/
│   ├── add_task_screen.dart       # Dialog-like screen to add a new task
│   └── tasks_screens.dart         # Main screen displaying all tasks
│
└── widgets/
    ├── task_tile.dart             # Widget for individual task row
    └── tasks_list.dart            # ListView builder for all tasks
```

---

## 🛠️ Technologies & Packages

| Package                                                                     | Version | Purpose                     |
| --------------------------------------------------------------------------- | ------- | --------------------------- |
| [flutter](https://flutter.dev)                                              | latest  | Cross-platform UI framework |
| [provider](https://pub.dev/packages/provider)                               | ^6.x    | State management            |
| [hive](https://pub.dev/packages/hive)                                       | ^2.2.3  | Local NoSQL database        |
| [hive\_flutter](https://pub.dev/packages/hive_flutter)                      | ^1.1.0  | Hive Flutter adapter        |
| [flutter\_slidable](https://pub.dev/packages/flutter_slidable)              | ^3.1.1  | Swipe-to-delete             |
| [flutter\_launcher\_icons](https://pub.dev/packages/flutter_launcher_icons) | ^0.13.1 | Custom app icons            |
| flutter\_lints                                                              | ^5.0.0  | Linting & best practices    |

---

## 📸 Screenshots

> ![Todo App](https://github.com/MuhmmadUmair/Todoey-/blob/581d220c698352512916c20c1f63c36ca5e4dbc5/todo.png)

---

## ⚙️ Getting Started

### Prerequisites

* [Flutter SDK](https://flutter.dev/docs/get-started/install) (latest stable)
* Android/iOS emulator or a real device
* Preferred IDE (VS Code, Android Studio, etc.)

### Installation

1️⃣ **Clone the repository**

```bash
git clone https://github.com/your-username/flutter_todo_provider.git
cd flutter_todo_provider
```

2️⃣ **Install dependencies**

```bash
flutter pub get
```

3️⃣ **Run the app**

```bash
flutter run
```

---

## 🧰 How It Works

1. The app initializes **Hive** and opens a box called `MyBox` for local storage.
2. `Task` (in `models/task.dart`) defines the data structure of a to-do item.
3. `TaskData` (in `models/task_data.dart`) extends `ChangeNotifier` and manages:

   * Adding new tasks
   * Toggling completion status
   * Deleting tasks (via swipe or long-press)
4. `tasks_screens.dart` builds the UI, listening to `TaskData` using Provider.
5. `add_task_screen.dart` allows adding new tasks through a bottom sheet or dialog.
6. `task_tile.dart` handles:

   * Checkbox for completion
   * Long-press gesture for quick deletion
   * Slidable for swipe-to-delete
7. `tasks_list.dart` builds the dynamic list of `TaskTile`s.

---

## 🌟 Future Enhancements

* Add task categories or priorities
* Dark mode toggle
* Search/filter tasks
* Cloud sync with Firebase or Supabase

---

## 🧑‍💻 Author

**Muhammad Umair**
• [LinkedIn](https://www.linkedin.com/in/muhmmadumair3233)

