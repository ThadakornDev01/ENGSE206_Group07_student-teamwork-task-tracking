Add-Type -AssemblyName System.Drawing

function Get-Color([string]$Hex) {
    [System.Drawing.ColorTranslator]::FromHtml($Hex)
}

function Draw-Card($Graphics, [int]$X, [int]$Y, [int]$Width, [int]$Height, [string]$Title, [string]$Body, [string]$Tag, [string]$Fill, [string]$Stroke) {
    $fillBrush = [System.Drawing.SolidBrush]::new((Get-Color $Fill))
    $border = [System.Drawing.Pen]::new((Get-Color $Stroke), 3)
    $ink = [System.Drawing.SolidBrush]::new((Get-Color '#17324D'))
    $muted = [System.Drawing.SolidBrush]::new((Get-Color '#40566B'))
    $tagInk = [System.Drawing.SolidBrush]::new((Get-Color $Stroke))
    $titleFont = [System.Drawing.Font]::new('Segoe UI', 19, [System.Drawing.FontStyle]::Bold)
    $bodyFont = [System.Drawing.Font]::new('Segoe UI', 15, [System.Drawing.FontStyle]::Regular)
    $tagFont = [System.Drawing.Font]::new('Segoe UI', 12, [System.Drawing.FontStyle]::Bold)
    $Graphics.FillRectangle($fillBrush, $X, $Y, $Width, $Height)
    $Graphics.DrawRectangle($border, $X, $Y, $Width, $Height)
    $Graphics.DrawString($Title, $titleFont, $ink, [single]($X + 18), [single]($Y + 14))
    $Graphics.DrawString($Body, $bodyFont, $muted, [single]($X + 18), [single]($Y + 52))
    if ($Tag) { $Graphics.DrawString($Tag, $tagFont, $tagInk, [single]($X + 18), [single]($Y + $Height - 27)) }
    $fillBrush.Dispose(); $border.Dispose(); $ink.Dispose(); $muted.Dispose(); $tagInk.Dispose()
    $titleFont.Dispose(); $bodyFont.Dispose(); $tagFont.Dispose()
}

function Draw-Arrow($Graphics, [int]$X1, [int]$Y1, [int]$X2, [int]$Y2, [string]$Color, [bool]$Dashed = $false) {
    $pen = [System.Drawing.Pen]::new((Get-Color $Color), 3)
    $pen.EndCap = [System.Drawing.Drawing2D.LineCap]::ArrowAnchor
    if ($Dashed) { $pen.DashStyle = [System.Drawing.Drawing2D.DashStyle]::Dash }
    $Graphics.DrawLine($pen, $X1, $Y1, $X2, $Y2)
    $pen.Dispose()
}

function New-Canvas([int]$Width, [int]$Height, [string]$Title, [string]$Subtitle) {
    $bitmap = [System.Drawing.Bitmap]::new($Width, $Height)
    $graphics = [System.Drawing.Graphics]::FromImage($bitmap)
    $graphics.SmoothingMode = [System.Drawing.Drawing2D.SmoothingMode]::AntiAlias
    $graphics.TextRenderingHint = [System.Drawing.Text.TextRenderingHint]::AntiAliasGridFit
    $graphics.Clear((Get-Color '#F7FAFC'))
    $titleFont = [System.Drawing.Font]::new('Segoe UI', 27, [System.Drawing.FontStyle]::Bold)
    $subtitleFont = [System.Drawing.Font]::new('Segoe UI', 14, [System.Drawing.FontStyle]::Regular)
    $ink = [System.Drawing.SolidBrush]::new((Get-Color '#143A5A'))
    $muted = [System.Drawing.SolidBrush]::new((Get-Color '#587187'))
    $graphics.DrawString($Title, $titleFont, $ink, 42, 24)
    $graphics.DrawString($Subtitle, $subtitleFont, $muted, 44, 72)
    $titleFont.Dispose(); $subtitleFont.Dispose(); $ink.Dispose(); $muted.Dispose()
    @{ Bitmap = $bitmap; Graphics = $graphics }
}

$navy = '#214F7A'; $blue = '#DCEBFA'; $teal = '#DDF3EE'; $tealStroke = '#16836F'
$amber = '#FFF0CF'; $amberStroke = '#C78316'; $grey = '#E8EDF2'; $greyStroke = '#788B9A'
$red = '#FBE5E4'; $redStroke = '#BC5650'

