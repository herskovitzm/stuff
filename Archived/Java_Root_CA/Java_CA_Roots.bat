".\keytool.exe" -keystore cacerts -importcert -alias NetskopeCA -file ".\Netskope-RootCA.cer" -storepass changeit -noprompt
".\keytool.exe" -keystore .\cacerts -importcert -alias LSQRootCA -file ".\LSQRootCA.cer" -storepass changeit -noprompt
