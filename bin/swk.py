#!/usr/bin/env python3

import sys
import csv

lookups = {}

field_size_limit = sys.maxsize
while True:
    try:
        csv.field_size_limit(field_size_limit)
        break
    except OverflowError:
        field_size_limit = int(field_size_limit / 10)


fieldnames=["prefix","resource","entry-number", "organisation","reference","entity"]
w = csv.DictWriter(open("/tmp/l", "w", newline=""), fieldnames=fieldnames)
w.writeheader()


entity = 7010000745
for rrow in csv.DictReader(open("collection/resource.csv")):
    if rrow["organisations"] == "local-authority-eng:SWK":
        resource = rrow["resource"]
        entry_number = 0
        for row in csv.DictReader(open(f"var/converted/{resource}.csv")):
            entry_number += 1
            o = {}
            o["prefix"] = "article-4-direction-area"
            o["resource"] = resource
            o["organisation"] = "local-authority-eng:SWK"
            #o["reference"] = row["Name"]
            o["entry-number"] = entry_number
            o["entity"] = entity
            w.writerow(o)
            entity += 1
            #print(row["More_information"])
            #print(row["Article_4_Direction"])
