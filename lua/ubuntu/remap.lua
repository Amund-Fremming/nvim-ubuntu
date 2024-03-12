local function clearQwertyRemaps()
    print("Cleared Qwerty remaps")
    vim.g.mapleader = " "
    vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

    -- Moving highlighted text up and down
    vim.keymap.set("v", "K", ":m '>+1<CR>gv=gv")
    vim.keymap.set("v", "J", ":m '<-2<CR>gv=gv")

    -- Paste from copy buffer without loosing the buffer
    vim.keymap.set("x", "<leader>p", "\"_dP")

    -- Half page jump with cursor in center - DONT WORK!!!!!!!!!!!
    vim.keymap.set("n", "<leader>t", "\"_d")
    vim.keymap.set("v", "<leader>t", "\"_d")

    -- This is going to get me cancelled
    vim.keymap.set("i", "<C-s>", "<Esc>")

    -- For national security
    vim.keymap.set("n", "Q", "<nop>")

    -- Navigation local and global for errors and grep search
    vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
    vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
    vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
    vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

    -- Change all words equal to this word
    vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

    -- Make file executable
    vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
end

local function clearColemanRemaps()
    print("Cleared Coleman remaps")
    -- Arrow keys
    vim.keymap.set("n", "u", "u", {silent = true})
    vim.keymap.set("n", "n", "n", {silent = true})
    vim.keymap.set("n", "e", "e", {silent = true})
    vim.keymap.set("n", "i", "<Cmd>startinsert<CR>", {silent = true})

    -- Arrow keys visual mode
    vim.keymap.set("v", "u", "u", {silent = true})
    vim.keymap.set("v", "n", "n", {silent = true})
    vim.keymap.set("v", "e", "e", {silent = true})
    vim.keymap.set("v", "i", "i", {silent = true})

    -- Jumping words and lines
    vim.keymap.set("n", "y", "y", {noremap = true, silent = true})
    vim.keymap.set("n", "l", "l", {noremap = true, silent = true})
    vim.keymap.set("n", "Y", "Y", {noremap = true, silent = true})
    vim.keymap.set("n", "L", "L", {noremap = true, silent = true})

    -- Jumping words and lines visual mode
    vim.keymap.set("v", "y", "y", {noremap = true, silent = true})
    vim.keymap.set("v", "l", "l", {noremap = true, silent = true})
    vim.keymap.set("v", "Y", "Y", {noremap = true, silent = true})
    vim.keymap.set("v", "L", "L", {noremap = true, silent = true})

    -- Visual, Insert, Esc
    vim.keymap.set('n', 't', 't', {noremap = true, silent = true})
    vim.keymap.set("n", "<C-s>", "<Esc>", {noremap = true, silent = true})

    -- Delete, Yank, Undo, Paste
    vim.keymap.set("n", "m", "m", {noremap = true, silent = true})
    vim.keymap.set("n", "h", "h", {noremap = true, silent = true})

    -- Delete, Yank, Undo, Paste
    vim.keymap.set("v", "m", "m", {noremap = true, silent = true})
    vim.keymap.set("v", "h", "h", {noremap = true, silent = true})

    -- Set jumping back to normal
    vim.keymap.set("v", "0", "0", {noremap = true, silent = true})
    vim.keymap.set("v", "$", "$", {noremap = true, silent = true})
end

local function applyConfig()
    if _G.myConfigCondition == "qwerty" then
        clearColemanRemaps()
        vim.g.mapleader = " "
        vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

        -- Moving highlighted text up and down
        vim.keymap.set("v", "K", ":m '>+1<CR>gv=gv")
        vim.keymap.set("v", "J", ":m '<-2<CR>gv=gv")

        -- Paste from copy buffer without loosing the buffer
        vim.keymap.set("x", "<leader>p", "\"_dP")

        -- Half page jump with cursor in center - DONT WORK!!!!!!!!!!!
        vim.keymap.set("n", "<leader>t", "\"_d")
        vim.keymap.set("v", "<leader>t", "\"_d")

        -- This is going to get me cancelled
        vim.keymap.set("i", "<C-s>", "<Esc>")

        -- For national security
        vim.keymap.set("n", "Q", "<nop>")

        -- Navigation local and global for errors and grep search
        vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
        vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
        vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
        vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

        -- Change all words equal to this word
        vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

        -- Make file executable
        vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

        -- Tmux new session (Needs more setup)
        -- vim.keymap.set("n", "<C-q>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

        -- Saving
        vim.keymap.set("n", "<leader><leader>", "<Cmd>:w<CR>")
        print("QWERTY keymaps set!")
    elseif _G.myConfigCondition == "coleman" then
        clearQwertyRemaps()
        vim.g.mapleader = " "
        vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

        -- Moving highlighted text up and down
        vim.keymap.set("v", "E", ":m '>+1<CR>gv=gv")
        vim.keymap.set("v", "U", ":m '<-2<CR>gv=gv")

        -- Paste from copy buffer without loosing the buffer
        vim.keymap.set("x", "<leader>p", "\"_dP")

        -- For national security
        vim.keymap.set("n", "Q", "<nop>")

        -- Navigation local and global for errors and grep search
        vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
        vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
        vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
        vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

        -- Change all words equal to this word
        vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

        -- Make file executable
        vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

        -- Arrow keys
        vim.keymap.set("n", "u", "<Up>", {silent = true})
        vim.keymap.set("n", "n", "<Left>", {silent = true})
        vim.keymap.set("n", "e", "<Down>", {silent = true})
        vim.keymap.set("n", "i", "<Right>", {silent = true})

        -- Arrow keys visual mode
        vim.keymap.set("v", "u", "<Up>", {silent = true})
        vim.keymap.set("v", "n", "<Left>", {silent = true})
        vim.keymap.set("v", "e", "<Down>", {silent = true})
        vim.keymap.set("v", "i", "<Right>", {silent = true})

        -- Jumping words and lines
        vim.keymap.set("n", "y", "w", {noremap = true, silent = true})
        vim.keymap.set("n", "l", "b", {noremap = true, silent = true})
        vim.keymap.set("n", "Y", "$", {noremap = true, silent = true})
        vim.keymap.set("n", "L", "0", {noremap = true, silent = true})

        -- Jumping words and lines visual mode
        vim.keymap.set("v", "y", "w", {noremap = true, silent = true})
        vim.keymap.set("v", "l", "b", {noremap = true, silent = true})
        vim.keymap.set("v", "Y", "$", {noremap = true, silent = true})
        vim.keymap.set("v", "L", "0", {noremap = true, silent = true})

        -- Visual, Insert, Esc
        vim.keymap.set('n', 't', '<Cmd>startinsert<CR>', {noremap = true, silent = true})
        vim.keymap.set("n", "<C-t>", "<Esc>", {noremap = true, silent = true})

        -- Delete, Yank, Undo, Paste
        vim.keymap.set("n", "m", "u", {noremap = true, silent = true})
        vim.keymap.set("n", "h", "y", {noremap = true, silent = true})

        -- Delete, Yank, Undo, Paste
        vim.keymap.set("v", "m", "u", {noremap = true, silent = true})
        vim.keymap.set("v", "h", "y", {noremap = true, silent = true})

        -- Save
        vim.keymap.set("n", "<leader><leader>", "<Cmd>:w<CR>")

        -- Jump to top / bottom of document
        -- Jump to top / bottom of document visual mode
        -- append
        -- Replace character / remove character
        print("COLEMAN keymaps set!")
    end
end

applyConfig()