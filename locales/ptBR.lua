local AddOnName, Engine = ...;
local AceLocale = LibStub:GetLibrary("AceLocale-3.0");
local L = AceLocale:NewLocale(AddOnName, "deDE", false, false);
if not L then return end

L['Modules'] = "Módulo";
L['Left-Click'] = "Click-Esquerdo";
L['Right-Click'] = "Click-Direito";
L['k'] = true; -- short for 1000
L['M'] = true; -- short for 1000000
L['B'] = true; -- short for 1000000000
L['L'] = true; -- For the local ping
L['W'] = true; -- For the world ping

-- General
L["Positioning"] = "Posicionamento";
L['Bar Position'] = "Posição da Barra";
L['Top'] = "Topo";
L['Bottom'] = "Fundo";
L['Bar Color'] = "Cor da Barra";
L['Use Class Color for Bar'] = "Usar Cor da Classe para a Barra";
L["Miscellaneous"] = "Miscelânea";
L['Hide Bar in combat'] = "Esconder Barra em combate";
L['Bar Padding'] = "Espaçamento da Barra";
L['Module Spacing'] = "Espaçamento do Módulo";
L['Hide order hall bar'] = "Esconder barra da ordem";
L['Use ElvUI for tooltips'] = "Usar ElvUI para tooltips";

-- Positioning Options
L['Positioning Options'] = "Opções de Posicionamento";
L['Horizontal Position'] = "Posição Horizontal";
L['Bar Width'] = "Largura da Barra";
L['Left'] = "Esquerda";
L['Center'] = "Centro";
L['Right'] = "Direita";

-- Media
L['Font'] = "Fonte";
L['Small Font Size'] = "Tamanho da Fonte Pequena";
L['Text Style'] = "Estilo do Texto";

-- Text Colors
L["Colors"] = "Cores";
L['Text Colors'] = "Cores do Texto";
L['Normal'] = "Normal";
L['Inactive'] = "Inativo";
L["Use Class Color for Text"] = "Usar Cor da Classe para o Texto";
L["Only the alpha can be set with the color picker"] = "Somente a cor Alpha pode ser selecionada através do seletor de cores";
L['Use Class Colors for Hover'] = "Usar Cor da Classe para o Mouseover";
L['Hover'] = "Mouseover";

-------------------- MODULES ---------------------------

L['Micromenu'] = "Micromenu";
L['Show Social Tooltips'] = "Mostrar tooltips de Social";
L['Main Menu Icon Right Spacing'] = "Espaçamento Direito do Ícone do Menu Principal";
L['Icon Spacing'] = "Espaçamento do Ícone";
L["Hide BNet App Friends"] = true;
L['Open Guild Page'] = "Abrir Página da Guilda";
L['No Tag'] = "Sem Tag";
L['Whisper BNet'] = "Sussurrar BNet";
L['Whisper Character'] = "Sussurrar Personagem";
L['Hide Social Text'] = "Esconder Texto Social";
L['Social Text Offset'] = "Deslocamento do Texto Social";
L["GMOTD in Tooltip"] = "GMOTD no Tooltip";
L["Modifier for friend invite"] = "Modificador para convite de amigo";
L['Show/Hide Buttons'] = "Mostrar/Esconder Botões";
L['Show Menu Button'] = "Mostrar Botão do Menu";
L['Show Chat Button'] = "Mostrar Botão do Chat";
L['Show Guild Button'] = "Mostrar Botão da Guilda";
L['Show Social Button'] = "Mostrar Botão Social";
L['Show Character Button'] = "Mostrar Botão do Personagem";
L['Show Spellbook Button'] = "Mostrar Botão do Grimório";
L['Show Talents Button'] = "Mostrar Botão de Talentos";
L['Show Achievements Button'] = "Mostrar Botão de Conquistas";
L['Show Quests Button'] = "Mostrar Botão de Missões";
L['Show LFG Button'] = "Mostrar Botão de LFG";
L['Show Journal Button'] = "Mostrar Botão do Diário";
L['Show PVP Button'] = "Mostrar Botão de JxJ";
L['Show Pets Button'] = "Mostrar Botão de Mascotes";
L['Show Shop Button'] = "Mostrar Botão da Loja";
L['Show Help Button'] = "Mostrar Botão de Ajuda";
L['No Info'] = "Sem Informação";
L['Classic'] = true;
L['Alliance'] = "Aliança";
L['Horde'] = "Horda";

