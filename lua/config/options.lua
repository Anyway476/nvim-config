vim.opt.number = true         -- mostrar números de línea
vim.opt.relativenumber = true -- números relativos
vim.opt.cursorline = true     -- resaltar línea actual
vim.opt.ignorecase = true     -- ignorar mayúsculas en búsqueda
vim.opt.smartcase = true      -- no ignorar mayúsculas si hay alguna en búsqueda
vim.opt.hlsearch = false      -- no resaltar búsquedas
vim.opt.incsearch = true      -- búsqueda incremental

vim.opt.updatetime = 20       -- Más rápido para eventos (cursor, highlights)
vim.opt.timeoutlen = 200      -- Más rápido para keybinds combinados
vim.opt.ttimeoutlen = 5       -- Tiempo específico para terminal (muy importante)

-- Configuración de cursor para mejor feedback visual
vim.opt.termguicolors = true -- Colores RGB True Color (esencial para animaciones)
vim.opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50"

-- Suavizado de scrolling y movimientos
vim.opt.lazyredraw = false  -- Redibujado inmediato (¡crucial para fluidez!)
vim.opt.smoothscroll = true -- Scroll suave (si está disponible)
vim.opt.scrolloff = 8       -- Líneas de margen al hacer scroll
vim.opt.sidescrolloff = 8   -- Columnas de margen lateral

-- Optimizaciones de rendimiento para animaciones
vim.opt.redrawtime = 1500 -- Tiempo máximo para redibujado
vim.opt.synmaxcol = 500   -- Límite para sintaxis (mejor rendimiento en líneas largas)
vim.opt.matchtime = 2     -- Tiempo para mostrar paréntesis coincidentes

-- Mejor feedback visual durante edición
vim.opt.showmode = true -- Mostrar modo actual (Insert, Normal, Visual)
vim.opt.showcmd = true  -- Mostrar comandos parciales
vim.opt.cmdheight = 1   -- Altura de la línea de comandos

-- Suavizado adicional para modo insertar
vim.api.nvim_create_autocmd("InsertEnter", {
    callback = function()
        vim.opt.updatetime = 10 -- Aún más rápido en modo inserción
    end
})

vim.api.nvim_create_autocmd("InsertLeave", {
    callback = function()
        vim.opt.updatetime = 20 -- Volver al valor normal
    end
})
