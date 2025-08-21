
log_enable(2);
ld_dir('data', '*.ttl');

rdf_loader_run();
checkpoint();
log_enable(1);
