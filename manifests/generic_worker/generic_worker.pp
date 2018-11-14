class workerconfig::generic_worker::generic_worker {

	file { "C:\\generic-worker\\livelog.exe": 
		ensure  => present,
		source  => "https://s3.amazonaws.com/windows-opencloudconfig-packages/RoninPackages/livelog-windows-amd64.exe",
	}
	# NSSM
	file {"C:\\Windows\\Temp\\NSSMInstall.zip":
		ensure  => present,
		source  => "https://nssm.cc/ci/nssm-2.24-103-gdee49fc.zip",
	}
	windows::unzip { "C:\\Windows\\Temp\\NSSMInstall.zip":
		destination => "C:\\Windows\\Tempd\\NSSMInstall",
		creates     => "C:\\nssm-2.24-103-gdee49fc\\win64\\nssm.exe",
	}
	#TaskCluster proxy
	file { "C:\\generic-worker\\taskcluster-proxy.exe":
		ensure  => present,
		source  => "https://s3.amazonaws.com/windows-opencloudconfig-packages/RoninPackages/taskcluster-proxy-windows-amd64.exe",
	}
	#Generic-worker
  	file { "C:\\generic-worker\\generic-worker.exe":
    	ensure  => present,
    	source  => "https://s3.amazonaws.com/windows-opencloudconfig-packages/RoninPackages/generic-worker-windows-amd64.exe",
  }	
}
