local Ents, NW, C = Ambi.RegEntity, Ambi.NW, Ambi.General.Global.Colors
local ENT = {}

ENT.Class       = 'survival_resource'
ENT.Type	    = 'anim'

ENT.PrintName	= 'Ресурс'
ENT.Author		= 'Ambi'
ENT.Category	= 'Survival'
ENT.Spawnable   = false

ENT.Stats = {
    type = 'Entity',
    module = 'Survival',
    date = '04.06.2021 13:00:18'
}

Ents.Register( ENT.Class, 'ents', ENT )

if CLIENT then
    ENT.RenderGroup = Ambi.General.Global.RENDER

    function ENT:DrawTranslucent()
        self:DrawShadow( false )
    end
    
    return Ents.Register( ENT.Class, 'ents', ENT )
end 

function ENT:Initialize()
    Ents.Initialize( self )
    Ents.Physics( self, nil, nil, nil, false, false, true )
end

function ENT:SetHeader( sHeader )
    NW.SetString( self, 'Header', tostring( sHeader ) )
end

function ENT:SetCount( nCount )
    NW.SetInt( self, 'Count', nCount or 1 )
end

function ENT:GetCount()
    return NW.GetInt( self, 'Count' )
end

function ENT:SetType( sType )
    local type = Ambi.Survival.GetResource( sType or '' )
    if not type then return end

    NW.SetString( self, 'Type', sType )

    local model = table.Random( type.models )

    self:SetModel( model.mdl )
    self:SetMoveType( MOVETYPE_VPHYSICS )
    self:PhysicsInit( SOLID_VPHYSICS )
    
    self:SetHealth( math.random( type.minhp, type.maxhp ) )
    self.items = type.items

    timer.Simple( 1, function()
        if not IsValid( self ) then return end

        self:SetColor( model.color or Color( 0, 0, 0 ) )
        self:SetMaterial( model.material or '' )

        if model.dropfloor then self:DropToFloor() end
    end )
end

function ENT:GetType()
    return NW.GetString( self, 'Type' )
end

function ENT:OnTakeDamage( damageInfo )
    local attacker = damageInfo:GetAttacker()
    if not IsValid( attacker ) or not attacker:IsPlayer() then return end
    if not self.items then return end

    self.items = Ambi.Survival.resources[ string.lower( self:GetNWString( 'Type' ) ) ].items

    local weapon = damageInfo:GetInflictor()
    local item = table.Random( self.items )
    local class = item.class
    local instruments = item.instruments
    if not AMB.SimpleInventory.GetClass( class ) then return end
    if not attacker:GetItem( class ) and not attacker:GetLastFreeSlot() then return end

    local stats = instruments[ weapon:GetClass() ]
    if not stats then return end

    local count = math.random( stats.min, stats.max )
    if attacker:GetItem( class ) and ( attacker:GetItem( class ).count + count >= Ambi.SimpleInventory.Config.max_count_item ) then attacker:NotifySend( 4, { text = 'Не хватает места для '..class, time = 3, color = C.AMBI_RED } ) return end

    local color = C.AMBI_RED
    local chance = math.random( 1, 100 )

    hook.Call( '[Ambi.Survival.ResourceExtraction]', nil, attacker, self, chance, stats )

    if ( chance <= stats.chance ) then
        attacker:AddItem( class, count, true )
        attacker:NotifySend( 4, { text = 'x'..count..' '..Ambi.SimpleInventory.GetClass( class ).name, time = 3, color = C.AMBI_GREEN } )
        color = C.AMBI_GREEN

        hook.Call( '[Ambi.Survival.FarmResource]', nil, attacker, class, count, self )
    else
        attacker:NotifySend( 4, { text = '-', time = 0.55, color = C.AMBI_RED } )
    end

    --attacker:ChatSend( color, 'Chance: ', C.ABS_WHITE, chance..'/'..stats.chance..' ('..class..')' ) -- DEBUG
    self:SetHealth( self:Health() - stats.damage )

    if ( self:Health() <= 0 ) then self:Remove() return end
end

Ents.Register( ENT.Class, 'ents', ENT )