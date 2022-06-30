#!/usr/bin/env python3
import csv


entity = 7010002000

for row in csv.DictReader(open("/tmp/y.csv")):

    prefix = row["prefix"]
    resource = row["resource"]
    n = row["entry-number"]
    organisation = row["organisation"]
    reference = row["reference"]
    entity = entity + 1

    print(f"{prefix},{resource},{n},{organisation},{reference},{entity}")
