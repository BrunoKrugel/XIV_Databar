local AddOnName, XIVBar = ...;
local _G = _G;
local xb = XIVBar;
local L = XIVBar.L;
local P = {};

VaultModule = xb:NewModule("VaultModule")

function VaultModule:GetName()
  return L['Vault'];
end

function VaultModule:OnInitialize()
end

function VaultModule:OnEnable()
  if self.vaultFrame == nil then
    self.vaultFrame = CreateFrame("FRAME", "VaultModule", xb:GetFrame('bar'))
    xb:RegisterFrame('vaultFrame', self.vaultFrame)
  end

  self.vaultFrame:Show()
  self:CreateFrames()
  self:RegisterFrameEvents()
  self:Refresh()
end

function VaultModule:CreateFrames()
  self.vaultTextFrame = self.vaultTextFrame or CreateFrame("BUTTON", nil, vaultFrame)
  self.vaultText = self.vaultText or self.vaultTextFrame:CreateFontString(nil, "OVERLAY", "GameTooltipText")

  local db = xb.db.profile
	local relativeAnchorPoint = 'RIGHT'
	local xOffset = xb.db.profile.general.moduleSpacing
	local parentFrame = xb:GetFrame('volumeFrame')
	if not xb.db.profile.modules.armor.enabled then
		parentFrame=xb:GetFrame('armorFrame')
		if not xb.db.profile.modules.microMenu.enabled then
			parentFrame=xb:GetFrame('microMenuFrame')
			relativeAnchorPoint = 'LEFT'
			xOffset = 0
		end
	end

  self:SetVaultColor()
  self.vaultFrame:SetSize(self.vaultText:GetStringWidth(), self.vaultText:GetStringHeight())
  self.vaultFrame:SetPoint('LEFT', parentFrame, relativeAnchorPoint, xOffset, 0)

  self.vaultTextFrame:SetSize(self.vaultText:GetStringWidth(), self.vaultText:GetStringHeight())
  self.vaultTextFrame:SetPoint('CENTER')

  self.vaultText:SetPoint('CENTER')
  self.vaultText:SetText("GREAT VAULT")
  self.vaultText:SetFont(xb:GetFont(db.text.smallFontSize))  



end

function VaultModule:RegisterFrameEvents()
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
        get = function() return xb.db.profile.modules.vault.enabled; end,
        set = function(_, val)
          xb.db.profile.modules.vault.enabled = val
          if val then
            self:Enable()
          else
            self:Disable()
          end
        end,
        width = "full"
      }
    }
  }
end