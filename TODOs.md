# VIBRANT primary trial analyses - TODO

## January 14th 

1. Raw to SE	

- [ ] Add the weekly VIRGO metagenomics (because the analysis is based on the relative abundances as estimated by metagenomics instead of 16S).
- [ ] Checks and QC ➞ total mg reads
- [ ] Pour les simulations ➞ k_sanity: il ne devrait pas y avoir de NA "completely random" (soit manquant pour toute la visite, soit pas manquant ➞ 0). 
- [ ] Aussi dans les simulations: ajouter des participants qui ne sont pas venu à des visites (plic-ploc) ➞ tous les assays sont manquants pour cette visite.
  - [ ] Summary missing data generation mechanisms:
    - [ ] Dropouts ➞ all visits and all assays after the dropout time are missing
    - [ ] Missed visits ➞ all assays from the missed visits are missing
    - [ ] Failed assay ➞ all variables from that assay (for participant x visit) are missing.
    - [ ] [for most sequencing-based assays] we don't have random missing variables.
- [ ] Simulations: ajouter 1-4 participantes pour un des deux "dropped arms" at MGH
- [ ] Simulations ➞ there should not be that much LBP strains in the Placebo arm ➞ check the gLV :)



- [ ] Demographics table (add as 05-Demographics.qmd)







