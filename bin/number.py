#!/usr/bin/env python3
l=[
35,
36,
37,
1,
2,
3,
4,
5,
6,
7,
38,
39,
40,
63,
64,
65,
66,
67,
68,
69,
52,
54,
55,
57,
58,
59,
60,
61,
62,
84,
70,
71,
72,
74,
75,
76,
78,
79,
81,
82,
295,
402,
296,
297,
298,
300,
301,
302,
304,
305,
306,
45,
353,
53,
307,
308,
309,
400,
401,
10,
83,
41,
42,
43,
44,
46,
47,
48,
49,
51,
107,
108,
109,
110,
111,
241,
290,
291,
292,
293,
294,
8,
9,
13,
14,
17,
18,
19,
20,
21,
22,
23,
24,
25,
26,
27,
28,
29,
30,
31,
32,
33,
34,
56,
289,
112,
85,
86,
87,
88,
89,
90,
91,
92,
93,
94,
95,
96,
97,
98,
99,
100,
101,
102,
103,
104,
105,
106,
]

resource="e7d554c0ec9bcd21071c25b83cee7f61da957f5fac56d2cdb6cf1a8cf087c4c3"
entity=7010001270
org="local-authority-eng:BUC"

for ref in sorted(l):
    entity = entity + 1
    print(f"article-4-direction-area,{resource},,{org},{ref},{entity}")
