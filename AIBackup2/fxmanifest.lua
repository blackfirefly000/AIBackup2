--[[
    blackfirefly00
    Copyright C 2024
    Used with permission

    Modified from the Remaster by MajorFivePD (dsvipeer)
    Copyright C 2023

    Modified from the original by FiveM Scripts
    Copyright C 2018

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published
    by the Free Software Foundation, either version 3 of the License, or
    at your option any later version.
    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.
    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.

    Greetings from Germany to all Capitalists around the World! What a nice Life we all have! REMEMBER TO FIGHT AGAINST COMMUNISM! -Mooreiche
]]

title 'AI Backup Remastered Remastered'
description 'AI Law Enforcement Backup + Menu'
author 'blackfirefly000, MajorFivePD (dsvipeer), Mooreiche, Mobius1'
version '1.0.0'


dependencies {
  'NativeUI', --Requires NativeUI, found here: https://github.com/FrazzIe/NativeUILua 
  '/gameBuild:3095'   --This can be removed if you want to use an older game build and are not using the default config  
}

fx_version 'cerulean'
game {'gta5'}

shared_scripts {
  'config.lua'
}

client_scripts {
  '@NativeUI/NativeUI.lua',
  'menu.lua',
  'client.lua'
}
