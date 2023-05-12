import mysql.connector
from flask import Flask, render_template, request, redirect, url_for, flash
from flask_bootstrap import Bootstrap

app = Flask(__name__, template_folder='templates')
Bootstrap(app)
app.secret_key = "secret key"

conn = mysql.connector.connect(
	host='localhost',
	user='flask',
	password='Michelle@26',
	database= 'school'
)

c = conn.cursor()
c.execute('''CREATE TABLE IF NOT EXISTS employees (
        RoomNum INTEGER PRIMARY KEY,
        Grade VARCHAR(200),
        TeacherName VARCHAR(200),
        NumStudents VARCHAR(200),
        AvgGrade VARCHAR(200))''')
print("Table created")
conn.close()

@app.route('/')
def main():
    return render_template('main.html')
    
@app.route('/school')
def school():
    return render_template('school.html')
    

@app.route('/classregistration', methods=['GET', 'POST'])
def classregistration():
    if request.method == 'POST':
    	RoomNum = request.form['RoomNum']
    	Grade = request.form['Grade']
    	TeacherName = request.form['TeacherName']
    	NumStudents = request.form['NumStudents']
    	AvgGrade = request.form['AvgGrade']

    	conn = mysql.connector.connect(
                host='localhost',
                user='flask',
                password='Michelle@26',
                database= 'school'
        )
    	c = conn.cursor()
    	c.execute("INSERT INTO Classrooms (RoomNum, Grade, TeacherName, NumStudents,AvgGrade) VALUES ('{0}','{1}','{2}','{3}','{4}')".format(RoomNum, Grade, TeacherName, NumStudents, AvgGrade))
    	conn.commit()
    	conn.close()

    	return redirect(url_for('classinfo'))
    
    return render_template('classregistration.html')

@app.route('/classinfo')
def classinfo():
	conn = mysql.connector.connect(
		host='localhost',
		user='flask',
		password='Michelle@26',
		database= 'school'
	)
	cur = conn.cursor()
	cur.execute("SELECT * FROM Classrooms")
	rows = cur.fetchall()
	return render_template('classinfo.html', rows=rows)

if __name__ == '__main__':
    app.run(debug=True)
