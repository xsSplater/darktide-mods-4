local mod = get_mod("weapon_customization")

-- ##### ┌─┐┬  ┌─┐┌┐ ┌─┐┬    ┬  ┌─┐┌─┐┌─┐┬  ┬┌─┐┌─┐┌┬┐┬┌─┐┌┐┌ #########################################################
-- ##### │ ┬│  │ │├┴┐├─┤│    │  │ ││  ├─┤│  │┌─┘├─┤ │ ││ ││││ #########################################################
-- ##### └─┘┴─┘└─┘└─┘┴ ┴┴─┘  ┴─┘└─┘└─┘┴ ┴┴─┘┴└─┘┴ ┴ ┴ ┴└─┘┘└┘ #########################################################

mod:add_global_localize_strings({
	loc_weapon_cosmetics_customization = {
		en = "Customization",
		de = "Anpassung",
		ru = "Настройка",
		["zh-cn"] = "自定义",
	},
	loc_weapon_special_laser_pointer = {
		en = "Laser Pointer",
		de = "Laserpointer",
		ru = "Лазерный указатель",
		["zh-cn"] = "激光指示器",
	},
	loc_stats_special_action_laser_pointer_desc = {
		en = "Turn on or off the weapon mounted laser pointer.\nAlso functions as a torch. Useful in dark areas.",
		de = "Schalte den an der Waffe montierten Laserpointer ein oder aus.\nFunktioniert auch als Taschenlampe. Nützlich in dunklen Bereichen.",
		ru = "Включите или выключите установленный на оружии лазерный указатель.\nТакже работает как фонарик. Полезно в тёмных местах.",
		["zh-cn"] = "开启或关闭武器挂载激光指示器。\n同时也可作为手电筒。适合黑暗区域。",
	},
})

-- ##### ┬  ┌─┐┌─┐┌─┐┬    ┬  ┌─┐┌─┐┌─┐┬  ┬┌─┐┌─┐┌┬┐┬┌─┐┌┐┌ ############################################################
-- ##### │  │ ││  ├─┤│    │  │ ││  ├─┤│  │┌─┘├─┤ │ ││ ││││ ############################################################
-- ##### ┴─┘└─┘└─┘┴ ┴┴─┘  ┴─┘└─┘└─┘┴ ┴┴─┘┴└─┘┴ ┴ ┴ ┴└─┘┘└┘ ############################################################

