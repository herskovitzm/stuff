

	function rename-remotefile {
	    PROCESS {
					$filePath = "C:\WINDOWS\SysWOW64\msxml4.dll"
					$filePathNew = "C:\WINDOWS\SysWOW64\msxml4.dll.old"
					if (test-path $filePath)
	                {
	                Rename-Item -path $filePath $filePathNew -force
	                }
	            }
	}
	 

rename-remotefile