local neogit = require("neogit")

neogit.open()

neogit.open({ "commit" })

neogit.open({ kind = "split" })

neogit.open({ cwd = "~" })
