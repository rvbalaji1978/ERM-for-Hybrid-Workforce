# ERM for Hybrid Workforce 💼

**License:** MIT  
**Salesforce DX Status:** In Development  
**Organization:** TCS SmartBridge  

A Salesforce-powered ecosystem designed to **digitize employee engagement, streamline hybrid work management, and improve workforce productivity and retention**. This platform connects employees, managers, HR, and leadership to create a more efficient, data-driven, and employee-centric workplace.

---

## Table of Contents
- [Problem Statement](#problem-statement)  
- [Our Solution](#our-solution)  
- [Key Features (Phase 1)](#key-features-phase-1)  
- [Technology Stack](#technology-stack)  
- [Getting Started](#getting-started)  
- [Repository Structure](#repository-structure)  
- [Project Context](#project-context)  

---

## Problem Statement
Companies with hybrid workforces face challenges in maintaining engagement, ensuring well-being, and monitoring productivity. Employees working remotely or on flexible schedules often feel disconnected, while managers struggle to track team performance, work schedules, and engagement. Disparate systems for surveys, scheduling, and HR management lead to inefficiencies, low morale, and increased attrition risk.

---

## Our Solution
**ERM for Hybrid Workforce** is a Salesforce-based platform that provides a **central hub for all employee interactions**.

**For Employees:**  
- Access a mobile-friendly portal to manage schedules, provide real-time feedback, and access company resources.

**For Managers:**  
- Monitor team engagement, view schedules, track sentiment trends, and respond to feedback proactively.

**For HR & Leadership:**  
- Analyze organization-wide engagement trends, optimize hybrid scheduling, and make data-driven workforce decisions.

---

## Key Features (Phase 1)
- 🗓 **Hybrid Scheduling Module:** Employees can log office and remote days; managers view consolidated team schedules.  
- 📊 **Analytics & Dashboards:** Real-time reporting on engagement, attrition risks, and productivity trends.  
- 📝 **Real-Time Feedback Collection:** Pulse surveys with AI-driven sentiment analysis to identify engagement issues.  
- 🔔 **Automated Alerts & Notifications:** Reminders for surveys, 1:1 meetings, and HR follow-ups.  
- 📚 **Knowledge Base:** Central repository for policies, onboarding resources, and FAQs.  
- 🤖 **Intelligent Automation:** Flows and triggers automate feedback analysis, notifications, and escalations.  

---

## Technology Stack
- **Core Platform:** Salesforce Lightning Platform  
- **UI:** Lightning Web Components (LWC) & Experience Cloud  
- **Backend Logic:** Apex (Triggers, Schedulable, Asynchronous)  
- **Automation:** Salesforce Flow & Approval Processes  
- **Analytics:** Tableau CRM (Einstein Analytics) for dashboards and reporting  
- **DevOps:** Salesforce DX, VS Code, Git & GitHub  
- **AI/ML:** Einstein AI for sentiment analysis of feedback  

---

## Getting Started
Follow these instructions to get a copy of the project running in your Salesforce environment for development and testing purposes.

### Prerequisites
- Salesforce CLI  
- Visual Studio Code with Salesforce Extension Pack  
- Salesforce Developer Edition Org or Sandbox  

### Installation
1. Clone the repository:  

git clone https://github.com/your-username/erm-hybrid-workforce.git
cd erm-hybrid-workforce
Authorize your Salesforce Org:

bash

sfdx auth:web:login --setalias my-dev-org --instanceurl https://login.salesforce.com
Deploy the source code to your org:

bash

sfdx force:source:deploy --targetusername my-dev-org --sourcepath force-app
Assign Permission Sets:

bash

sfdx force:user:permset:assign --targetusername my-dev-org --permsetname Employee
sfdx force:user:permset:assign --targetusername my-dev-org --permsetname Manager
(Note: Permission set names are examples and will be defined during development.)

Repository Structure
bash

erm-hybrid-workforce/
│
├── force-app/                   # Salesforce source files
├── config/                      # Project configuration files
├── scripts/                     # Deployment & automation scripts
├── docs/                        # Documentation & diagrams
└── README.md                    # Project overview

Project Context
This project is developed as part of the TCS SmartBridge program. It serves as a practical application of Salesforce CRM development, automation, and analytics to solve a real-world workforce management challenge, focusing on hybrid and remote employee engagement and productivity.
