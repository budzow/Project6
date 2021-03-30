The project shows cpp:S5501 raises an issue in Source.cpp regardless of whether the packing is changed by including pack.h or not

To reproduce:

1. Compile the Project with /Zp8 argument and similar output will be produced:
-----
1>C:\Users\michal\source\repos\Project6\Project6\Source.cpp(1,9): warning C4810: value of pragma pack(show) == 8
1>C:\Users\michal\source\repos\Project6\Project6\pack.h(3,9): warning C4810: value of pragma pack(show) == 8
1>C:\Users\michal\source\repos\Project6\Project6\pack.h(5,9): warning C4810: value of pragma pack(show) == 1
1>C:\Users\michal\source\repos\Project6\Project6\pack.h(7,9): warning C4810: value of pragma pack(show) == 8
1>C:\Users\michal\source\repos\Project6\Project6\Source.cpp(5,9): warning C4810: value of pragma pack(show) == 8
-----
i.e. including pack.h in Source.cpp does not change packing

2. Compile the Project with /Zp1 argument and similar output will be produced:
-----
1>C:\Users\michal\source\repos\Project6\Project6\Source.cpp(1,9): warning C4810: value of pragma pack(show) == 1
1>C:\Users\michal\source\repos\Project6\Project6\pack.h(3,9): warning C4810: value of pragma pack(show) == 1
1>C:\Users\michal\source\repos\Project6\Project6\pack.h(5,9): warning C4810: value of pragma pack(show) == 1
1>C:\Users\michal\source\repos\Project6\Project6\pack.h(7,9): warning C4810: value of pragma pack(show) == 8
1>C:\Users\michal\source\repos\Project6\Project6\Source.cpp(3,1): warning C4103: alignment changed after including header, may be due to missing #pragma pack(pop)
1>C:\Users\michal\source\repos\Project6\Project6\Source.cpp(5,9): warning C4810: value of pragma pack(show) == 8
-----
i.e. including pack.h in Source.cpp does change packing from 1 to 8.