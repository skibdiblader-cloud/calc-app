#!/usr/bin/env bash

# 1. Create project folder and step inside
mkdir -p calculator-app
cd calculator-app || exit

# 2. Initialize Git repository
git init

# 3. Create the README.md file
cat << 'EOF' > README.md
# Calculator App

A modular calculator application built to handle core arithmetic operations, state management, and numerical edge cases.

## Project Structure & Columns
- **Todo**: Incoming tasks and backlog items ready for pickup.
- **In Progress**: Active development and code review phase.
- **Done**: Verified features and passing unit test suites.

## Team Assignments & Responsibilities
- **Developer 1 (UI Lead)**: Component layout, keypads, display formatting, and UI event wiring.
- **Developer 2 (Logic Lead)**: Core arithmetic parser, edge-case handlers (division by zero), and input buffer management.
- **QA / Tester**: Unit test suite implementation, device testing, and edge-case verification.

## Getting Started
1. Clone the repository: `git clone <REPOSITORY_URL>`
2. Open `index.html` or run your preferred local development server.
EOF

# 4. Create a local TASKS.md file to track board assignments
cat << 'EOF' > TASKS.md
# Project Task Board

## Todo
- [ ] [UI] Build Calculator Display Component (@Dev1)
- [ ] [UI] Create Keypad Grid & Button Layout (@Dev1)
- [ ] [UI] Connect Button Events to Logic State (@Dev1)
- [ ] [Logic] Implement Arithmetic Engine (add, subtract, multiply, divide) (@Dev2)
- [ ] [Logic] Handle Division by Zero & Overflow Cases (@Dev2)
- [ ] [Logic] Implement Input Buffer, Chaining, and Reset (C / AC) (@Dev2)
- [ ] [QA] Set up Unit Test Suite for Math Logic (@QA)
- [ ] [QA] Perform Cross-Device Responsiveness & UI Testing (@QA)

## In Progress
- [ ] Repository Initialization and Readme Setup (@Dev1)

## Done
- [x] Initial Project Setup & Kanban Architecture (@Lead)
EOF

# 5. Commit initial files
git add README.md TASKS.md
git commit -m "Initial commit: Add README and project task board"

echo "Success! Repository initialized in '$(pwd)' with README.md and TASKS.md."