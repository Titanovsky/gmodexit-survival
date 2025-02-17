Ambi.Statistic.Survey = Ambi.Statistic.Survey or {}
Ambi.Statistic.Survey.table = Ambi.Statistic.Survey.table or {}

local Gen = Ambi.Packages.Out( 'General' )

-- --------------------------------------------------------------------------------------------------------------------------------------------
function Ambi.Statistic.Survey.Add( nID, sName, sQuestion, tAnswers )
    if not nID or not isnumber( nID ) then Gen.Error( 'Statistic.Survey', 'nID is not selected or it type is not number' ) return false end
    if not tAnswers or not istable( tAnswers ) then Gen.Error( 'Statistic.Survey', 'tAnswers is not selected or it type is not table' ) return false end

    sName = sName or Ambi.Statistic.Config.survey_default_name
    sQuestion = sQuestion or Ambi.Statistic.Config.survey_default_question

    if ( hook.Call( '[Ambi.Statistic.Survey.CanAdd]', nil, nID, sName, sQuestion, tAnswers ) == false ) then return end

    Ambi.Statistic.Survey.table[ nID ] = {
        name = sName,
        question = sQuestion,
        answers = tAnswers
    }

    hook.Call( '[Ambi.Statistic.Survey.Added]', nil, nID, sName, sQuestion, tAnswers )

    return true
end

function Ambi.Statistic.Survey.Get( nID )
    if not nID or not isnumber( nID ) then Gen.Error( 'Statistic.Survey', 'nID is not selected or it type is not number' ) return false end

    return Ambi.Statistic.Survey.table[ nID ]
end