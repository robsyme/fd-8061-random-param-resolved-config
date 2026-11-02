# FD-8061 repro: random param default differs between Resolved configuration and run

`nextflow.config` sets `params.run_tag = UUID.randomUUID().toString().take(8)`.
Nextflow parses the config twice when `tower.enabled` (or lineage / trace logging) is on:
once to build the run config, and again in `ConfigCmdAdapter.resolveConfig()` to produce
the text sent to Seqera Platform as "Resolved configuration". Each parse draws a new UUID.

Temporary repo for a support ticket; will be deleted.