return {
	mod_title = {
		en = "Extended Weapon Customization",
		de = "Erweiterte Waffenanpassung",
		ru = "Расширенная настройка оружия",
		["zh-cn"] = "武器自定义扩展",
	},
	mod_description = {
		en = "Extends weapon customizations",
		de = "Erweitert Waffenanpassungen",
		ru = "Extended Weapon Customization – значительно расширяет возможности настройки внешнего вида оружия и добавляет дополнительный обвес: лазерную указку, фонарики и прицелы.",
		["zh-cn"] = "武器自定义扩展",
	},
	group_debug = {
		en = "Debug",
		de = "Debug",
		ru = "Отладка",
		["zh-cn"] = "调试",
	},
	mod_option_debug = {
		en = "Debug",
		de = "Debug",
		ru = "Включить отладку",
		["zh-cn"] = "调试",
	},
	group_misc = {
		en = "Miscellaneous",
		de = "Verschiedenes",
	},
	mod_option_misc_cover_on_crouch = {
		en = "Cover on Crouch",
		de = "Deckung beim Ducken",
	},
	mod_option_misc_cover_on_crouch_tooltip = {
		en = "Plays the cover animation when crouching",
		de = "Spielt beim Ducken die Cover-Animation ab",
	},
	mod_option_misc_flicker_fix = {
		en = "Item Preview Flicker Fix",
		de = "Item-Vorschau Flimmer-Fix",
	},
	mod_option_misc_flicker_fix_tooltip = {
		en = "Fixes the black flickering when zooming in item preview with some graphics cards",
		de = "Behebt das schwarze Flackern beim Zoomen in der Item-Vorschau bei einigen Grafikkarten",
	},
	group_visible_equipment = {
		en = "Visible Equipment",
		de = "Sichtbare Ausrüstung",
		ru = "Видимое снаряжение",
		["zh-cn"] = "装备可见",
	},
	mod_option_visible_equipment = {
		en = "Visible Equipment",
		de = "Sichtbare Ausrüstung",
		ru = "Показывать снаряжение",
		["zh-cn"] = "装备可见",
	},
	mod_option_visible_equipment_tooltip = {
		en = "Shows currently unwielded equipment on player characters",
		de = "Zeigt die nicht genutzte Ausrüstung der Spielercharaktere",
		ru = "Показывает неиспользуемое в данный момент снаряжение на персонажах игроков.",
		["zh-cn"] = "在玩家角色上显示当前未手持的装备",
	},
	mod_option_visible_equipment_sounds = {
		en = "Weapon Sounds",
		de = "Waffen Geräusche",
		ru = "Звуки оружия слышны",
		["zh-cn"] = "武器声音",
	},
	mod_option_visible_equipment_sounds_tooltip = {
		en = "Plays sound effects for weapons when walking",
		de = "Spielt beim Gehen Soundeffekte für Waffen ab",
		ru = "Воспроизводятся звуковые эффекты оружия при ходьбе.",
		["zh-cn"] = "行走时播放武器音效",
	},
	mod_option_visible_equipment_sounds_all = {
		en = "Self and Teammates",
		de = "Selbst und Gruppenmitglieder",
		ru = "Себе и команде",
		["zh-cn"] = "自己和队友",
	},
	mod_option_visible_equipment_sounds_others = {
		en = "Teammates",
		de = "Gruppenmitglieder",
		ru = "Команде",
		["zh-cn"] = "队友",
	},
	mod_option_visible_equipment_sounds_off = {
		en = "Off",
		de = "Aus",
		ru = "Никому",
		["zh-cn"] = "关闭",
	},
	mod_option_visible_equipment_own_sounds_fp = {
		en = "Sounds in First Person",
		de = "Geräusche in First Person",
		ru = "Звуки от первого лица",
		["zh-cn"] = "第一人称声音",
	},
	mod_option_visible_equipment_own_sounds_fp_tooltip = {
		en = "Hear the sounds of your own equipment in first person",
		de = "Höre die Geräusche deiner eigenen Ausrüstung in first person",
		ru = "Вы будете слышать звуки собственного снаряжения от первого лица",
		["zh-cn"] = "在第一人称下能听到自己装备的声音",
	},
	group_weapon_animation = {
		en = "Weapon Animations",
		de = "Waffen Animationen",
		ru = "Анимации оружия",
		["zh-cn"] = "武器动画",
	},
	mod_option_weapon_build_animation = {
		en = "Play Animations",
		de = "Animationen Abspielen",
		ru = "Воспроизведение анимаций",
		["zh-cn"] = "播放动画",
	},
	mod_option_weapon_build_animation_tooltip = {
		en = "Plays building animations when changing weapon components",
		de = "Spielt Bauanimationen ab wenn Waffenkomponente verändert werden",
		ru = "Воспроизводит анимацию сборки при смене компонентов оружия.",
		["zh-cn"] = "更换武器配件时播放组装动画",
	},
	mod_option_weapon_build_animation_speed = {
		en = "Speed",
		de = "Geschwindigkeit",
		ru = "Скорость",
		["zh-cn"] = "速度",
	},
	mod_option_weapon_build_animation_speed_tooltip = {
		en = "Set the speed of the building animations",
		de = "Lege die Geschwindigkeit der Bauanimationen fest",
		ru = "Установите скорость анимации сборки.",
		["zh-cn"] = "设置组装动画速度",
	},
	mod_option_weapon_build_animation_wobble = {
		en = "Wobble",
		de = "Wackeln",
		ru = "Покачивание",
		["zh-cn"] = "抖动",
	},
	mod_option_weapon_build_animation_wobble_tooltip = {
		en = "Plays an unnecessary wobble animation at the end of the build animation",
		de = "Spielt nach der Bauanimation eine unnötige Wackelanimation ab",
		ru = "Воспроизводит ненужную анимацию качания в конце анимации сборки.",
		["zh-cn"] = "在组装动画结束时播放一段额外的抖动动画",
	},
	mod_option_weapon_build_animation_speed_unit = {
		en = "Seconds",
		de = "Sekunden",
		ru = "Секунды",
		["zh-cn"] = "秒",
	},
	group_flashlight = {
		en = "Flashlight",
		de = "Taschenlampe",
		ru = "Фонарик",
		["zh-cn"] = "手电筒",
	},
	mod_option_flashlight_shadows = {
		en = "Flashlight Shadows",
		de = "Taschenlampenschatten",
		ru = "Тень от фонарика",
		["zh-cn"] = "手电筒阴影",
	},
	mod_option_flashlight_shadows_tooltip = {
		en = "Sets dynamic shadows for flashlights\nAffects vanilla flashlights too",
		de = "Legt dynamische Sachatten für Taschenlampen fest\nBetrifft auch vanilla Taschenlampen",
		ru = "Включает динамические тени для фонариков.\nВлияет также и на стандартные игровые фонарики.",
		["zh-cn"] = "设置手电筒的动态阴影\n同样影响原装手电筒",
	},
	mod_option_flashlight_flicker = {
		en = "Flashlight Flicker",
		de = "Taschenlampenflimmern",
		ru = "Мерцание света фонарика",
		["zh-cn"] = "手电筒闪烁",
	},
	mod_option_flashlight_flicker_start = {
		en = "Flicker on Activate",
		de = "Filmmern beim Einschalten",
		ru = "Мерцание при включении",
		["zh-cn"] = "开启时闪烁",
	},
	mod_option_flashlight_flicker_start_tooltip = {
		en = "Flashlights immediately flicker once when activated",
		de = "Taschenlampe flimmert direkt beim Einschalten ein Mal",
		ru = "Фонарики мигают один раз при активации",
		["zh-cn"] = "开启手电筒时，立刻闪烁一次",
	},
	group_laser_pointer = {
		en = "Laser Pointer",
		de = "Laserpointer",
		ru = "Лазерный указатель",
		["zh-cn"] = "激光指示器",
	},
	mod_option_deactivate_crosshair = {
		en = "Deactivate Crosshair",
		de = "Zielkreuz Deaktivieren",
		ru = "Деактивировать перекрестие",
		["zh-cn"] = "禁用准星",
	},
	mod_option_deactivate_crosshair_tooltip = {
		en = "Crosshair is automatically hidden when laser pointer is activated",
		de = "Zielkreuz wird automatisch versteckt wenn Laserpointer angeschaltet wird",
		ru = "Перекрестие автоматически скрывается при активации лазерного указателя.",
		["zh-cn"] = "开启激光指示器时自动隐藏准星",
	},
	mod_option_laser_pointer_dot_size = {
		en = "Dot Size",
		de = "Punktgröße",
		ru = "Размер точки",
		["zh-cn"] = "圆点大小",
	},
	mod_option_laser_pointer_dot_size_tooltip = {
		en = "Sets the size of the dot at the end point of the laser",
		de = "Legt die Größe des Punktes am Ende des Lasers fest",
		ru = "Устанавливает размер точки на конце лазера.",
		["zh-cn"] = "设置激光末端圆点的大小",
	},
	mod_option_laser_pointer_wild = {
		en = "Wild Flickering",
		de = "Flimmert Wild",
		ru = "Дикое мерцание",
		["zh-cn"] = "强烈闪烁",
	},
	mod_option_laser_pointer_wild_tooltip = {
		en = "The flashlight of the laser pointer constantly flickers",
		de = "Die Taschenlampe des Laserpointers flimmert kontinuierlich",
		ru = "Фонарик лазерной указки будет постоянно мерцать.",
		["zh-cn"] = "激光指示器的手电筒持续闪烁",
	},
	mod_option_laser_pointer_weapon_dot = {
		en = "Weapon Shine Effect",
		de = "Waffen Scheineffekt",
		ru = "Эффект блеска на оружии",
		["zh-cn"] = "武器闪光效果",
	},
	mod_option_laser_pointer_weapon_dot_tooltip = {
		en = "Sets if there is a shine effect at the laser pointer",
		de = "Legt fest ob am Laserpointer ein Scheineffekt ist",
		ru = "Устанавливает наличие эффекта свечения лазерного указателя.",
		["zh-cn"] = "设置激光指示器配件上是否有闪光效果",
	},
	mod_option_laser_pointer_hit_indicator = {
		en = "Hit Indicator Flash",
		de = "Trefferindikator Blitz",
		ru = "Вспышка при попадании",
		["zh-cn"] = "命中指示器闪光",
	},
	mod_option_laser_pointer_hit_indicator_tooltip = {
		en = "Use laser dot as a flashing hit indicator",
		de = "Benutzt Laserpunkt als blitzenden Trefferindikator",
		ru = "Используйте лазерную точку в качестве вспыхивающего индикатора попаданий.",
		["zh-cn"] = "以激光圆点作为闪光的命中指示器",
	},
	mod_option_laser_pointer_hit_color = {
		en = "Normal Hit Color",
		de = "Normale Trefferfarbe",
		ru = "Обычный цвет попадания",
		["zh-cn"] = "普通命中颜色",
	},
	mod_option_laser_pointer_hit_color_tooltip = {
		en = "Sets color for normal hits",
		de = "Legt Farbe für normale Treffer fest",
		ru = "Устанавливает цвет для обычных попаданий.",
		["zh-cn"] = "设置普通命中的颜色",
	},
	mod_option_laser_pointer_hit_weakspot_color = {
		en = "Weakspot Hit Color",
		de = "Schwachstelle Trefferfarbe",
		ru = "Цвет попадания в уязвимое место",
		["zh-cn"] = "弱点命中颜色",
	},
	mod_option_laser_pointer_hit_weakspot_color_tooltip = {
		en = "Sets color for weakspot hits",
		de = "Legt Farbe für Schwachstellen-Treffer fest",
		ru = "Устанавливает цвет для попаданий в уязвимые места.",
		["zh-cn"] = "设置弱点命中的颜色",
	},
	mod_option_laser_pointer_hit_critical_color = {
		en = "Critical Hit Color",
		de = "Kritische Trefferfarbe",
		ru = "Цвет критического попадания",
		["zh-cn"] = "暴击命中颜色",
	},
	mod_option_laser_pointer_hit_critical_color_tooltip = {
		en = "Sets color for critical hits",
		de = "Legt Farbe für kritische Treffer fest",
		ru = "Устанавливает цвет для критических попаданий.",
		["zh-cn"] = "设置暴击命中的颜色",
	},
	mod_option_laser_pointer_kill_color = {
		en = "Kill Color",
		de = "Tötungsfarbe",
		ru = "Цвет при убийстве",
		["zh-cn"] = "击杀颜色",
	},
	mod_option_laser_pointer_kill_color_tooltip = {
		en = "Sets color for hits that kill an enemy",
		de = "Legt Farbe für Treffer fest die einen Gegner töten",
		ru = "Устанавливает цвет для убийства врагов.",
		["zh-cn"] = "设置击杀敌人时的颜色",
	},
	mod_option_laser_pointer_hit_indicator_brightness = {
		en = "Brightness",
		de = "Helligkeit",
		ru = "Яркость",
		["zh-cn"] = "亮度",
	},
	mod_option_laser_pointer_hit_indicator_brightness_tooltip = {
		en = "Sets brightness of hit indicators",
		de = "Legt Helligkeit der Trefferindikatoren fest",
		ru = "Устанавливает яркость вспышки индикатора попаданий.",
		["zh-cn"] = "设置命中指示器的亮度",
	},
	mod_option_laser_pointer_hit_indicator_size = {
		en = "Size",
		de = "Größe",
		ru = "Размер",
		["zh-cn"] = "大小",
	},
	mod_option_laser_pointer_hit_indicator_size_tooltip = {
		en = "Sets size of hit indicators",
		de = "Legt Größe der Trefferindikatoren fest",
		ru = "Устанавливает размер вспышки индикатора попаданий.",
		["zh-cn"] = "设置命中指示器的大小",
	},
	mod_option_laser_pointer_hit_color_white = {
		en = "{#color(255,255,255)}{#reset()}",
	},
	mod_option_laser_pointer_hit_color_yellow = {
		en = "{#color(255,255,0)}{#reset()}",
	},
	mod_option_laser_pointer_hit_color_red = {
		en = "{#color(255,0,0)}{#reset()}",
	},
	mod_option_laser_pointer_hit_color_green = {
		en = "{#color(0,255,0)}{#reset()}",
	},
	mod_option_laser_pointer_hit_color_blue = {
		en = "{#color(0,0,255)}{#reset()}",
	},
	mod_option_laser_pointer_hit_color_gold = {
		en = "{#color(171,141,63)}{#reset()}",
	},
	group_battery = {
		en = "Battery",
		de = "Batterie",
		["zh-cn"] = "电池",
		ru = "Батарея",
	},
	mod_option_battery_show = {
		en = "Show Bar",
		de = "Leiste anzeigen",
		["zh-cn"] = "显示状态条",
		ru = "Показывать полоску",
	},
	mod_option_battery_show_tooltip = {
		en = "Shows a bar with your current battery charge",
		de = "Zeigt einen Balken mit deinter aktuellen Batterieladung",
		["zh-cn"] = "显示当前电池充能的状态指示条",
		ru = "Показывает полоску с текущим зарядом аккумулятора.",
	},
	mod_option_battery_show_threshold = {
		en = "When under",
		de = "Wenn weniger als",
		["zh-cn"] = "仅当低于",
		ru = "Когда заряд ниже",
	},
	mod_option_battery_show_threshold_tooltip = {
		en = "Shows battery bar only when charge is under selected percentage",
		de = "Zeigt den Batteriebalken nur an, wenn die Ladung unter dem ausgewählten Prozentsatz liegt",
		["zh-cn"] = "仅在充能低于所选百分比时显示电池状态条",
		ru = "Показывает полоску заряда батареи только тогда, когда уровень заряда ниже выбранного процента.",
	},
	mod_option_battery_show_threshold_10 = {
		en = "10%%",
	},
	mod_option_battery_show_threshold_25 = {
		en = "25%%",
	},
	mod_option_battery_show_threshold_50 = {
		en = "50%%",
	},
	mod_option_battery_show_threshold_75 = {
		en = "75%%",
	},
	mod_option_battery_show_threshold_100 = {
		en = "100%%",
	},
	mod_hud_display_name_battery = {
		en = "Battery",
		de = "Batterie",
		ru = "Батарея",
		["zh-cn"] = "电池",
	},
	mod_option_camera_zoom = {
		en = "Camera Zoom",
		de = "Kamera Zoom",
		ru = "Приближение камеры",
		["zh-cn"] = "镜头缩放",
	},
	mod_option_camera_zoom_tooltip = {
		en = "Plays a camera zoom animation during build animation",
		de = "Spielt während der Bauanimation eine Kamera-Zoomanimation ab",
		ru = "Воспроизводит анимацию масштабирования камеры во время анимации сборки.",
		["zh-cn"] = "在播放组装动画时缩放镜头",
	},
	loc_weapon_inventory_reset_button = {
		en = "Reset All",
		de = "Alles Zurücksetzen",
		ru = "Сбросить всё",
		["zh-cn"] = "重置所有",
	},
	loc_weapon_inventory_no_reset_button = {
		en = "No Changes",
		de = "Keine Änderungen",
		ru = "Без изменений",
		["zh-cn"] = "无更改",
	},
	loc_weapon_inventory_randomize_button = {
		en = "Randomize",
		de = "Zufällig",
		ru = "Случайно",
		["zh-cn"] = "随机",
	},
	loc_weapon_inventory_demo_button = {
		en = "Demo",
		de = "Demo",
		ru = "Демонстрация",
		["zh-cn"] = "演示",
	},
	loc_weapon_cosmetics_customization_flashlight = {
		en = "Special",
		de = "Spezial",
		ru = "Специальный",
		["zh-cn"] = "特殊",
	},
	loc_weapon_cosmetics_customization_barrel = {
		en = "Barrel",
		de = "Lauf",
		ru = "Ствол",
		["zh-cn"] = "枪管",
	},
	loc_weapon_cosmetics_customization_underbarrel = {
		en = "Underbarrel",
		de = "Unterlauf",
		ru = "Подствольник",
		["zh-cn"] = "枪管下挂",
	},
	loc_weapon_cosmetics_customization_muzzle = {
		en = "Muzzle",
		de = "Mündung",
		ru = "Дуло",
		["zh-cn"] = "枪口",
	},
	loc_weapon_cosmetics_customization_receiver = {
		en = "Receiver",
		de = "Gehäuse",
		ru = "Ствольная коробка",
		["zh-cn"] = "机匣",
	},
	loc_weapon_cosmetics_customization_magazine = {
		en = "Magazine",
		de = "Magazin",
		ru = "Магазин",
		["zh-cn"] = "弹匣",
	},
	loc_weapon_cosmetics_customization_grip = {
		en = "Grip",
		de = "Griff",
		ru = "Рукоять",
		["zh-cn"] = "握把",
	},
	loc_weapon_cosmetics_customization_bayonet = {
		en = "Bayonet",
		de = "Bajonett",
		ru = "Штык",
		["zh-cn"] = "刺刀",
	},
	loc_weapon_cosmetics_customization_handle = {
		en = "Handle",
		de = "Handgriff",
		ru = "Ручка",
		["zh-cn"] = "握柄",
	},
	loc_weapon_cosmetics_customization_stock = {
		en = "Stock",
		de = "Schaft",
		ru = "Приклад",
		["zh-cn"] = "枪托",
	},
	loc_weapon_cosmetics_customization_ventilation = {
		en = "Ventilation",
		de = "Ventilation",
		ru = "Охлаждение",
		["zh-cn"] = "通气孔",
	},
	loc_weapon_cosmetics_customization_stock_2 = {
		en = "Stock",
		de = "Schaft",
		ru = "Приклад",
		["zh-cn"] = "枪托",
	},
	loc_weapon_cosmetics_customization_stock_3 = {
		en = "Stock",
		de = "Schaft",
		ru = "Приклад",
		["zh-cn"] = "枪托",
	},
	loc_weapon_cosmetics_customization_sight = {
		en = "Sight",
		de = "Visier",
		ru = "Прицел",
		["zh-cn"] = "瞄具",
	},
	loc_weapon_cosmetics_customization_sight_2 = {
		en = "Sight",
		de = "Visier",
		ru = "Прицел",
		["zh-cn"] = "瞄具",
	},
	loc_weapon_cosmetics_customization_body = {
		en = "Body",
		de = "Aufbau",
		ru = "Основа",
		["zh-cn"] = "主体",
	},
	loc_weapon_cosmetics_customization_rail = {
		en = "Rail",
		de = "Schiene",
		ru = "Рельса",
		["zh-cn"] = "导轨",
	},
	loc_weapon_cosmetics_customization_pommel = {
		en = "Pommel",
		de = "Knauf",
		ru = "Навершие",
		["zh-cn"] = "柄头",
	},
	loc_weapon_cosmetics_customization_hilt = {
		en = "Hilt",
		de = "Heft",
		ru = "Эфес",
		["zh-cn"] = "握柄",
	},
	loc_weapon_cosmetics_customization_head = {
		en = "Head",
		de = "Kopf",
		ru = "Оголовье",
		["zh-cn"] = "头部",
	},
	loc_weapon_cosmetics_customization_blade = {
		en = "Blade",
		de = "Klinge",
		ru = "Клинок",
		["zh-cn"] = "刃部",
	},
	loc_weapon_cosmetics_customization_teeth = {
		en = "Teeth",
		de = "Zähne",
		ru = "Зубья",
		["zh-cn"] = "锯齿",
	},
	loc_weapon_cosmetics_customization_chain = {
		en = "Chain",
		de = "Kette",
		ru = "Цепь",
		["zh-cn"] = "链条",
	},
	loc_weapon_cosmetics_customization_shaft = {
		en = "Shaft",
		de = "Schaft",
		ru = "Рукоять",
		["zh-cn"] = "杆部",
	},
	loc_weapon_cosmetics_customization_connector = {
		en = "Connector",
		de = "Verbindung",
		ru = "Соединитель",
		["zh-cn"] = "接头",
	},
	loc_weapon_cosmetics_customization_left = {
		en = "Shield",
		de = "Schild",
		ru = "Щит",
		["zh-cn"] = "盾牌",
	},
	loc_weapon_cosmetics_customization_emblem_right = {
		en = "Emblem Right",
		de = "Wappen Rechts",
		ru = "Эмблема правая",
		["zh-cn"] = "右侧装饰",
	},
	loc_weapon_cosmetics_customization_emblem_left = {
		en = "Emblem Left",
		de = "Wappen Links",
		ru = "Эмблема левая",
		["zh-cn"] = "左侧装饰",
	},
	loc_weapon_cosmetics_customization_shaft_lower = {
		en = "Lower Shaft",
		de = "Unterer Schaft",
		ru = "Нижняя часть рукояти",
		["zh-cn"] = "杆底",
	},
	loc_weapon_cosmetics_customization_shaft_upper = {
		en = "Upper Shaft",
		de = "Oberer Schaft",
		ru = "Верхняя часть рукояти",
		["zh-cn"] = "杆顶",
	},
	loc_weapon_cosmetics_customization_trinket_hook = {
		en = "Trinket Hook",
		de = "Trinket Haken",
		ru = "Кольцо для брелка",
		["zh-cn"] = "饰品钩",
	},
	loc_inventory_menu_weapon_preset_intro_text_1 = {
		en = "Weapon Presets"
	},
	loc_inventory_menu_weapon_preset_intro_text_2 = {
		en = "Weapon Presets Description"
	},
}
