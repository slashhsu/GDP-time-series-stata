


/// set up data ///
gen x = Exportq
gen y =Importy
generate date = tq(1997q1)+_n-1
format %tq date
list date in 1
tsset date

////description statistic //////
sum x y GDP
tsline x y GDP, legend(lab (1 "export") lab(2 "import") lab(3 "GDP"))
tsline d.x d.y d.GDP, legend(lab (1 "d.export") lab(2 "d.import") lab(3 "d.GDP"))

//// B-godfrey autocorrelated and ADF stationary test////
forvalues p = 1/3 {
	qui reg L(0/`p').D.x L.x
	di "Lags =" `p'
	estat bgodfrey, lags(1 2 3)
	}

forvalues p = 1/3 {
	qui reg L(0/`p').D.GDP L.GDP
	di "Lags =" `p'
	estat bgodfrey, lags(1 2 3)
	}
forvalues p = 1/3 {
	qui reg L(0/`p').D.y L.y
	di "Lags =" `p'
	estat bgodfrey, lags(1 2 3)
	}

	dfuller x, lags(1)
	dfuller x, lags(1) trend
	dfuller y, lags(1)
	dfuller y, lags(1) trend
	dfuller GDP, lags(1)
	dfuller GDP, lags(1) trend
	
    dfuller d.x, lags(1)
	dfuller d.x, lags(1) trend
	dfuller d.y, lags(1)
	dfuller d.y, lags(1) trend
	dfuller d.GDP, lags(1)
	dfuller d.GDP, lags(1) trend
	
	//////// lag length test////
	
arsoc d.GDPm
arsoc d.x
arsoc d.y
	
	
//// cointegration test /////
reg dgdp dx
predict ehat, res
reg D.ehat L.ehat D.L.ehat, noconst 
di _b[L.ehat]/_se[L.ehat]

reg dgdp dy
predict ehat, res
reg D.ehat L.ehat D.L.ehat, noconst 
di _b[L.ehat]/_se[L.ehat]

//// ECM model test///

long-term
regress dgdp dx
regress dgdp dy

short-term

reg dgdp dy
predict error, residuals
regress L(0/1).dgdp L(0/2).dy L(0/1).l.error

reg dgdp dx
predict error, residuals
regress L(0/1).dgdp L(0/2).dx L(0/1).l.error

//////granger causality /////
reg L(0/1).dgdp L(0/2).dx
test (L1.dx)(L2.dx)
reg L(0/1).dgdp L(0/2).dy
test (L1.dx)(L2.dy)


















