# Seeds are optional: this application boots, migrates, and serves every page
# with a completely empty database, and nothing here is required in
# production.
#
# The first operator account is promoted from the console on purpose; there is
# deliberately no seeded administrator, password, or API key anywhere in this
# repository.

# A few welcome notes so the wall has life on first load.
if GuestbookEntry.none?
  GuestbookEntry.create!([
    { name: "Vela", message: "First one in. The wall is open — make it yours." },
    { name: "Aregus", message: "Signed from the little RISC-V board that could." },
    { name: "Nova", message: "Sixteen gigabytes of envy. Nice wall." },
    { name: "Anonymous", message: "Leaving no name, only vibes." }
  ])
end
