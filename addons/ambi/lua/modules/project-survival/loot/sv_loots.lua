local Add = Ambi.Survival.AddLootPoint

local SIMPLE_TYPES = {
    'res1', 'res1', 'res1', 'res1', 'food1', 'food1', 'farming1', 'farming1', 'food common', 'fishing', 'spec1', 'med1'
}

local TYPES2 = {
    'food1', 'food1', 'res1', 'res1', 'farming1', 'farming1', 'food common', 'food common', 'spec1', 'med1'
}

local TYPES3 = {
    'farming1', 'farming1', 'fishing', 'fishing', 'farming1', 'farming1', 'food common', 'spec1'
}

local TYPES4 = {
    'res1', 'res1', 'res1', 'fishing', 'fishing', 'farming1', 'spec1', 'spec1'
}

local MED_TYPE = {
    'res1', 'med1'
}

local SPEC_TYPE = {
    'res1', 'spec1'
}

local CLOTHES_TYPES = {
    'clothes1', 'clothes2', 'clothes3', 'clothes4'
}

local MAP = 'gm_amb_remeselnik_island'

Add( 'small_rt1', MAP, Vector( 5800, -12931, -4327 ), SIMPLE_TYPES )
Add( 'small_rt2', MAP, Vector( 5890, -13430, -4333 ), TYPES2 )
Add( 'small_rt3_fishing', MAP, Vector( 5738, -12813, -4592 ), { 'fishing' } )
Add( 'small_rt4', MAP, Vector( 5951, -11968, -4333 ), SIMPLE_TYPES )
Add( 'small_rt5', MAP, Vector( 7129, -11887, -4336 ), TYPES3 )
Add( 'small_rt6', MAP, Vector( 7559, -12593, -4336 ), SIMPLE_TYPES )
Add( 'small_rt7', MAP, Vector( 7173, -13464, -4336 ), TYPES4 )
Add( 'small_rt8', MAP, Vector( 5971, -13603, -4592 ), SIMPLE_TYPES )
Add( 'small_rt9', MAP, Vector( 6230, -13036, -4816 ), MED_TYPE )
Add( 'small_rt10', MAP, Vector( 6209, -12383, -4816 ), SPEC_TYPE )
Add( 'small_rt_clothes', MAP, Vector( 5413, -13523, -4848 ), CLOTHES_TYPES )

local MAP = 'gm_rhine'

Add( 'small_rt1', MAP, Vector( 7948, 3695, -15840 ), SIMPLE_TYPES )
Add( 'small_rt2', MAP, Vector( 7949, 3427, -15888 ), TYPES2 )
Add( 'small_rt3_fishing', MAP, Vector( 7497, 3708, -15888 ), { 'fishing' } )
Add( 'small_rt4', MAP, Vector( 7911, 3659, -15764 ), SIMPLE_TYPES )
Add( 'small_rt5', MAP, Vector( 7353, 3474, -15898 ), TYPES3 )
Add( 'small_rt6', MAP, Vector( 7465, 1986, -15900 ), SIMPLE_TYPES )
Add( 'small_rt7', MAP, Vector( 7786, 2575, -15902 ), TYPES4 )
Add( 'small_rt8', MAP, Vector( 7656, 1936, -15898 ), SIMPLE_TYPES )
Add( 'small_rt9', MAP, Vector( 8566, 1865, -15873 ), MED_TYPE )
Add( 'small_rt10', MAP, Vector( 8518, 3289, -15892 ), SPEC_TYPE )
Add( 'small_rt_clothes', MAP, Vector( 7910, 2647, -15898 ), CLOTHES_TYPES )

----------------------------------------------------------------------------------------------------------------
local SIMPLE_TYPES = {
    'res2', 'res2', 'res1', 'spec1', 'spec2', 'food common', 'med1', 'med2', 'wep1', 'wep2'
}

local MED_TYPES = {
    'res2', 'med2'
}

local WEP_TYPES = {
    'res2', 'wep2'
}

local SPEC_TYPES = {
    'res2', 'spec2'
}

local MAP = 'gm_amb_remeselnik_island'

