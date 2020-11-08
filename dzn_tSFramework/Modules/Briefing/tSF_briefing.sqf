//     tSF Briefing
// Do not modify this part
#define BRIEFING		_briefing = [];
#define TOPIC(NAME) 	_briefing pushBack ["Diary", [ NAME,
#define END			]];
#define ADD_TOPICS	for "_i" from (count _briefing) to 0 step -1 do {player createDiaryRecord (_briefing select _i);};
#define TAGS(X) tSF_MissionTags = X ;
//
//
// Mission tags
TAGS(["SPECOPS","INFANTRY"])

// Briefing goes here

BRIEFING

TOPIC("I. Обстановка:")
"Операция против сил НАТО в Финляндии продолжается. Части 2-й отдельной бригады специального назначения ГУ ГШ ВС РФ были переброшены в район н.п. Ruha. В этой сельской местности разведка обнаружила небольшие группы противника, ещё представляющие угрозу. Вам предстоит зачистить две такие группы. Для более быстрого перемещения по труднопроходимой местности приданы два вертолёта Ми-8."
END

TOPIC("А. Враждебные силы:")
"ВС Финляндии:<br /><br />Лёгкая пехота - 1 взвод<br />Бронеавтомобиль RG-32 - 1x<br />Гранатомёты LAW у пехотинцев<br /><br />Присутствие противника точно установлено на позициях Перекрёсток и Деревня. Дорогу между ними патрулирует один бронеавтомобиль с пулемётом М2. Также на этой дороге замечена позиция пулемёта Корд. Подкрепления - лёгкая пехота, 1 отделение."
END

TOPIC("Б. Дружественные силы:")
"2-я отдельная бригада специального назначения ГУ ГШ ВС РФ:<br /><br />1'0 - командное отделение<br />1'1 - 7 чел.<br />1'2 - 7 чел.<br /><br />ВВС РФ:<br />2x Ми-8 - позывные Баул-1 и Баул-2<br /><br />ВС РФ<br />1x батарея 82мм миномётов - позывной Медведь-1"
END

TOPIC("II. Задание:")
"1. Захватить позицию <marker name='marker_5'>Деревня</marker><br />2. Захватить позицию <marker name='marker_8'>Перекрёсток</marker><br /><br />"
END

TOPIC("III. Выполнение:")
"Выбирайте точку высадки аккуратно, исходя из расположения сил противника и его средств ПВО (РПГ и Корд). Повредить вертолёт может также патрулирующий дорогу бронеавтомобиль. Захват позиции подразумевает также уничтожение живой силы противника. При желании, можете использовать захваченные автомобили противника."
END

TOPIC("IV. Поддержка:")
"2x вертолёта Ми-8 - позывные Баул-1 и Баул-2<br />Дополнительные боеприпасы на позиции Точка сбора<br />CCP и FARP<br /><br />Доукомплект и редеплой стандартные"
END

TOPIC("V. Сигналы:")
"PL NET 50 Mhz<br />SUP NET 51 Mhz<br /><br />1'1 - SR CH 1<br />1'2 - SR CH 2<br />1'0 - SR CH 6<br />"
END

TOPIC("VI. Замечания:")
"Для высадки советую управлять вертолётом вручную. В данном случае один из игроков становится на место пилота вертолёта. После высадки игроку надо выйти из вертолёта и отправить его на базу через модуль Support в ACE self interaction либо выбрав его напрямую через клавишу Windows на вертолёте (RETURN TO BASE).<br /> <br />ВНИМАНИЕ! Взаимодействовать с модулем авиаподдержки могут только командиры и GSO с ДВ-рацией.<br /> <br />Альтернативно можно высадиться по канатам (ненадёжный, но весёлый метод СПЕЦНАЗА) - для этого погрузитесь в вертолёт, выберите его в меню поддержки и нажмите Request Pickup. Далее укажите точку захода - INGRESS и точку высадки. В процессе полёта нажмите кнопку HOVER ON LZ в модуле поддержки. Дождитесь снижения вертолёта и высаживайтесь через ACE-взаимодействие: Prepare 36m ropes, Fast Rope. ВНИМАНИЕ! Высаживайтесь по одному во избежание возможных багов. Более подробное описание модуля на GitHub.<br /> <br />В ящиках и вертолётах лежат РПГ-26 и РШГ-2."
END

if ((serverCommandAvailable '#logout') || !(isMultiplayer) || isServer) then {
TOPIC("VII. Замечания для GSO:")
"Противник обороняет точки и атакует. Подкрепления вызываются после появления игроков на перекрёстке."
END
};

ADD_TOPICS