fastaFiles = Channel.fromPath("/home/user/fasta/*.fasta")

process reformatFasta {
    input:
    file sequences from fastaFiles
    output:
    file "*.phylip" into phylipFiles
    script:
    """
    goalign reformat phylip -i ${sequences} -o ${sequences.baseName}.phylip
    """
}
