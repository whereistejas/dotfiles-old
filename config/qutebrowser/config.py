# dracula theme {{{
import dracula.draw

dracula.draw.blood(c, {
        'spacing': {
                    'vertical': 3,
                    'horizontal': 4
        },
        'font': {
                    'family': 'Menlo, Terminus, Monaco, Monospace',
                    'size': 12
        }
})
# }}}

c.url.start_pages = "https://www.google.com"

# search engines {{{
c.url.searchengines = {
        'DEFAULT': 'https://duckduckgo.com/?q={}',
        'g': 'http://www.google.com/search?hl=en&source=hp&ie=ISO-8859-l&q={}',
        'y': 'https://www.youtube.com/results?search_query={}',
        'w': 'https://en.wikipedia.org/?search={}',
        }
# }}}

c.completion.quick = True
c.zoom.default = '120%'

# keybindings {{{
config.bind('<Alt-h>', 'history -t')
config.bind('<Alt+y>','hint links spawn xterm -e youtube-dl -o "/home/tsanap/media/Videos/Youtube/%(uploader)s/%(title)s.%(ext)s" --write-description --write-info-json -f 22 {hint-url}')
config.bind('<Ctrl+y>','hint links spawn xterm -e youtube-dl -o "/home/tsanap/media/Videos/Youtube/%(uploader)s/%(title)s.%(ext)s" --write-description --write-info-json -f 18 {hint-url}')
# }}}

# shit shit and more shit {{{
# c.fonts.completion.category =       'bold   12pt Hack'
# c.fonts.completion.entry =          '       12pt Hack'
# c.fonts.debug_console =             '       12pt Hack'
# c.fonts.downloads =                 '       12pt Hack'
# c.fonts.hints =                     'bold   12pt Hack'
# c.fonts.keyhint =                   '       12pt Hack'
# c.fonts.prompts =                   '       12pt Hacf'
# c.fonts.statusbar =                 '       12pt Hack'
# c.fonts.tabs =                      '       12pt Hack'
# 
# 
# c.fonts.messages.error = '10pt monospace'
# c.fonts.messages.info = '10pt monospace'
# c.fonts.messages.warning = '10pt monospace'
# c.fonts.monospace = '"xos4 Terminus", Terminus, Monospace, "DejaVu Sans Mono", Monaco, "Bitstream Vera Sans Mono", "Andale Mono", "Courier New", Courier, "Liberation Mono", monospace, Fixed, Consolas, Terminal'
# }}}
