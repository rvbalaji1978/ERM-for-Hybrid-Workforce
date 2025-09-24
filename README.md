# ERM for Hybrid Workforce 💼

![Built with Salesforce DX](https://img.shields.io/badge/Built%20with-Salesforce%20DX-orange)
![Status In Development](https://img.shields.io/badge/Status-In%20Development-brightgreen)
![Program TCS SmartBridge](https://img.shields.io/badge/Program-TCS%20SmartBridge-purple)

A Salesforce-powered ecosystem designed to **digitize employee engagement, streamline hybrid work management, and improve workforce productivity and retention**. This platform connects employees, managers, HR, and leadership to create a more efficient, data-driven, and employee-centric workplace.

---

## Table of Contents
- [Problem Statement](#problem-statement)  
- [Our Solution](#our-solution)  
- [Key Features (Phase 1)](#key-features-phase-1)  
- [Technology Stack](#technology-stack)  
- [Getting Started](#getting-started)  
  - [Prerequisites](#prerequisites)  
  - [Installation](#installation)  
- [Repository Structure](#repository-structure)  
- [Project Context](#project-context)  

---

## Problem Statement
Companies with hybrid workforces face challenges in maintaining engagement, ensuring accountability, and tracking performance effectively across remote and in-office employees.

---

## Our Solution
The **ERM for Hybrid Workforce** platform provides a Salesforce-based solution to:  
- Track employee attendance and hybrid schedules  
- Collect real-time feedback and engagement data  
- Automate HR and managerial notifications  
- Centralize knowledge and resources for employees  

---

## Key Features (Phase 1)
- 📝 **Real-Time Feedback Collection:** Pulse surveys with AI-driven sentiment analysis to identify engagement issues.  
- 🔔 **Automated Alerts & Notifications:** Reminders for surveys, 1:1 meetings, and HR follow-ups.  
- 📚 **Knowledge Base:** Central repository for policies, onboarding resources, and FAQs.  
- 🤖 **Intelligent Automation:** Flows and triggers automate feedback analysis, notifications, and escalations.  

---

## Technology Stack
- Salesforce Platform (Lightning Experience)  
- Salesforce DX (SFDX) CLI  
- Apex & Lightning Web Components (LWC)  
- SOQL / SOSL for queries  
- Git & GitHub for version control  

---

## Getting Started
Follow these instructions to get a copy of the project running in your Salesforce environment for development and testing purposes.

### Prerequisites
- Salesforce CLI installed  
- Salesforce Developer or Sandbox Org  
- Git installed

---

### Installation
1. **Clone the repository:**
```bash
git clone https://github.com/your-username/erm-hybrid-workforce.git
cd erm-hybrid-workforce
```

2. **Authorize your Salesforce Org:**
```bash
sfdx auth:web:login --setalias my-dev-org --instanceurl https://login.salesforce.com
```

3. **Deploy Source Code:**
```bash
sfdx force:source:deploy --targetusername my-dev-org --sourcepath force-app
```

4. **Assign Permission Sets:**
```bash
sfdx force:source:deploy --targetusername my-dev-org --sourcepath force-app
```

*Note: Permission set names will be defined during development.*


## Project Context

This project is developed as part of the TCS SmartBridge program.
It serves as a practical application of Salesforce CRM development, automation, and analytics to solve a real-world workforce management challenge, focusing on hybrid and remote employee engagement and productivity.
