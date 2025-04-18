--- @param palette ColdPalette
--- @param config ColdConfig
--- @return ColdThemeDark
return function(palette, config)
    local main = {
        bg = palette.dark_01,
        fg = palette.light_01,
    }

    if
        config.custom_dark_background ~= nil
        and type(config.custom_dark_background) == 'string'
    then
        main.bg = config.custom_dark_background
    end

    if config.transparent_background then
        main.bg = palette.none
    end

    --- @class ColdThemeDark
    local theme = {
        bg = main.bg,
        fg = main.fg,
        editor = {
            color_column = {
                bg = palette.grey_02,
            },
            conceal = {
                fg = palette.grey_02,
            },
            cursor = {
                bg = main.fg,
                fg = main.bg,
                search = {
                    bg = palette.brown_01,
                },
                column = {
                    bg = palette.dark_06,
                },
                line = {
                    bg = config.cursorline and palette.dark_03 or main.bg,
                    nr = {
                        bg = config.cursorline and palette.dark_03 or main.bg,
                        fg = main.fg,
                    },
                },
            },
            match_paren = {
                bg = palette.grey_01,
            },
            directory = {
                fg = palette.blue_03,
            },
            diff = {
                add = {
                    bg = palette.green_01,
                },
                change = {
                    bg = palette.yellow_01,
                },
                delete = {
                    bg = palette.red_01,
                },
                text = {
                    bg = palette.green_01,
                },
            },
            folded = {
                bg = palette.blue_01,
            },
            line_nr = {
                bg = main.bg,
                fg = palette.grey_02,
            },
            msg = {
                error = {
                    fg = palette.red_03,
                },
                mode = {
                    fg = palette.green_05,
                },
                warning = {
                    fg = palette.yellow_03,
                },
            },
            non_text = {
                fg = palette.grey_01,
            },
            float = {
                bg = config.float_borderless and palette.dark_03 or main.bg,
                border = {
                    bg = config.float_borderless and palette.dark_03 or main.bg,
                    fg = config.float_borderless and palette.dark_03
                        or palette.grey_02,
                },
            },
            pmenu = {
                bg = palette.dark_04,
                fg = palette.grey_03,
                sel = {
                    bg = palette.dark_06,
                    fg = palette.light_02,
                },
                sbar = {
                    bg = palette.dark_04,
                },
                thumb = {
                    bg = palette.grey_02,
                },
            },
            search = {
                bg = palette.brown_01,
            },
            spell = {
                bad = {
                    fg = palette.red_03,
                },
                cap = {
                    fg = palette.yellow_03,
                },
                local_ = {
                    fg = palette.green_05,
                },
                rare = {
                    fg = palette.blue_05,
                },
            },
            status_line = {
                bg = palette.dark_02,
                fg = palette.grey_08,
                medium = {
                    bg = palette.dark_03,
                    fg = palette.grey_04,
                    git = {
                        added = {
                            fg = palette.green_05,
                        },
                        changed = {
                            fg = palette.yellow_03,
                        },
                        removed = {
                            fg = palette.red_03,
                        },
                    },
                },
                mode = {
                    bg = palette.green_04,
                    fg = palette.dark_02,
                },
                lsp = {
                    active = {
                        fg = palette.green_05,
                    },
                },
                icon = {
                    git = {
                        fg = palette.orange_02,
                    },
                    unsaved = {
                        fg = palette.yellow_03,
                    },
                },
            },
            title = {
                fg = palette.light_02,
            },
            visual = {
                bg = palette.dark_05,
            },
            win = {
                bar = {
                    unsaved_symbol = {
                        bg = main.bg,
                        fg = palette.yellow_03,
                    },
                },
                separator = {
                    bg = main.bg,
                    fg = palette.grey_02,
                },
            },
            completion = {
                menu = {
                    bg = config.float_borderless and palette.dark_03 or main.bg,
                },
                border = {
                    bg = config.float_borderless and palette.dark_03 or main.bg,
                    fg = config.float_borderless and palette.dark_03
                        or palette.grey_02,
                },
                doc = {
                    bg = config.float_borderless and palette.dark_04 or main.bg,
                    separator = {
                        bg = config.float_borderless and palette.dark_04
                            or main.bg,
                        fg = palette.grey_02,
                    },
                    border = {
                        bg = config.float_borderless and palette.dark_04
                            or main.bg,
                        fg = config.float_borderless and palette.dark_04
                            or palette.grey_02,
                    },
                },
            },
        },
        syntax = {
            comment = {
                fg = palette.grey_02,
                italic = config.italic.comments,
            },
            constant = {
                fg = palette.light_01,
                italic = {
                    builtin = config.italic.constants.builtin,
                    user = config.italic.constants.user,
                    macro = config.italic.constants.macro,
                },
            },
            string = {
                fg = palette.green_05,
                italic = config.italic.string,
            },
            character = {
                fg = palette.blue_04,
            },
            number = {
                fg = palette.light_02,
            },
            boolean = {
                fg = palette.blue_03,
            },
            identifier = {
                fg = palette.light_01,
            },
            function_ = {
                fg = palette.purple_03,
                italic = {
                    declaration = config.italic.functions.declaration,
                    call = config.italic.functions.call,
                    method = {
                        declaration = config.italic.functions.method.declaration,
                        call = config.italic.functions.method.call,
                    },
                },
            },
            keyword = {
                fg = palette.blue_03,
                italic = config.italic.keyword,
            },
            operator = {
                fg = palette.grey_08,
            },
            type = {
                fg = palette.grey_07,
                italic = {
                    normal = config.italic.types.normal,
                    builtin = config.italic.types.builtin,
                    definition = config.italic.types.definition,
                },
            },
            special = {
                fg = palette.blue_03,
            },
            delimiter = {
                fg = palette.grey_05,
            },
            underlined = {
                underline = true,
            },
            error = {
                bg = palette.red_03,
            },
            todo = {
                bg = palette.pink_01,
                italic = config.italic.comments,
            },
            added = {
                fg = palette.light_02,
                bg = palette.green_05,
            },
            changed = {
                fg = palette.light_02,
                bg = palette.orange_02,
            },
            removed = {
                fg = palette.light_02,
                bg = palette.red_03,
            },
        },
        git = {
            added = {
                fg = palette.green_05,
                inline = {
                    bg = palette.green_02,
                },
            },
            changed = {
                fg = palette.yellow_03,
                inline = {
                    bg = palette.green_02,
                },
            },
            removed = {
                fg = palette.red_03,
                inline = {
                    bg = palette.red_02,
                },
            },
        },
        treesitter = {
            tag = {
                delimiter = {
                    fg = palette.grey_02,
                },
            },
            context = {
                bg = config.treesitter_context_bg and palette.dark_06
                    or main.bg,
                line_number = {
                    bg = config.treesitter_context_bg and palette.dark_06
                        or main.bg,
                },
                bottom = {
                    underline = not config.treesitter_context_bg,
                    sp = palette.dark_06,
                },
            },
        },
        lsp = {
            reference = {
                text = {
                    bg = palette.grey_01,
                },
                read = {
                    bg = palette.grey_01,
                },
                write = {
                    bg = palette.grey_01,
                },
            },
        },
        diagnostic = {
            error = {
                fg = palette.red_03,
            },
            warn = {
                fg = palette.yellow_03,
            },
            info = {
                fg = palette.blue_03,
            },
            hint = {
                fg = palette.blue_05,
            },
            ok = {
                fg = palette.green_05,
            },
            unnecessary = {
                fg = palette.grey_02,
                special = {
                    fg = palette.blue_05,
                },
            },
        },
        nvim_tree = {
            normal = {
                bg = config.transparent_background and palette.none
                    or palette.dark_03,
                fg = palette.grey_08,
            },
            win_separator = {
                bg = main.bg,
                fg = main.bg,
            },
            folder = {
                icon = {
                    fg = palette.yellow_03,
                },
            },
            root_folder = {
                fg = palette.light_02,
            },
            git = {
                deleted = {
                    fg = palette.red_03,
                },
                dirty = {
                    fg = palette.yellow_03,
                },
                ignored = {
                    fg = palette.grey_02,
                },
                staged = {
                    fg = palette.green_05,
                },
            },
            exec_file = {
                fg = palette.green_05,
            },
        },
        cmp_item = {
            abbr = {
                fg = palette.grey_01,
            },
            kind = {

                fg = palette.grey_02,
            },
        },
        fzf = {
            normal = {
                bg = palette.dark_04,
            },
            border = {
                bg = palette.dark_04,
                fg = palette.dark_04,
            },
            preview = {
                normal = {
                    bg = main.bg,
                },
                border = {
                    bg = main.bg,
                    fg = main.bg,
                },
                title = {
                    bg = main.bg,
                    fg = main.bg,
                },
            },
        },
        telescope = {
            normal = {
                bg = palette.dark_04,
            },
            border = {
                bg = palette.dark_04,
                fg = palette.dark_04,
            },
            preview = {
                normal = {
                    bg = main.bg,
                },
                border = {
                    bg = main.bg,
                    fg = main.bg,
                },
                title = {
                    bg = main.bg,
                    fg = main.bg,
                },
            },
            prompt = {
                normal = { bg = palette.dark_03 },
                border = {
                    bg = palette.dark_03,
                    fg = palette.dark_03,
                },
                title = {
                    bg = palette.dark_03,
                    fg = palette.dark_03,
                },
            },
        },
        alpha = {
            header = {
                fg = palette.green_05,
            },
        },
        grapple = {
            normal = {
                bg = palette.dark_02,
            },
            border = {
                bg = palette.dark_02,
                fg = palette.dark_02,
            },
            title = {
                bg = palette.green_05,
                fg = palette.dark_02,
            },
            footer = {
                bg = palette.dark_03,
                fg = palette.grey_04,
            },
        },
        mini = {
            indentscope = {
                fg = palette.dark_06,
            },
        },
        lazy = {
            button = {
                bg = config.float_borderless and palette.dark_03 or main.bg,
            },
            progress = {
                done = {
                    fg = palette.grey_02,
                },
                todo = {
                    fg = config.float_borderless and palette.dark_03 or main.bg,
                },
            },
        },
        snacks = {
            picker = {
                input = {
                    bg = palette.dark_02,
                    border = {
                        bg = palette.dark_02,
                    },
                },
                list = {
                    bg = palette.dark_03,
                    border = {
                        bg = palette.dark_03,
                    },
                },
            },
        },
    }

    return theme
end
