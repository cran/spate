(TeX-add-style-hook "spate_tutorial"
 (lambda ()
    (LaTeX-add-bibliographies)
    (LaTeX-add-labels
     "background"
     "SPDE"
     "GausObs"
     "SolFTVec"
     "SolCoef"
     "Propag"
     "InnovSpec"
     "SolFT"
     "fig:WaveNumbers"
     "fig:FourierBasis"
     "Tobit"
     "Incidence"
     "parametrization"
     "fig:SpecSim"
     "fig:Propagator"
     "fig:Propagate"
     "fft"
     "fig:ImageRecon"
     "simulation"
     "fig:SimSPDE"
     "inference"
     "fig:FullCond"
     "mle"
     "fig:MCMC"
     "fig:predict")
    (TeX-add-symbols
     '("expo" 1)
     '("pkg" 1)
     '("code" 1)
     '("func" 1)
     '("vect" 1)
     '("mat" 1))
    (TeX-run-style-hooks
     "natbib"
     "a4"
     "eurosym"
     "Sweave"
     "graphicx"
     "verbatim"
     "amsfonts"
     "amssymb"
     "amsmath"
     "latex2e"
     "art11"
     "article"
     "11pt"
     "pdftex"
     "a4paper")))

