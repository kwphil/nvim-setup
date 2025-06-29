local asciiart = {}
local asciilit = [[
                                             
   _____                        _    _       
    /  '          /            ' )  /        
 ,-/-,_  ______  /____ __  ,--- (  /o ______ 
(_/  </_/ / / <_/_)(_)/ (_/_     \/<_/ / / <_
                         /                   
                        '                    

]]

for s in string.gmatch(asciilit, '([^\n]+)') do
    table.insert(asciiart, s)
end

return {
    theme='doom',
    config = {
        header = asciiart,
        center = {
            {
                icon='  | ',
                desc='Edit NeoVim Config',
                action='cd ~/.config/nvim | F',
                key='c',
            },
            {
                icon='  | ',
                desc='Recent Files',
                action='Telescope oldfiles',
                key='r',
            },
            {
                icon='  | ',
                desc='Recent Projects',
                action='Telescope projects',
                key='p',
            },
            {
                icon='  | ',
                desc='Quit',
                action='qa',
                key='q',
            },
        },
        footer = {
            '',
            'I know what kind of person you are.',
        },
    }
}
