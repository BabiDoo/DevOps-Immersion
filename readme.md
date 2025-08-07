# DevOps Immersion - Alura + Google Cloud

This project is an API developed using **FastAPI** to manage students, courses, and enrollments in an educational institution.

---

## ✅ Prerequisites

- [Python 3.10 or higher](https://www.python.org/downloads/)
- [Git](https://git-scm.com/downloads)
- [Docker](https://www.docker.com/get-started/)

---

## 🚀 How to Run the Project

1. **Download the repository:**  
   [Click here to download](https://github.com/guilhermeonrails/imersao-devops/archive/refs/heads/main.zip)

2. **Create a virtual environment:**
   ```bash
   python3 -m venv ./venv
   ````


3. **Activate the virtual environment:**

   * On Linux/Mac:

     ```bash
     source venv/bin/activate
     ```
   * On Windows:

     ```bash
     venv\Scripts\activate
     ```

4. **Install dependencies:**

   ```bash
   pip install -r requirements.txt
   ```

5. **Run the application:**

   ```bash
   uvicorn app:app --reload
   ```

6. **Access the interactive documentation:**
   Open your browser and go to:
   [http://127.0.0.1:8000/docs](http://127.0.0.1:8000/docs)

   You can test all API endpoints interactively there.

---

## 🧱 Project Structure

```
├── app.py              # Main FastAPI application
├── database.py         # SQLite database configuration
├── models.py           # Database models (SQLAlchemy)
├── schemas.py          # Validation schemas (Pydantic)
├── routers/            # Routes for students, courses, enrollments
├── requirements.txt    # List of project dependencies
```

---

## 🗃️ Notes

* The SQLite database (`escola.db`) will be created automatically on the first run.
* If you want to reset the database, simply delete the `escola.db` file (this will remove all data).

---

✨ Feel free to explore, test, and improve this project!
⭐ If you found it useful, consider starring the repo!
