process ECHO_TAG {
    input:
    val tag

    output:
    path 'tag.txt'

    script:
    """
    echo ${tag} > tag.txt
    """
}

workflow {
    log.info "run_tag seen by the script: ${params.run_tag}"
    ECHO_TAG(params.run_tag)
}
