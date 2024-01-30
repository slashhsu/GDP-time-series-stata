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