Add( 'medium_rt1', MAP, Vector( 11762, -11970, -4760 ), SPEC_TYPES )
Add( 'medium_rt2', MAP, Vector( 11979, -11978, -4760 ), SIMPLE_TYPES )
Add( 'medium_rt3', MAP, Vector( 12377, -13101, -4504 ), SIMPLE_TYPES )
Add( 'medium_rt4', MAP, Vector( 12361, -12900, -4376 ), SIMPLE_TYPES )
Add( 'medium_rt5', MAP, Vector( 12233, -12896, -4376 ), SIMPLE_TYPES )
Add( 'medium_rt6', MAP, Vector( 12374, -12872, -4248 ), WEP_TYPES )
Add( 'medium_rt7', MAP, Vector( 12270, -11220, -4624 ), MED_TYPES )
Add( 'medium_rt_clothes', MAP, Vector( 13901, -11225, -4564), CLOTHES_TYPES )

local MAP = 'gm_rhine'

Add( 'medium_rt1', MAP, Vector( -7124, 3800, -15783 ), SPEC_TYPES )
Add( 'medium_rt2', MAP, Vector( -6920, 4259, -15783 ), SIMPLE_TYPES )
Add( 'medium_rt3', MAP, Vector( -6086, 4170, -15800 ), SIMPLE_TYPES )
Add( 'medium_rt4', MAP, Vector( -5775, 4241, -15800 ), SIMPLE_TYPES )
Add( 'medium_rt5', MAP, Vector( -6100, 4084, -15799 ), SIMPLE_TYPES )
Add( 'medium_rt6', MAP, Vector( -5713, 3981, -15936 ), WEP_TYPES )
Add( 'medium_rt7', MAP, Vector( -5785, 3623, -15932 ), MED_TYPES )
Add( 'medium_rt_clothes', MAP, Vector( -5501, 4140, -15927 ), CLOTHES_TYPES )

----------------------------------------------------------------------------------------------------------------
local SIMPLE_TYPES = {
    'res3', 'res3', 'res2', 'spec2', 'food common', 'med1', 'med3', 'wep2', 'wep3'
}

local EXPLSOVIES_TYPES = {
    'res3', 'wep3', 'explosive'
}

local MAP = 'gm_amb_remeselnik_island'

Add( 'big_rt1', MAP, Vector( 12612, -4631, -4296 ), SIMPLE_TYPES )
Add( 'big_rt2', MAP, Vector( 10398, -6481, -4296 ), SIMPLE_TYPES )
Add( 'big_rt3', MAP, Vector( 11469, -3292, -3352 ), SIMPLE_TYPES )
Add( 'big_rt4', MAP, Vector( 8191, -2933, -3312 ), SIMPLE_TYPES )
Add( 'big_rt5', MAP, Vector( 9670, -2943, -3336 ), EXPLSOVIES_TYPES )
Add( 'big_rt_clothes', MAP, Vector( 8288, -1380, -3344 ), CLOTHES_TYPES )

local MAP = 'gm_rhine'

Add( 'big_rt1', MAP, Vector( -4697, 9491, -15712 ), SIMPLE_TYPES )
Add( 'big_rt2', MAP, Vector( -4883, 9063, -15712 ), SIMPLE_TYPES )
Add( 'big_rt3', MAP, Vector( -5670, 9271, -15712 ), SIMPLE_TYPES )
Add( 'big_rt4', MAP, Vector( -3878, 9310, -15668 ), SIMPLE_TYPES )
Add( 'big_rt5', MAP, Vector( -4134, 9437, -15544 ), EXPLSOVIES_TYPES )
Add( 'big_rt_clothes', MAP, Vector( -3426, 9320, -15664 ), CLOTHES_TYPES )

----------------------------------------------------------------------------------------------------------------
local XLAB_TYPES = {
    'lab_wep', 'explosive'
}

local MAP = 'gm_amb_remeselnik_island'

Add( 'x18', MAP, Vector( 12244, -6047, -6717 ), XLAB_TYPES )

local MAP = 'gm_rhine'

Add( 'x18', MAP, Vector( -4171, 10694, -16119 ), XLAB_TYPES )
Add( 'x18', MAP, Vector( -3589, 10673, -16120 ), XLAB_TYPES )
Add( 'x18', MAP, Vector( -3608, 8214, -16120 ), XLAB_TYPES )
Add( 'x18', MAP, Vector( -4177, 8189, -16120 ), XLAB_TYPES )