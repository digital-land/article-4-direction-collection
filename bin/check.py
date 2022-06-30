#!/usr/bin/env python3

import sys
import csv
import sqlite3

connection = sqlite3.connect("dataset/article-4-direction-area.sqlite3")

# see if each lookup exists in the dataset ..
for row in csv.DictReader(open("pipeline/lookup.csv")):
    if row["organisation"] == "local-authority-eng:BUC":
        entity = row["entity"]
        #print(f"\n\n{entity}\n")
        cursor = connection.cursor()
        query = (
            "select field, value from fact"
            f"  where entity == {entity}"
            "  and value != ''"
            "  order by field, entry_date"
        )
        cursor.execute(query)
        facts = {}
        for fact in cursor.fetchall():
            field, value = fact
            facts.setdefault(field, {})
            facts[field].setdefault(value, 0)
            facts[field][value] += 1
        connection.commit()
        if facts == {}:
            print(entity)
            #sys.exit(1)
        print(facts)
