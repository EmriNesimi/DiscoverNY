import sqlite3
import json

def fetch_data():
    # Connect to your SQLite database
    conn = sqlite3.connect('NYC.db')
    cursor = conn.cursor()

    # Define queries for each table
    queries = {
        'Restaurants': 'SELECT * FROM Restaurants',
        'Events': 'SELECT * FROM ny_Events',
        'ThingsToDo': 'SELECT * FROM ThingsToDo',
        'PlacesToStay': 'SELECT * FROM PlacesToStay'
    }

    all_data = {}

    # Fetch data from each table and add it to the dictionary
    for key, query in queries.items():
        cursor.execute(query)
        rows = cursor.fetchall()
        # Convert row objects to dictionaries
        columns = [column[0] for column in cursor.description]
        all_data[key] = [dict(zip(columns, row)) for row in rows]

    # Close connection
    conn.close()

    # Write data to JSON file
    with open('data.json', 'w') as json_file:
        json.dump(all_data, json_file, indent=4)

if __name__ == '__main__':
    fetch_data()
