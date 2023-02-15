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
  if self.vaultFrame == nil then
    self.vaultFrame = CreateFrame("FRAME", nil, xb:GetFrame('bar'))
    xb:RegisterFrame('vaultFrame', self.vaultFrame)
  end

  self.vaultFrame:Show()
  self:CreateFrames()
  self:RegisterFrameEvents()
  self:Refresh()
end

function vaultFrame:CreateFrames()
  self.vaultTextFrame = self.vaultTextFrame or CreateFrame("BUTTON", nil, vaultFrame)
  self.vaultText = self.vaultText or self.vaultTextFrame:CreateFontString(nil, "OVERLAY", "GameTooltipText")
end

function vaultFrame:RegisterFrameEvents()
  self.vaultTextFrame:EnableMouse(true)
  self.vaultTextFrame:RegisterForClicks('AnyUp', 'AnyDown')

  self.vaultTextFrame:SetScript("OnMouseDown", function(self, button)
    if button == 'LeftButton' then
      LoadAddOn("Blizzard_WeeklyRewards");
      if WeeklyRewardsFrame:IsShown() then
        WeeklyRewardsFrame:Hide()
      else
        WeeklyRewardsFrame:Show()
      end
    end
  end)
end

function VaultModule:OnDisable()
  self.vaultFrame:Hide()
end

function VaultModule:Refresh()
  if self.vaultFrame == nil then
    return;
  end

  if InCombatLockdown() then
    self:SetVaultColor()
    return
  end

  self:SetVaultColor()
  self.vaultFrame:SetSize(self.vaultText:GetStringWidth(), self.vaultText:GetStringHeight())
  self.vaultFrame:SetPoint("CENTER", xb, "BOTTOM", -82, 10)

  self.vaultTextFrame:SetSize(self.vaultText:GetStringWidth(), self.vaultText:GetStringHeight())
  self.vaultTextFrame:SetPoint('CENTER')

  self.clockText:SetPoint('CENTER')
  self.clockText:SetText("GREAT VAULT")
  self.clockText:SetFont(xb:GetFont(db.text.smallFontSize))
end

function VaultModule:GetDefaultOptions()
  return 'vaultModule', {
        enabled = true
      }
end

function VaultModule:SetVaultColor()
  local db = xb.db.profile
  if self.vaultTextFrame:IsMouseOver() then
    self.vaultText:SetTextColor(unpack(xb:HoverColors()))
  else
    self.vaultText:SetTextColor(xb:GetColor('normal'))
  end
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
