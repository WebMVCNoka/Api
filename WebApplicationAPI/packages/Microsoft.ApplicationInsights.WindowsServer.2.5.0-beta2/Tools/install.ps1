﻿param($installPath, $toolsPath, $package, $project)

if ([System.IO.File]::Exists($project.FullName))
{
	function MarkItemASCopyToOutput($item)
	{
		Try
		{
			#mark it to copy if newer
			$item.Properties.Item("CopyToOutputDirectory").Value = 2
		}
		Catch
		{
			write-host $_.Exception.ToString()			
		}
	}

	MarkItemASCopyToOutput($project.ProjectItems.Item("ApplicationInsights.config"))
}
# SIG # Begin signature block
# MIIaoQYJKoZIhvcNAQcCoIIakjCCGo4CAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUf2UyTbnwzNhOty5SJWg73jBd
# mVygghWCMIIEwjCCA6qgAwIBAgITMwAAALm8D05X42ZlOAAAAAAAuTANBgkqhkiG
# 9w0BAQUFADB3MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4G
# A1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSEw
# HwYDVQQDExhNaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EwHhcNMTYwOTA3MTc1ODQ2
# WhcNMTgwOTA3MTc1ODQ2WjCBsjELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hp
# bmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jw
# b3JhdGlvbjEMMAoGA1UECxMDQU9DMScwJQYDVQQLEx5uQ2lwaGVyIERTRSBFU046
# NkJGNi0yRDUyLTkyQzExJTAjBgNVBAMTHE1pY3Jvc29mdCBUaW1lLVN0YW1wIFNl
# cnZpY2UwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCdXDM6Nw8Ck6Kk
# 8k7KXa6ef90VvfETAqgHmtlBZbMr2580HCnjeUqVnMptYOf4SPDNDhtJ7Qc3PCk6
# GJ6J/fssnK9n/3QVnAmIBSINx6vUOasQIBIvf72aGP3Ax0OMx003HDcenhkn5+YJ
# 3IEMJMGN9AvoxZpNvvP2daLhVCLhtrvyPI4ZbWTmilwNQdI7KG6UQsEcVw9h+H/e
# QK3GUHpgjkAQIgLlxdl2GUzuyRB7w3q8IcL2knoiXyaJnu/8ZImBAUz/e9Y0hceH
# XSyLwm3yD7cTI/1NIoC3NCa4JNC0mIL34IiPmpxOsrYrnC8N56eB3RaqVTgpP0GT
# A/rYkXHBAgMBAAGjggEJMIIBBTAdBgNVHQ4EFgQUEDX8qfRQm15YRy1KztfgtxHB
# HfkwHwYDVR0jBBgwFoAUIzT42VJGcArtQPt2+7MrsMM1sw8wVAYDVR0fBE0wSzBJ
# oEegRYZDaHR0cDovL2NybC5taWNyb3NvZnQuY29tL3BraS9jcmwvcHJvZHVjdHMv
# TWljcm9zb2Z0VGltZVN0YW1wUENBLmNybDBYBggrBgEFBQcBAQRMMEowSAYIKwYB
# BQUHMAKGPGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2kvY2VydHMvTWljcm9z
# b2Z0VGltZVN0YW1wUENBLmNydDATBgNVHSUEDDAKBggrBgEFBQcDCDANBgkqhkiG
# 9w0BAQUFAAOCAQEAUYrMwJvGAcCAGnvYWKAiGHo5ee703br1cOLmeU48bNWanQyV
# B5F+9NduGCCYR+Dy/c6Qz0AAHOrfKZRMm9XVZjzR0SURkrw0XgUG+lUacr+buJk9
# soiQVq1JRSFVyzsjNTgUWRVHhIvvP9DYGG8ErZbn0b9CG4fkrmnP+K23Wdoz6PM1
# jzmLO50vGvU6WlBIVdDggAoWW4o8aomMZRdgmGxKPcNAVRVd6pvZz73GnTePE0Su
# d3zOUPMLoHd+DrNbb3tOwJhCCEIs2OMvQyZ7A6sS/YlTseBH5YefOj87+ZliRZCv
# hZJ/QldmfA3RI5Is2IKz45m0pmXUM9snjK0p6TCCBO0wggPVoAMCAQICEzMAAAF5
# fC5XTlLhytYAAQAAAXkwDQYJKoZIhvcNAQEFBQAweTELMAkGA1UEBhMCVVMxEzAR
# BgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1p
# Y3Jvc29mdCBDb3Jwb3JhdGlvbjEjMCEGA1UEAxMaTWljcm9zb2Z0IENvZGUgU2ln
# bmluZyBQQ0EwHhcNMTcwODExMjAxMTE1WhcNMTgwODExMjAxMTE1WjCBgzELMAkG
# A1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQx
# HjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjENMAsGA1UECxMETU9QUjEe
# MBwGA1UEAxMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMIIBIjANBgkqhkiG9w0BAQEF
# AAOCAQ8AMIIBCgKCAQEAqCn+1BDI/1UKnpkAA1KP3LC/+av4Uf5cjFTCJ85MK5br
# 24Ecy4Yrecp1frhngyaGvdYvHD7HWKqPb5X7WvynxhvBw+hMF04iPbdbVlx/11r1
# Lbq7pgm/BnzumP5A+TC4a/5Ab3SzuNY4ScnQhwcvMd+2vE6j0J63YntWcHVPZ78F
# zKOuvgCSwhtQoWE7EAABsYbQKfNA9Q/Zow9Xq2MJqNypaudHQ6e+FcQ9J6ToVlKI
# z1mZoQCENpvQOdIqDS/mBOK/E5aIg6lRNxhBieL5hZ2OZRo9A2TMxd5QcF3yC4Wp
# j7FF6Hf/g50Ju3Lg5lYIlbkrgxKJMfznWHIdvfmDIwIDAQABo4IBYTCCAV0wEwYD
# VR0lBAwwCgYIKwYBBQUHAwMwHQYDVR0OBBYEFPjkfo0cY3wAqsxzAErT8m04qs2B
# MFIGA1UdEQRLMEmkRzBFMQ0wCwYDVQQLEwRNT1BSMTQwMgYDVQQFEysyMjk4MDMr
# MWFiZjllNWYtY2VkMC00MmU2LWE2NWQtZDkzNTA5NTlmZTBlMB8GA1UdIwQYMBaA
# FMsR6MrStBZYAck3LjMWFrlMmgofMFYGA1UdHwRPME0wS6BJoEeGRWh0dHA6Ly9j
# cmwubWljcm9zb2Z0LmNvbS9wa2kvY3JsL3Byb2R1Y3RzL01pY0NvZFNpZ1BDQV8w
# OC0zMS0yMDEwLmNybDBaBggrBgEFBQcBAQROMEwwSgYIKwYBBQUHMAKGPmh0dHA6
# Ly93d3cubWljcm9zb2Z0LmNvbS9wa2kvY2VydHMvTWljQ29kU2lnUENBXzA4LTMx
# LTIwMTAuY3J0MA0GCSqGSIb3DQEBBQUAA4IBAQBvS2t+hg3YCyZQazqIyFqp9rLq
# Kpmn5QY0RAHvc/utL/3t+NWAajUcNMcTDLVeZDxza4zyb9Npvs47D5v5BXI8HUbh
# 6Jw+NrFvNammUFR/4dRXPTseelyPAT93P15zJ1f6pzDn1HKvi99xIv2K4PrgLd9f
# 8t53ZN/asAYACatGkKP1/oGGLJMrdcYRKNfliuIcJ6uXjJrE4gcZ0/JkF7Er3fMI
# enhQhQYyHDlQo82LcN4I1XtvTD+a6HVt5MsTVxwpWThfvkWrpprK+SmezTjPucgF
# uiz7xCW/aA3fD3tCGpXHj71aa5ALUfrXt+ePsrMzKHMDXH+jRoKcrbY2d3aHMIIF
# vDCCA6SgAwIBAgIKYTMmGgAAAAAAMTANBgkqhkiG9w0BAQUFADBfMRMwEQYKCZIm
# iZPyLGQBGRYDY29tMRkwFwYKCZImiZPyLGQBGRYJbWljcm9zb2Z0MS0wKwYDVQQD
# EyRNaWNyb3NvZnQgUm9vdCBDZXJ0aWZpY2F0ZSBBdXRob3JpdHkwHhcNMTAwODMx
# MjIxOTMyWhcNMjAwODMxMjIyOTMyWjB5MQswCQYDVQQGEwJVUzETMBEGA1UECBMK
# V2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0
# IENvcnBvcmF0aW9uMSMwIQYDVQQDExpNaWNyb3NvZnQgQ29kZSBTaWduaW5nIFBD
# QTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALJyWVwZMGS/HZpgICBC
# mXZTbD4b1m/My/Hqa/6XFhDg3zp0gxq3L6Ay7P/ewkJOI9VyANs1VwqJyq4gSfTw
# aKxNS42lvXlLcZtHB9r9Jd+ddYjPqnNEf9eB2/O98jakyVxF3K+tPeAoaJcap6Vy
# c1bxF5Tk/TWUcqDWdl8ed0WDhTgW0HNbBbpnUo2lsmkv2hkL/pJ0KeJ2L1TdFDBZ
# +NKNYv3LyV9GMVC5JxPkQDDPcikQKCLHN049oDI9kM2hOAaFXE5WgigqBTK3S9dP
# Y+fSLWLxRT3nrAgA9kahntFbjCZT6HqqSvJGzzc8OJ60d1ylF56NyxGPVjzBrAlf
# A9MCAwEAAaOCAV4wggFaMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFMsR6MrS
# tBZYAck3LjMWFrlMmgofMAsGA1UdDwQEAwIBhjASBgkrBgEEAYI3FQEEBQIDAQAB
# MCMGCSsGAQQBgjcVAgQWBBT90TFO0yaKleGYYDuoMW+mPLzYLTAZBgkrBgEEAYI3
# FAIEDB4KAFMAdQBiAEMAQTAfBgNVHSMEGDAWgBQOrIJgQFYnl+UlE/wq4QpTlVnk
# pDBQBgNVHR8ESTBHMEWgQ6BBhj9odHRwOi8vY3JsLm1pY3Jvc29mdC5jb20vcGtp
# L2NybC9wcm9kdWN0cy9taWNyb3NvZnRyb290Y2VydC5jcmwwVAYIKwYBBQUHAQEE
# SDBGMEQGCCsGAQUFBzAChjhodHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpL2Nl
# cnRzL01pY3Jvc29mdFJvb3RDZXJ0LmNydDANBgkqhkiG9w0BAQUFAAOCAgEAWTk+
# fyZGr+tvQLEytWrrDi9uqEn361917Uw7LddDrQv+y+ktMaMjzHxQmIAhXaw9L0y6
# oqhWnONwu7i0+Hm1SXL3PupBf8rhDBdpy6WcIC36C1DEVs0t40rSvHDnqA2iA6VW
# 4LiKS1fylUKc8fPv7uOGHzQ8uFaa8FMjhSqkghyT4pQHHfLiTviMocroE6WRTsgb
# 0o9ylSpxbZsa+BzwU9ZnzCL/XB3Nooy9J7J5Y1ZEolHN+emjWFbdmwJFRC9f9Nqu
# 1IIybvyklRPk62nnqaIsvsgrEA5ljpnb9aL6EiYJZTiU8XofSrvR4Vbo0HiWGFzJ
# NRZf3ZMdSY4tvq00RBzuEBUaAF3dNVshzpjHCe6FDoxPbQ4TTj18KUicctHzbMrB
# 7HCjV5JXfZSNoBtIA1r3z6NnCnSlNu0tLxfI5nI3EvRvsTxngvlSso0zFmUeDord
# EN5k9G/ORtTTF+l5xAS00/ss3x+KnqwK+xMnQK3k+eGpf0a7B2BHZWBATrBC7E7t
# s3Z52Ao0CW0cgDEf4g5U3eWh++VHEK1kmP9QFi58vwUheuKVQSdpw5OPlcmN2Jsh
# rg1cnPCiroZogwxqLbt2awAdlq3yFnv2FoMkuYjPaqhHMS+a3ONxPdcAfmJH0c6I
# ybgY+g5yjcGjPa8CQGr/aZuW4hCoELQ3UAjWwz0wggYHMIID76ADAgECAgphFmg0
# AAAAAAAcMA0GCSqGSIb3DQEBBQUAMF8xEzARBgoJkiaJk/IsZAEZFgNjb20xGTAX
# BgoJkiaJk/IsZAEZFgltaWNyb3NvZnQxLTArBgNVBAMTJE1pY3Jvc29mdCBSb290
# IENlcnRpZmljYXRlIEF1dGhvcml0eTAeFw0wNzA0MDMxMjUzMDlaFw0yMTA0MDMx
# MzAzMDlaMHcxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYD
# VQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xITAf
# BgNVBAMTGE1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQTCCASIwDQYJKoZIhvcNAQEB
# BQADggEPADCCAQoCggEBAJ+hbLHf20iSKnxrLhnhveLjxZlRI1Ctzt0YTiQP7tGn
# 0UytdDAgEesH1VSVFUmUG0KSrphcMCbaAGvoe73siQcP9w4EmPCJzB/LMySHnfL0
# Zxws/HvniB3q506jocEjU8qN+kXPCdBer9CwQgSi+aZsk2fXKNxGU7CG0OUoRi4n
# rIZPVVIM5AMs+2qQkDBuh/NZMJ36ftaXs+ghl3740hPzCLdTbVK0RZCfSABKR2YR
# JylmqJfk0waBSqL5hKcRRxQJgp+E7VV4/gGaHVAIhQAQMEbtt94jRrvELVSfrx54
# QTF3zJvfO4OToWECtR0Nsfz3m7IBziJLVP/5BcPCIAsCAwEAAaOCAaswggGnMA8G
# A1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFCM0+NlSRnAK7UD7dvuzK7DDNbMPMAsG
# A1UdDwQEAwIBhjAQBgkrBgEEAYI3FQEEAwIBADCBmAYDVR0jBIGQMIGNgBQOrIJg
# QFYnl+UlE/wq4QpTlVnkpKFjpGEwXzETMBEGCgmSJomT8ixkARkWA2NvbTEZMBcG
# CgmSJomT8ixkARkWCW1pY3Jvc29mdDEtMCsGA1UEAxMkTWljcm9zb2Z0IFJvb3Qg
# Q2VydGlmaWNhdGUgQXV0aG9yaXR5ghB5rRahSqClrUxzWPQHEy5lMFAGA1UdHwRJ
# MEcwRaBDoEGGP2h0dHA6Ly9jcmwubWljcm9zb2Z0LmNvbS9wa2kvY3JsL3Byb2R1
# Y3RzL21pY3Jvc29mdHJvb3RjZXJ0LmNybDBUBggrBgEFBQcBAQRIMEYwRAYIKwYB
# BQUHMAKGOGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2kvY2VydHMvTWljcm9z
# b2Z0Um9vdENlcnQuY3J0MBMGA1UdJQQMMAoGCCsGAQUFBwMIMA0GCSqGSIb3DQEB
# BQUAA4ICAQAQl4rDXANENt3ptK132855UU0BsS50cVttDBOrzr57j7gu1BKijG1i
# uFcCy04gE1CZ3XpA4le7r1iaHOEdAYasu3jyi9DsOwHu4r6PCgXIjUji8FMV3U+r
# kuTnjWrVgMHmlPIGL4UD6ZEqJCJw+/b85HiZLg33B+JwvBhOnY5rCnKVuKE5nGct
# xVEO6mJcPxaYiyA/4gcaMvnMMUp2MT0rcgvI6nA9/4UKE9/CCmGO8Ne4F+tOi3/F
# NSteo7/rvH0LQnvUU3Ih7jDKu3hlXFsBFwoUDtLaFJj1PLlmWLMtL+f5hYbMUVbo
# nXCUbKw5TNT2eb+qGHpiKe+imyk0BncaYsk9Hm0fgvALxyy7z0Oz5fnsfbXjpKh0
# NbhOxXEjEiZ2CzxSjHFaRkMUvLOzsE1nyJ9C/4B5IYCeFTBm6EISXhrIniIh0EPp
# K+m79EjMLNTYMoBMJipIJF9a6lbvpt6Znco6b72BJ3QGEe52Ib+bgsEnVLaxaj2J
# oXZhtG6hE6a/qkfwEm/9ijJssv7fUciMI8lmvZ0dhxJkAj0tr1mPuOQh5bWwymO0
# eFQF1EEuUKyUsKV4q7OglnUa2ZKHE3UiLzKoCG6gW4wlv6DvhMoh1useT8ma7kng
# 9wFlb4kLfchpyOZu6qeXzjEp/w7FW1zYTRuh2Povnj8uVRZryROj/TGCBIkwggSF
# AgEBMIGQMHkxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYD
# VQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xIzAh
# BgNVBAMTGk1pY3Jvc29mdCBDb2RlIFNpZ25pbmcgUENBAhMzAAABeXwuV05S4crW
# AAEAAAF5MAkGBSsOAwIaBQCggaIwGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQw
# HAYKKwYBBAGCNwIBCzEOMAwGCisGAQQBgjcCARUwIwYJKoZIhvcNAQkEMRYEFB/n
# GsilmjRaQ7Jb6ZIvznLCjdkgMEIGCisGAQQBgjcCAQwxNDAyoBiAFgBpAG4AcwB0
# AGEAbABsAC4AcABzADGhFoAUaHR0cDovL21pY3Jvc29mdC5jb20wDQYJKoZIhvcN
# AQEBBQAEggEAC+yYHHB7oreaCaOqT/2dWh4Rq9cKVniNnW3vccZ+w78uaiooYmm8
# fV0GuWI75CDjh855WrF+T7YLdZxL7MvfpsVl2oqYBPp3jDdIQZ6S8xezmX1+JMOT
# jH1u1VNlBMdXp0fd8GKCxdtpI3c+L3yWRimXKo15qFtvICw9qvgT7ZX1QhciiVB4
# hFW6jr3g7rLyfB47u6zfJ2DVCx+H+5yAigcMG5Gmm9o9/9z2u7OnzIWmertP8hbk
# B12+MzThNjHkSJcD1ezsO9hQ/DSRoPoRRgh+PEAH5t68y4rvWKcKtTu+0XQIAZi9
# Q3gasjDIQPrcLqzOl48zNyekOrmBRvcmI6GCAigwggIkBgkqhkiG9w0BCQYxggIV
# MIICEQIBATCBjjB3MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQ
# MA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9u
# MSEwHwYDVQQDExhNaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0ECEzMAAAC5vA9OV+Nm
# ZTgAAAAAALkwCQYFKw4DAhoFAKBdMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEw
# HAYJKoZIhvcNAQkFMQ8XDTE3MTIwNzAwNTcwMlowIwYJKoZIhvcNAQkEMRYEFKo1
# OJ94WkMDwks5q8WBoj88gJdhMA0GCSqGSIb3DQEBBQUABIIBAFOYzBRN5yf2zey5
# ZJLBTySD0uUhij9mypaK68nICsmU+Q4GtNcg8pYrcWzqkA7o2sVwnspDhOykPCE2
# Sl9A5SXpWmoY92JXCYNvYz15Qa/9DT1nv5UiT57lA3HVf7R2vKDc+iRsZfpFQZB7
# AocIVWoM5F9k+/Muvxyd4FEp/g22jD+6uKBkteFZ5tdJCir36DDKeMoSJQtfNX1G
# Al6La//2RTnXwAEsVBQeZMdT266YVecucM85ZPC9jqFN0eoJQXnxDKGcz04XDjNy
# ntV/YuV/I0gphJwIVOQkGFbIB2skcNvsbFwFgrWr4VZBFFoYur4kDO0EN4Oe548S
# 6181RYU=
# SIG # End signature block
