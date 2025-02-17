local Ents, NW, C = Ambi.RegEntity, Ambi.NW, Ambi.General.Global.Colors

local ENT = {}

ENT.Class       = 'tp_teleporter'
ENT.Type	    = 'anim'

ENT.PrintName	= 'Teleporter'
ENT.Author		= 'Ambi'
ENT.Category	= 'Teleportes'
ENT.Spawnable   = true

ENT.Stats = {

    type = 'Entity',
    model = 'models/hunter/plates/plate1x2.mdl',
    material = 'models/debug/debugwhite',
    module = 'teleportes',
    date = '08.07.2021 13:26:00'

}

Ents.Register( ENT.Class, 'ents', ENT )

if CLIENT then
    local C, GUI, Draw, UI = Ambi.Packages.Out( '@d' )

    ENT.RenderGroup = RENDERGROUP_TRANSLUCENT

    function ENT:DrawTranslucent()
        Ents.Draw( self, false )

        if ( LocalPlayer():GetPos():Distance( self:GetPos() ) > 2200 ) then return end

        local pos = self:GetPos()
	    local ang = self:GetAngles()
	    ang:RotateAroundAxis( ang:Up(), 180 )

        cam.Start3D2D( pos + ang:Up() * 1.75 + ang:Right() * -20 + ang:Forward() * -1, ang, 0.1 )
		    draw.SimpleTextOutlined( self.nw_Header, UI.SafeFont( '26 Ambi' ), 4, 0, C.ABS_WHITE, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 1, C.ABS_BLACK )
	    cam.End3D2D()
    end

    return Ents.Register( ENT.Class, 'ents', ENT )
end 

function ENT:Initialize()
    Ents.Initialize( self, ENT.Stats.model, ENT.Stats.material )
    Ents.Physics( self )
end

function ENT:SetHeader( sHeader )
    self.nw_Header = sHeader or 'Empty'
end

function ENT:SetDelay( nSeconds )
    self.delay = nSeconds or 0
end

function ENT:SetPoint( sName, vPos, aEyePos, fPreAction, fPostAction )
    if not self.points then self.points = {} end

    self.points[ sName or '' ] = {
        pos = vPos or Vector( 0, 0, 0 ),
        eyeang = aEyePos or Angle( 0, 0, 0 ),
        pre = fPreAction,
        post = fPostAction
    }
end

function ENT:SetBlock( fBlock )
    self.block = fBlock
end

function ENT:Use( ePly )
    if not Ambi.Process then ePly:ChatPrint( '[•] On this server not installed a module "Process"' ) end

    if not IsValid( ePly ) or not ePly:IsPlayer() or not ePly:Alive() then return end
    if self.block and not self.block( ePly, self ) then return end
    if not self.delay then return end

    local points = self.points
    if not points then return end

    local rand_point = false
    local first_point = {}
    local i = 0
    for name, point in pairs( self.points ) do
        i = i + 1
        
        if ( i == 1 ) then first_point = point end
        if ( i > 1 ) then rand_point = true break end
    end

    local point = rand_point and table.Random( points ) or first_point
    if point.pre then point.pre( ePly, self ) end

    ePly:RunProcess( 'Teleporting', tostring( self.header ), self.delay, 1, function( ePly ) 
        ePly:SetPos( point.pos )
        ePly:SetEyeAngles( point.eyeang )

        if point.post then point.post( ePly, self ) end
    end )

    hook.Call( '[Ambi.Teleportes.Use]', nil, ePly, self, point )
end

Ents.Register( ENT.Class, 'ents', ENT )