local AddOnName, Engine = ...;
local AceLocale = LibStub:GetLibrary("AceLocale-3.0");
local L = AceLocale:NewLocale(AddOnName, "ptBR", false, false);
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
L['Use Server Time'] = "Usar Hora do Servidor";
L['New Event!'] = "Novo Evento!";
L['Local Time'] = "Hora Local";
L['Realm Time'] = "Hora do Servidor";
L['Open Calendar'] = "Abrir Calendário";
L['Open Clock'] = "Abrir Relógio";
L['Hide Event Text'] = "Esconder Texto do Evento";

L['Vault'] = true;

L['Travel'] = "Viagem";
L['Port Options'] = "Opções de Teleporte";
L['Ready'] = "Pronto";
L['Travel Cooldowns'] = "Tempo de Recarga de Viagem";
L['Change Port Option'] = "Alterar Opção de Teleporte";

L['Always Show Silver and Copper'] = "Sempre Mostrar Prata e Cobre";
L['Shorten Gold'] = "Abreviar Ouro";
L['Toggle Bags'] = "Abrir/Fechar mochila";
L['Session Total'] = "Total da Sessão";
L['Daily Total'] = "Total do Dia";
L['Gold rounded values'] = "Valores de Ouro arredondados";

L['Show XP Bar Below Max Level'] = "Mostrar Barra de XP Abaixo do Nível Máximo";
L['Use Class Colors for XP Bar'] = "Usar Cores de Classe para a Barra de XP";
L['Show Tooltips'] = "Mostrar Tooltips";
L['Text on Right'] = "Texto à Direita";
L['Currency Select'] = "Seleção de Moeda";
L['First Currency'] = "Moeda #1";
L['Second Currency'] = "Moeda #2";
L['Third Currency'] = "Moeda #3";
L['Rested'] = "Descansado";

L['Show World Ping'] = "Mostrar Ping Mundial";
L['Number of Addons To Show'] = "Número de Addons a Mostrar";
L['Addons to Show in Tooltip'] = "Addons a Mostrar no Tooltip";
L['Show All Addons in Tooltip with Shift'] = "Mostrar Todos os Addons no Tooltip com Shift";
L['Memory Usage'] = "Uso de Memória";
L['Garbage Collect'] = true;
L['Cleaned'] = "Limpo";

L['Use Class Colors'] = "Usar Cores de Classe";
L['Cooldowns'] = true;
L['Toggle Profession Frame'] = 'Abrir/Fechar janela de profissões';
L['Toggle Profession Spellbook'] = 'Abrir/Fechar Grimório de Profissões';

L['Set Specialization'] = "Escolher especialização";
L['Set Loot Specialization'] = "Escolher especialização de saque";
L['Current Specialization'] = "Especialização atual";
L['Current Loot Specialization'] = "Especialização de saque atual";
L['Talent Minimum Width'] = "Largura Mínima de Talentos";
L['Open Artifact'] = "Abrir Artefato";
L['Remaining'] = "Restante";
L['Available Ranks'] = "Ranques Disponíveis";
L['Artifact Knowledge'] = "Conhecimento de Artefato";
