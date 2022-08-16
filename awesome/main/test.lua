--lua script to test other auxilliary lua files
RC = {}
RC.vars = require("variables")
print(RC.vars.home)
