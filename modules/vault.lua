local AddOnName, Engine = ...;
local _G = _G;
local xb = Engine[1];
local L = Engine[2];
local P = {};

VaultModule = xb:NewModule("VaultModule")

function VaultModule:GetName()
  return L['Vault Module'];
end

function VaultModule:OnInitialize()
end

function VaultModule:OnEnable()
  P = xb.db.profile
  xb:RegisterFrame('VaultModuleFrame', CreateFrame("FRAME", nil, xb:GetFrame('bar')))
  self:Refresh()
end

function VaultModule:OnDisable()
end

function VaultModule:Refresh()
end

function VaultModule:GetDefaultOptions()
  return 'vaultModule', {
      enabled = true
    }
end

function VaultModule:GetConfig()
  return {
    name = self:GetName(),
    type = "group",
    args = {
      enable = {
        name = ENABLE,
        order = 0,
        type = "toggle",
        get = function() return P.modules.vaultModule.enabled; end,
        set = function(_, val) P.modules.vaultModule.enabled = val; end
      }
    }
  }
end
