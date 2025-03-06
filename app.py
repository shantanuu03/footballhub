from flask import Flask, request, jsonify, render_template, redirect, url_for
import pymysql

app = Flask(__name__)

# Database connection configuration
DB_CONFIG = {
    'host': 'localhost',
    'user': 'root',
    'password': '',
    'database': 'footballhub',
    'cursorclass': pymysql.cursors.DictCursor
}

def get_db_connection():
    return pymysql.connect(**DB_CONFIG)



# main index
@app.route('/')
def home():
    return render_template('index.html')

@app.route('/test', methods=['POST'])
def test():
    #Player Registration
    conn = get_db_connection()
    cursor = conn.cursor()
    player_name = request.form['player_name']
    position_id = request.form['position_id']
    player_dob = request.form['player_dob']
    player_contact = request.form['player_contact']
    player_address = request.form['player_address']
    btn = request.form['player_register']
    print(btn)
    cursor.execute("insert into player values ('1111',%s,%s,'PUFC',%s,%s,%s)",(player_name,position_id,player_dob,player_contact,player_address))
    conn.commit()
    cursor.close()
    conn.close()
    return("test successful")


@app.route('/insert', methods=['POST'])
def reg_insert():
    button_clicked = request.form["register_button"]
    if button_clicked == 




if __name__ == '__main__':
    app.run(debug=True)