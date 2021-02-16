#!/usr/bin/env texlua 
kpse.set_program_name("luatex")

local json = io.read("*all")
if not json then 
  print "No input data"
  os.exit() 
end

local tpl_file = io.open("template.tex", "r")
if not tpl_file then
  print("Cannot read template file")
  os.exit()
end
local content = tpl_file:read("*all")
tpl_file:close()

local filled = content:gsub("@@@", json)

local jobname = "eshop-objednavky"

local latex = io.popen('lualatex -file-line-error -jobname='..jobname,'w')
latex:write(filled)
latex:close()
print(filled)
os.execute("xdg-open " .. jobname .. ".pdf")


