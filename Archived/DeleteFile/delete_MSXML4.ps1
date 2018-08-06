

	function delete-remotefile {
	    PROCESS {
	                $file = "\\$_\c$\WINDOWS\SysWOW64\msxml4.dll"
					$file2 = "\\$_\c$\WINDOWS\SysWOW64\msxml4.dll.old"
					$file3 = "\\$_\c$\WINDOWS\SysWOW64\msxml4r.dll"
	                if (test-path $file)
	                {
	                Remove-Item $file -force	                
	                }
					if (test-path $file2)
	                {
	                Remove-Item $file2 -force	                
	                }
					if (test-path $file3)
	                {
	                Remove-Item $file3 -force	                
	                }
	            }
	}
	 

delete-remotefile