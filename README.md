# todo_riverpod_app

# 📝 Todo App (Flutter + Riverpod)

## 📱 Description

A simple Todo app built with Flutter using Riverpod for state management.

The app allows users to:

* ➕ Add tasks
* ❌ Delete tasks
* ✅ Mark tasks as completed

---

## 🧠 Tech Stack

* Flutter (UI)
* Riverpod (state management)
* StateNotifier (business logic)
* ListView.builder (list rendering)
* AlertDialog + TextField (user input)

---

## ⚙️ Core Logic

* Data is stored in `StateNotifier<List<TodoModel>>`
* UI listens to state using `ref.watch`
* Actions are triggered using `ref.read`

---

## 🚀 Features

* Add tasks via dialog input
* Remove tasks
* Toggle task completion (done / not done)
* Automatic UI updates

---

## 📚 Purpose

This project was created to practice:

* Riverpod
* State management
* Understanding the flow: `data → provider → UI`

---

## 🔥 Future Improvements

* Local data persistence
* Better UI/UX design
* Animations
* Task filtering

---

## 👨‍💻 Author

AndriiDevX

