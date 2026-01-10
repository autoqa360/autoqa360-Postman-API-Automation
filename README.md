# 🚀 API Automation Framework using Postman & Newman

---

## 🏗️ What I Built
I built a **production-ready API automation framework** using **Postman and Newman**, designed to automate real-world API scenarios rather than simple request testing.  
The framework follows **industry best practices** and focuses on **scalability, maintainability, and CI/CD readiness**.

---

## ⭐ Framework Benefits
- 🚀 Scalable and reusable automation design  
- 🔒 Zero hardcoded credentials or test data  
- 🔄 CI/CD-ready execution model  
- 👀 Clear visibility through professional HTML reports  
- 🤝 Easy onboarding for new team members  

---

## 🔑 Key Technical Highlights
- 🧩 Modular Postman collection structured by feature and responsibility  
- 🔐 JWT / Bearer token authentication with dynamic token extraction  
- 🌍 Environment variables for configuration and secure data handling  
- 🔁 End-to-end CRUD automation (Create, Read, Update, Delete)  
- 🔗 Dynamic data chaining across dependent API requests  
- 🧹 Automated cleanup to keep test environments stable  
- 🧠 JavaScript-based assertions for response and business logic validation  

---

## 🔄 Automation Flow
1️⃣ 🔑 Authenticate user and generate access token  
2️⃣ 📂 Create category and store category ID  
3️⃣ 📦 Create product using dynamic category reference  
4️⃣ 🔍 Retrieve and validate product details  
5️⃣ ✏️ Update product and verify changes  
6️⃣ 🗑️ Delete product to clean up test data  

---

## 📊 Reporting & Execution
- ⚙️ Automated execution using **Newman CLI**  
- 📈 Professional **HTML execution reports** including:
  - ✅ Pass / Fail summary  
  - 🧪 Detailed assertion results  
  - ⏱ Response time metrics  
  - 📄 Request & response details  
- 📤 Reports are **shareable** and **CI/CD pipeline ready**

```bash
newman run collection.json -e environment.json -r cli,html
