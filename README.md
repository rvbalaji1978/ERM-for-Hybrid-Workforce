ERM for Hybrid Workforce 👥

License: MIT
Salesforce DX Status: In Development
Organization: TCS SmartBridge

A Salesforce-powered ecosystem digitizing employee engagement and hybrid workforce management. This platform connects employees, managers, HR, and leadership to streamline scheduling, feedback, and engagement, improving productivity, retention, and overall employee experience.

Table of Contents

Problem Statement

Our Solution

Key Features (Phase 1)

Technology Stack

Getting Started

Repository Structure

Project Context

Problem Statement

Organizations with hybrid workforces face challenges in maintaining cohesive company culture, tracking employee well-being, and managing remote/office schedules. Disconnected tools for performance reviews, team communication, and scheduling create silos, leading to employee disengagement, burnout, and reduced productivity.

Managers and HR struggle to gain real-time insights into workforce sentiment, making proactive engagement and retention strategies difficult.

Our Solution

ERM for Hybrid Workforce is a holistic Salesforce-based platform that addresses these challenges by centralizing all employee interactions.

For Employees: A simple, mobile-first interface to manage schedules, provide feedback, and access resources.

For Managers: Tools to monitor team engagement, plan hybrid schedules, and resolve issues proactively.

For HR & Leadership: Real-time dashboards to track engagement trends, attrition risk, and workforce productivity.

Key Features (Phase 1)

📅 Hybrid Scheduling Management: Employees log office/remote days; managers see consolidated schedules for team planning.

📝 Real-Time Feedback Collection: Pulse surveys with automated sentiment analysis and alerts for negative trends.

🔔 Automated Notifications: Reminders for surveys, 1:1 meetings, and HR actions.

📚 Knowledge Base & Resources: Centralized policies, onboarding materials, and FAQs accessible via portal.

📊 Analytics Dashboards: Real-time insights on engagement, productivity, and attrition risk.

🤖 Sentiment Analysis: Einstein AI evaluates employee feedback to highlight critical trends.

🔗 Integrations: Slack/Teams, Outlook/Google Calendar, and HRMS systems.

📱 Mobile-First Design: Responsive UI with offline capabilities for low-connectivity areas.

Technology Stack

Core Platform: Salesforce Lightning Platform

UI: Lightning Web Components (LWC) & Experience Cloud

Backend Logic: Apex (Triggers, Schedulable, Asynchronous)

Automation: Salesforce Flow & Approval Processes

Analytics: Tableau CRM / Einstein Analytics

DevOps: Salesforce DX, VS Code, Git & GitHub

Getting Started

Follow these instructions to get a copy of the project up and running in your Salesforce environment.

Prerequisites

Salesforce CLI

Visual Studio Code with Salesforce Extension Pack

Salesforce Developer Edition Org or Sandbox

Installation

Clone the repository:

git clone https://github.com/your-username/erm-hybrid-workforce.git
cd erm-hybrid-workforce


Authorize your Salesforce Org:

sfdx auth:web:login --setalias my-dev-org --instanceurl https://login.salesforce.com


Deploy the source code to your org:

sfdx force:source:deploy --targetusername my-dev-org --sourcepath force-app


Assign Permission Sets:

sfdx force:user:permset:assign --targetusername my-dev-org --permsetname Employee


(Note: Permission set names are examples and can be defined during development.)

Repository Structure
force-app/
├─ main/
│  ├─ default/
│     ├─ classes/          # Apex classes
│     ├─ triggers/         # Apex triggers
│     ├─ lwc/              # Lightning Web Components
│     ├─ objects/          # Custom objects
│     ├─ workflows/        # Flows & automation
│     └─ dashboards/       # Tableau CRM / Analytics dashboards

Project Context

This project is being developed as part of the TCS SmartBridge program. It serves as a practical application of Salesforce development and architecture skills to address modern workforce management challenges in organizations adopting hybrid and remote work models.
