# Download papers from winsberg.net and save with names matching publications.html
$base = "https://www.winsberg.net"
$papersDir = "c:\Users\ew652\Documents\webpage\papers"
if (-not (Test-Path $papersDir)) { New-Item -ItemType Directory -Path $papersDir -Force | Out-Null }

$pairs = @(
    @{ url = "$base/uploads/7/4/4/3/74439291/jech_final_pdf.pdf"; out = "purposes-duties-scientific-modeling-2022.pdf" },
    @{ url = "$base/uploads/7/4/4/3/74439291/winsberg_race.pdf"; out = "putting-races-ontological-map-2022.pdf" },
    @{ url = "$base/uploads/7/4/4/3/74439291/the_epistemic_risk_in_representation.pdf"; out = "epistemic-risk-representation-2022.pdf" },
    @{ url = "$base/uploads/7/4/4/3/74439291/dont_stop.pdf"; out = "dont-stop-thinking-about-tomorrow-2021.pdf" },
    @{ url = "$base/uploads/7/4/4/3/74439291/winsberg2021.pdf"; out = "modest-defense-geoengineering-2021.pdf" },
    @{ url = "$base/uploads/7/4/4/3/74439291/severe_full.pdf"; out = "severe-weather-attribution-values-2020.pdf" },
    @{ url = "$base/uploads/7/4/4/3/74439291/an_antidote_for_hawkmoths.08.26.18.pdf"; out = "antidote-hawkmoths-2018.pdf" },
    @{ url = "$base/uploads/7/4/4/3/74439291/1-s2.0-s1355219818301035-main.pdf"; out = "hawking-radiation-analogue-bayesian-2019.pdf" },
    @{ url = "$base/uploads/7/4/4/3/74439291/1-s2.0-s1355219816000046-main.pdf"; out = "adventures-climate-science-idle-dreams-2016.pdf" },
    @{ url = "$base/uploads/7/4/4/3/74439291/br_j_philos_sci-2015-dardashti-bjps_axv010.pdf"; out = "confirmation-analogue-simulation-dumb-holes-2015.pdf" },
    @{ url = "$base/uploads/7/4/4/3/74439291/entropy-14-00390_1_.pdf"; out = "bumps-on-road-to-here-2012.pdf" },
    @{ url = "$base/uploads/7/4/4/3/74439291/22.2.winsberg.pdf"; out = "values-uncertainties-climate-models-2012.pdf" },
    @{ url = "$base/uploads/7/4/4/3/74439291/winsberg2009.pdf"; out = "tale-of-two-methods-2009.pdf" },
    @{ url = "$base/uploads/7/4/4/3/74439291/winsberg2008.pdf"; out = "laws-chances-statistical-mechanics-2008.pdf" },
    @{ url = "$base/uploads/7/4/4/3/74439291/lawsandstats.pdf"; out = "laws-statistical-mechanics-2004.pdf" },
    @{ url = "$base/uploads/7/4/4/3/74439291/conditioning_on_the_past_hyp.pdf"; out = "conditionalizing-past-hypothesis-2004.pdf" },
    @{ url = "$base/uploads/7/4/4/3/74439291/q_life.pdf"; out = "quantum-life-2003.pdf" },
    @{ url = "$base/uploads/7/4/4/3/74439291/winsberg1999.pdf"; out = "sanctioning-models-1999.pdf" }
)

foreach ($p in $pairs) {
    $outPath = Join-Path $papersDir $p.out
    if (Test-Path $outPath) { Write-Host "Skip (exists): $($p.out)" ; continue }
    try {
        Invoke-WebRequest -Uri $p.url -OutFile $outPath -UseBasicParsing
        Write-Host "OK: $($p.out)"
    } catch {
        Write-Host "FAIL: $($p.out) - $_"
    }
}
