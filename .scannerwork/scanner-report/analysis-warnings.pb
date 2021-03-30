
”SCM provider autodetection failed. Please use "sonar.scm.provider" to define SCM of your project, or disable the SCM Sensor in the project settings.üŠú†/ˆ
ş
CFamily plugin supports multithreaded analysis:

* to enable multithreaded analysis
  please specify the number of threads to use
  by setting the following property to your analysis:
  sonar.cfamily.threads=number_of_threads

* if you do not want to enable multithreading
  please explicitly disable it
  by setting the following property to your analysis:
  sonar.cfamily.threads=1

* visit the documentation page for more information
  https://sq8-budzow.ngrok.io/documentation/analysis/languages/cfamily/
ã«‹ú†/’
ˆ
CFamily plugin supports incremental analysis with the use of a cache:

* if you do not want to enable cache
  please explicitly disable it
  by setting the following property to your analysis:
  sonar.cfamily.cache.enabled=false

* to enable cache please specify the following 2 options:
  sonar.cfamily.cache.enabled=true
  sonar.cfamily.cache.path=relative_or_absolute_path_to_cache_location

* visit the documentation page for more information
  https://sq8-budzow.ngrok.io/documentation/analysis/languages/cfamily/
ÖÂ‹ú†/