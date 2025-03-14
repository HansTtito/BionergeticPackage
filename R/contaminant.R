########################################################################
### Contaminant accumulation functions
########################################################################

pred_cont_conc_old <- function(C,W,Temperature,X_Prey,X_Pred,TEx,X_ae,CONTEQ) {
  # used in testing version of FB4; only two CONTEQ's.
  Burden <- X_Pred*W
  Kx <- ifelse(CONTEQ==2, exp(0.066*Temperature-0.2*log(W)-6.56)/1.5, 0)
  Uptake <- ifelse(CONTEQ == 1,sum(C*X_Prey*TEx),sum(C*X_Prey*X_ae))
  Clearance <- ifelse(CONTEQ==2,Kx*Burden,0)
  Accumulation <- Uptake-Clearance
  Burden <- ifelse(CONTEQ == 1,Burden+Uptake,Burden+Accumulation)
  X_Pred <- Burden/W  # Caution! Should calculate new Conc using "finalwt", not W; JEB
  return(c(Clearance, Uptake, Burden, X_Pred))
}

# Includes CONTEQ 3 for Arnot & Gobas (2004)
pred_cont_conc <- function(R.O2,C,W,Temperature,X_Prey,X_Pred,TEx,X_ae,Ew,Kbw,CONTEQ) {
  Burden <- X_Pred*W  # Burden in micrograms; This uses W and X_Pred at **start** of day
  if(CONTEQ==1) {
    Uptake <- sum(C*X_Prey*TEx)   # uptake from food only; no elimination
    Kx <- 0  # no elimination
  } else if(CONTEQ==2) {
    Uptake <- sum(C*X_Prey*X_ae)  # uptake from food only (no uptake from water)
    Kx <- exp(0.066*Temperature-0.2*log(W)-6.56)  # MeHg elimination rate coeff; Trudel & Rasmussen (1997)
  } else if(CONTEQ==3) {
    VOx = 1000*R.O2  # (mg O2/g/d) = (1000 mg/g)*(g O2/g/d), where R.O2 is (g O2/g/d)
    COx = (-0.24*Temperature +14.04)*DO_Sat.fr  # dissolved oxygen concentration (mg O2/L); (eq.9)
    K1 = Ew*VOx/COx  # water cleared of contaminant per g per day; (L/g/day), proportional to Resp
    Uptake.water = W*K1*phi_DT*Cw_tot*1000  # contam from water (ug/d); (L/day)*(mg/L)*(1000 ug/mg)
    Uptake.food  = sum(C*X_Prey*X_ae)  # contam in all food eaten (ug/d); (g/d)*(ug/g)
    Uptake = Uptake.water + Uptake.food  # (ug/d)
    Kx = K1/Kbw  # clearance rate is proportional to K1 and to 1/fish:water partition coefficient
  }
  Clearance <- Kx*Burden
  Accumulation <- Uptake - Clearance  # Accumulation = net change in Burden
  Burden = Burden + Accumulation  # update Burden
  #X_Pred <- Burden/W  # update predator contaminant concentration using new Burden & FINALWEIGHT!
  return(c(Clearance,Uptake,Burden,NA))  # Use NA to save a place for X_Pred
}
