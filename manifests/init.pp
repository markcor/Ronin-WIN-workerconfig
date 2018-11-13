class workerconfig {

	require admin 

	include workerconfig::mozilla_build::mozilla_build
	include workerconfig::generic_worker::generic_worker
}
