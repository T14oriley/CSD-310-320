#CSD310 Tyler O'Riley 04/22/2023 Assignment 8_2
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

title = "DISPLAYING FILMS AFTER DELETE"
title2 = "DISPLAYING FILMS AFTER DELETE"


#cursor = db.cursor()
cursor = db.cursor(buffered=True)

def show_films(cursor, title, title2): #Query function to join tables to display various film attributes
    cursor.execute("""
                SELECT film_name AS Name, film_director AS Director, genre_name AS Genre, studio_name AS 'Studio Name' FROM film 
                INNER JOIN genre ON film.genre_id=genre.genre_id 
                INNER JOIN studio ON film.studio_id=studio.studio_id
                """)

    films = cursor.fetchall()

    print("\n -- {} --".format(title))

    for film in films:
        print("Film Name: {}\nDirector: {}\nGenre Name ID: {}\nStudio Name: {}\n".format(film[0], film[1], film[2], film[3],))

    #Query to modify Alien to the Horror genre
    cursor.execute(""" 
                UPDATE film
                INNER JOIN genre ON film.genre_id=genre.genre_id 
                SET genre.genre_name = 'Horror'
                WHERE film.film_name = 'Alien'
                """)
    
    #Query to insert The Mummy into the database
    cursor.execute("""
                INSERT INTO film (film_id, film_name, film_releaseDate, film_runtime, film_director, studio_id, genre_id) 
                VALUES (4, 'The Mummy', '1999', 124, 'Stephen Sommers', 3, 1)
                """)
    
    #Query to delete Gladiator by its ID
    cursor.execute("""
                DELETE FROM film WHERE film_name = 'Gladiator'
                    """)

    #Query to select updated table data for display
    cursor.execute("""
                SELECT film_name AS Name, film_director AS Director, genre_name AS Genre, studio_name AS 'Studio Name' FROM film 
                INNER JOIN genre ON film.genre_id=genre.genre_id 
                INNER JOIN studio ON film.studio_id=studio.studio_id
                """)
    
    films = cursor.fetchall()


    print("\n -- {} --".format(title2))

    for film in films:
        print("Film Name: {}\nDirector: {}\nGenre Name ID: {}\nStudio Name: {}\n".format(film[0], film[1], film[2], film[3],))

show_films(cursor, title, title2)