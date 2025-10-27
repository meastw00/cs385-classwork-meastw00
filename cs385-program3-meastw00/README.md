# cs385-program3-meastw00
Made a simple counter with a save and load system

Tutorial used:
https://www.youtube.com/watch?v=lXO5Jt957BA

For possible save methods I considered using a simple text file, a JSON, or database.
Text file is extremely simple which would be fairly fitting for this assignment, but it works worse with a lot of things and becomes hard to organize.
JSON has decent organization but is a little more complex, but it is also the default of GODOT, which makes it very straightforward to code compared to other options.
Database is I think the most organized of the options but far more complex, probably more than I would need, and while I do have a little experience with SQL I don't think I really know it particularly well at all.
In the end I chose JSON, partially because it has the right level of organization for the info I want to store for my game, but mostly because it is the defualt for GODOT and most straightforward to use.