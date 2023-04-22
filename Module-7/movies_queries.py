#CSD310 Tyler O'Riley 04/22/2023 Assignment 7_2
#Python queries to select and display MySQL table data

import mysql.connector
from mysql.connector import errorcode

config = {
    "user": "movies_user",
    "password": "popcorn",
    "host": "127.0.0.1",
    "database": "movies",
    "raise_on_warnings": True
}

db = mysql.connector.connect(**config)

cursor = db.cursor()

#STUDIO SELECTOR AND DISPLAY
cursor.execute("SELECT studio_id, studio_name FROM studio")
studio = cursor.fetchall()

print("-- DISPLAYING Studio RECORDS --")
for studio in studio:
    print("Studio ID: {}\nStudio Name: {}\n".format(studio[0], studio[1]))

#GENRE SELECTOR AND DISPLAY
cursor.execute("SELECT genre_id, genre_name FROM genre")
genre = cursor.fetchall()

print("\n\n-- DISPLAYING Genre RECORDS --")
for genre in genre:
    print("Genre ID: {}\nGenre Name: {}\n".format(genre[0], genre[1]))

#FILM SELECTOR AND DISPLAY
cursor.execute("SELECT film_name, film_runtime FROM film")
film = cursor.fetchall()

print("\n\n-- DISPLAYING Short Film RECORDS --")
for film in film:
    time = int(film[1])
    if time <= 120:
        print("Film Name: {}\nRuntime: {}\n".format(film[0], film[1]))

#FILM SELECTOR AND DISPLAY
cursor.execute("SELECT film_name, film_director FROM film ORDER BY film_director")
film = cursor.fetchall()

print("\n\n-- DISPLAYING Director RECORDS in Order --")
for film in film:
    print("Film Name: {}\nDirector: {}\n".format(film[0], film[1]))
