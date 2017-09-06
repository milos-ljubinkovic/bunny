{
    "sbg:validationErrors": [],
    "sbg:modifiedBy": "bixqa",
    "id": "https://api.sbgenomics.com/v2/apps/bixqa/qa-load-2017-07-31-18/rsem-1-2-31-workflow-with-star-aligner/8/raw/",
    "outputs": [
        {
            "id": "#output_file",
            "sbg:x": 1333.088035528216,
            "sbg:includeInPorts": true,
            "required": false,
            "sbg:fileTypes": "PDF",
            "label": "RSEM Plot Model PDF File",
            "source": [
                "#RSEM_Plot_Model.rsem_model_plot"
            ],
            "sbg:y": 573.7151543791441,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#sample_name_isoforms_results",
            "sbg:x": 1449.8061930097176,
            "sbg:includeInPorts": true,
            "required": false,
            "label": "Isoforms results",
            "source": [
                "#RSEM_Calculate_Expression.sample_name_isoforms_results"
            ],
            "sbg:y": 213.8422567164911,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#sample_name_genes_results",
            "sbg:x": 1453.5321021460254,
            "sbg:includeInPorts": true,
            "required": false,
            "label": "Genes results",
            "source": [
                "#RSEM_Calculate_Expression.sample_name_genes_results"
            ],
            "sbg:y": 478.2994770906226,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#sample_name_transcript_bam",
            "sbg:x": 1159.2287564440805,
            "sbg:includeInPorts": true,
            "required": false,
            "sbg:fileTypes": "BAM",
            "label": "Transcript BAM",
            "source": [
                "#RSEM_Calculate_Expression.sample_name_transcript_bam"
            ],
            "sbg:y": 218.14440535914082,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#sample_name_genome_bam",
            "sbg:x": 1330.8771110983457,
            "sbg:includeInPorts": true,
            "required": false,
            "sbg:fileTypes": "BAM",
            "label": "Genome BAM",
            "source": [
                "#RSEM_Calculate_Expression.sample_name_genome_bam"
            ],
            "sbg:y": 343.00002154181993,
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "class": "Workflow",
    "sbg:toolkit": "RSEM",
    "sbg:canvas_zoom": 0.8499999999999999,
    "sbg:toolAuthor": "Bo Li, Colin Dewey",
    "sbg:canvas_y": -46,
    "sbg:modifiedOn": 1501518691,
    "sbg:canvas_x": -263,
    "steps": [
        {
            "outputs": [
                {
                    "id": "#RSEM_Plot_Model.rsem_model_plot"
                }
            ],
            "id": "#RSEM_Plot_Model",
            "sbg:x": 1171.7650475155613,
            "run": {
                "sbg:modifiedBy": "uros_sipetic",
                "x": 1171.7650475155613,
                "class": "CommandLineTool",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1465981957
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1465982017
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1465987802
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1465994612
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1469119300
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": "Updated description.",
                        "sbg:revision": 5,
                        "sbg:modifiedOn": 1471872617
                    }
                ],
                "sbg:toolkit": "RSEM",
                "baseCommand": [
                    "tar",
                    "-xf",
                    {
                        "script": "{\nvar str = [].concat($job.inputs.rsem_calculate_expression_archive)[0].path.split(\"/\").pop();\nreturn str\n\n}",
                        "class": "Expression",
                        "engine": "#cwl-js-engine"
                    },
                    "&&",
                    "rsem-plot-model"
                ],
                "sbg:toolAuthor": "Bo Li, Colin Dewey",
                "appUrl": "/u/uros_sipetic/rsem-1-2-31-demo/apps/#uros_sipetic/rsem-1-2-31-demo/rsem-plot-model-1-2-31/5",
                "sbg:modifiedOn": 1471872617,
                "sbg:cmdPreview": "tar -xf input_files.ext && rsem-plot-model  sample_name  sample_name_plot_model.pdf",
                "requirements": [
                    {
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ],
                        "class": "ExpressionEngineRequirement",
                        "id": "#cwl-js-engine"
                    }
                ],
                "sbg:contributors": [
                    "uros_sipetic"
                ],
                "id": "uros_sipetic/rsem-1-2-31-demo/rsem-plot-model-1-2-31/5",
                "sbg:license": "GNU General Public License v3.0 only",
                "stdout": "",
                "sbg:sbgMaintained": false,
                "sbg:links": [
                    {
                        "label": "RSEM Homepage",
                        "id": "http://deweylab.github.io/RSEM/"
                    },
                    {
                        "label": "RSEM Source Code",
                        "id": "https://github.com/deweylab/RSEM"
                    },
                    {
                        "label": "RSEM Download",
                        "id": "https://github.com/deweylab/RSEM/archive/v1.2.31.tar.gz"
                    },
                    {
                        "label": "RSEM Publications",
                        "id": "https://bmcbioinformatics.biomedcentral.com/articles/10.1186/1471-2105-12-323"
                    },
                    {
                        "label": "RSEM Documentation",
                        "id": "http://deweylab.github.io/RSEM/README.html"
                    }
                ],
                "label": "RSEM Plot Model",
                "sbg:validationErrors": [],
                "stdin": "",
                "inputs": [
                    {
                        "sbg:stageInput": "link",
                        "id": "#rsem_calculate_expression_archive",
                        "required": true,
                        "sbg:fileTypes": "TAR",
                        "label": "Archive of all files produced by 'RSEM Calculate Expression'",
                        "description": "Bundle of all files outputed by 'RSEM Calculate Expression'.",
                        "type": [
                            "File"
                        ]
                    }
                ],
                "sbg:createdOn": 1465981957,
                "outputs": [
                    {
                        "id": "#rsem_model_plot",
                        "sbg:fileTypes": "PDF",
                        "label": "PDF plot model file",
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#rsem_calculate_expression_archive",
                            "glob": "*.pdf"
                        },
                        "description": "PDF file with plots generated from the model.",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "hints": [
                    {
                        "class": "sbg:CPURequirement",
                        "value": 1
                    },
                    {
                        "class": "sbg:MemRequirement",
                        "value": 1000
                    },
                    {
                        "dockerPull": "images.sbgenomics.com/uros_sipetic/rsem:1.2.31",
                        "class": "DockerRequirement",
                        "dockerImageId": "67d3a6c01e92210f43c8ef809c2a245a75bf7d5a52762823cdc3b2e784de576c"
                    }
                ],
                "sbg:createdBy": "uros_sipetic",
                "sbg:categories": [
                    "Plotting-and-Rendering",
                    "RNA"
                ],
                "sbg:toolkitVersion": "1.2.31",
                "temporaryFailCodes": [],
                "y": 475.54450796757015,
                "sbg:latestRevision": 5,
                "arguments": [
                    {
                        "separate": true,
                        "position": 1,
                        "valueFrom": {
                            "script": "[].concat($job.inputs.rsem_calculate_expression_archive)[0].metadata.sample_name",
                            "class": "Expression",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "separate": true,
                        "position": 2,
                        "valueFrom": {
                            "script": "{\n  var x = [].concat($job.inputs.rsem_calculate_expression_archive)[0].metadata.sample_name\n  return x + \"_plot_model.pdf\" \n}",
                            "class": "Expression",
                            "engine": "#cwl-js-engine"
                        }
                    }
                ],
                "sbg:revision": 5,
                "sbg:id": "admin/sbg-public-data/rsem-plot-model-1-2-31/5",
                "cwlVersion": "sbg:draft-2",
                "sbg:project": "uros_sipetic/rsem-1-2-31-demo",
                "sbg:revisionNotes": "Updated description.",
                "sbg:job": {
                    "allocatedResources": {
                        "mem": 1000,
                        "cpu": 1
                    },
                    "inputs": {
                        "rsem_calculate_expression_archive": {
                            "class": "File",
                            "metadata": {
                                "sample_name": "sample_name"
                            },
                            "size": 0,
                            "path": "/path/to/input_files.ext",
                            "secondaryFiles": []
                        }
                    }
                },
                "sbg:image_url": null,
                "description": "RSEM Plot Model generates plots for visualising the model learned by RSEM. The plots depend on read type and user configuration and may include fragment length distribution, read length distribution, read start position distribution, quality score vs observed quality given a reference base, position vs percentage of sequencing error given a reference base, and histogram of reads with different number of alignments.\n\n###Common issues###\nNone",
                "successCodes": []
            },
            "inputs": [
                {
                    "id": "#RSEM_Plot_Model.rsem_calculate_expression_archive",
                    "source": [
                        "#RSEM_Calculate_Expression.rsem_calculate_expression_archive"
                    ]
                }
            ],
            "sbg:y": 475.54450796757015
        },
        {
            "outputs": [
                {
                    "id": "#RSEM_Prepare_Reference.rsem_prepare_reference_archive"
                },
                {
                    "id": "#RSEM_Prepare_Reference.reference_name_transcripts_fa"
                },
                {
                    "id": "#RSEM_Prepare_Reference.reference_name_idx_fa"
                },
                {
                    "id": "#RSEM_Prepare_Reference.reference_name_n2g_idx_fa"
                },
                {
                    "id": "#RSEM_Prepare_Reference.converted_gtf"
                }
            ],
            "id": "#RSEM_Prepare_Reference",
            "sbg:x": 705.0000359030332,
            "run": {
                "sbg:cmdPreview": "rsem-prepare-reference  --num-threads 1  /path/to/hg.19.reference.human.fasta  hg.19.reference.human  && ls | grep ^hg.19.reference.human | tar cf hg.19.reference.human_rsem-1.2.31-index-archive.tar -T -",
                "sbg:modifiedBy": "uros_sipetic",
                "stdout": "",
                "class": "CommandLineTool",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1465981948
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1465982064
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1465994576
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1467195715
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1467733053
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 5,
                        "sbg:modifiedOn": 1469119129
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 6,
                        "sbg:modifiedOn": 1471441826
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 7,
                        "sbg:modifiedOn": 1471441894
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 8,
                        "sbg:modifiedOn": 1471442755
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 9,
                        "sbg:modifiedOn": 1471520738
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 10,
                        "sbg:modifiedOn": 1471528489
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": "Updated description.",
                        "sbg:revision": 11,
                        "sbg:modifiedOn": 1471872094
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 12,
                        "sbg:modifiedOn": 1472221014
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 13,
                        "sbg:modifiedOn": 1476287582
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 14,
                        "sbg:modifiedOn": 1497716331
                    }
                ],
                "sbg:toolkit": "RSEM",
                "sbg:contributors": [
                    "uros_sipetic"
                ],
                "sbg:toolAuthor": "Bo Li, Colin Dewey",
                "sbg:license": "GNU General Public License v3.0 only",
                "sbg:validationErrors": [],
                "requirements": [
                    {
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ],
                        "class": "ExpressionEngineRequirement",
                        "id": "#cwl-js-engine"
                    }
                ],
                "id": "https://api.sbgenomics.com/v2/apps/uros_sipetic/rsem-1-2-31-demo/rsem-prepare-reference-1-2-31/14/raw/",
                "sbg:modifiedOn": 1497716331,
                "sbg:sbgMaintained": false,
                "sbg:links": [
                    {
                        "label": "RSEM Homepage",
                        "id": "http://deweylab.github.io/RSEM/"
                    },
                    {
                        "label": "RSEM Source Code",
                        "id": "https://github.com/deweylab/RSEM"
                    },
                    {
                        "label": "RSEM Download",
                        "id": "https://github.com/deweylab/RSEM/archive/v1.2.31.tar.gz"
                    },
                    {
                        "label": "RSEM Publications",
                        "id": "https://bmcbioinformatics.biomedcentral.com/articles/10.1186/1471-2105-12-323"
                    },
                    {
                        "label": "RSEM Documentation",
                        "id": "http://deweylab.github.io/RSEM/README.html"
                    }
                ],
                "label": "RSEM Prepare Reference",
                "cwlVersion": "sbg:draft-2",
                "baseCommand": [
                    {
                        "script": "{\n  var x = [].concat($job.inputs.reference_fasta_file)[0].path.split('/').pop()\n  var y = x.split('.').pop()\n  if (y == 'fa' || y == 'fasta' || y == 'FA' || y == \"FASTA\") {\n    return \"rsem-prepare-reference\"\n  } else if (y == 'tar' || y == 'TAR') {\n    return \"echo 'Tar bundle provided, skipping indexing.' \"\n  }\n}",
                        "class": "Expression",
                        "engine": "#cwl-js-engine"
                    },
                    ""
                ],
                "stdin": "",
                "inputs": [
                    {
                        "sbg:stageInput": "link",
                        "id": "#reference_fasta_file",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 99,
                            "itemSeparator": ","
                        },
                        "sbg:fileTypes": "FASTA,FA,TAR",
                        "label": "Reference fasta file(s)",
                        "description": "FASTA-formatted file(s) of transcript sequences. RSEM assumes these files contain reference transcripts if the optional GTF file is not included. In this case, RSEM also assumes that the name of each sequence in the Multi-FASTA files is its transcript id. Additionally, the user can supply a TAR bundle containing already generated indices instead of a FASTA file in order to skip indexing for faster workflow execution.",
                        "type": [
                            {
                                "items": "File",
                                "name": "reference_fasta_file",
                                "type": "array"
                            }
                        ]
                    },
                    {
                        "id": "#gtf",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--gtf"
                        },
                        "sbg:fileTypes": "GTF",
                        "label": "Gene annotation file",
                        "description": "Optional GTF file to be suplied if a full genome sequence instead of a transcript sequence is used as reference FASTA input. RSEM will then extract transcript reference sequences using the gene annotations specified in this file.",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#gff3",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--gff3"
                        },
                        "sbg:fileTypes": "GFF3",
                        "label": "Generic feature format version 3",
                        "description": "Optional gene annotation file in GFF3 format (instead of GTF format) to be suplied if a full genome sequence instead of a transcript sequence is used as reference FASTA input. RSEM will then extract transcript reference sequences using the gene annotations specified in this file.",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#gff3_RNA_patterns",
                        "inputBinding": {
                            "separate": true,
                            "itemSeparator": ",",
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--gff3-RNA-patterns"
                        },
                        "sbg:toolDefaultValue": "mRNA",
                        "label": "GFF3 RNA patterns",
                        "sbg:category": "Options",
                        "description": "List of transcript categories, e.g. \"mRNA,rRNA\". Only transcripts that match the specified patterns will be extracted.",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "name": "gff3_RNA_patterns",
                                "type": "array"
                            }
                        ]
                    },
                    {
                        "id": "#trusted_sources",
                        "inputBinding": {
                            "separate": true,
                            "itemSeparator": ",",
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--trusted-sources"
                        },
                        "label": "Trusted sources",
                        "sbg:category": "Options",
                        "description": "List of trusted sources, e.g. \"ENSEMBL,HAVANA\". Only transcripts coming from these sources will be extracted. If nothing is listed, all sources are accepted.",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "name": "trusted_sources",
                                "type": "array"
                            }
                        ]
                    },
                    {
                        "id": "#transcript_to_gene_map",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--transcript-to-gene-map"
                        },
                        "sbg:fileTypes": "TAB",
                        "label": "Transcript to gene map",
                        "description": "Use the information from the supplied file to map from transcript (isoform) ids to gene ids. Each line of the file should be in the form of [gene_id transcript_id] with the two fields separated by a tab character. Use this input if the GTF input is not supplied.",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#allele_to_gene_map",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--allele_to_gene_map"
                        },
                        "sbg:fileTypes": "TAB",
                        "label": "Allele to gene map",
                        "description": "Use the information from the supplied file to provide gene_id and transcript_id information for each allele-specific transcript.  Each line of the supplied file should be in the form of [gene_id transcript_id allele_id], with the fields separated by a tab character. \"allele_id\" should be the sequence names presented in the Multi-FASTA-formatted files. This option is designed for quantifying allele-specific expression. Use this input if the GTF input is not supplied.",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#polyA",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--polyA"
                        },
                        "sbg:toolDefaultValue": "off",
                        "label": "Poly-A tail",
                        "sbg:category": "Options",
                        "description": "Add poly(A) tails to the end of all reference isoforms. STAR aligner users may not want to use this option.",
                        "type": [
                            "null",
                            "boolean"
                        ]
                    },
                    {
                        "id": "#polyA_length",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--polyA-length"
                        },
                        "sbg:toolDefaultValue": "125",
                        "label": "Poly-A tail length",
                        "sbg:category": "Options",
                        "description": "The length of the poly(A) tails to be added.",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "label": "No Poly-A subset",
                        "id": "#no_polyA_subset",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--no-polyA-subset"
                        },
                        "description": "If poly-A tails are added, provide a file containing a list of transcript ids to which poly-A tails should not be added.",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#bowtie",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--bowtie"
                        },
                        "sbg:toolDefaultValue": "off",
                        "label": "Bowtie",
                        "sbg:category": "Options",
                        "description": "Build Bowtie indices. NOTE: The next tool in the suite ('RSEM Calculate Expression') does alignment with the 'Bowtie' aligner by default, so unless you want to use one of the other possible aligners (Bowtie2/STAR) or you are supplying your own aligned files, please turn this option on.",
                        "type": [
                            "null",
                            "boolean"
                        ]
                    },
                    {
                        "id": "#bowtie2",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--bowtie2"
                        },
                        "sbg:toolDefaultValue": "off",
                        "label": "Bowtie 2",
                        "sbg:category": "Options",
                        "description": "Build Bowtie 2 indices.",
                        "type": [
                            "null",
                            "boolean"
                        ]
                    },
                    {
                        "id": "#star",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--star"
                        },
                        "sbg:toolDefaultValue": "off",
                        "label": "STAR",
                        "sbg:category": "Options",
                        "description": "Build STAR indices. To properly build STAR indices, you should also supply a GTF file or a transcript to gene map to their proper inputs.",
                        "type": [
                            "null",
                            "boolean"
                        ]
                    },
                    {
                        "id": "#star_sjdboverhang",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--star-sjdboverhang"
                        },
                        "sbg:toolDefaultValue": "100",
                        "label": "STAR splice junction database overhang",
                        "sbg:category": "Options",
                        "description": "Length of the genomic sequence around annotated junction. It is only used by STAR to build a splice junction database and not needed for Bowtie or Bowtie2. The ideal value is max(ReadLength)-1. In most cases, the default value of 100 will work as well as the ideal value.",
                        "type": [
                            "null",
                            "int"
                        ]
                    }
                ],
                "sbg:createdOn": 1465981948,
                "outputs": [
                    {
                        "id": "#rsem_prepare_reference_archive",
                        "sbg:fileTypes": "TAR",
                        "label": "Archive of all files outputed by RSEM prepare reference",
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#reference_fasta_file",
                            "sbg:metadata": {
                                "reference_name": {
                                    "script": "{\n  var str1 = [].concat($job.inputs.reference_fasta_file)[0].path.split('/')\n  var str2 = str1[str1.length-1]\n  var str3 = str2.split('.')\n  var str4 = \"\"\n  for (i=0; i<str3.length-1; i++) {\n    if (i<str3.length-2) { \n    str4 = str4 + str3[i] + \".\"\n    }\n    else {\n      str4 = str4 + str3[i]\n    }\n  }\n  var tmp = str3.pop()\n  if (tmp.toLowerCase()=='fa' || tmp.toLowerCase()=='fasta') {\n    return str4\n  } else if (tmp.toLowerCase()=='tar') {\n    return [].concat($job.inputs.reference_fasta_file)[0].metadata.reference_name\n  }\n}\n",
                                    "class": "Expression",
                                    "engine": "#cwl-js-engine"
                                }
                            },
                            "glob": "*.tar"
                        },
                        "description": "Bundle of files outputed by RSEM prepare reference, including (if specified) Bowtie/Bowtie2/STAR indices, to be used by other tools in the RSEM toolkit (e.g. RSEM calculate expression).",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#reference_name_transcripts_fa",
                        "sbg:fileTypes": "FA",
                        "label": "Reference transcript FASTA",
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#reference_fasta_file",
                            "glob": "*.transcripts.fa",
                            "loadContents": false
                        },
                        "description": "Contains the extracted reference transcripts in Multi-FASTA format. Poly(A) tails are not added and it may contain lower case bases in its sequences if the corresponding genomic regions are soft-masked.",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#reference_name_idx_fa",
                        "sbg:fileTypes": "FA",
                        "label": "Reference transcript FASTA - IDX",
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#reference_fasta_file",
                            "glob": {
                                "script": "{\n  var str1 = [].concat($job.inputs.reference_fasta_file)[0].path.split('/')\n  var str2 = str1[str1.length-1]\n  var str3 = str2.split('.')\n  var str4 = \"\"\n  for (i=0; i<str3.length-1; i++) {\n    if (i<str3.length-2) { \n    str4 = str4 + str3[i] + \".\"\n    }\n    else {\n      str4 = str4 + str3[i]\n    }\n  }\n  return str4 + \".idx.fa\"\n}",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "description": "Used by aligners to build their own indices. In this file, all sequence bases are converted into upper case. In addition, poly(A) tails are added if 'poly(A)' option is set. RSEM uses this file to build Bowtie 2 indices. For visualizing the transcript-coordinate-based BAM files generated by RSEM in IGV, this file should be imported as a \"genome\".",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#reference_name_n2g_idx_fa",
                        "sbg:fileTypes": "FA",
                        "label": "Reference transcript FASTA - N2G IDX",
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#reference_fasta_file",
                            "glob": "*.n2g.idx.fa"
                        },
                        "description": "Used by aligners to build their own indices. In this file, all sequence bases are converted into upper case. In addition, poly(A) tails are added if 'poly(A)' option is set. RSEM uses this file to build Bowtie indices. In addition, this file converts all 'N' characters to 'G' characters. This conversion is in particular desired for aligners (e.g. Bowtie) that do not allow reads to overlap with 'N' characters in the reference sequences.",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#converted_gtf",
                        "sbg:fileTypes": "GTF",
                        "label": "GTF converted from GFF3",
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#gff3",
                            "glob": "*.gtf"
                        },
                        "description": "GTF file converted from an input GFF3 file. This output will exist only if a GFF3 file is used as an input.",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "hints": [
                    {
                        "class": "sbg:CPURequirement",
                        "value": {
                            "script": "$job.inputs.star==true ? 32 : 8",
                            "class": "Expression",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "class": "sbg:MemRequirement",
                        "value": {
                            "script": "$job.inputs.star==true ? 60000 : 15000",
                            "class": "Expression",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "dockerPull": "images.sbgenomics.com/uros_sipetic/rsem:1.2.31",
                        "class": "DockerRequirement",
                        "dockerImageId": "67d3a6c01e92210f43c8ef809c2a245a75bf7d5a52762823cdc3b2e784de576c"
                    }
                ],
                "sbg:id": "admin/sbg-public-data/rsem-prepare-reference-1-2-31/14",
                "sbg:categories": [
                    "FASTA-Processing",
                    "RNA"
                ],
                "sbg:toolkitVersion": "1.2.31",
                "temporaryFailCodes": [],
                "description": "RSEM Prepare Reference extracts/preprocesses the reference sequences for RSEM. It can optionally build Bowtie indices and/or Bowtie 2 indices using their default parameters. It can also optionally build STAR indices using parameters from ENCODE3's STAR-RSEM pipeline. This program is used in conjunction with the RSEM Calculate Expression tool.\n\nThe aligners that RSEM can internally call are Bowtie 1.1.2, Bowtie2 2.2.6 and STAR 2.5.1b. \n\n###Common issues###\n\n1. If \"STAR\" parameter is set, a larger instance will be required by the tool.\n\n2. The next tool in the suite ('RSEM Calculate Expression') does alignment with the 'Bowtie' aligner by default, so unless you want to use one of the other possible aligners (Bowtie2/STAR) or you are supplying your own aligned files, please turn the 'Bowtie' option on.\n\n3. If you have compressed files, please use the \"SBG Decompressor\" tool in your workflows before supplying your files to the proper inputs.\n\n4. If you have already run RSEM Prepare Reference once for a set of FASTA/GTF files, please provide the resulting TAR bundle to the tool if you are using this tool in a workflow in order to skip indexing and speed up the whole workflow process.",
                "sbg:latestRevision": 14,
                "arguments": [
                    {
                        "separate": true,
                        "prefix": "--num-threads",
                        "position": 0,
                        "valueFrom": {
                            "script": "$job.inputs.star==true ? 32 : 1",
                            "class": "Expression",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "separate": true,
                        "position": 100,
                        "valueFrom": {
                            "script": "{\n  var str = [].concat($job.inputs.reference_fasta_file)[0].path.split('/').pop().split('.')\n  var x = \"\"\n  for (i=0; i<str.length-1; i++) {\n    if (i<str.length-2) { \n    x = x + str[i] + \".\"\n    }\n    else {\n      x = x + str[i]\n    }\n  }\n  return x\n}",
                            "class": "Expression",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "separate": true,
                        "position": 156,
                        "valueFrom": {
                            "script": "{\n  var str1 = [].concat($job.inputs.reference_fasta_file)[0].path.split('/').pop().split('.')\n  var x1 = \"\"\n  for (i=0; i<str1.length-1; i++) {\n    if (i<str1.length-2) { \n    x1 = x1 + str1[i] + \".\"\n    }\n    else {\n      x1 = x1 + str1[i]\n    }\n  }\n\n  if ($job.inputs.gtf) {\n    var tmp2 = [].concat($job.inputs.gtf)[0].path.split('/').pop()\n  } else if ($job.inputs.gff3) {\n    var tmp2 = [].concat($job.inputs.gff3)[0].path.split('/').pop()\n  } else {\n    var tmp2 = \"\"\n  }\n  \n  var str2 = tmp2.split('.')\n  var x2 = \"\"\n  for (i=0; i<str2.length-1; i++) {\n    if (i<str2.length-2) { \n    x2 = x2 + str2[i] + \".\"\n    }\n    else {\n      x2 = x2 + str2[i] + \"_\"\n    }\n  }\n  \n  file1 = \"chrLength.txt\"\n  file2 = \"chrName.txt\"\n  file3 = \"chrNameLength.txt\"\n  file4 = \"chrStart.txt\"\n  file5 = \"exonGeTrInfo.tab\"\n  file6 = \"exonInfo.tab\"\n  file7 = \"geneInfo.tab\"\n  file8 = \"Genome\"\n  file9 = \"genomeParameters.txt\"\n  file10 = \"SA\"\n  file11 = \"SAindex\"\n  file12 = \"sjdbInfo.txt\"\n  file13 = \"sjdbList.fromGTF.out.tab\"\n  file14 = \"sjdbList.out.tab\"\n  file15 = \"transcriptInfo.tab\"\n  files1 = file1 + \" \" + file2 + \" \" + file3 + \" \" + file4 + \" \"\n  files2 = file5 + \" \" + file6 + \" \" + file7 + \" \" + file8 + \" \"\n  files3 = file9 + \" \" + file10 + \" \" + file11 + \" \" + file12 + \" \"\n  files4 = file13 + \" \" + file14 + \" \" + file15 \n  files = files1 + \" \" + files2 + \" \" + files3 + \" \" + files4\n  var index = \"\"\n  if ($job.inputs.bowtie) {\n    index = index + \".bowtie\"\n  }\n  if ($job.inputs.bowtie2) {\n    index = index + \".bowtie2\"\n  }\n  if ($job.inputs.star) {\n    index = index + \".star\"\n  }\n  \n  \n  var tmp3 = [].concat($job.inputs.reference_fasta_file)[0].path.split('/').pop()\n  var tmp4 = tmp3.split('.').pop()\n  if (tmp4 == 'tar' || tmp4 == 'TAR') {\n    return \"\"\n  } else {\n    cmd = \"&& ls | grep ^\" + x1 + \" | tar cf \" + x1 + \"_\" + x2 + \"rsem-1.2.31\" + index + \"-index-archive.tar -T - \"\n    if ($job.inputs.star) {\n      return cmd + files\n    } else {\n      return cmd\n    }\n  }\n}\n\n\n\n\n\n",
                            "class": "Expression",
                            "engine": "#cwl-js-engine"
                        }
                    }
                ],
                "sbg:revision": 14,
                "sbg:image_url": null,
                "sbg:project": "uros_sipetic/rsem-1-2-31-demo",
                "sbg:createdBy": "uros_sipetic",
                "sbg:job": {
                    "allocatedResources": {
                        "mem": 15000,
                        "cpu": 8
                    },
                    "inputs": {
                        "transcript_to_gene_map": {
                            "class": "File",
                            "size": 0,
                            "path": null,
                            "secondaryFiles": []
                        },
                        "reference_fasta_file": [
                            {
                                "path": "/path/to/hg.19.reference.human.fasta",
                                "secondaryFiles": []
                            }
                        ],
                        "gff3_RNA_patterns": [
                            ""
                        ],
                        "star_sjdboverhang": null,
                        "no_polyA_subset": {
                            "class": "File",
                            "size": 0,
                            "path": null,
                            "secondaryFiles": []
                        },
                        "star": false,
                        "polyA_length": null,
                        "bowtie2": false,
                        "polyA": false,
                        "bowtie": false,
                        "allele_to_gene_map": {
                            "class": "File",
                            "size": 0,
                            "path": null,
                            "secondaryFiles": []
                        },
                        "trusted_sources": [
                            ""
                        ]
                    }
                },
                "sbg:projectName": "RSEM 1.2.31 - Demo",
                "successCodes": [],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ]
            },
            "inputs": [
                {
                    "id": "#RSEM_Prepare_Reference.reference_fasta_file",
                    "source": [
                        "#reference_fasta_file"
                    ]
                },
                {
                    "id": "#RSEM_Prepare_Reference.gtf",
                    "source": [
                        "#gtf"
                    ]
                },
                {
                    "id": "#RSEM_Prepare_Reference.gff3"
                },
                {
                    "id": "#RSEM_Prepare_Reference.gff3_RNA_patterns"
                },
                {
                    "id": "#RSEM_Prepare_Reference.trusted_sources"
                },
                {
                    "id": "#RSEM_Prepare_Reference.transcript_to_gene_map"
                },
                {
                    "id": "#RSEM_Prepare_Reference.allele_to_gene_map"
                },
                {
                    "id": "#RSEM_Prepare_Reference.polyA"
                },
                {
                    "id": "#RSEM_Prepare_Reference.polyA_length"
                },
                {
                    "id": "#RSEM_Prepare_Reference.no_polyA_subset"
                },
                {
                    "id": "#RSEM_Prepare_Reference.bowtie"
                },
                {
                    "id": "#RSEM_Prepare_Reference.bowtie2"
                },
                {
                    "id": "#RSEM_Prepare_Reference.star",
                    "source": [
                        "#star"
                    ]
                },
                {
                    "id": "#RSEM_Prepare_Reference.star_sjdboverhang"
                }
            ],
            "sbg:y": 348.0029835420497
        },
        {
            "outputs": [
                {
                    "id": "#RSEM_Calculate_Expression.rsem_calculate_expression_archive"
                },
                {
                    "id": "#RSEM_Calculate_Expression.sample_name_isoforms_results"
                },
                {
                    "id": "#RSEM_Calculate_Expression.sample_name_genes_results"
                },
                {
                    "id": "#RSEM_Calculate_Expression.sample_name_alleles_results"
                },
                {
                    "id": "#RSEM_Calculate_Expression.sample_name_transcript_bam"
                },
                {
                    "id": "#RSEM_Calculate_Expression.star_log_files"
                },
                {
                    "id": "#RSEM_Calculate_Expression.sample_name_genome_bam"
                }
            ],
            "id": "#RSEM_Calculate_Expression",
            "sbg:x": 1036.0000430836399,
            "run": {
                "sbg:cmdPreview": "ulimit -v unlimited && tar -xf hg19.human_prepare_reference_archive.tar.gz && rsem-calculate-expression --sort-bam-memory-per-thread 1500M --num-threads 32  hg19.human  AAA  && ls | grep ^AAA. | tar cf rsem_calculate_expression_archive.AAA.tar -T -",
                "sbg:modifiedBy": "uros_sipetic",
                "stdout": "",
                "class": "CommandLineTool",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1465981927
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1465982051
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1465994592
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1467058269
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1467733344
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 5,
                        "sbg:modifiedOn": 1467733390
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 6,
                        "sbg:modifiedOn": 1469119670
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 7,
                        "sbg:modifiedOn": 1469119704
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 8,
                        "sbg:modifiedOn": 1469119738
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 9,
                        "sbg:modifiedOn": 1469119770
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 10,
                        "sbg:modifiedOn": 1469119834
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": "Updated description.",
                        "sbg:revision": 11,
                        "sbg:modifiedOn": 1471872323
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": "Updated description.",
                        "sbg:revision": 12,
                        "sbg:modifiedOn": 1471872548
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 13,
                        "sbg:modifiedOn": 1472136124
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 14,
                        "sbg:modifiedOn": 1476287848
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 15,
                        "sbg:modifiedOn": 1476445347
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": "Add unsorted genome BAM output.",
                        "sbg:revision": 16,
                        "sbg:modifiedOn": 1481220127
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": "Update output name when single-end reads are provided.",
                        "sbg:revision": 17,
                        "sbg:modifiedOn": 1482421698
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": "Automate .gz and .bz2 reads with STAR aligner.",
                        "sbg:revision": 18,
                        "sbg:modifiedOn": 1485510056
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": "Merge FASTQ and BAM inputs under one common input (command line will be built properly based on file extension). \nAutomate gzipped and bzipped FASTQ file recognition. \nMerge sorted and unsorted BAM outputs into one, so that by default the the unsorted BAM is outputted, and sorted BAM is outputted if the option 'Sort BAM by coordinate' is turned on.",
                        "sbg:revision": 19,
                        "sbg:modifiedOn": 1485517442
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": "Set ulimit -v to unlimited.",
                        "sbg:revision": 20,
                        "sbg:modifiedOn": 1488886642
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": "If sample_id metadata exists, output files will be prefixed by its value, instead of the filename.",
                        "sbg:revision": 21,
                        "sbg:modifiedOn": 1491926994
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": "If sample_id metadata exists, output files will be prefixed by its value, instead of the filename.",
                        "sbg:revision": 22,
                        "sbg:modifiedOn": 1491928182
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": "Add SAM/BAM/CRAM file extensions ad suggested ones for read_files input.",
                        "sbg:revision": 23,
                        "sbg:modifiedOn": 1495712813
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": "Update sample_name output metadata expression.",
                        "sbg:revision": 24,
                        "sbg:modifiedOn": 1496822428
                    },
                    {
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revisionNotes": "Update RSEM archive grep expression to work properly when paired end samples have different basename from their sample_id metadata.",
                        "sbg:revision": 25,
                        "sbg:modifiedOn": 1497882456
                    }
                ],
                "sbg:toolkit": "RSEM",
                "sbg:contributors": [
                    "uros_sipetic"
                ],
                "sbg:toolAuthor": "Bo Li, Colin Dewey",
                "sbg:license": "GNU General Public License v3.0 only",
                "sbg:validationErrors": [],
                "requirements": [
                    {
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ],
                        "class": "ExpressionEngineRequirement",
                        "id": "#cwl-js-engine"
                    }
                ],
                "id": "https://api.sbgenomics.com/v2/apps/uros_sipetic/rsem-1-2-31-demo/rsem-calculate-expression-1-2-31/25/raw/",
                "sbg:modifiedOn": 1497882456,
                "sbg:sbgMaintained": false,
                "sbg:links": [
                    {
                        "label": "RSEM Homepage",
                        "id": "http://deweylab.github.io/RSEM/"
                    },
                    {
                        "label": "RSEM Source Code",
                        "id": "https://github.com/deweylab/RSEM"
                    },
                    {
                        "label": "RSEM Download",
                        "id": "https://github.com/deweylab/RSEM/archive/v1.2.31.tar.gz"
                    },
                    {
                        "label": "RSEM Publications",
                        "id": "https://bmcbioinformatics.biomedcentral.com/articles/10.1186/1471-2105-12-323"
                    },
                    {
                        "label": "RSEM Documentation",
                        "id": "http://deweylab.github.io/RSEM/README.html"
                    }
                ],
                "label": "RSEM Calculate Expression",
                "cwlVersion": "sbg:draft-2",
                "baseCommand": [
                    "ulimit",
                    "-v",
                    "unlimited",
                    "&&",
                    "tar",
                    "-xf",
                    {
                        "script": "{\nvar str = [].concat($job.inputs.rsem_prepare_reference_archive)[0].path.split(\"/\").pop();\nreturn str\n\n}",
                        "class": "Expression",
                        "engine": "#cwl-js-engine"
                    },
                    "&&",
                    "rsem-calculate-expression"
                ],
                "stdin": "",
                "inputs": [
                    {
                        "sbg:stageInput": "link",
                        "id": "#rsem_prepare_reference_archive",
                        "sbg:fileTypes": "TAR",
                        "label": "Archive of all files outputed by RSEM prepare reference",
                        "description": "Bundle of files outputed by RSEM prepare reference, including (if specified) Bowtie/Bowtie2/STAR indices.",
                        "type": [
                            "File"
                        ]
                    },
                    {
                        "id": "#read_files",
                        "inputBinding": {
                            "separate": true,
                            "itemSeparator": ",",
                            "sbg:cmdInclude": true,
                            "position": 98,
                            "valueFrom": {
                                "script": "{\n  if ($job.inputs.read_files) {\n    \n  var list = [].concat($job.inputs.read_files)\n  var ext = list[0].path.split('.').pop().toLowerCase()\n  \n  if (ext=='bam' || ext=='sam' || ext=='cram') {\n    if ($job.inputs.paired_end_alignment) {\n      return \"--alignments --paired-end \" + list[0].path\n    } else {\n      return \"--alignments \" + list[0].path\n    }\n  }\n    \n    \n  if ($job.inputs.star && ext=='gz') {\n    var zip_pref = \"--star-gzipped-read-file \"\n  } else if ($job.inputs.star && ext=='bz2') {\n    var zip_pref = \"--star-bzipped-read-file \"\n  } else {\n    var zip_pref = \"\"\n  }\n  \n  var resp = []\n  \n  if (list.length == 1){\n    resp.push(list[0].path)\n    \n  }else if (list.length == 2){    \n    \n    left = \"\"\n    right = \"\"\n      \n    for (index = 0; index < list.length; ++index) {\n      \n      if (list[index].metadata != null){\n        if (list[index].metadata.paired_end == 1){\n          left = list[index].path\n        }else if (list[index].metadata.paired_end == 2){\n          right = list[index].path\n        }\n      }\n    } \n    \n    if (left != \"\" && right != \"\"){      \n      resp.push(left)\n      resp.push(right)\n    }\n  }\n  \n  if(resp.length == 1){\n    return zip_pref + resp[0]\n  } else if (resp.length == 2) {\n    return zip_pref + \"--paired-end \" + resp[0] + \" \" + resp[1]\n  } else {\n    return \"\"\n  }\n  }\n  \n}",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "sbg:fileTypes": "FASTA, FASTQ, FA, FQ, FASTQ.GZ, FQ.GZ, FASTQ.BZ2, FQ.BZ2, BAM, SAM, CRAM",
                        "label": "Read files",
                        "description": "List of files containing single-end or paired-end data. By default, these files are assumed to be in FASTQ format. If 'No qualities' option is set, FASTA format is expected. Also, 'paired-end' metadata field in the input files should be properly set on the platform('1' and '2' for paired end or ' - ' for single end).",
                        "type": [
                            "null",
                            {
                                "items": "File",
                                "type": "array"
                            }
                        ]
                    },
                    {
                        "id": "#paired_end_alignment",
                        "sbg:toolDefaultValue": "off",
                        "label": "Paired End Alignment",
                        "sbg:category": "Basic options",
                        "description": "Specify this option if you are supplying aligned BAM/SAM/CRAM file as input instead of FASTQ reads and your aligned file came from paired end data. For paired-end reads, RSEM also requires the two mates of any alignment to be adjacent.",
                        "type": [
                            "null",
                            "boolean"
                        ]
                    },
                    {
                        "id": "#no_qualities",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--no-qualities"
                        },
                        "sbg:toolDefaultValue": "off",
                        "label": "No qualities",
                        "sbg:category": "Basic options",
                        "description": "Input reads do not contain quality scores.",
                        "type": [
                            "null",
                            "boolean"
                        ]
                    },
                    {
                        "id": "#strand_specific",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--strand-specific"
                        },
                        "sbg:toolDefaultValue": "off",
                        "label": "Strand specific",
                        "sbg:category": "Basic options",
                        "description": "The RNA-Seq protocol used to generate the reads is strand specific, i.e. all (upstream) reads are derived from the forward strand. With this option set, if RSEM runs the Bowtie/Bowtie 2 aligner, the '--norc' Bowtie/Bowtie 2 option will be used, which disables alignment to the reverse strand of transcripts.",
                        "type": [
                            "null",
                            "boolean"
                        ]
                    },
                    {
                        "id": "#bowtie2",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "valueFrom": {
                                "script": "{ \n  var arr = [].concat($job.inputs.read_files)\n  var ext = arr[0].path.split('.').pop().toLowerCase()\n\n  if (ext=='bam' || ext=='sam' || ext=='cram') {\n    return \"\"\n  } else if ($job.inputs.bowtie2) {\n    return \"--bowtie2\"\n  }\n}",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "sbg:toolDefaultValue": "off",
                        "label": "Bowtie 2",
                        "sbg:category": "Basic options",
                        "description": "Use Bowtie 2 instead of Bowtie to align reads. Since currently RSEM does not handle indel, local and discordant alignments, the Bowtie2 parameters are set in a way to avoid those alignments.",
                        "type": [
                            "null",
                            "boolean"
                        ]
                    },
                    {
                        "id": "#star",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "valueFrom": {
                                "script": "{ \n  var arr = [].concat($job.inputs.read_files)\n  var ext = arr[0].path.split('.').pop().toLowerCase()\n\n  if (ext=='bam' || ext=='sam' || ext=='cram') {\n    return \"\"\n  } else if ($job.inputs.star) {\n    return \"--star\"\n  }\n}",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "sbg:toolDefaultValue": "off",
                        "label": "STAR",
                        "sbg:category": "Basic options",
                        "description": "Use STAR to align reads. Alignment parameters are from ENCODE3's STAR-RSEM pipeline. To save computational time and memory resources, STAR's Output BAM file is unsorted. It is stored in RSEM's temporary directory with the name as 'sample_name.bam'. Each STAR job will have its own private copy of the genome in memory.",
                        "type": [
                            "null",
                            "boolean"
                        ]
                    },
                    {
                        "id": "#append_names",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--append-names"
                        },
                        "sbg:toolDefaultValue": "off",
                        "label": "Append names",
                        "sbg:category": "Basic options",
                        "description": "If 'gene_name'/'transcript_name' is available, append it to the end of 'gene_id'/'transcript_id' (separated by '_') in files 'sample_name.isoforms.results' and 'sample_name.genes.results'.",
                        "type": [
                            "null",
                            "boolean"
                        ]
                    },
                    {
                        "id": "#no_bam_output",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--no-bam-output"
                        },
                        "sbg:toolDefaultValue": "off",
                        "label": "No BAM output",
                        "sbg:category": "Output options",
                        "description": "Do not output any BAM file.",
                        "type": [
                            "null",
                            "boolean"
                        ]
                    },
                    {
                        "id": "#output_genome_bam",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--output-genome-bam"
                        },
                        "sbg:toolDefaultValue": "off",
                        "label": "Output genome BAM",
                        "sbg:category": "Output options",
                        "description": "Generate a BAM file, 'sample_name.genome.bam', with alignments mapped to genomic coordinates and annotated with their posterior probabilities. In addition, RSEM will call samtools (included in RSEM package) to sort and index the bam file. 'sample_name.genome.sorted.bam' and 'sample_name.genome.sorted.bam.bai' will be generated.",
                        "type": [
                            "null",
                            "boolean"
                        ]
                    },
                    {
                        "id": "#sampling_for_bam",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--sampling-for-bam"
                        },
                        "sbg:toolDefaultValue": "off",
                        "label": "Sampling for BAM",
                        "sbg:category": "Output options",
                        "description": "When RSEM generates a BAM file, instead of outputing all alignments a read has with their posterior probabilities, one alignment is sampled according to the posterior probabilities. The sampling procedure includes the alignment to the \"noise\" transcript, which does not appear in the BAM file. Only the sampled alignment has a weight of 1. All other alignments have the weight of 0. If the \"noise\" transcript is sampled, all alignments appeared in the BAM file should have weight 0.",
                        "type": [
                            "null",
                            "boolean"
                        ]
                    },
                    {
                        "id": "#seed",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--seed"
                        },
                        "sbg:toolDefaultValue": "off",
                        "label": "Random number generator seed",
                        "sbg:category": "Basic options",
                        "description": "Set the seed for the random number generators used in calculating posterior mean estimates and credibility intervals. The seed must be a non-negative 32 bit interger.",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#single_cell_prior",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--single-cell-prior"
                        },
                        "sbg:toolDefaultValue": "off",
                        "label": "Single cell prior",
                        "sbg:category": "Basic options",
                        "description": "By default, RSEM uses Dirichlet(1) as the prior to calculate posterior mean estimates and credibility intervals. However, much less genes are expressed in single cell RNA-Seq data. Thus, if you want to compute posterior mean estimates and/or credibility intervals and you have single-cell RNA-Seq data, you are recommended to turn on this option. RSEM will then use Dirichlet(0.1) as the prior which encourage the sparsity of the expression levels.",
                        "type": [
                            "null",
                            "boolean"
                        ]
                    },
                    {
                        "id": "#calc_pme",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--calc-pme"
                        },
                        "sbg:toolDefaultValue": "off",
                        "label": "Calculate posterior mean estimates",
                        "sbg:category": "Basic options",
                        "description": "Dirichlet(0.1) as the prior which encourage the sparsity of the expression levels.",
                        "type": [
                            "null",
                            "boolean"
                        ]
                    },
                    {
                        "id": "#calc_ci",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--calc-ci"
                        },
                        "sbg:toolDefaultValue": "off",
                        "label": "Calculate credibility intervals",
                        "sbg:category": "Basic options",
                        "description": "Calculate 95% credibility intervals and posterior mean estimates. The credibility level can be changed in advanced options under 'CI credibility levels'.",
                        "type": [
                            "null",
                            "boolean"
                        ]
                    },
                    {
                        "id": "#fai",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--fai"
                        },
                        "sbg:fileTypes": "FAI",
                        "label": "SAM header info",
                        "description": "RSEM reads header information from the SAM input by default. If this input is supplied, header information is read from the specified file. For the format of the FAI file, please refer to the SAM official website.",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#seed_length",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "-seed-length"
                        },
                        "sbg:toolDefaultValue": "25",
                        "label": "Seed length",
                        "sbg:category": "Aligner options",
                        "description": "Seed length used by the read aligner.  Providing the correct value is important for RSEM. If RSEM runs Bowtie, it uses this value for Bowtie's seed length parameter. Any read with its or at least one of its mates' (for paired-end reads) length less than this value will be ignored. If the references are not added poly(A) tails, the minimum allowed value is 5, otherwise, the minimum allowed value is 25.",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#tag",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--tag"
                        },
                        "sbg:toolDefaultValue": "None",
                        "label": "Tag name",
                        "sbg:category": "Advanced options",
                        "description": "The name of the optional field used in the SAM input for identifying a read with too many valid alignments. The field should have the format <tagName>:i:<value>, where a <value> bigger than 0 indicates a read with too many alignments.",
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "id": "#bowtie_n",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--bowtie-n"
                        },
                        "sbg:toolDefaultValue": "2",
                        "label": "Bowtie N",
                        "sbg:category": "Aligner options",
                        "description": "Bowtie parameter. Maximum number of mismatches in the seed (Range: 0-3).",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#bowtie_e",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--bowtie-e"
                        },
                        "sbg:toolDefaultValue": "99999999",
                        "label": "Bowtie E",
                        "sbg:category": "Aligner options",
                        "description": "Bowtie parameter. Maximum sum of mismatch quality scores across the alignment.",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#bowtie_m",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--bowtie-m"
                        },
                        "sbg:toolDefaultValue": "200",
                        "label": "Bowtie M",
                        "sbg:category": "Aligner options",
                        "description": "Bowtie parameter. Suppress all alignments for a read if more than M valid alignments exist.",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#bowtie_chunkmbs",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--bowtie-chunkmbs"
                        },
                        "sbg:toolDefaultValue": "0",
                        "label": "Bowtie chunk MBs",
                        "sbg:category": "Aligner options",
                        "description": "Bowtie parameter. Memory allocated for best first alignment calculation.",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#phred33_quals",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--phred33-quals"
                        },
                        "sbg:toolDefaultValue": "on",
                        "label": "Phred+33 qualities",
                        "sbg:category": "Aligner options",
                        "description": "Input quality scores are encoded as Phred+33.",
                        "type": [
                            "null",
                            "boolean"
                        ]
                    },
                    {
                        "id": "#phred64_quals",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--phred64-quals"
                        },
                        "sbg:toolDefaultValue": "off",
                        "label": "Phred+64 qualities",
                        "sbg:category": "Aligner options",
                        "description": "Input quality scores are encoded as Phred+64.",
                        "type": [
                            "null",
                            "boolean"
                        ]
                    },
                    {
                        "id": "#solexa_quals",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--solexa-quals"
                        },
                        "sbg:toolDefaultValue": "off",
                        "label": "Solexa qualities",
                        "sbg:category": "Aligner options",
                        "description": "Input quality scores are solexa encoded.",
                        "type": [
                            "null",
                            "boolean"
                        ]
                    },
                    {
                        "id": "#bowtie2_mismatch_rate",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--bowtie2-mismatch-rate"
                        },
                        "sbg:toolDefaultValue": "0.1",
                        "label": "Bowtie 2 mismatch rate",
                        "sbg:category": "Aligner options",
                        "description": "Bowtie 2 parameter. Maximum mismatch rate allowed.",
                        "type": [
                            "null",
                            "float"
                        ]
                    },
                    {
                        "id": "#bowtie2_k",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--bowtie2-k"
                        },
                        "sbg:toolDefaultValue": "200",
                        "label": "Bowtie 2 K",
                        "sbg:category": "Aligner options",
                        "description": "Bowtie 2 parameter. Find up to K alignments per read.",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#bowtie2_sensitivity_level",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--bowtie2-sensitivity-level"
                        },
                        "sbg:toolDefaultValue": "\"sensitive\"",
                        "label": "Bowtie 2 sensitivity level",
                        "sbg:category": "Aligner options",
                        "description": "Bowtie 2 parameter. Set Bowtie 2's preset options in 'end-to-end' mode. This option controls how hard Bowtie 2 tries to find alignments. The input string must be one of \"very_fast\", \"fast\", \"sensitive\" and \"very_sensitive\".",
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "id": "#star_output_genome_bam",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--star-output-genome-bam"
                        },
                        "sbg:toolDefaultValue": "off",
                        "label": "Output STAR genome BAM",
                        "sbg:category": "Aligner options",
                        "description": "(STAR parameter) Save the BAM file from STAR alignment under genomic coordinate to 'sample_name.STAR.genome.bam'. This file is NOT sorted by genomic coordinate. In this file, according to STAR's manual, 'paired ends of an alignment are always adjacent, and multiple alignments of a read are adjacent as well'.",
                        "type": [
                            "null",
                            "boolean"
                        ]
                    },
                    {
                        "id": "#sort_bam_by_read_name",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--sort-bam-by-read-name"
                        },
                        "sbg:toolDefaultValue": "off",
                        "label": "Sort BAM by read name",
                        "sbg:category": "Output options",
                        "description": "Sort BAM file aligned under transcript coordidate by read name. Setting this option on will produce determinstic maximum likelihood estimations from independet runs. Note that sorting will take long time and lots of memory.",
                        "type": [
                            "null",
                            "boolean"
                        ]
                    },
                    {
                        "id": "#forward_prob",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--forward-prob"
                        },
                        "sbg:toolDefaultValue": "0.5",
                        "label": "Forward probability",
                        "sbg:category": "Advanced options",
                        "description": "Probability of generating a read from the forward strand of a transcript. Set to 1 for a strand-specific protocol where all (upstream) reads are derived from the forward strand, 0 for a strand-specific protocol where all (upstream) read are derived from the reverse strand, or 0.5 for a non-strand-specific protocol.",
                        "type": [
                            "null",
                            "float"
                        ]
                    },
                    {
                        "id": "#fragment_length_min",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--fragment-length-min"
                        },
                        "sbg:toolDefaultValue": "1",
                        "label": "Minimum fragment length",
                        "sbg:category": "Advanced options",
                        "description": "Minimum read/insert length allowed. This is also the value for the Bowtie/Bowtie2 -I option.",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#fragment_length_max",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--fragment-length-max"
                        },
                        "sbg:toolDefaultValue": "1000",
                        "label": "Maximum fragment length",
                        "sbg:category": "Advanced options",
                        "description": "Maximum read/insert length allowed. This is also the value for the Bowtie/Bowtie 2 -X option.",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#fragment_length_mean",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--fragment-length-mean"
                        },
                        "sbg:toolDefaultValue": "-1, which disables use of the fragment length distribution",
                        "label": "Mean fragment length",
                        "sbg:category": "Advanced options",
                        "description": "For single-end data only. The mean of the fragment length distribution, which is assumed to be a Gaussian.",
                        "type": [
                            "null",
                            "float"
                        ]
                    },
                    {
                        "id": "#fragment_length_sd",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--fragment-length-sd"
                        },
                        "sbg:toolDefaultValue": "0, which assumes that all fragments are of the same length,            given by the rounded value of 'Mean fragment length'",
                        "label": "Fragment length standard deviation",
                        "sbg:category": "Advanced options",
                        "description": "For single-end data only. The standard deviation of the fragment length distribution, which is assumed to be a Gaussian.",
                        "type": [
                            "null",
                            "float"
                        ]
                    },
                    {
                        "id": "#estimate_rspd",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--estimate-rspd"
                        },
                        "sbg:toolDefaultValue": "off",
                        "label": "Estimate RSPD",
                        "sbg:category": "Advanced options",
                        "description": "Set this option if you want to estimate the read start position distribution (RSPD) from data. Otherwise, RSEM will use a uniform RSPD.",
                        "type": [
                            "null",
                            "boolean"
                        ]
                    },
                    {
                        "id": "#num_rspd_bins",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--num-rspd-bins"
                        },
                        "sbg:toolDefaultValue": "20",
                        "label": "Number of bins in the RSPD",
                        "sbg:category": "Advanced options",
                        "description": "Only relevant when '-Estimate RSPD' option is specified.  Use of the default setting is recommended.",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#gibbs_burnin",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--gibbs-burnin"
                        },
                        "sbg:toolDefaultValue": "200",
                        "label": "Gibbs burn-in",
                        "sbg:category": "Advanced options",
                        "description": "The number of burn-in rounds for RSEM's Gibbs sampler. Each round passes over the entire data set once. If RSEM can use multiple threads, multiple Gibbs samplers will start at the same time and all samplers share the same burn-in number.",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#gibbs_number_of_samples",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--gibbs-number-of-samples"
                        },
                        "sbg:toolDefaultValue": "1000",
                        "label": "Gibbs number of samples",
                        "sbg:category": "Advanced options",
                        "description": "The total number of count vectors RSEM will collect from its Gibbs samplers.",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#gibbs_sampling_gap",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--gibbs-sampling-gap"
                        },
                        "sbg:toolDefaultValue": "1",
                        "label": "Gibbs sampling gap",
                        "sbg:category": "Advanced options",
                        "description": "The number of rounds between two succinct count vectors RSEM collects. If the count vector after round N is collected, the count vector after round N + <inputed_integer> will also be collected.",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#ci_credibility_level",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--ci-credibility-level"
                        },
                        "sbg:toolDefaultValue": "0.95",
                        "label": "Credibility intervals credibility level",
                        "sbg:category": "Advanced options",
                        "description": "The credibility level for credibility intervals.",
                        "type": [
                            "null",
                            "float"
                        ]
                    },
                    {
                        "id": "#ci_memory",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--ci-memory"
                        },
                        "sbg:toolDefaultValue": "1024",
                        "label": "Credibility intervals memory",
                        "sbg:category": "Advanced options",
                        "description": "Maximum size (in memory, MB) of the auxiliary buffer used for computing credibility intervals (CI).",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#ci_number_of_samples_per_count_vector",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--ci-number-of-samples-per-count-vector"
                        },
                        "sbg:toolDefaultValue": "50",
                        "label": "Credibility intervals number of samples per count vector",
                        "sbg:category": "Advanced options",
                        "description": "The number of read generating probability vectors sampled per sampled count vector. The crebility intervals are calculated by first sampling P(C|D) and then sampling P(Theta|C) for each sampled count vector. This option controls how many Theta vectors are sampled per sampled count vector.",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#keep_intermediate_files",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--keep-intermediate-files"
                        },
                        "sbg:toolDefaultValue": "off",
                        "label": "Keep temporary files generated by RSEM",
                        "sbg:category": "Advanced options",
                        "description": "RSEM creates a temporary directory, 'sample_name.temp', into which it puts all intermediate output files. If this directory already exists, RSEM overwrites all files generated by previous RSEM runs inside of it. By default, after RSEM finishes, the temporary directory is deleted.  Set this option to prevent the deletion of this directory and the intermediate files inside of it.",
                        "type": [
                            "null",
                            "boolean"
                        ]
                    },
                    {
                        "id": "#time",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--time"
                        },
                        "sbg:toolDefaultValue": "off",
                        "label": "Time",
                        "sbg:category": "Advanced options",
                        "description": "Output time consumed by each step of RSEM to 'sample_name.time'.",
                        "type": [
                            "null",
                            "boolean"
                        ]
                    },
                    {
                        "id": "#sort_bam_by_coordinate",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "prefix": "--sort-bam-by-coordinate"
                        },
                        "sbg:toolDefaultValue": "off",
                        "label": "Sort BAM by coordinate",
                        "sbg:category": "Output options",
                        "description": "Sort RSEM generated transcript and genome BAM files by coordinates and build associated indices.",
                        "type": [
                            "null",
                            "boolean"
                        ]
                    }
                ],
                "sbg:createdOn": 1465981927,
                "outputs": [
                    {
                        "id": "#rsem_calculate_expression_archive",
                        "sbg:fileTypes": "TAR",
                        "label": "Archive of all files outputed by 'RSEM Calculate Expression'",
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#read_files",
                            "sbg:metadata": {
                                "sample_name": {
                                    "script": "{\n  function sharedStart(array){\n  var A= array.concat().sort(), \n      a1= A[0], a2= A[A.length-1], L= a1.length, i= 0;\n  while(i<L && a1.charAt(i)=== a2.charAt(i)) i++;\n  return a1.substring(0, i);\n  }\n  \n  var arr = [].concat($job.inputs.read_files)\n  var ext = arr[0].path.split('.').pop().toLowerCase()\n  \n  if (arr[0].metadata && arr[0].metadata.sample_id) {\n    return arr[0].metadata.sample_id\n  } else {\n  \n  if (ext=='bam' || ext=='sam' || ext=='cram') {\n    return arr[0].path.split(\"/\").pop().split(\".\")[0]\n  } else {\n    \n  if (arr.length==1) {\n    return arr[0].path.split('/').pop().split('.')[0]\n  } else {\n    path_list = []\n    arr.forEach(function(f){return path_list.push(f.path.replace(/\\\\/g,'/').replace( /.*\\//, '' ))})\n    common_prefix = sharedStart(path_list)\n    return common_prefix.replace( /\\-$|\\_$|\\.$/, '' )\n  }\n  }\n  }\n}",
                                    "class": "Expression",
                                    "engine": "#cwl-js-engine"
                                }
                            },
                            "glob": "rsem_calculate_expression_archive*"
                        },
                        "description": "Bundle of files outputed by 'RSEM Calculate Expression', to be used by other tools in the RSEM toolkit.",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#read_files",
                            "glob": "*.isoforms.results"
                        },
                        "label": "Isoform level expression estimates",
                        "id": "#sample_name_isoforms_results",
                        "description": "File containing isoform level expression estimates.",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#read_files",
                            "glob": "*.genes.results"
                        },
                        "label": "Gene level expression estimates",
                        "id": "#sample_name_genes_results",
                        "description": "File containing gene level expression estimates.",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#read_files",
                            "glob": "*.alleles.results"
                        },
                        "label": "Allele level expression estimates",
                        "id": "#sample_name_alleles_results",
                        "description": "File containing gene level expression estimates. This file contains allele level expression estimates for allele-specific expression calculation.",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#sample_name_transcript_bam",
                        "sbg:fileTypes": "BAM",
                        "label": "BAM in transcript coordinates",
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#read_files",
                            "sbg:metadata": {
                                "reference_genome": {
                                    "script": "[].concat($job.inputs.rsem_prepare_reference_archive)[0].metadata.reference_name",
                                    "class": "Expression",
                                    "engine": "#cwl-js-engine"
                                }
                            },
                            "glob": {
                                "script": "{\n  if ($job.inputs.sort_bam_by_coordinate) {\n    return \"*.transcript.sorted.bam\" \n  } else {\n    return \"*.transcript.bam\"\n  }\n}",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            },
                            "secondaryFiles": [
                                ".bai"
                            ]
                        },
                        "description": "BAM file in transcript coordinates. By default this file is unsorted, but it can be sorted if the parameter \"Sort BAM by coordinate' is turned on.",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "id": "#star_log_files",
                        "sbg:fileTypes": "OUT",
                        "label": "STAR log files",
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#read_files",
                            "glob": "*.temp/*Log*.out"
                        },
                        "description": "Log files produced during STAR alignment. STAR log files are outputted only if 'STAR' option is set and 'Keep Intermediate Files' option is set. These logs are useful for further downstream analysis with tools such as MultiQC.",
                        "type": [
                            "null",
                            {
                                "items": "File",
                                "name": "star_log_files",
                                "type": "array"
                            }
                        ]
                    },
                    {
                        "id": "#sample_name_genome_bam",
                        "sbg:fileTypes": "BAM",
                        "label": "BAM in genome coordinates",
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#read_files",
                            "sbg:metadata": {
                                "reference_genome": {
                                    "script": "[].concat($job.inputs.rsem_prepare_reference_archive)[0].metadata.reference_name",
                                    "class": "Expression",
                                    "engine": "#cwl-js-engine"
                                }
                            },
                            "glob": {
                                "script": "{\n  if ($job.inputs.sort_bam_by_coordinate) {\n    return \"*.genome.sorted.bam\" \n  } else {\n    return \"*.genome.bam\"\n  }\n}",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            },
                            "secondaryFiles": [
                                ".bai"
                            ]
                        },
                        "description": "BAM file in genome coordinates. By default this file is unsorted, but it can be sorted if the parameter \"Sort BAM by coordinate' is turned on.",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "hints": [
                    {
                        "class": "sbg:MemRequirement",
                        "value": {
                            "script": "$job.inputs.star==true ? 60000 : 30000",
                            "class": "Expression",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "dockerPull": "images.sbgenomics.com/uros_sipetic/rsem:1.2.31",
                        "class": "DockerRequirement",
                        "dockerImageId": "67d3a6c01e92210f43c8ef809c2a245a75bf7d5a52762823cdc3b2e784de576c"
                    },
                    {
                        "class": "sbg:CPURequirement",
                        "value": {
                            "script": "$job.inputs.star==true ? 32 : 16",
                            "class": "Expression",
                            "engine": "#cwl-js-engine"
                        }
                    }
                ],
                "sbg:createdBy": "uros_sipetic",
                "sbg:categories": [
                    "RNA",
                    "Alignment"
                ],
                "sbg:toolkitVersion": "1.2.31",
                "temporaryFailCodes": [],
                "description": "RSEM Calculate Expression aligns input reads against a reference transcriptome with a specified aligner and calculates expression values using the alignments. It is based on the Expectation-Maximization algorithm for quantifying abundances of the transcripts from single-end or paired-end RNA-Seq data. It fractionally assigns reads (also correctly handles multi-reads) mapped to a transcriptome for estimation of isoform expression levels; these are later further used to estimate gene expression levels. This tool does not require a reference genome and is therefore of particular interest for studying species without sequenced genomes.\n\nThe aligners that RSEM can internally call are Bowtie 1.1.2, Bowtie2 2.2.6 and STAR 2.5.1b. \n\n###Common issues###\n\n1. Users must run 'rsem-prepare-reference' with the appropriate reference before using this program.\n\n2. For single-end data, it is strongly recommended that the user provide the fragment length distribution parameters (--fragment-length-mean and --fragment-length-sd).  For paired-end data, RSEM will automatically learn a fragment length distribution from the data.\n\n3. Some aligner parameters have default values different from their original settings.\n\n4. With the '--calc-pme' option, posterior mean estimates will be calculated in addition to maximum likelihood estimates.\n\n5. With the '--calc-ci' option, 95% credibility intervals and posterior mean estimates will be calculated in addition to maximum likelihood estimates.\n\n6. The temporary directory and all intermediate files will be removed when RSEM finishes unless '--keep-intermediate-files' is specified.\n\n7. If \"STAR\" parameter is set, a larger instance will be required by the tool. \n\n8. In case of paired-end alignment it is crucial to set metadata 'paired-end' field to 1/2.\n\n9. Files in multi-FASTQ format are currently not supported, i.e. if you have single-end reads that span multiple FASTQ files, or paired-end reads that span more than 2 files, please use a tool like SBG Merge FASTQs before providing your files to RSEM Calculate Expression.",
                "sbg:latestRevision": 25,
                "arguments": [
                    {
                        "separate": true,
                        "prefix": "",
                        "position": 99,
                        "valueFrom": {
                            "script": "[].concat($job.inputs.rsem_prepare_reference_archive)[0].metadata.reference_name",
                            "class": "Expression",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "separate": true,
                        "prefix": "--sort-bam-memory-per-thread",
                        "position": 0,
                        "valueFrom": "1500M"
                    },
                    {
                        "separate": true,
                        "prefix": "--num-threads",
                        "position": 0,
                        "valueFrom": {
                            "script": "$job.inputs.star==true ? 32 : 16",
                            "class": "Expression",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "separate": true,
                        "position": 156,
                        "valueFrom": {
                            "script": "{\n  function sharedStart(array){\n  var A= array.concat().sort(), \n      a1= A[0], a2= A[A.length-1], L= a1.length, i= 0;\n  while(i<L && a1.charAt(i)=== a2.charAt(i)) i++;\n  return a1.substring(0, i);\n  }\n  \n  \n  var arr = [].concat($job.inputs.read_files)\n  var ext = arr[0].path.split('.').pop().toLowerCase()\n  var cmd = \"\"\n  \n  if (arr[0].metadata && arr[0].metadata.sample_id) {\n    var x = arr[0].metadata.sample_id\n    cmd = \"&& ls | grep ^\" + x + \". | tar cf rsem_calculate_expression_archive.\" + x + \".tar -T - \"\n    return cmd\n  }\n  \n  if (ext=='bam' || ext=='sam' || ext=='cram') {\n    var x =  arr[0].path.split(\"/\").pop().split(\".\")[0]\n    cmd = \"&& ls | grep ^\" + x + \". | tar cf rsem_calculate_expression_archive.\" + x + \".tar -T - \"\n    return cmd\n  } else {\n  \n    if (arr.length==1) {\n      common_prefix = arr[0].path.split('/').pop().split('.')[0]\n    } else {\n      path_list = []\n      arr.forEach(function(f){return path_list.push(f.path.replace(/\\\\/g,'/').replace( /.*\\//, '' ))})\n      common_prefix = sharedStart(path_list)\n    }\n    var x = common_prefix.replace( /\\-$|\\_$|\\.$/, '' )\n    cmd = \"&& ls | grep ^\" + x + \". | tar cf rsem_calculate_expression_archive.\" + x + \".tar -T - \"\n    return cmd\n  }\n   \n}",
                            "class": "Expression",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "separate": true,
                        "position": 100,
                        "valueFrom": {
                            "script": "{\n  function sharedStart(array){\n  var A= array.concat().sort(), \n      a1= A[0], a2= A[A.length-1], L= a1.length, i= 0;\n  while(i<L && a1.charAt(i)=== a2.charAt(i)) i++;\n  return a1.substring(0, i);\n  }\n  \n  var arr = [].concat($job.inputs.read_files)\n  var ext = arr[0].path.split('.').pop().toLowerCase()\n  \n  if (arr[0].metadata && arr[0].metadata.sample_id) {\n    return arr[0].metadata.sample_id\n  } else {\n  \n  if (ext=='bam' || ext=='sam' || ext=='cram') {\n    return arr[0].path.split(\"/\").pop().split(\".\")[0]\n  } else {\n    \n  if (arr.length==1) {\n    return arr[0].path.split('/').pop().split('.')[0]\n  } else {\n    path_list = []\n    arr.forEach(function(f){return path_list.push(f.path.replace(/\\\\/g,'/').replace( /.*\\//, '' ))})\n    common_prefix = sharedStart(path_list)\n    return common_prefix.replace( /\\-$|\\_$|\\.$/, '' )\n  }\n  }\n  }\n}",
                            "class": "Expression",
                            "engine": "#cwl-js-engine"
                        }
                    }
                ],
                "sbg:revision": 25,
                "sbg:id": "admin/sbg-public-data/rsem-calculate-expression-1-2-31/25",
                "sbg:image_url": null,
                "sbg:project": "uros_sipetic/rsem-1-2-31-demo",
                "sbg:revisionNotes": "Update RSEM archive grep expression to work properly when paired end samples have different basename from their sample_id metadata.",
                "sbg:job": {
                    "allocatedResources": {
                        "mem": 60000,
                        "cpu": 32
                    },
                    "inputs": {
                        "sort_bam_by_read_name": false,
                        "fragment_length_mean": null,
                        "seed_length": null,
                        "keep_intermediate_files": false,
                        "paired_end_alignment": false,
                        "bowtie_n": null,
                        "bowtie2_k": null,
                        "gibbs_burnin": null,
                        "ci_number_of_samples_per_count_vector": null,
                        "bowtie_e": null,
                        "no_qualities": false,
                        "output_genome_bam": false,
                        "fragment_length_sd": null,
                        "calc_pme": false,
                        "bowtie_chunkmbs": null,
                        "ci_credibility_level": null,
                        "phred33_quals": false,
                        "time": false,
                        "tag": "",
                        "forward_prob": null,
                        "sampling_for_bam": false,
                        "calc_ci": false,
                        "ci_memory": null,
                        "read_files": [
                            {
                                "class": "File",
                                "metadata": {
                                    "paired_end": "1",
                                    "sample_id": "AAA"
                                },
                                "size": 0,
                                "path": "/path/to/sr3312smk_1.fastq_pe1.bz2",
                                "secondaryFiles": []
                            },
                            {
                                "class": "File",
                                "metadata": {
                                    "paired_end": "2",
                                    "sample_id": "AAA"
                                },
                                "size": 0,
                                "path": "/path/to/sr3312smk_1.fastq_pe2.bz2",
                                "secondaryFiles": []
                            }
                        ],
                        "strand_specific": false,
                        "solexa_quals": false,
                        "bowtie2_mismatch_rate": null,
                        "single_cell_prior": false,
                        "seed": null,
                        "star_output_genome_bam": false,
                        "gibbs_sampling_gap": null,
                        "gibbs_number_of_samples": null,
                        "num_rspd_bins": null,
                        "sort_bam_by_coordinate": true,
                        "fragment_length_min": null,
                        "fragment_length_max": null,
                        "bowtie2_sensitivity_level": "",
                        "phred64_quals": false,
                        "star": true,
                        "bowtie_m": null,
                        "estimate_rspd": false,
                        "bowtie2": false,
                        "rsem_prepare_reference_archive": {
                            "class": "File",
                            "metadata": {
                                "reference_name": "hg19.human"
                            },
                            "size": 0,
                            "path": "/path/to/hg19.human_prepare_reference_archive.tar.gz",
                            "secondaryFiles": []
                        },
                        "append_names": false,
                        "no_bam_output": false
                    }
                },
                "sbg:projectName": "RSEM 1.2.31 - Demo",
                "successCodes": [],
                "sbg:appVersion": [
                    "sbg:draft-2"
                ]
            },
            "inputs": [
                {
                    "id": "#RSEM_Calculate_Expression.rsem_prepare_reference_archive",
                    "source": [
                        "#RSEM_Prepare_Reference.rsem_prepare_reference_archive"
                    ]
                },
                {
                    "id": "#RSEM_Calculate_Expression.read_files",
                    "source": [
                        "#read_files"
                    ]
                },
                {
                    "id": "#RSEM_Calculate_Expression.paired_end_alignment",
                    "source": [
                        "#paired_end_alignment"
                    ]
                },
                {
                    "id": "#RSEM_Calculate_Expression.no_qualities"
                },
                {
                    "id": "#RSEM_Calculate_Expression.strand_specific"
                },
                {
                    "id": "#RSEM_Calculate_Expression.bowtie2"
                },
                {
                    "id": "#RSEM_Calculate_Expression.star",
                    "source": [
                        "#star_1"
                    ]
                },
                {
                    "id": "#RSEM_Calculate_Expression.append_names"
                },
                {
                    "id": "#RSEM_Calculate_Expression.no_bam_output"
                },
                {
                    "id": "#RSEM_Calculate_Expression.output_genome_bam",
                    "source": [
                        "#output_genome_bam"
                    ]
                },
                {
                    "id": "#RSEM_Calculate_Expression.sampling_for_bam"
                },
                {
                    "id": "#RSEM_Calculate_Expression.seed"
                },
                {
                    "id": "#RSEM_Calculate_Expression.single_cell_prior"
                },
                {
                    "id": "#RSEM_Calculate_Expression.calc_pme"
                },
                {
                    "id": "#RSEM_Calculate_Expression.calc_ci",
                    "source": [
                        "#calc_ci"
                    ]
                },
                {
                    "id": "#RSEM_Calculate_Expression.fai"
                },
                {
                    "id": "#RSEM_Calculate_Expression.seed_length"
                },
                {
                    "id": "#RSEM_Calculate_Expression.tag"
                },
                {
                    "id": "#RSEM_Calculate_Expression.bowtie_n"
                },
                {
                    "id": "#RSEM_Calculate_Expression.bowtie_e"
                },
                {
                    "id": "#RSEM_Calculate_Expression.bowtie_m"
                },
                {
                    "id": "#RSEM_Calculate_Expression.bowtie_chunkmbs"
                },
                {
                    "id": "#RSEM_Calculate_Expression.phred33_quals"
                },
                {
                    "id": "#RSEM_Calculate_Expression.phred64_quals"
                },
                {
                    "id": "#RSEM_Calculate_Expression.solexa_quals"
                },
                {
                    "id": "#RSEM_Calculate_Expression.bowtie2_mismatch_rate"
                },
                {
                    "id": "#RSEM_Calculate_Expression.bowtie2_k"
                },
                {
                    "id": "#RSEM_Calculate_Expression.bowtie2_sensitivity_level"
                },
                {
                    "id": "#RSEM_Calculate_Expression.star_output_genome_bam"
                },
                {
                    "id": "#RSEM_Calculate_Expression.sort_bam_by_read_name"
                },
                {
                    "id": "#RSEM_Calculate_Expression.forward_prob"
                },
                {
                    "id": "#RSEM_Calculate_Expression.fragment_length_min"
                },
                {
                    "id": "#RSEM_Calculate_Expression.fragment_length_max"
                },
                {
                    "id": "#RSEM_Calculate_Expression.fragment_length_mean"
                },
                {
                    "id": "#RSEM_Calculate_Expression.fragment_length_sd"
                },
                {
                    "id": "#RSEM_Calculate_Expression.estimate_rspd"
                },
                {
                    "id": "#RSEM_Calculate_Expression.num_rspd_bins"
                },
                {
                    "id": "#RSEM_Calculate_Expression.gibbs_burnin"
                },
                {
                    "id": "#RSEM_Calculate_Expression.gibbs_number_of_samples"
                },
                {
                    "id": "#RSEM_Calculate_Expression.gibbs_sampling_gap"
                },
                {
                    "id": "#RSEM_Calculate_Expression.ci_credibility_level"
                },
                {
                    "id": "#RSEM_Calculate_Expression.ci_memory"
                },
                {
                    "id": "#RSEM_Calculate_Expression.ci_number_of_samples_per_count_vector"
                },
                {
                    "id": "#RSEM_Calculate_Expression.keep_intermediate_files"
                },
                {
                    "id": "#RSEM_Calculate_Expression.time"
                },
                {
                    "id": "#RSEM_Calculate_Expression.sort_bam_by_coordinate",
                    "source": [
                        "#sort_bam_by_coordinate"
                    ]
                }
            ],
            "sbg:y": 343.8265093635111
        }
    ],
    "sbg:contributors": [
        "bixqa"
    ],
    "sbg:createdBy": "bixqa",
    "sbg:license": "GNU General Public License v3.0 only",
    "sbg:sbgMaintained": false,
    "sbg:links": [
        {
            "label": "RSEM Homepage",
            "id": "http://deweylab.github.io/RSEM/"
        },
        {
            "label": "RSEM Source Code",
            "id": "https://github.com/deweylab/RSEM"
        },
        {
            "label": "RSEM Download",
            "id": "https://github.com/deweylab/RSEM/archive/v1.2.31.tar.gz"
        },
        {
            "label": "RSEM Publications",
            "id": "https://bmcbioinformatics.biomedcentral.com/articles/10.1186/1471-2105-12-323"
        },
        {
            "label": "RSEM Documentation",
            "id": "http://deweylab.github.io/RSEM/README.html"
        }
    ],
    "label": "RSEM 1.2.31 Workflow With Star Aligner",
    "cwlVersion": "sbg:draft-2",
    "inputs": [
        {
            "id": "#reference_fasta_file",
            "sbg:x": 426.00001615636495,
            "sbg:fileTypes": "FASTA,FA,TAR",
            "label": "Reference FASTA File or Index TAR Bundle",
            "sbg:y": 323.35294835707725,
            "sbg:suggestedValue": [
                {
                    "class": "File",
                    "path": "5817245d507c170f70060aee",
                    "name": "human_g1k_v37_decoy.phiX174_Homo_sapiens.GRCh37.75_rsem-1.2.31.star.tar"
                }
            ],
            "type": [
                {
                    "items": "File",
                    "name": "reference_fasta_file",
                    "type": "array"
                }
            ]
        },
        {
            "id": "#gtf",
            "sbg:x": 425.000011920929,
            "sbg:fileTypes": "GTF",
            "label": "Annotation GTF",
            "sbg:y": 479.8235429034514,
            "sbg:suggestedValue": {
                "class": "File",
                "path": "5772b6c4507c1752674486cd",
                "name": "Homo_sapiens.GRCh37.75.gtf"
            },
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#read_files",
            "sbg:x": 703,
            "sbg:fileTypes": "FASTA, FASTQ, FA, FQ, FASTQ.GZ, FQ.GZ, FASTQ.BZ2, FQ.BZ2",
            "label": "Input Read Files",
            "type": [
                "null",
                {
                    "items": "File",
                    "type": "array"
                }
            ],
            "sbg:y": 476
        },
        {
            "id": "#star",
            "sbg:toolDefaultValue": "off",
            "label": "STAR",
            "type": [
                "null",
                "boolean"
            ],
            "description": "Build STAR indices. To properly build STAR indices, you should also supply a GTF file or a transcript to gene map to their proper inputs.",
            "sbg:suggestedValue": true,
            "sbg:category": "Options"
        },
        {
            "id": "#paired_end_alignment",
            "sbg:toolDefaultValue": "off",
            "label": "Paired End Alignment",
            "sbg:category": "Basic options",
            "description": "Specify this option if you are supplying aligned BAM/SAM/CRAM file as input instead of FASTQ reads and your aligned file came from paired end data. For paired-end reads, RSEM also requires the two mates of any alignment to be adjacent.",
            "type": [
                "null",
                "boolean"
            ]
        },
        {
            "id": "#output_genome_bam",
            "sbg:toolDefaultValue": "off",
            "label": "Output genome BAM",
            "type": [
                "null",
                "boolean"
            ],
            "description": "Generate a BAM file, 'sample_name.genome.bam', with alignments mapped to genomic coordinates and annotated with their posterior probabilities. In addition, RSEM will call samtools (included in RSEM package) to sort and index the bam file. 'sample_name.genome.sorted.bam' and 'sample_name.genome.sorted.bam.bai' will be generated.",
            "sbg:suggestedValue": true,
            "sbg:category": "Output options"
        },
        {
            "id": "#calc_ci",
            "sbg:toolDefaultValue": "off",
            "label": "Calculate credibility intervals",
            "type": [
                "null",
                "boolean"
            ],
            "description": "Calculate 95% credibility intervals and posterior mean estimates. The credibility level can be changed in advanced options under 'CI credibility levels'.",
            "sbg:suggestedValue": true,
            "sbg:category": "Basic options"
        },
        {
            "id": "#sort_bam_by_coordinate",
            "sbg:toolDefaultValue": "off",
            "label": "Sort BAM by coordinate",
            "type": [
                "null",
                "boolean"
            ],
            "description": "Sort RSEM generated transcript and genome BAM files by coordinates and build associated indices.",
            "sbg:suggestedValue": true,
            "sbg:category": "Output options"
        },
        {
            "id": "#star_1",
            "sbg:toolDefaultValue": "off",
            "label": "STAR",
            "type": [
                "null",
                "boolean"
            ],
            "description": "Use STAR to align reads. Alignment parameters are from ENCODE3's STAR-RSEM pipeline. To save computational time and memory resources, STAR's Output BAM file is unsorted. It is stored in RSEM's temporary directory with the name as 'sample_name.bam'. Each STAR job will have its own private copy of the genome in memory.",
            "sbg:suggestedValue": true,
            "sbg:category": "Basic options"
        }
    ],
    "sbg:createdOn": 1501518691,
    "requirements": [],
    "hints": [
      {
          "class": "sbg:GoogleInstanceType",
          "value": "n1-standard-32;pd-ssd;4096"
      },
      {
          "class": "sbg:AWSInstanceType",
          "value": "c4.8xlarge;ebs-gp2;700"
      }
    ],
    "sbg:id": "bixqa/qa-load-2017-07-31-18/rsem-1-2-31-workflow-with-star-aligner/8",
    "sbg:categories": [
        "RNA",
        "Quantification"
    ],
    "sbg:toolkitVersion": "1.2.31",
    "description": "This RSEM workflow for quantifying gene expression is based on the STAR aligner. The parameters have been set so that indices are built and alignment is done using STAR. Therefore, this workflow is optimized to work with FASTQ input files. \nAligned files in BAM/SAM/CRAM format can also be supplied, in which case alignment will not be performed and only the quantification process will be run (Expectation Maximization algorithm), but please note that in this case the input BAM/SAM/CRAM needs to be formatted properly for RSEM to work (RSEM does not accept gapped alignment currently - more info on this can be found in the tool description or in the RSEM documentation). \n\n###Required inputs\nThis workflow has **two** required inputs:\n\n1. Input Read Files (ID: **read_files**) - Read files in FASTQ or BAM/SAM/CRAM formats. If FASTQ reads are provided, RSEM accepts one fastq file per sample for single-end data, or two files per sample for paired-end data. **NOTE**:  For paired-end reads it is crucial to set the metadata 'paired-end' field as 1 for one input file and as 2 for the other input file. \n\n2. Reference FASTA file (ID: **reference\\_fasta\\_file**) - reference sequence to which to align the reads.\n\n###Optional input:\nGene annotation file (ID: **gtf**) - a GTF file representing gene annotations. This input can optionally be collected from splice junction databases. Usually, when STAR is selected for an RSEM run, it is recommended to provide a GTF file as well. \n\n###Outputs\nThis workflow generates **five** output files:\n\n1. Isoforms results (ID: **sample\\_name\\_isoforms\\_results**) - File containing isoform level expression estimates.\n\n2. Genes results (ID: **sample\\_name\\_genes\\_results**) - File containing gene level expression estimates.\n\n3. Genome BAM (ID: **sample\\_name\\_genome\\_bam**) - BAM file in genome coordinates.\n\n4. Transcript BAM (ID: **sample\\_name\\_transcript\\_bam**) - BAM file in transcript coordinates.\n\n5. RSEM Plot Model PDF file (ID: **output_file**) - Visualization of the model learned. The plots generated depends on read type and user configuration. It may include fragment length distribution, mate length distribution, read start position distribution (RSPD), quality score vs observed quality given a reference base, position vs percentage of sequencing error given a reference base and histogram of reads with different number of alignments.\n\n\nIf you wish to speed up the execution of the whole process, the following parameters can be turned off:\n\n- \"Output genome BAM\"\n- \"Sort BAM by coordinate\"\n- \"Calculate credibility intervals\"\n\n###Common issues###\n1. For paired-end alignments it is crucial to set the metadata 'paired-end' field as 1 and 2 respectively for the two input fastq files, otherwise the task will fail.\n\n2. If you are using aligned BAM files as inputs, they need to be properly formatted in order for RSEM to work, as it currently does not accept gapped alignment. More info on this can be found in the RSEM manual. \n\n3. The options that are most often used in a standard RSEM pipeline run have been exposed, so please check through those first and see if they meet your RSEM needs before changing any of the other parameters.\n\n4. It is recommended to provide a GTF file for a successful RSEM-STAR pipeline run. \n\n5. Files in multi-FASTQ format are currently not supported, i.e. if you have single-end reads that span multiple FASTQ files, or paired-end reads that span more than 2 files, please use a tool like SBG Merge FASTQs before providing your files to RSEM.\n\n6. If you already have a TAR bundle of generated index files (obtained from RSEM Prepare Reference), you can provide the TAR bundle instead of a FASTA reference file to skip the indexing and reduce the overall workflow execution time.\n\n7. If you are supplying aligned files in BAM/SAM/CRAM format that came from paired-end data, please specify the 'Paired-end alignment' option.",
    "sbg:latestRevision": 8,
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": "Copy of uros_sipetic/rsem-1-2-31-demo/rsem-demo-workflow-with-star-aligner/15",
            "sbg:revision": 0,
            "sbg:modifiedOn": 1501518691
        },
        {
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": "Change suggested reference file to index TAR bundle.",
            "sbg:revision": 1,
            "sbg:modifiedOn": 1501518691
        },
        {
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": "Remove \"Demo\" from workflow label and add \"Sorted Genome BAM\" as output.",
            "sbg:revision": 2,
            "sbg:modifiedOn": 1501518691
        },
        {
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": "Add instance hints for AWS and Google.",
            "sbg:revision": 3,
            "sbg:modifiedOn": 1501518691
        },
        {
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": "Update Google instance hint",
            "sbg:revision": 4,
            "sbg:modifiedOn": 1501518691
        },
        {
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": "Update Google instance hint and update STAR Calculate Expression (to merge BAM and FASTQ inputs into one, automate zipped read files recognition and merge sorted and unsorted BAM outputs into one).",
            "sbg:revision": 5,
            "sbg:modifiedOn": 1501518691
        },
        {
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": "Update Calculcate Expression to set ulimit -v to unlimited.",
            "sbg:revision": 6,
            "sbg:modifiedOn": 1501518691
        },
        {
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": "Update RSEM Plot Model to work properly with single ended files.",
            "sbg:revision": 7,
            "sbg:modifiedOn": 1501518691
        },
        {
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": "Update RSEM Calculate Expression archive grep expression to work properly when paired end samples have different basename from their sample_id metadata. This fixes possible errors in the RSEM Plot Model tool execution that follows.",
            "sbg:revision": 8,
            "sbg:modifiedOn": 1501518691
        }
    ],
    "sbg:revision": 8,
    "sbg:image_url": "https://brood.sbgenomics.com/static/bixqa/qa-load-2017-07-31-18/rsem-1-2-31-workflow-with-star-aligner/8.png",
    "sbg:project": "bixqa/qa-load-2017-07-31-18",
    "sbg:revisionNotes": "Update RSEM Calculate Expression archive grep expression to work properly when paired end samples have different basename from their sample_id metadata. This fixes possible errors in the RSEM Plot Model tool execution that follows.",
    "sbg:copyOf": "admin/sbg-public-data/rsem-1-2-31-workflow-with-star-aligner/8",
    "sbg:projectName": "qa-load-2017-07-31-18",
    "sbg:appVersion": [
        "sbg:draft-2"
    ]
}
