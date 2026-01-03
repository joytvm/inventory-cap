# SAP CAP Inventory Management System 🚀

A full-stack **SAP CAP (Cloud Application Programming) Inventory Management System** built using **Node.js** and a replicated **TypeScript** service implementation.

---

## 🧩 Features

### 👤 Services & Roles
- **Admin Service** (`requires: 'admin'`)  
  Restricted access similar to ABAP `AUTHORITY-CHECK`
- **End-User Service** (`requires: 'user'`)  
  Allows safe product browsing and operations

### 🛍 Product Management
- Product catalog with:
  - Stock **status tracking** (`IN_STOCK`, `LOW_STOCK`, `OUT_OF_STOCK`)
  - Quantity, price, image, and description
- **Criticality UI indicator** (Green/Yellow/Red) computed at service layer

### ✍ Draft-Enabled CRUD
- **Draft-safe editing** using CAP’s built-in OData draft pattern
- `CREATE`, `READ`, `UPDATE`, `DELETE` operations supported
- Prevents duplicate seed data conflicts with clean DB redeploy

### ⚡ Custom Actions & Controllers
- CAP event handlers implemented via `cds.service.impl`
- Custom business logic including:
  - Automatic product status update
  - Admin-only price editing restriction
  - Async backend flow using Promises / TypeScript async-await

### 🎨 Fiori Elements Annotations
- Supports **List Report** and **Object Page** UI floorplans
- UI displays:
  - Product criticality icons & colors
  - Product image
  - Header-level criticality on Object Page
- No frontend formatter required when binding to computed `criticality` field

---

## 🏗 Architecture

| Layer | Technology |
|---|---|
| Data Model | CDS (`schema.cds`) |
| Backend Service | Node.js (`cds.service.impl`) |
| Service Language Variant | TypeScript (`admin-service.ts`) |
| UI | SAP Fiori Elements (List Report + Object Page) |
| Database (local testing) | SQLite |

---

## 🔧 Setup & Run Locally

1. Clone the project  
2. Install dependencies:
   ```sh
   npm install