# C4 level 1: actors, the system, and external systems/services.
$canvas = New-Canvas 1900 1180 'STTT — System Context (C4 Level 1)' 'Group 07 · Conceptual view · Core actors, system boundary, and external systems / services'
$g = $canvas.Graphics
Draw-Card $g 45 125 390 160 'ACT-01 · Team Leader' "Create/assign tasks`nReassign ownership`nView team dashboard" 'CORE ACTOR' $blue $navy
Draw-Card $g 45 315 390 160 'ACT-02 · Team Member' "View assigned tasks`nUpdate status and attach evidence" 'CORE ACTOR' $blue $navy
Draw-Card $g 45 505 390 160 'ACT-03 · Peer Reviewer' "Submit peer evaluation`nPolicy remains open (OI-01)" 'CORE ACTOR' $blue $navy
Draw-Card $g 45 695 390 160 'ACT-04 · Instructor' "Read dashboard and permitted evidence`nRead-only; assigned groups only" 'CORE ACTOR' $blue $navy
Draw-Card $g 610 330 610 420 'STTT' "Student Teamwork Task Tracking`n`nTask Board and status workflow`nEvidence validation before Done`nReassignment history`nPeer Evaluation`nInstructor dashboard" 'SYSTEM — BUILD NOW' $teal $tealStroke
Draw-Card $g 1400 125 440 160 'EXT-01 · Cloud Evidence URL' "Member supplies a link; user opens it`nNo provider API integration" 'EXTENSION' $amber $amberStroke
Draw-Card $g 1400 315 440 140 'Identity / Authentication Provider' 'Provider and integration approach not selected' 'TBD' $grey $greyStroke
Draw-Card $g 1400 495 440 140 'EXT-02 · Communication Channel' 'Chat / video integration is excluded' 'OUT OF SCOPE · DEC-01' $red $redStroke
Draw-Card $g 1400 675 440 140 'EXT-03 · University Grading System' 'No grade exchange or integration' 'OUT OF SCOPE · SRS C-02' $red $redStroke
Draw-Arrow $g 435 205 610 400 $navy
Draw-Arrow $g 435 395 610 465 $navy
Draw-Arrow $g 435 585 610 545 $navy
Draw-Arrow $g 435 775 610 620 $navy
Draw-Arrow $g 1220 410 1400 205 $amberStroke $true
Draw-Arrow $g 1220 470 1400 385 $greyStroke $true
$noteFont = [System.Drawing.Font]::new('Segoe UI', 12)
$noteBrush = [System.Drawing.SolidBrush]::new((Get-Color '#587187'))
$g.DrawString('Dashed arrows are conditional / user-opened references, not committed API integrations.', $noteFont, $noteBrush, 45, 1085)
$canvas.Bitmap.Save('diagrams/architecture/context-c4-level1.png', [System.Drawing.Imaging.ImageFormat]::Png)
$g.Dispose(); $canvas.Bitmap.Dispose(); $noteFont.Dispose(); $noteBrush.Dispose()

# C4 level 2: three logical containers and users/external boundary.
$canvas = New-Canvas 1900 1120 'STTT — Container View (C4 Level 2)' 'Group 07 · Three logical containers · Technologies, hosting, and operators remain TBD'
$g = $canvas.Graphics
Draw-Card $g 65 130 420 140 'ACT-01/02/03 · Students' "Team leader · member · peer reviewer`nTask, evidence, and evaluation actions" 'CORE USERS' $blue $navy
Draw-Card $g 515 130 390 140 'ACT-04 · Instructor' 'View assigned-group dashboard and evidence' 'CORE USER · READ ONLY' $blue $navy
Draw-Card $g 1450 130 390 140 'EXT-01 · Evidence URL' 'Opened by user; no API integration' 'EXTENSION' $amber $amberStroke
$boundaryPen = [System.Drawing.Pen]::new((Get-Color '#4F7897'), 3)
$boundaryPen.DashStyle = [System.Drawing.Drawing2D.DashStyle]::Dash
$g.DrawRectangle($boundaryPen, 45, 325, 1375, 620); $boundaryPen.Dispose()
$labelFont = [System.Drawing.Font]::new('Segoe UI', 15, [System.Drawing.FontStyle]::Bold)
$labelBrush = [System.Drawing.SolidBrush]::new((Get-Color $navy))
$g.DrawString('STTT SYSTEM BOUNDARY · PROPOSED LOGICAL CONTAINERS', $labelFont, $labelBrush, 75, 345)
Draw-Card $g 95 450 340 270 '1 · Web Application' "Type: Browser UI`nRuns: user's web browser`nControls: user controls session;`ndeployment owner TBD`n`nRole-specific views and forms" 'WEB CLIENT' $blue $navy
Draw-Card $g 545 430 430 310 '2 · API / Application' "Type: Server-side application`nRuns: server/hosting TBD`nOperator: TBD (not assigned in SRS)`n`nAccess control · task workflow`nEvidence gate · history · evaluation`nDashboard data and read-only rules" 'BUSINESS RULES / API' $teal $tealStroke
Draw-Card $g 1080 450 285 270 '3 · Database' "Type: Persistent data store`nRuns: server environment TBD`nAdministrator: TBD`n`nTasks · evidence references`nHistory · evaluations · roles" 'DATA STORE' $amber $amberStroke
Draw-Arrow $g 435 585 545 585 $navy
Draw-Arrow $g 975 585 1080 585 $tealStroke
Draw-Arrow $g 270 270 270 450 $navy
Draw-Arrow $g 710 270 320 450 $navy
Draw-Arrow $g 710 270 710 430 $navy
$noteFont = [System.Drawing.Font]::new('Segoe UI', 12)
$noteBrush = [System.Drawing.SolidBrush]::new((Get-Color '#587187'))
$g.DrawString('All data access goes through the API. The external URL is opened by the user, not integrated by the application.', $noteFont, $noteBrush, 65, 990)
$canvas.Bitmap.Save('diagrams/architecture/container-c4-level2.png', [System.Drawing.Imaging.ImageFormat]::Png)
$g.Dispose(); $canvas.Bitmap.Dispose(); $noteFont.Dispose(); $noteBrush.Dispose(); $labelFont.Dispose(); $labelBrush.Dispose()