L['Durability Warning Threshold'] = "Limite de Aviso de Durabilidade";
L['Show Item Level'] = "Mostrar Nível do Item";
L['Show Coordinates'] = "Mostrar Coordenadas";

L['Master Volume'] = "Volume Mestre";
L["Volume step"] = "Passo do Volume";

L['Time Format'] = "Formato da Hora";
L['Use Server Time'] = "Server-Zeit benutzen";
L['New Event!'] = "Neue Veranstaltung!";
L['Local Time'] = "Lokale Zeit";
L['Realm Time'] = "Realm-Zeit";
L['Open Calendar'] = "Kalendar öffnen";
L['Open Clock'] = "Stoppuhr öffnen";
L['Hide Event Text'] = "Event-Text verstecken";

L['Travel'] = "Reise";
L['Port Options'] = "Teleport-Optionen";
L['Ready'] = "Bereit";
L['Travel Cooldowns'] = "Reise-Abklingzeiten";
L['Change Port Option'] = "Teleport-Optionen ändern";

L['Always Show Silver and Copper'] = "Silber und Kupfer immer anzeigen";
L['Shorten Gold'] = "Gold abkürzen";
L['Toggle Bags'] = "Taschen anzeigen";
L['Session Total'] = "Sitzung total";
L['Daily Total'] = "Heute total";
L['Gold rounded values'] = "Gold runden";

L['Show XP Bar Below Max Level'] = "Erfahrungsleiste unter Levelcap anzeigen";
L['Use Class Colors for XP Bar'] = "Klassenfarbe für Erfahrungsleiste benutzen";
L['Show Tooltips'] = "Tooltips anzeigen";
L['Text on Right'] = "Text auf der rechten Seite";
L['Currency Select'] = "Währung auswählen";
L['First Currency'] = "Währung #1";
L['Second Currency'] = "Währung #2";
L['Third Currency'] = "Währung #3";
L['Rested'] = "Ausgeruht";

L['Show World Ping'] = "World-Ping anzeigen";
L['Number of Addons To Show'] = "Maximale Anzahl für Addon-Anzeige";
L['Addons to Show in Tooltip'] = "Addons die im Tooltip angezeigt werden";
L['Show All Addons in Tooltip with Shift'] = "Alle Addons im Tooltip anzeigen via Shift";
L['Memory Usage'] = "Speichernutzung";
L['Garbage Collect'] = "Speicher säubern"; -- The expression "garbage collecor" only works in english
L['Cleaned'] = "Gesäubert";

L['Use Class Colors'] = "Klassenfarben benutzen";
L['Cooldowns'] = "Abklingzeiten";
L['Toggle Profession Frame'] = 'Berufsrahmen anzeigen';
L['Toggle Profession Spellbook'] = 'Zauberbuch für Berufe anzeigen';

L['Set Specialization'] = "Spezialisierung auswählen";
L['Set Loot Specialization'] = "Beute-Spezialisierung auswählen";
L['Current Specialization'] = "Aktuelle Spezialisierung";
L['Current Loot Specialization'] = "Aktuelle Beute-Spezialisierung";
L['Talent Minimum Width'] = "Minimale Breite für Talente";
L['Open Artifact'] = "Artefakt öffen";
L['Remaining'] = "Verbleibend";
L['Available Ranks'] = "Verfügbare Ränge";
L['Artifact Knowledge'] = "Artefaktwissen";
