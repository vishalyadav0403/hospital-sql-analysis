# hospital-sql-analysis
SQL project for hospital data analysis using views and queries.

# Hospital SQL Data Analysis Project

This project is a SQL-based data analysis of hospital records, focusing on insights like patient statistics, medical expenses, department performance, and more.

## 📁 Files Included

- `Hospital_Data.csv` – Contains hospital data including patients, doctors, admission/discharge dates, expenses, etc.
- `SQL micro project.sql` – SQL script to create the table, load the data, and generate multiple analytical views.
- `Screenshots/` *(Optional)* – Contains screenshots of GitHub repository creation steps.

## 📊 Key SQL Views & Queries

1. **Total Number of Patients**
2. **Average Number of Doctors per Hospital**
3. **Top 3 Departments with Highest Number of Patients**
4. **Hospital with Maximum Medical Expenses**
5. **Daily Average Medical Expenses**
6. **Longest Hospital Stay**
7. **Total Patients Treated Per City**
8. **Average Length of Stay Per Department**
9. **Department with the Lowest Number of Patients**
10. **Monthly Medical Expenses Report**

## 🛠 How to Use

1. Ensure you have PostgreSQL installed and running.
2. Open the SQL script (`SQL micro project.sql`) in your SQL editor.
3. **Load the CSV file into the database**:
   - Update the file path in the `COPY` command as needed (see below).
   - Or use `\COPY` if you're in the `psql` terminal.

### ⚠️ CSV Import Note

By default, the script uses:

```sql
COPY hospital(hospital_name, location, department, doctors_count, patients_count, admission_date, discharge_date, medical_expenses)
FROM 'D:\C DATA\Desktop\new sql project\Hospital_Data.csv'
CSV HEADER;

Feel free to fork, clone, or contribute!
