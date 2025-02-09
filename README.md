# Impact-of-Import-and-Export-on-GDP-in-UK
A practice of time series using stata

Fig(1) is timeline between export, import and GDP in level and difference, it can see that export and import are positive effect on GDP. There is a sharply fall in 2019, it may due to the Covid-19.
![image](https://github.com/slashhsu/Impact-of-Import-and-Export-on-GDP-in-UK/assets/137000188/dc81d006-77c1-4c5c-ba53-83c5fc9d0d93)
![image](https://github.com/slashhsu/Impact-of-Import-and-Export-on-GDP-in-UK/assets/137000188/8b640229-5bb8-4040-b492-74b462a327e3)

Below approaches were use to check the model:
1.Stationary and autocorrelated test
2.Cointegrated and Lag length test


Model Use:
ECM model

Using equation (1) and equation(2), we tested the short run relationship through the significance of the lags of each explanatory variable.
![image](https://github.com/slashhsu/Impact-of-Import-and-Export-on-GDP-in-UK/assets/137000188/b12e5322-b155-451b-baff-67893cfef22a)

Where these two equations are testing the relationship between GDP and export, GDP and import. Number I and L are the autoregressive order of the dependent variable which are tested by Akaike information criterion.
![image](https://github.com/slashhsu/Impact-of-Import-and-Export-on-GDP-in-UK/assets/137000188/f5409e2b-5e82-46b1-a86b-a8c7ac7ddb0c)



Granger Causality test:
 In this section, Granger causality refers to the ability of lags of one variable to contribute to the forecast of another. Clive Granger(1977) argued that causality in economics could be tested for by measuring the ability to predict the future values of a time series using prior values of another time series.
![image](https://github.com/slashhsu/Impact-of-Import-and-Export-on-GDP-in-UK/assets/137000188/0e7847f1-12de-4084-ba68-a47e54346497)




Impact of Import and Export on GDP in the UK
A Time Series Analysis Using Stata

Overview
This project explores the relationship between import, export, and GDP in the UK using time series analysis. Various econometric tests and models are employed to examine short-run and long-run relationships, particularly the Error Correction Model (ECM) and Granger Causality Test.

1. Data Visualisation
The first step in the analysis is observing the time-series trends of GDP, import, and export.

Figure 1: Time-series plots of GDP, import, and export (both level and difference).
The results suggest that export and import have a positive effect on GDP.
A sharp decline is observed in 2019, likely due to the COVID-19 pandemic.



2. Methodology
To ensure robust analysis, the following statistical tests and models were applied:

(a) Pre-Analysis Tests
✅ Stationarity & Autocorrelation Tests – Check if the time series is stationary.
✅ Cointegration & Lag Length Tests – Determine the appropriate lag structure.

(b) Econometric Model: Error Correction Model (ECM)
The ECM model is used to study the short-run and long-run relationships between GDP, import, and export.

The following equations test:

GDP and export
GDP and import
Δ
𝐺
𝐷
𝑃
𝑡
=
𝛼
+
∑
𝛽
𝑖
Δ
𝐸
𝑋
𝑃
𝑂
𝑅
𝑇
𝑡
−
𝑖
+
∑
𝛾
𝑖
Δ
𝐺
𝐷
𝑃
𝑡
−
𝑖
+
𝜆
𝐸
𝐶
𝑀
𝑡
−
1
+
𝜖
𝑡
ΔGDP 
t
​
 =α+∑β 
i
​
 ΔEXPORT 
t−i
​
 +∑γ 
i
​
 ΔGDP 
t−i
​
 +λECM 
t−1
​
 +ϵ 
t
​
 
Δ
𝐺
𝐷
𝑃
𝑡
=
𝛼
+
∑
𝛽
𝑖
Δ
𝐼
𝑀
𝑃
𝑂
𝑅
𝑇
𝑡
−
𝑖
+
∑
𝛾
𝑖
Δ
𝐺
𝐷
𝑃
𝑡
−
𝑖
+
𝜆
𝐸
𝐶
𝑀
𝑡
−
1
+
𝜖
𝑡
ΔGDP 
t
​
 =α+∑β 
i
​
 ΔIMPORT 
t−i
​
 +∑γ 
i
​
 ΔGDP 
t−i
​
 +λECM 
t−1
​
 +ϵ 
t
​
 
Where:

𝐼
I and 
𝐿
L represent the autoregressive order of the dependent variable, determined by the Akaike Information Criterion (AIC).
𝐸
𝐶
𝑀
ECM is the error correction term, capturing the long-run equilibrium relationship.



3. Granger Causality Test
Granger causality is used to determine whether past values of one variable can predict future values of another.

✅ If export Granger-causes GDP, then past export values contain useful information for forecasting GDP.
✅ If import Granger-causes GDP, it suggests that imports influence GDP movements over time.

According to Clive Granger (1977), economic causality can be tested by measuring the ability of one time series to predict another.



4. Key Findings
📌 Both export and import positively impact GDP.
📌 The ECM model confirms a long-run relationship between GDP, import, and export.
📌 Granger causality results suggest that changes in exports/imports influence GDP over time.
📌 The COVID-19 pandemic caused a sharp decline in economic activity in 2019.

5. Tools & Resources
🛠 Software Used: Stata
📊 Statistical Methods: ECM Model, Granger Causality, Cointegration Test
📂 Dataset Source: UK GDP, import, and export data

6. References
Granger, C.W.J. (1977). "Investigating Causal Relations by Econometric Models and Cross-Spectral Methods." Econometrica
Akaike, H. (1974). "A New Look at the Statistical Model Identification." IEEE Transactions on Automatic Control
