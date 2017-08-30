{
    "sbg:sbgMaintained": false,
    "sbg:categories": [
        "Alignment",
        "RNA"
    ],
    "sbg:id": "bixqa/qa-load-2017-07-31-18/rna-seq-alignment-tophat/11",
    "label": "RNA-seq Alignment - TopHat",
    "class": "Workflow",
    "steps": [
        {
            "sbg:y": 392.83334891001374,
            "inputs": [
                {
                    "id": "#Bowtie2_Indexer.suffixes_as_fraction"
                },
                {
                    "id": "#Bowtie2_Indexer.suffixes"
                },
                {
                    "id": "#Bowtie2_Indexer.seed"
                },
                {
                    "id": "#Bowtie2_Indexer.rows_to_mark"
                },
                {
                    "source": [
                        "#reference_or_index"
                    ],
                    "id": "#Bowtie2_Indexer.reference_or_index"
                },
                {
                    "id": "#Bowtie2_Indexer.packed_representation"
                },
                {
                    "id": "#Bowtie2_Indexer.only_bitpacked_files"
                },
                {
                    "id": "#Bowtie2_Indexer.large_index"
                },
                {
                    "id": "#Bowtie2_Indexer.ftab_lookup_table_size"
                },
                {
                    "id": "#Bowtie2_Indexer.discard_bitpacked_files"
                },
                {
                    "id": "#Bowtie2_Indexer.disable_diff_cover_sample"
                },
                {
                    "id": "#Bowtie2_Indexer.disable_default_parameters"
                },
                {
                    "id": "#Bowtie2_Indexer.difference_cover_period"
                }
            ],
            "sbg:x": 399.3333704736505,
            "id": "#Bowtie2_Indexer",
            "run": {
                "sbg:sbgMaintained": false,
                "sbg:categories": [
                    "Alignment",
                    "Indexing"
                ],
                "sbg:job": {
                    "inputs": {
                        "disable_default_parameters": true,
                        "large_index": false,
                        "reference_or_index": {
                            "secondaryFiles": [],
                            "path": "/test/human_g1k_v37_decoy_bowtie2-2.2.6.tar",
                            "metadata": {
                                "reference_genome": "human_g1k_v37_decoy"
                            }
                        },
                        "difference_cover_period": 6
                    },
                    "allocatedResources": {
                        "mem": 6000,
                        "cpu": 8
                    }
                },
                "id": "bix-demo/bowtie2-2-2-6-demo/bowtie2-indexer/3",
                "label": "Bowtie2 Indexer",
                "class": "CommandLineTool",
                "y": 392.83334891001374,
                "stdout": "",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1450911540
                    },
                    {
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1450911541
                    },
                    {
                        "sbg:modifiedBy": "ana_d",
                        "sbg:revisionNotes": "Redesigned to produce archive with *.bt2 files, as well as to support the same archive on the input.",
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1471949363
                    },
                    {
                        "sbg:modifiedBy": "ana_d",
                        "sbg:revisionNotes": "Additional information updated.",
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1471972953
                    }
                ],
                "sbg:toolkitVersion": "2.2.6",
                "sbg:links": [
                    {
                        "id": "http://bowtie-bio.sourceforge.net/bowtie2/index.shtml",
                        "label": "Homepage"
                    },
                    {
                        "id": "http://sourceforge.net/projects/bowtie-bio/files/bowtie2/2.2.6/",
                        "label": "Download"
                    },
                    {
                        "id": "http://bowtie-bio.sourceforge.net/bowtie2/manual.shtml",
                        "label": "Manual"
                    },
                    {
                        "id": "http://www.nature.com/nmeth/journal/v9/n4/full/nmeth.1923.html",
                        "label": "Publication"
                    }
                ],
                "inputs": [
                    {
                        "sbg:category": "Advanced Options",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "valueFrom": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "{\n  var param = $job.inputs.suffixes_as_fraction\n  var ref_ext = $job.inputs.reference_or_index.path.split('.').pop(0).toUpperCase()\n  if ( param && (ref_ext == \"FASTA\" || ref_ext == \"FA\")){\n    if ($job.inputs.disable_default_parameters && $job.inputs.suffixes_as_fraction) {\n      return \"--bmaxdivn \".concat($job.inputs.suffixes_as_fraction)\n    }\n  }\n}"
                            }
                        },
                        "id": "#suffixes_as_fraction",
                        "label": "Suffixes as fraction",
                        "description": "The maximum number of suffixes allowed in a block, expressed as a fraction of the length of the reference. Setting this option overrides any previous setting for \"Suffixes\", or \"Suffixes as fraction\". This is configured automatically by default; use \"Disable default parameters\" to configure manually.",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "4"
                    },
                    {
                        "sbg:category": "Advanced Options",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "valueFrom": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "{\n  var param = $job.inputs.suffixes\n  var ref_ext = $job.inputs.reference_or_index.path.split('.').pop(0).toUpperCase()\n  if ( param && (ref_ext == \"FASTA\" || ref_ext == \"FA\")){\n    if ($job.inputs.disable_default_parameters && $job.inputs.suffixes) {\n      return \"--bmax \".concat($job.inputs.suffixes)\n    }\n  }\n}"
                            }
                        },
                        "id": "#suffixes",
                        "label": "Suffixes",
                        "description": "The maximum number of suffixes allowed in a block. Allowing more suffixes per block makes indexing faster, but increases peak memory usage. Setting this option overrides any previous setting for \"Suffixes\", or \"Suffixes as fraction\". Default (in terms of the \"Suffixes (as fraction)\" parameter) is 4. This is configured automatically by default; use \"Disable default parameters\" to configure manually.",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "-"
                    },
                    {
                        "sbg:category": "Basic Options",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "valueFrom": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "{\n  var param = $job.inputs.seed\n  var ref_ext = $job.inputs.reference_or_index.path.split('.').pop(0).toUpperCase()\n  if ( param && (ref_ext == \"FASTA\" || ref_ext == \"FA\")){\n    return \"--seed\"\n  }\n}"
                            }
                        },
                        "id": "#seed",
                        "label": "Seed",
                        "description": "Set the seed for pseudo-random number generator.",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "-"
                    },
                    {
                        "sbg:category": "Basic Options",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "valueFrom": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "{\n  var param = $job.inputs.rows_to_mark\n  var ref_ext = $job.inputs.reference_or_index.path.split('.').pop(0).toUpperCase()\n  if ( param && (ref_ext == \"FASTA\" || ref_ext == \"FA\")){\n    return \"--offrate\"\n  }\n}"
                            }
                        },
                        "id": "#rows_to_mark",
                        "label": "Rows to mark",
                        "description": "To map alignments back to positions on the reference sequences, it is necessary to annotate (\"mark\") some or all of the Burrows-Wheeler rows with their corresponding location on the genome. \"Rows to mark\" governs how many rows get marked: the indexer will mark every 2^(given number) rows. Marking more rows makes reference-position lookups faster, but requires more memory to hold the annotations at runtime. The default is 5 (every 32nd row is marked; for human genome, annotations occupy about 340 megabytes).",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "5"
                    },
                    {
                        "sbg:category": "Input files",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 100,
                            "streamable": false,
                            "valueFrom": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "{\n  var ref_ext = $job.inputs.reference_or_index.path.split('.').pop(0).toUpperCase()\n  if (ref_ext == \"FASTA\" || ref_ext == \"FA\"){\n    return $job.inputs.reference_or_index.path\n  }\n}"
                            }
                        },
                        "sbg:stageInput": "link",
                        "sbg:fileTypes": "FASTA, FA, TAR",
                        "id": "#reference_or_index",
                        "label": "Reference/Index files",
                        "required": true,
                        "description": "Reference sequence to which to align the reads. If tar bundle with indexes provided, this file would just be passed to the output.",
                        "type": [
                            "File"
                        ]
                    },
                    {
                        "sbg:category": "Advanced Options",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "valueFrom": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "{\n  var param = $job.inputs.packed_representation\n  var ref_ext = $job.inputs.reference_or_index.path.split('.').pop(0).toUpperCase()\n  if ( param && (ref_ext == \"FASTA\" || ref_ext == \"FA\")){\n    if ($job.inputs.disable_default_parameters && $job.inputs.packed_representation){\n      return \"--packed \".concat($job.inputs.packed_representation)\n    }\n  }\n}"
                            }
                        },
                        "id": "#packed_representation",
                        "label": "Packed representation",
                        "description": "Use a packed (2-bits-per-nucleotide) representation for DNA strings. This saves memory but makes indexing 2-3 times slower. This is configured automatically by default; set \"Disable default parameters\" to configure manually.",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "sbg:toolDefaultValue": "False"
                    },
                    {
                        "sbg:category": "Basic Options",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "valueFrom": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "{\n  var param = $job.inputs.only_bitpacked_files\n  var ref_ext = $job.inputs.reference_or_index.path.split('.').pop(0).toUpperCase()\n  if ( param && (ref_ext == \"FASTA\" || ref_ext == \"FA\")){\n    return \"--justref\"\n  }\n}"
                            }
                        },
                        "id": "#only_bitpacked_files",
                        "label": "Only bitpacked files",
                        "description": "Build only the NAME.3.bt2 and NAME.4.bt2 portions of the index, which contain a bitpacked version of the reference sequences and are used for paired-end alignment.",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "sbg:toolDefaultValue": "False"
                    },
                    {
                        "sbg:category": "Basic Options",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "valueFrom": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "{\n  var param = $job.inputs.large_index\n  var ref_ext = $job.inputs.reference_or_index.path.split('.').pop(0).toUpperCase()\n  if ( param && (ref_ext == \"FASTA\" || ref_ext == \"FA\")){\n    return \"--large-index\"\n  }\n}"
                            }
                        },
                        "id": "#large_index",
                        "label": "Large index",
                        "description": "Force indexer to build a large index, even if the reference is less than ~ 4 billion nucleotides inlong.",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "sbg:toolDefaultValue": "False"
                    },
                    {
                        "sbg:category": "Basic Options",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "valueFrom": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "{\n  var param = $job.inputs.ftab_lookup_table_size\n  var ref_ext = $job.inputs.reference_or_index.path.split('.').pop(0).toUpperCase()\n  if ( param && (ref_ext == \"FASTA\" || ref_ext == \"FA\")){\n    return \"--ftabchars\"\n  }\n}"
                            }
                        },
                        "id": "#ftab_lookup_table_size",
                        "label": "Ftab lookup table size",
                        "description": "The ftab is the lookup table used to calculate an initial Burrows-Wheeler range with respect to the first given number of characters of the query. A larger number yields a larger lookup table but faster query times. The ftab has size 4^(given number + 1) bytes. The default setting is 10 (ftab is 4MB).",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "10"
                    },
                    {
                        "sbg:category": "Basic Options",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "valueFrom": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "{\n  var param = $job.inputs.discard_bitpacked_files\n  var ref_ext = $job.inputs.reference_or_index.path.split('.').pop(0).toUpperCase()\n  if ( param && (ref_ext == \"FASTA\" || ref_ext == \"FA\")){\n    return \"--noref\"\n  }\n}"
                            }
                        },
                        "id": "#discard_bitpacked_files",
                        "label": "Discard bitpacked files",
                        "description": "Do not build the NAME.3.bt2 and NAME.4.bt2 portions of the index, which contain a bitpacked version of the reference sequences and are used for paired-end alignment.",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "sbg:toolDefaultValue": "False"
                    },
                    {
                        "sbg:category": "Basic Options",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "valueFrom": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "{\n  var param = $job.inputs.disable_diff_cover_sample\n  var ref_ext = $job.inputs.reference_or_index.path.split('.').pop(0).toUpperCase()\n  if ( param && (ref_ext == \"FASTA\" || ref_ext == \"FA\")){\n    return \"--nodc\"\n  }\n}"
                            }
                        },
                        "id": "#disable_diff_cover_sample",
                        "label": "Disable diff-cover sample",
                        "description": "Disable use of the difference-cover sample. Suffix sorting becomes quadratic-time in the worst case (where the worst case is an extremely repetitive reference).",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "sbg:toolDefaultValue": "False"
                    },
                    {
                        "sbg:category": "Basic Options",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "valueFrom": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "{\n  var param = $job.inputs.disable_default_parameters\n  var ref_ext = $job.inputs.reference_or_index.path.split('.').pop(0).toUpperCase()\n  if ( param && (ref_ext == \"FASTA\" || ref_ext == \"FA\")){\n    return \"--noauto\"\n  }\n}"
                            }
                        },
                        "id": "#disable_default_parameters",
                        "label": "Disable default parameters",
                        "description": "Disable the default behavior whereby indexer automatically selects values for the parameters under \"Advanced Options\" according to available memory. Instead, user may specify values for those parameters. If memory is exhausted during indexing, an error message will be printed; it is up to the user to try new parameters.",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "sbg:toolDefaultValue": "False"
                    },
                    {
                        "sbg:category": "Advanced Options",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "valueFrom": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "{\n  var param = $job.inputs.difference_cover_period\n  var ref_ext = $job.inputs.reference_or_index.path.split('.').pop(0).toUpperCase()\n  if ( param && (ref_ext == \"FASTA\" || ref_ext == \"FA\")){\n    if ($job.inputs.disable_default_parameters && $job.inputs.difference_cover_period) {\n      return \"--dcv \".concat($job.inputs.difference_cover_period)\n    }\n  }\n}"
                            }
                        },
                        "id": "#difference_cover_period",
                        "label": "Difference-cover period",
                        "description": "Set the period for the difference-cover sample. A larger period yields less memory overhead, but may make suffix sorting slower, especially if repeats are present. Must be a power of 2 no greater than 4096. This is configured automatically by default; use \"Disable default parameters\" to configure manually.",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "1024"
                    }
                ],
                "hints": [
                    {
                        "class": "DockerRequirement",
                        "dockerImageId": "029d3a264215",
                        "dockerPull": "images.sbgenomics.com/ana_d/bowtie2:2.2.6"
                    },
                    {
                        "class": "sbg:CPURequirement",
                        "value": 8
                    },
                    {
                        "class": "sbg:MemRequirement",
                        "value": 6000
                    }
                ],
                "successCodes": [],
                "stdin": "",
                "sbg:image_url": null,
                "sbg:createdBy": "bix-demo",
                "sbg:validationErrors": [],
                "requirements": [
                    {
                        "engineCommand": "cwl-engine.js",
                        "class": "ExpressionEngineRequirement",
                        "requirements": [
                            {
                                "class": "DockerRequirement",
                                "dockerPull": "rabix/js-engine"
                            }
                        ],
                        "id": "#cwl-js-engine"
                    }
                ],
                "temporaryFailCodes": [],
                "outputs": [
                    {
                        "outputBinding": {
                            "sbg:metadata": {
                                "__inherit__": "fasta_reference",
                                "reference_genome": {
                                    "class": "Expression",
                                    "engine": "#cwl-js-engine",
                                    "script": "{\n  var ref_name = $job.inputs.reference_or_index.path.split(\"/\").pop().replace(/\\.[^/.]+$/, \"\")\n  var inherited_name = $job.inputs.reference_or_index.metadata.reference_genome\n  var ref_ext = $job.inputs.reference_or_index.path.split('.').pop(0).toUpperCase()\n  if (ref_ext == \"FASTA\" || ref_ext == \"FA\"){\n    return ref_name\n  } else {\n    return inherited_name\n  }\n}"
                                }
                            },
                            "streamable": false,
                            "glob": "*.tar"
                        },
                        "id": "#bowtie_index_archive",
                        "sbg:fileTypes": "TAR",
                        "label": "Bowtie index archive",
                        "description": "Archived Bowtie2 index files.",
                        "type": [
                            "File"
                        ]
                    }
                ],
                "cwlVersion": "sbg:draft-2",
                "sbg:contributors": [
                    "ana_d",
                    "bix-demo"
                ],
                "sbg:toolAuthor": "Ben Langmead/John Hopkins University",
                "sbg:toolkit": "Bowtie2",
                "sbg:modifiedBy": "ana_d",
                "sbg:revisionNotes": "Additional information updated.",
                "sbg:project": "bix-demo/bowtie2-2-2-6-demo",
                "sbg:id": "admin/sbg-public-data/bowtie2-indexer/3",
                "description": "Bowtie2 Indexer is a tool for indexing reference genomes of any size used in an alignment. It was built from `bowtie2-build` script and used for reference genome indexing aimed at assisting Bowtie2 in fast and memory-efficient alignment. It outputs an archive which consists of 6 files with suffixes .1.bt2, .2.bt2, .3.bt2, .4.bt2, .rev.1.bt2, and .rev.2.bt2. This archive constitutes the index and should be provided when aligning the reads (either with [Bowtie2 Aligner](https://igor.sbgenomics.com/public/apps#tool/admin/sbg-public-data/bowtie2-aligner) or [TopHat2](https://igor.sbgenomics.com/public/apps#tool/admin/sbg-public-data/tophat2)). \n\n###Common issues###\nNo issues have been reported.",
                "arguments": [
                    {
                        "separate": false,
                        "position": 101,
                        "valueFrom": {
                            "class": "Expression",
                            "engine": "#cwl-js-engine",
                            "script": "{\n  index_prefix = $job.inputs.reference_or_index.path.split('.').slice(0, $job.inputs.reference_or_index.path.split('.').length-1).join('.').replace(/^.*[\\\\\\/]/, '')\n  var ref_ext = $job.inputs.reference_or_index.path.split('.').pop(0).toUpperCase()\n  if (ref_ext == \"FASTA\" || ref_ext == \"FA\"){\n    return \"./\".concat(index_prefix)\n  }\n}"
                        }
                    },
                    {
                        "separate": false,
                        "position": 102,
                        "valueFrom": {
                            "class": "Expression",
                            "engine": "#cwl-js-engine",
                            "script": "{\n  var bt = \"bowtie2-2.2.6\"\n  var suffix_glob = \"\"\n  var ref = $job.inputs.reference_or_index.path\n  var ref_name = ref.split('/').pop(0).replace(/\\.[^/.]+$/, \"\")\n  var tar_name = ref_name.concat(\"_\", bt, '.tar')\n  var ref_ext = $job.inputs.reference_or_index.path.split('.').pop(0).toUpperCase()\n  \n  if ($job.inputs.large_index) {\n    suffix_glob = \" ./*.bt2l\"\n  } else {\n    suffix_glob = \" ./*.bt2\"\n  }\n  if (ref_ext == \"FASTA\" || ref_ext == \"FA\"){\n    return \" && tar -vcf \".concat(tar_name, suffix_glob)\n  }\n}"
                        }
                    }
                ],
                "sbg:revision": 3,
                "sbg:latestRevision": 3,
                "sbg:license": "GNU General Public License v3.0 only",
                "sbg:createdOn": 1450911540,
                "x": 399.3333704736505,
                "baseCommand": [
                    {
                        "class": "Expression",
                        "engine": "#cwl-js-engine",
                        "script": "{\n  var ref_ext = $job.inputs.reference_or_index.path.split('.').pop(0).toUpperCase()\n  if (ref_ext == \"FASTA\" || ref_ext == \"FA\"){\n    return \"/opt/bowtie2-2.2.6/bowtie2-build -f\"\n  } else {\n    return \"echo 'Archive provided on the input, no indexing.'\"\n  }\n}"
                    }
                ],
                "sbg:cmdPreview": "echo 'Archive provided on the input, no indexing.'",
                "sbg:modifiedOn": 1471972953
            },
            "outputs": [
                {
                    "id": "#Bowtie2_Indexer.bowtie_index_archive"
                }
            ]
        },
        {
            "sbg:y": 168.4737014555382,
            "inputs": [
                {
                    "id": "#FastQC.threads"
                },
                {
                    "id": "#FastQC.quiet"
                },
                {
                    "id": "#FastQC.nogroup"
                },
                {
                    "id": "#FastQC.nano"
                },
                {
                    "id": "#FastQC.limits_file"
                },
                {
                    "id": "#FastQC.kmers"
                },
                {
                    "source": [
                        "#SBG_FASTQ_Quality_Detector.result"
                    ],
                    "id": "#FastQC.input_fastq"
                },
                {
                    "id": "#FastQC.format"
                },
                {
                    "id": "#FastQC.contaminants_file"
                },
                {
                    "id": "#FastQC.casava"
                },
                {
                    "id": "#FastQC.adapters_file"
                }
            ],
            "sbg:x": 469.4211212602732,
            "scatter": "#FastQC.input_fastq",
            "id": "#FastQC",
            "run": {
                "sbg:sbgMaintained": false,
                "sbg:categories": [
                    "FASTQ-Processing",
                    "Quality-Control",
                    "Quantification"
                ],
                "sbg:job": {
                    "inputs": {
                        "threads": 0,
                        "input_fastq": {
                            "path": "/root/dir/example.fastq"
                        },
                        "quiet": true
                    },
                    "allocatedResources": {
                        "mem": 2048,
                        "cpu": 1
                    }
                },
                "id": "bix-demo/fastqc-0-11-4-demo/fastqc-0-11-4/4",
                "label": "FastQC",
                "class": "CommandLineTool",
                "y": 168.4737014555382,
                "stdout": "",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1450911593
                    },
                    {
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1450911593
                    },
                    {
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1450911594
                    },
                    {
                        "sbg:modifiedBy": "mladenlSBG",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1459870965
                    },
                    {
                        "sbg:modifiedBy": "mladenlSBG",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1465990120
                    }
                ],
                "sbg:toolkitVersion": "0.11.4",
                "sbg:links": [
                    {
                        "id": "http://www.bioinformatics.babraham.ac.uk/projects/fastqc/",
                        "label": "Homepage"
                    },
                    {
                        "id": "http://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.4_source.zip",
                        "label": "Source Code"
                    },
                    {
                        "id": "https://wiki.hpcc.msu.edu/display/Bioinfo/FastQC+Tutorial",
                        "label": "Wiki"
                    },
                    {
                        "id": "http://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.4.zip",
                        "label": "Download"
                    },
                    {
                        "id": "",
                        "label": "Publication"
                    }
                ],
                "inputs": [
                    {
                        "inputBinding": {
                            "prefix": "--threads",
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "valueFrom": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "{\tif ($job.inputs.threads)\n\t\t{\n  \t\t\treturn $job.inputs.threads\n\t\t}\n\telse\n \t\t{\n   \t\t\treturn 1\n \t\t}\n}"
                            }
                        },
                        "id": "#threads",
                        "label": "Threads",
                        "sbg:altPrefix": "-t",
                        "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "inputBinding": {
                            "prefix": "--quiet",
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "id": "#quiet",
                        "label": "Quiet",
                        "sbg:altPrefix": "-q",
                        "description": "Supress all progress messages on stdout and only report errors.",
                        "type": [
                            "null",
                            "boolean"
                        ]
                    },
                    {
                        "inputBinding": {
                            "prefix": "--nogroup",
                            "sbg:cmdInclude": true,
                            "separate": false
                        },
                        "description": "Disable grouping of bases for reads >50bp. All reports will show data for every base in the read.  WARNING: Using this option will cause fastqc to crash and burn if you use it on really long reads, and your plots may end up a ridiculous size. You have been warned.",
                        "id": "#nogroup",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "label": "Nogroup"
                    },
                    {
                        "sbg:category": "",
                        "inputBinding": {
                            "prefix": "--nano",
                            "sbg:cmdInclude": true,
                            "separate": false
                        },
                        "id": "#nano",
                        "label": "Nano",
                        "description": "Files come from naopore sequences and are in fast5 format. In this mode you can pass in directories to process and the program will take in all fast5 files within those directories and produce a single output file from the sequences found in all files.",
                        "type": [
                            "null",
                            "boolean"
                        ]
                    },
                    {
                        "inputBinding": {
                            "prefix": "--limits",
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "sbg:fileTypes": "TXT",
                        "id": "#limits_file",
                        "label": "Limits",
                        "required": false,
                        "sbg:altPrefix": "-l",
                        "description": "Specifies a non-default file which contains a set of criteria which will be used to determine the warn/error limits for the various modules.  This file can also be used to selectively remove some modules from the output all together.  The format needs to mirror the default limits.txt file found in the Configuration folder.",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "sbg:category": "",
                        "inputBinding": {
                            "prefix": "--kmers",
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "id": "#kmers",
                        "sbg:altPrefix": "-f",
                        "label": "Kmers",
                        "description": "Specifies the length of Kmer to look for in the Kmer content module. Specified Kmer length must be between 2 and 10. Default length is 7 if not specified.",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "7"
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 100
                        },
                        "id": "#input_fastq",
                        "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
                        "label": "Input file",
                        "required": true,
                        "description": "Input file.",
                        "type": [
                            "File"
                        ]
                    },
                    {
                        "sbg:category": "",
                        "inputBinding": {
                            "prefix": "--format",
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "id": "#format",
                        "label": "Format",
                        "sbg:altPrefix": "-f",
                        "description": "Bypasses the normal sequence file format detection and forces the program to use the specified format.  Valid formats are BAM, SAM, BAM_mapped, SAM_mapped and FASTQ.",
                        "type": [
                            "null",
                            {
                                "name": "format",
                                "symbols": [
                                    "bam",
                                    "sam",
                                    "bam_mapped",
                                    "sam_mapped",
                                    "fastq"
                                ],
                                "type": "enum"
                            }
                        ]
                    },
                    {
                        "inputBinding": {
                            "prefix": "--contaminants",
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "sbg:fileTypes": "FASTA, FA, TXT",
                        "id": "#contaminants_file",
                        "label": "Contaminants",
                        "required": false,
                        "sbg:altPrefix": "-c",
                        "description": "Specifies a non-default file which contains the list of contaminants to screen overrepresented sequences against. The file must contain sets of named contaminants in the form name[tab]sequence.  Lines prefixed with a hash will be ignored.",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "sbg:category": "",
                        "inputBinding": {
                            "prefix": "--casava",
                            "sbg:cmdInclude": true,
                            "separate": false
                        },
                        "id": "#casava",
                        "label": "Casava",
                        "description": "Files come from raw casava output. Files in the same sample group (differing only by the group number) will be analysed as a set rather than individually. Sequences with the filter flag set in the header will be excluded from the analysis. Files must have the same names given to them by casava (including being gzipped and ending with .gz) otherwise they won't be grouped together correctly.",
                        "type": [
                            "null",
                            "boolean"
                        ]
                    },
                    {
                        "inputBinding": {
                            "prefix": "--adapters",
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "sbg:fileTypes": "FASTA, FA",
                        "id": "#adapters_file",
                        "label": "Adapters",
                        "required": false,
                        "sbg:altPrefix": "-a",
                        "description": "Specifies a non-default file which contains the list of adapter sequences which will be explicity searched against the library. The file must contain sets of named adapters in the form name[tab]sequence.  Lines prefixed with a hash will be ignored.",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "hints": [
                    {
                        "class": "DockerRequirement",
                        "dockerImageId": "759c4c8fbafd",
                        "dockerPull": "images.sbgenomics.com/mladenlsbg/fastqc:0.11.4"
                    },
                    {
                        "class": "sbg:CPURequirement",
                        "value": {
                            "class": "Expression",
                            "engine": "#cwl-js-engine",
                            "script": "{\tif ($job.inputs.threads)\n{\n  return $job.inputs.threads\n}\n else\n {\n   return 1\n }\n}"
                        }
                    },
                    {
                        "class": "sbg:MemRequirement",
                        "value": 2048
                    }
                ],
                "successCodes": [],
                "stdin": "",
                "sbg:image_url": null,
                "sbg:createdBy": "bix-demo",
                "sbg:validationErrors": [],
                "requirements": [
                    {
                        "class": "ExpressionEngineRequirement",
                        "requirements": [
                            {
                                "class": "DockerRequirement",
                                "dockerPull": "rabix/js-engine"
                            }
                        ],
                        "id": "#cwl-js-engine"
                    }
                ],
                "temporaryFailCodes": [],
                "outputs": [
                    {
                        "outputBinding": {
                            "sbg:metadata": {
                                "__inherit__": "input_fastq"
                            },
                            "sbg:inheritMetadataFrom": "#input_fastq",
                            "glob": "*_fastqc.zip"
                        },
                        "id": "#report_zip",
                        "sbg:fileTypes": "ZIP",
                        "label": "Report zip",
                        "description": "Zip archive of the report.",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "cwlVersion": "sbg:draft-2",
                "sbg:contributors": [
                    "bix-demo",
                    "mladenlSBG"
                ],
                "sbg:toolAuthor": "Babraham Institute",
                "sbg:toolkit": "FastQC",
                "sbg:modifiedBy": "mladenlSBG",
                "sbg:project": "bix-demo/fastqc-0-11-4-demo",
                "sbg:id": "admin/sbg-public-data/fastqc-0-11-4/12",
                "description": "FastQC reads a set of sequence files and produces a quality control (QC) report from each one. These reports consist of a number of different modules, each of which will help identify a different type of potential problem in your data.\n\nFastQC is a tool which takes a FastQ file and runs a series of tests on it to generate a comprehensive QC report.  This report will tell you if there is anything unusual about your sequence.  Each test is flagged as a pass, warning, or fail depending on how far it departs from what you would expect from a normal large dataset with no significant biases.  It is important to stress that warnings or even failures do not necessarily mean that there is a problem with your data, only that it is unusual.  It is possible that the biological nature of your sample means that you would expect this particular bias in your results.",
                "arguments": [
                    {
                        "prefix": "",
                        "separate": true,
                        "valueFrom": "--noextract"
                    },
                    {
                        "prefix": "--outdir",
                        "separate": true,
                        "valueFrom": "."
                    }
                ],
                "sbg:revision": 4,
                "sbg:latestRevision": 4,
                "sbg:license": "GNU General Public License v3.0 only",
                "sbg:createdOn": 1450911593,
                "x": 469.4211212602732,
                "baseCommand": [
                    "fastqc"
                ],
                "sbg:cmdPreview": "fastqc  --noextract --outdir .  /root/dir/example.fastq",
                "sbg:modifiedOn": 1465990120
            },
            "outputs": [
                {
                    "id": "#FastQC.report_zip"
                }
            ]
        },
        {
            "sbg:y": 404.42348769334177,
            "inputs": [
                {
                    "source": [
                        "#TopHat2.aligned"
                    ],
                    "id": "#BamTools_Index.input_bam_file"
                },
                {
                    "id": "#BamTools_Index.input_bai_file"
                },
                {
                    "id": "#BamTools_Index.indexed_data"
                },
                {
                    "id": "#BamTools_Index.bti_format"
                }
            ],
            "sbg:x": 1158.7031285313665,
            "id": "#BamTools_Index",
            "run": {
                "sbg:sbgMaintained": false,
                "inputs": [
                    {
                        "sbg:category": "Input & Output",
                        "sbg:stageInput": "link",
                        "sbg:fileTypes": "BAM",
                        "id": "#input_bam_file",
                        "label": "Input BAM file",
                        "required": true,
                        "description": "The input BAM file.",
                        "type": [
                            "File"
                        ]
                    },
                    {
                        "sbg:category": "File input",
                        "sbg:stageInput": "link",
                        "sbg:fileTypes": "BAI",
                        "id": "#input_bai_file",
                        "label": "Input BAI(BAM index) file",
                        "required": false,
                        "description": "Input BAI(BAM index) file.",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "sbg:category": "Input & Output",
                        "description": "Don't output indexed data file. The default value is [FALSE].",
                        "id": "#indexed_data",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "label": "Don't output indexed data file"
                    },
                    {
                        "sbg:category": "Input & Output",
                        "description": "Create (non-standard) BamTools index file (*.BTI). Default behavior is to create standard BAM index (*.BAI).",
                        "id": "#bti_format",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "label": "BTI format"
                    }
                ],
                "y": 404.42348769334177,
                "id": "bix-demo/bamtools-2-4-0-demo/bamtools-index-2-4-0/20",
                "sbg:modifiedBy": "ognjenm",
                "label": "BamTools Index",
                "class": "CommandLineTool",
                "sbg:job": {
                    "inputs": {
                        "indexed_data": false,
                        "input_bam_file": {
                            "secondaryFiles": [],
                            "class": "File",
                            "size": 0,
                            "path": "input/input_bam.bam"
                        },
                        "bti_format": false
                    },
                    "allocatedResources": {
                        "mem": 1000,
                        "cpu": 1
                    }
                },
                "stdout": "",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1450911459
                    },
                    {
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1450911459
                    },
                    {
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1455724415
                    },
                    {
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1455724618
                    },
                    {
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1455726303
                    },
                    {
                        "sbg:modifiedBy": "markop",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 5,
                        "sbg:modifiedOn": 1456328383
                    },
                    {
                        "sbg:modifiedBy": "markop",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 6,
                        "sbg:modifiedOn": 1459177904
                    },
                    {
                        "sbg:modifiedBy": "markop",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 7,
                        "sbg:modifiedOn": 1462383521
                    },
                    {
                        "sbg:modifiedBy": "markop",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 8,
                        "sbg:modifiedOn": 1462383765
                    },
                    {
                        "sbg:modifiedBy": "markop",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 9,
                        "sbg:modifiedOn": 1462384650
                    },
                    {
                        "sbg:modifiedBy": "ognjenm",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 10,
                        "sbg:modifiedOn": 1466421734
                    },
                    {
                        "sbg:modifiedBy": "ognjenm",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 11,
                        "sbg:modifiedOn": 1466777070
                    },
                    {
                        "sbg:modifiedBy": "ognjenm",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 12,
                        "sbg:modifiedOn": 1466777658
                    },
                    {
                        "sbg:modifiedBy": "ognjenm",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 13,
                        "sbg:modifiedOn": 1466778871
                    },
                    {
                        "sbg:modifiedBy": "ognjenm",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 14,
                        "sbg:modifiedOn": 1466779762
                    },
                    {
                        "sbg:modifiedBy": "ognjenm",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 15,
                        "sbg:modifiedOn": 1467116120
                    },
                    {
                        "sbg:modifiedBy": "ognjenm",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 16,
                        "sbg:modifiedOn": 1467119021
                    },
                    {
                        "sbg:modifiedBy": "ognjenm",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 17,
                        "sbg:modifiedOn": 1467119608
                    },
                    {
                        "sbg:modifiedBy": "ognjenm",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 18,
                        "sbg:modifiedOn": 1467119913
                    },
                    {
                        "sbg:modifiedBy": "ognjenm",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 19,
                        "sbg:modifiedOn": 1467119936
                    },
                    {
                        "sbg:modifiedBy": "ognjenm",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 20,
                        "sbg:modifiedOn": 1467210836
                    }
                ],
                "sbg:toolkitVersion": "2.4.0",
                "sbg:links": [
                    {
                        "id": "https://github.com/pezmaster31/bamtools",
                        "label": "Homepage"
                    },
                    {
                        "id": "https://github.com/pezmaster31/bamtools/wiki",
                        "label": "Wiki"
                    }
                ],
                "hints": [
                    {
                        "class": "DockerRequirement",
                        "dockerImageId": "f808163d4cd3",
                        "dockerPull": "images.sbgenomics.com/markop/bamtools:2.4.0"
                    },
                    {
                        "class": "sbg:CPURequirement",
                        "value": 1
                    },
                    {
                        "class": "sbg:MemRequirement",
                        "value": 1000
                    }
                ],
                "successCodes": [],
                "stdin": "",
                "sbg:toolkit": "BamTools",
                "sbg:createdBy": "bix-demo",
                "sbg:toolAuthor": "Derek Barnett, Erik Garrison, Gabor Marth, and Michael Stromberg",
                "requirements": [
                    {
                        "class": "ExpressionEngineRequirement",
                        "requirements": [
                            {
                                "class": "DockerRequirement",
                                "dockerPull": "rabix/js-engine"
                            }
                        ],
                        "id": "#cwl-js-engine"
                    }
                ],
                "temporaryFailCodes": [],
                "outputs": [
                    {
                        "outputBinding": {
                            "secondaryFiles": [
                                ".bai",
                                ".bti"
                            ],
                            "sbg:inheritMetadataFrom": "#input_bam_file",
                            "glob": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "{\n  if ($job.inputs.indexed_data === true){\n\treturn ''\n  } else {\n    return $job.inputs.input_bam_file.path.split(\"/\").pop()\n  }\n}\n\n\n"
                            }
                        },
                        "id": "#output_bam_file",
                        "sbg:fileTypes": "BAM",
                        "label": "Output BAM file",
                        "description": "Output BAM file with index (BAI or BTI) file as a secondary file (not visible in the output list of the task).",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#input_bam_file",
                            "glob": "{*.bai,*.bti}"
                        },
                        "id": "#generated_index",
                        "sbg:fileTypes": "BAI,BTI",
                        "label": "Generated index file",
                        "description": "Generated index file (without the indexed data).",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "cwlVersion": "sbg:draft-2",
                "sbg:contributors": [
                    "ognjenm",
                    "bix-demo",
                    "markop"
                ],
                "sbg:validationErrors": [],
                "sbg:image_url": null,
                "sbg:license": "The MIT License",
                "sbg:project": "bix-demo/bamtools-2-4-0-demo",
                "sbg:id": "admin/sbg-public-data/bamtools-index-2-4-0/30",
                "description": "BamTools Index creates an index file (BAI or BTI) for a BAM file. If BAI file is present on the input the tool will skip indexing step and output BAM with provided BAI file.\n\n**Common issues:** Providing a BAI file on input will result in a pass-through without execution, even if a different index format is requested on the output (BTI instead of BAI).",
                "arguments": [
                    {
                        "separate": true,
                        "position": 0,
                        "valueFrom": {
                            "class": "Expression",
                            "engine": "#cwl-js-engine",
                            "script": "{\n  if (!(typeof $job.inputs.input_bai_file !== \"undefined\")){\n    return \"-in \" + $job.inputs.input_bam_file.path.split('/').pop() \n  }\n}"
                        }
                    },
                    {
                        "separate": true,
                        "position": 1,
                        "valueFrom": {
                            "class": "Expression",
                            "engine": "#cwl-js-engine",
                            "script": "{\n  if (!(typeof $job.inputs.input_bai_file !== \"undefined\"))\n    if ((typeof $job.inputs.bti_format !== \"undefined\") && ($job.inputs.bti_format))\n    \treturn \"-bti\"  \n}"
                        }
                    }
                ],
                "sbg:revision": 20,
                "sbg:createdOn": 1450911459,
                "sbg:categories": [
                    "SAM/BAM-Processing",
                    "Indexing"
                ],
                "sbg:latestRevision": 20,
                "sbg:modifiedOn": 1467210836,
                "x": 1158.7031285313665,
                "sbg:homepage": "https://github.com/pezmaster31/bamtools/wiki",
                "baseCommand": [
                    {
                        "class": "Expression",
                        "engine": "#cwl-js-engine",
                        "script": "{\n  if ($job.inputs.input_bai_file){\n \treturn\"echo Skipping index step because BAI file is provided on the input.\"\n  }\n  else{\n    return \"/opt/bamtools/bin/bamtools index\"\n  }\n}"
                    }
                ],
                "sbg:cmdPreview": "/opt/bamtools/bin/bamtools index  -in input_bam.bam"
            },
            "outputs": [
                {
                    "id": "#BamTools_Index.output_bam_file"
                },
                {
                    "id": "#BamTools_Index.generated_index"
                }
            ]
        },
        {
            "sbg:y": 312.00000000000006,
            "inputs": [
                {
                    "source": [
                        "#transcriptome_only"
                    ],
                    "id": "#TopHat2.transcriptome_only"
                },
                {
                    "source": [
                        "#transcriptome_max_hits"
                    ],
                    "id": "#TopHat2.transcriptome_max_hits"
                },
                {
                    "source": [
                        "#splice_mismatches"
                    ],
                    "id": "#TopHat2.splice_mismatches"
                },
                {
                    "source": [
                        "#segment_mismatches"
                    ],
                    "id": "#TopHat2.segment_mismatches"
                },
                {
                    "source": [
                        "#segment_length"
                    ],
                    "id": "#TopHat2.segment_length"
                },
                {
                    "source": [
                        "#report_secondary_alignments"
                    ],
                    "id": "#TopHat2.report_secondary_alignments"
                },
                {
                    "source": [
                        "#read_realign_edit_dist"
                    ],
                    "id": "#TopHat2.read_realign_edit_dist"
                },
                {
                    "source": [
                        "#read_mismatches"
                    ],
                    "id": "#TopHat2.read_mismatches"
                },
                {
                    "source": [
                        "#read_gap_length"
                    ],
                    "id": "#TopHat2.read_gap_length"
                },
                {
                    "source": [
                        "#read_edit_dist"
                    ],
                    "id": "#TopHat2.read_edit_dist"
                },
                {
                    "source": [
                        "#SBG_FASTQ_Quality_Detector.result"
                    ],
                    "id": "#TopHat2.read"
                },
                {
                    "id": "#TopHat2.raw_juncs"
                },
                {
                    "source": [
                        "#prefilter_multihits"
                    ],
                    "id": "#TopHat2.prefilter_multihits"
                },
                {
                    "source": [
                        "#no_sort_bam"
                    ],
                    "id": "#TopHat2.no_sort_bam"
                },
                {
                    "source": [
                        "#no_novel_juncs"
                    ],
                    "id": "#TopHat2.no_novel_juncs"
                },
                {
                    "source": [
                        "#no_novel_indels"
                    ],
                    "id": "#TopHat2.no_novel_indels"
                },
                {
                    "source": [
                        "#no_mixed"
                    ],
                    "id": "#TopHat2.no_mixed"
                },
                {
                    "source": [
                        "#no_discordant"
                    ],
                    "id": "#TopHat2.no_discordant"
                },
                {
                    "source": [
                        "#min_segment_intron"
                    ],
                    "id": "#TopHat2.min_segment_intron"
                },
                {
                    "source": [
                        "#min_intron_length"
                    ],
                    "id": "#TopHat2.min_intron_length"
                },
                {
                    "source": [
                        "#min_coverage_intron"
                    ],
                    "id": "#TopHat2.min_coverage_intron"
                },
                {
                    "source": [
                        "#min_anchor_length"
                    ],
                    "id": "#TopHat2.min_anchor_length"
                },
                {
                    "source": [
                        "#microexon_search"
                    ],
                    "id": "#TopHat2.microexon_search"
                },
                {
                    "source": [
                        "#max_segment_intron"
                    ],
                    "id": "#TopHat2.max_segment_intron"
                },
                {
                    "source": [
                        "#max_multihits"
                    ],
                    "id": "#TopHat2.max_multihits"
                },
                {
                    "source": [
                        "#max_intron_length"
                    ],
                    "id": "#TopHat2.max_intron_length"
                },
                {
                    "source": [
                        "#max_insertion_length"
                    ],
                    "id": "#TopHat2.max_insertion_length"
                },
                {
                    "source": [
                        "#max_deletion_length"
                    ],
                    "id": "#TopHat2.max_deletion_length"
                },
                {
                    "source": [
                        "#max_coverage_intron"
                    ],
                    "id": "#TopHat2.max_coverage_intron"
                },
                {
                    "source": [
                        "#mate_std_dev"
                    ],
                    "id": "#TopHat2.mate_std_dev"
                },
                {
                    "source": [
                        "#mate_inner_dist"
                    ],
                    "id": "#TopHat2.mate_inner_dist"
                },
                {
                    "source": [
                        "#library_type"
                    ],
                    "id": "#TopHat2.library_type"
                },
                {
                    "source": [
                        "#keep_fasta_order"
                    ],
                    "id": "#TopHat2.keep_fasta_order"
                },
                {
                    "id": "#TopHat2.insertions"
                },
                {
                    "source": [
                        "#fusion_search"
                    ],
                    "id": "#TopHat2.fusion_search"
                },
                {
                    "source": [
                        "#fusion_read_mismatches"
                    ],
                    "id": "#TopHat2.fusion_read_mismatches"
                },
                {
                    "source": [
                        "#fusion_multireads"
                    ],
                    "id": "#TopHat2.fusion_multireads"
                },
                {
                    "source": [
                        "#fusion_multipairs"
                    ],
                    "id": "#TopHat2.fusion_multipairs"
                },
                {
                    "source": [
                        "#fusion_min_dist"
                    ],
                    "id": "#TopHat2.fusion_min_dist"
                },
                {
                    "source": [
                        "#fusion_ignore_chromosomes"
                    ],
                    "id": "#TopHat2.fusion_ignore_chromosomes"
                },
                {
                    "source": [
                        "#fusion_anchor_length"
                    ],
                    "id": "#TopHat2.fusion_anchor_length"
                },
                {
                    "id": "#TopHat2.deletions"
                },
                {
                    "source": [
                        "#coverage_search"
                    ],
                    "id": "#TopHat2.coverage_search"
                },
                {
                    "source": [
                        "#bowtie_n"
                    ],
                    "id": "#TopHat2.bowtie_n"
                },
                {
                    "source": [
                        "#Bowtie2_Indexer.bowtie_index_archive"
                    ],
                    "id": "#TopHat2.bowtie_index_archive"
                },
                {
                    "source": [
                        "#b2_score_min_F"
                    ],
                    "id": "#TopHat2.b2_score_min_F"
                },
                {
                    "source": [
                        "#b2_score_min_B"
                    ],
                    "id": "#TopHat2.b2_score_min_B"
                },
                {
                    "source": [
                        "#b2_score_min_A"
                    ],
                    "id": "#TopHat2.b2_score_min_A"
                },
                {
                    "source": [
                        "#b2_rfg"
                    ],
                    "id": "#TopHat2.b2_rfg"
                },
                {
                    "source": [
                        "#b2_rdg"
                    ],
                    "id": "#TopHat2.b2_rdg"
                },
                {
                    "source": [
                        "#b2_preset"
                    ],
                    "id": "#TopHat2.b2_preset"
                },
                {
                    "source": [
                        "#b2_np"
                    ],
                    "id": "#TopHat2.b2_np"
                },
                {
                    "source": [
                        "#b2_n_ceil_F"
                    ],
                    "id": "#TopHat2.b2_n_ceil_F"
                },
                {
                    "source": [
                        "#b2_n_ceil_B"
                    ],
                    "id": "#TopHat2.b2_n_ceil_B"
                },
                {
                    "source": [
                        "#b2_n_ceil_A"
                    ],
                    "id": "#TopHat2.b2_n_ceil_A"
                },
                {
                    "source": [
                        "#b2_mp"
                    ],
                    "id": "#TopHat2.b2_mp"
                },
                {
                    "source": [
                        "#b2_i_F"
                    ],
                    "id": "#TopHat2.b2_i_F"
                },
                {
                    "source": [
                        "#b2_i_B"
                    ],
                    "id": "#TopHat2.b2_i_B"
                },
                {
                    "source": [
                        "#b2_i_A"
                    ],
                    "id": "#TopHat2.b2_i_A"
                },
                {
                    "source": [
                        "#b2_gbar"
                    ],
                    "id": "#TopHat2.b2_gbar"
                },
                {
                    "source": [
                        "#b2_R"
                    ],
                    "id": "#TopHat2.b2_R"
                },
                {
                    "source": [
                        "#b2_N"
                    ],
                    "id": "#TopHat2.b2_N"
                },
                {
                    "source": [
                        "#b2_L"
                    ],
                    "id": "#TopHat2.b2_L"
                },
                {
                    "source": [
                        "#b2_D"
                    ],
                    "id": "#TopHat2.b2_D"
                },
                {
                    "source": [
                        "#GTF"
                    ],
                    "id": "#TopHat2.GTF"
                }
            ],
            "sbg:x": 616.0000000000002,
            "id": "#TopHat2",
            "run": {
                "sbg:sbgMaintained": false,
                "sbg:categories": [
                    "Alignment",
                    "RNA"
                ],
                "sbg:job": {
                    "inputs": {
                        "read": [
                            {
                                "secondaryFiles": [],
                                "class": "File",
                                "size": 0,
                                "metadata": {
                                    "paired_end": "1",
                                    "sample_id": "a"
                                },
                                "path": "/test-data/read_A_1.fastq"
                            },
                            {
                                "secondaryFiles": [],
                                "path": "/test-data/read_B_1.fastq",
                                "metadata": {
                                    "paired_end": "1",
                                    "sample_id": "b"
                                }
                            },
                            {
                                "secondaryFiles": [],
                                "class": "File",
                                "size": 0,
                                "metadata": {
                                    "paired_end": "2",
                                    "sample_id": "b"
                                },
                                "path": "/test-data/read_B_2.fastq"
                            },
                            {
                                "secondaryFiles": [],
                                "class": "File",
                                "size": 0,
                                "metadata": {
                                    "paired_end": "2",
                                    "sample_id": "a"
                                },
                                "path": "/test-data/read_A_2.fastq"
                            }
                        ],
                        "b2_i_A": 1,
                        "b2_D": 5,
                        "b2_i_B": 1.15,
                        "b2_rfg": [
                            0
                        ],
                        "b2_mp": [
                            0
                        ],
                        "b2_n_ceil_A": 1,
                        "GTF": {
                            "path": "/demo/test-data/annotations.gtf"
                        },
                        "bowtie_index_archive": {
                            "secondaryFiles": [],
                            "class": "File",
                            "size": 0,
                            "metadata": {
                                "reference_genome": "chr20"
                            },
                            "path": "/demo/test-data/chr20_bowtie2-2.2.6.tar"
                        },
                        "b2_n_ceil_F": "Natural log",
                        "b2_rdg": [
                            0
                        ],
                        "b2_score_min_B": 0.5,
                        "b2_i_F": "Natural log",
                        "b2_score_min_A": 0.5,
                        "b2_score_min_F": "Constant",
                        "b2_preset": "Very sensitive",
                        "b2_n_ceil_B": 1
                    },
                    "allocatedResources": {
                        "mem": 12000,
                        "cpu": 8
                    }
                },
                "id": "bix-demo/tophat-2-1-0-demo/tophat2/11",
                "label": "TopHat2",
                "class": "CommandLineTool",
                "y": 312.00000000000006,
                "stdout": "",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1450911590
                    },
                    {
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1450911591
                    },
                    {
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1450911592
                    },
                    {
                        "sbg:modifiedBy": "ana_d",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1457434088
                    },
                    {
                        "sbg:modifiedBy": "jexnaex",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1464956981
                    },
                    {
                        "sbg:modifiedBy": "ana_d",
                        "sbg:revisionNotes": "Redesigned to accept archive with Bowtie2 index files on the input.",
                        "sbg:revision": 5,
                        "sbg:modifiedOn": 1471949957
                    },
                    {
                        "sbg:modifiedBy": "ana_d",
                        "sbg:revisionNotes": "Additional info improved and reference_genome input discarded.",
                        "sbg:revision": 6,
                        "sbg:modifiedOn": 1471959682
                    },
                    {
                        "sbg:modifiedBy": "ana_d",
                        "sbg:revisionNotes": "Parameter description changed.",
                        "sbg:revision": 7,
                        "sbg:modifiedOn": 1473772756
                    },
                    {
                        "sbg:modifiedBy": "ana_d",
                        "sbg:revisionNotes": "Description of min_segment_intron parameter changed.",
                        "sbg:revision": 8,
                        "sbg:modifiedOn": 1473945678
                    },
                    {
                        "sbg:modifiedBy": "ana_d",
                        "sbg:revisionNotes": "Multiple read pairs can be included in the command line now. In order to have the same order of the pairs, \"Sample ID\" metadata has to be set. Otherwise, pairs will be ordered randomly.",
                        "sbg:revision": 9,
                        "sbg:modifiedOn": 1475168105
                    },
                    {
                        "sbg:modifiedBy": "ana_d",
                        "sbg:revisionNotes": "Multiple read pairs can be included in the command line now. In order to have the same order of the pairs, \"Sample ID\" metadata has to be set. Otherwise, pairs will be ordered randomly.",
                        "sbg:revision": 10,
                        "sbg:modifiedOn": 1475168731
                    },
                    {
                        "sbg:modifiedBy": "ana_d",
                        "sbg:revisionNotes": "Javascript for reads input fixed.",
                        "sbg:revision": 11,
                        "sbg:modifiedOn": 1475670811
                    }
                ],
                "sbg:toolkitVersion": "2.1.0",
                "sbg:links": [
                    {
                        "id": "https://ccb.jhu.edu/software/tophat/index.shtml",
                        "label": "Homepage"
                    },
                    {
                        "id": "https://ccb.jhu.edu/software/tophat/downloads/tophat-2.1.0.tar.gz",
                        "label": "Source Code"
                    },
                    {
                        "id": "https://ccb.jhu.edu/software/tophat/manual.shtml",
                        "label": "Manual"
                    },
                    {
                        "id": "http://www.genomebiology.com/2013/14/4/R36/abstract",
                        "label": "Publication"
                    }
                ],
                "inputs": [
                    {
                        "sbg:category": "Basic Options",
                        "inputBinding": {
                            "prefix": "--transcriptome-only",
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 144
                        },
                        "id": "#transcriptome_only",
                        "sbg:altPrefix": "-T",
                        "label": "Transcriptome only",
                        "description": "Only align the reads to the transcriptome and report only those mappings as genomic mappings. Requires a GTF input and/or transcriptome index.",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "sbg:toolDefaultValue": "False"
                    },
                    {
                        "sbg:category": "Basic Options",
                        "inputBinding": {
                            "prefix": "--transcriptome-max-hits",
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 145
                        },
                        "id": "#transcriptome_max_hits",
                        "sbg:altPrefix": "-x",
                        "label": "Transcriptome max hits",
                        "description": "Maximum number of mappings allowed for a read, when aligned to the transcriptome (any reads found with more then this number of mappings will be discarded).",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "60"
                    },
                    {
                        "sbg:category": "Basic Options",
                        "inputBinding": {
                            "prefix": "--splice-mismatches",
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 111
                        },
                        "id": "#splice_mismatches",
                        "sbg:altPrefix": "-m",
                        "label": "Splice mismatches",
                        "description": "The maximum number of mismatches that may appear in the \"anchor\" region of a spliced alignment. Only values between 0 and 2 supported.",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "0"
                    },
                    {
                        "sbg:category": "Advanced Options",
                        "inputBinding": {
                            "prefix": "--segment-mismatches",
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 125
                        },
                        "id": "#segment_mismatches",
                        "label": "Segment mismatches",
                        "description": "Read segments are mapped independently, allowing up to this many mismatches in each segment alignment.",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "2"
                    },
                    {
                        "sbg:category": "Advanced Options",
                        "inputBinding": {
                            "prefix": "--segment-length",
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 126
                        },
                        "id": "#segment_length",
                        "label": "Segment length",
                        "description": "Each read is cut up into segments, each at least this long. These segments are mapped independently.",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "25"
                    },
                    {
                        "sbg:category": "Advanced Options",
                        "inputBinding": {
                            "prefix": "--report-secondary-alignments",
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 118
                        },
                        "id": "#report_secondary_alignments",
                        "label": "Report secondary alignments",
                        "description": "By default TopHat reports best or primary alignments based on alignment scores (AS). Use this option if you want to output additional or secondary alignments (up to 20 alignments will be reported this way, this limit can be changed by using the \"Maximum multihits\" option from \"Basic Options\" category).",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "sbg:toolDefaultValue": "False"
                    },
                    {
                        "sbg:category": "Basic Options",
                        "inputBinding": {
                            "prefix": "--read-realign-edit-dist",
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 106
                        },
                        "id": "#read_realign_edit_dist",
                        "label": "Read realign edit distance",
                        "description": "Some of the reads spanning multiple exons may be mapped incorrectly as a contiguous alignment to the genome even though the correct alignment should be a spliced one - this can happen in the presence of processed pseudogenes that are rarely (if at all) transcribed or expressed. This option can direct TopHat to re-align reads for which the edit distance of an alignment obtained in a previous mapping step is above or equal to this option value. If you set this option to 0, TopHat will map every read in all the mapping steps (transcriptome if you provided gene annotations, genome, and finally splice variants detected by TopHat), reporting the best possible alignment found in any of these mapping steps. This may greatly increase the mapping accuracy at the expense of an increase in running time. The default value for this option is set such that TopHat will not try to realign reads already mapped in earlier steps.",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "\"Read edit distance\" + 1"
                    },
                    {
                        "sbg:category": "Basic Options",
                        "inputBinding": {
                            "prefix": "--read-mismatches",
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 103
                        },
                        "id": "#read_mismatches",
                        "sbg:altPrefix": "-N",
                        "label": "Read mismatches",
                        "description": "Final read alignments having more than these many mismatches are discarded.",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "2"
                    },
                    {
                        "sbg:category": "Basic Options",
                        "inputBinding": {
                            "prefix": "--read-gap-length",
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 104
                        },
                        "id": "#read_gap_length",
                        "label": "Read gap length",
                        "description": "Final read alignments having more than these many total length of gaps are discarded.",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "2"
                    },
                    {
                        "sbg:category": "Basic Options",
                        "inputBinding": {
                            "prefix": "--read-edit-dist",
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 105
                        },
                        "id": "#read_edit_dist",
                        "label": "Read edit distance",
                        "description": "Final read alignments having more than these many edit distance are discarded.",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "2"
                    },
                    {
                        "sbg:category": "Input files",
                        "inputBinding": {
                            "valueFrom": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "{\n  var list = [].concat($job.inputs.read)\n  var all_samples = []\n  \n  getUnique = function(arr){\n   var u = {}, a = [];\n   for(var i = 0, l = arr.length; i < l; ++i){\n      if(u.hasOwnProperty(arr[i])) {\n         continue;\n      }\n      a.push(arr[i]);\n      u[arr[i]] = 1;\n   }\n   return a;\n  }\n  \n  \n  for (index = 0; index < list.length; ++index) {\n    if (list[index].metadata != null){\n      all_samples.push(list[index].metadata.sample_id)\n    }\n  }\n  samples = getUnique(all_samples)\n  \n  var samples_given = all_samples.length == list.length\n  \n  for (index = 0; index < list.length; ++index) {\n    if (list[index].metadata != null){\n      all_samples.push(list[index].metadata.sample_id)\n    }\n  }\n  samples = getUnique(all_samples)\n  var resp = []\n  \n  if (list.length == 1){\n    resp.push(list[0].path)\n    \n  }else if (list.length == 2){    \n    \n    left = \"\"\n    right = \"\"\n      \n    for (index = 0; index < list.length; ++index) {\n      \n      if (list[index].metadata != null){\n        if (list[index].metadata.paired_end == 1){\n          left = list[index].path\n        }else if (list[index].metadata.paired_end == 2){\n          right = list[index].path\n        }\n      }\n    }\n    \n    if (left != \"\" && right != \"\"){      \n      resp.push(left)\n      resp.push(right)\n    }\n  }\n  else if (list.length > 2){\n    left = []\n    right = []\n    if (samples_given){\n      for (sample_ind = 0; sample_ind < samples.length; ++sample_ind){\n        for (read_ind = 0; read_ind < list.length; ++read_ind){\n          if (list[read_ind].metadata != null){\n            if (list[read_ind].metadata.paired_end == 1 && list[read_ind].metadata.sample_id == samples[sample_ind]){\n              left.push(list[read_ind].path)\n            }else if (list[read_ind].metadata.paired_end == 2 && list[read_ind].metadata.sample_id == samples[sample_ind]){\n              right.push(list[read_ind].path)}\n          }\n        }\n      }\n    } else {\n        for (index = 0; index < list.length; ++index) {\n\n          if (list[index].metadata != null){\n            if (list[index].metadata.paired_end == 1){\n              left.push(list[index].path)\n            }else if (list[index].metadata.paired_end == 2){\n              right.push(list[index].path)\n            }\n          }\n        }\n    }\n\n\n    left_join = left.join()\n    right_join = right.join()\n    if (left != [] && right != []){      \n      resp.push(left_join)\n      resp.push(right_join)\n    }\n    }\n  \n  if(resp.length > 0){    \n    return resp.join(\" \")\n  }\n}"
                            },
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 152,
                            "itemSeparator": " "
                        },
                        "sbg:fileTypes": "FASTA, FASTQ, FA, FQ",
                        "id": "#read",
                        "label": "Read sequence",
                        "required": true,
                        "description": "Read sequence in FASTQ or FASTA format. In case of paired-end alignment it is crucial to set metadata 'paired-end' field to 1/2.",
                        "type": [
                            {
                                "items": "File",
                                "name": "read",
                                "type": "array"
                            }
                        ]
                    },
                    {
                        "sbg:category": "Input files",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "prefix": "--raw-juncs",
                            "separate": true,
                            "streamable": false,
                            "position": 141
                        },
                        "sbg:fileTypes": "JUNCS",
                        "id": "#raw_juncs",
                        "label": "Raw junctions",
                        "required": false,
                        "sbg:altPrefix": "-j",
                        "description": "Supply TopHat with a list of raw junctions.",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "sbg:category": "Basic Options",
                        "inputBinding": {
                            "prefix": "--prefilter-multihits",
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 146
                        },
                        "id": "#prefilter_multihits",
                        "sbg:altPrefix": "-M",
                        "label": "Prefilter multihits",
                        "description": "When mapping reads on the transcriptome, some repetitive or low complexity reads that would be discarded in the context of the genome may appear to align to the transcript sequences and thus may end up reported as mapped to those genes only. This option directs TopHat to first align the reads to the whole genome in order to determine and exclude such multi-mapped reads (according to the value of the \"Maximum multihits\" option).",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "sbg:toolDefaultValue": "False"
                    },
                    {
                        "sbg:category": "Advanced Options",
                        "inputBinding": {
                            "prefix": "--no-sort-bam",
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 132
                        },
                        "id": "#no_sort_bam",
                        "label": "Disable BAM sorting",
                        "description": "Output BAM is not coordinate-sorted.",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "sbg:toolDefaultValue": "False"
                    },
                    {
                        "sbg:category": "Basic Options",
                        "inputBinding": {
                            "prefix": "--no-novel-juncs",
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 142
                        },
                        "id": "#no_novel_juncs",
                        "label": "No novel juncs",
                        "description": "Only look for reads across junctions indicated in the supplied GTF/GFF or junctions file. Ignored unless one or both of these files are included.",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "sbg:toolDefaultValue": "False"
                    },
                    {
                        "sbg:category": "Basic Options",
                        "inputBinding": {
                            "prefix": "--no-novel-indels",
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 149
                        },
                        "id": "#no_novel_indels",
                        "label": "No novel indels",
                        "description": "Only look for reads across indels in the supplied indel file, or disable indel detection when no file has been provided.",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "sbg:toolDefaultValue": "False"
                    },
                    {
                        "sbg:category": "Advanced Options",
                        "inputBinding": {
                            "prefix": "--no-mixed",
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 120
                        },
                        "id": "#no_mixed",
                        "label": "Disable mixed alignments",
                        "description": "For paired reads, only report read alignments if both reads in a pair can be mapped (by default, if TopHat cannot find a concordant or discordant alignment for both reads in a pair, it will find and report alignments for each read separately; this option disables that behavior).",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "sbg:toolDefaultValue": "False"
                    },
                    {
                        "sbg:category": "Advanced Options",
                        "inputBinding": {
                            "prefix": "--no-discordant",
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 119
                        },
                        "id": "#no_discordant",
                        "label": "Disable discordant alignments",
                        "description": "For paired reads, report only concordant mappings.",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "sbg:toolDefaultValue": "False"
                    },
                    {
                        "sbg:category": "Advanced Options",
                        "inputBinding": {
                            "prefix": "--min-segment-intron",
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 127
                        },
                        "id": "#min_segment_intron",
                        "label": "Minimum segment intron",
                        "description": "The minimum intron length that may be found during split-segment search (must be at least 1).",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "50"
                    },
                    {
                        "sbg:category": "Basic Options",
                        "inputBinding": {
                            "prefix": "--min-intron-length",
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 112
                        },
                        "id": "#min_intron_length",
                        "sbg:altPrefix": "-i",
                        "label": "Minimum intron length",
                        "description": "The minimum intron length. TopHat will ignore donor/acceptor pairs closer than this many bases apart.",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "50"
                    },
                    {
                        "sbg:category": "Advanced Options",
                        "inputBinding": {
                            "prefix": "--min-coverage-intron",
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 129
                        },
                        "id": "#min_coverage_intron",
                        "label": "Minimum coverage intron",
                        "description": "The minimum intron length that may be found during coverage search.",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "50"
                    },
                    {
                        "sbg:category": "Basic Options",
                        "inputBinding": {
                            "prefix": "--min-anchor",
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 110
                        },
                        "id": "#min_anchor_length",
                        "sbg:altPrefix": "-a",
                        "label": "Minimum anchor length",
                        "description": "The \"anchor length\". TopHat will report junctions spanned by reads with at least this many bases on each side of the junction. Note that individual spliced alignments may span a junction with fewer than this many bases on one side. However, every junction involved in spliced alignments is supported by at least one read with this many bases on each side. This must be at least 3.",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "8"
                    },
                    {
                        "sbg:category": "Basic Options",
                        "inputBinding": {
                            "prefix": "--microexon-search",
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 122
                        },
                        "id": "#microexon_search",
                        "label": "Microexon search",
                        "description": "With this option, the pipeline will attempt to find alignments incident to micro-exons. Works only for reads 50bp or longer.",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "sbg:toolDefaultValue": "False"
                    },
                    {
                        "sbg:category": "Advanced Options",
                        "inputBinding": {
                            "prefix": "--max-segment-intron",
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 128
                        },
                        "id": "#max_segment_intron",
                        "label": "Maximum segment intron",
                        "description": "The maximum intron length that may be found during split-segment search.",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "500000"
                    },
                    {
                        "sbg:category": "Basic Options",
                        "inputBinding": {
                            "prefix": "--max-multihits",
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 118
                        },
                        "id": "#max_multihits",
                        "sbg:altPrefix": "-g",
                        "label": "Maximum multihits",
                        "description": "Instructs TopHat to allow up to this many alignments to the reference for a given read, and choose the alignments based on their alignment scores if there are more than this number. Unless you use \"Report secondary alignments\", TopHat will report the alignments with the best alignment score. If there are more alignments with the same score than this number, TopHat will randomly report only this many alignments. In case of using \"Report secondary alignments\", TopHat will try to report alignments up to this option value, and TopHat may randomly output some of the alignments with the same score to meet this number.",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "20"
                    },
                    {
                        "sbg:category": "Basic Options",
                        "inputBinding": {
                            "prefix": "--max-intron-length",
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 113
                        },
                        "id": "#max_intron_length",
                        "sbg:altPrefix": "-I",
                        "label": "Maximum intron length",
                        "description": "The maximum intron length. When searching for junctions ab initio, TopHat will ignore donor/acceptor pairs farther than this many bases apart, except when such a pair is supported by a split segment alignment of a long read.",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "500000"
                    },
                    {
                        "sbg:category": "Basic Options",
                        "inputBinding": {
                            "prefix": "--max-insertion-length",
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 114
                        },
                        "id": "#max_insertion_length",
                        "label": "Maximum insertion length",
                        "description": "The maximum insertion length.",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "3"
                    },
                    {
                        "sbg:category": "Basic Options",
                        "inputBinding": {
                            "prefix": "--max-deletion-length",
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 115
                        },
                        "id": "#max_deletion_length",
                        "label": "Maximum deletion length",
                        "description": "The maximum deletion length.",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "3"
                    },
                    {
                        "sbg:category": "Advanced Options",
                        "inputBinding": {
                            "prefix": "--max-coverage-intron",
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 130
                        },
                        "id": "#max_coverage_intron",
                        "label": "Maximum coverage intron",
                        "description": "The maximum intron length that may be found during coverage search.",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "20000"
                    },
                    {
                        "sbg:category": "Basic Options",
                        "inputBinding": {
                            "prefix": "--mate-std-dev",
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 109
                        },
                        "id": "#mate_std_dev",
                        "label": "Mate standard deviation",
                        "description": "The standard deviation for the distribution on inner distances between mate pairs.",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "20"
                    },
                    {
                        "sbg:category": "Basic Options",
                        "inputBinding": {
                            "prefix": "--mate-inner-dist",
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 108
                        },
                        "id": "#mate_inner_dist",
                        "sbg:altPrefix": "-r",
                        "label": "Mate inner distance",
                        "description": "This is the expected (mean) inner distance between mate pairs. For, example, for paired end runs with fragments selected at 300bp, where each end is 50bp, you should set -r to be 200.",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "50"
                    },
                    {
                        "sbg:category": "Basic Options",
                        "inputBinding": {
                            "prefix": "--library-type",
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 123
                        },
                        "id": "#library_type",
                        "label": "Library type",
                        "description": "The default is unstranded (fr-unstranded); i.e. Standard Illumina - Reads from the left-most end of the fragment (in transcript coordinates) map to the transcript strand, and the right-most end maps to the opposite strand. Consider supplying library type options below to select the correct RNA-seq protocol. When selecting fr-firststrand ( i.e. dUTP, NSR, NNSR) or fr-secondstrand (i.e. Ligation, Standard SOLiD) as a library type, see TopHat manual for more information.",
                        "type": [
                            "null",
                            {
                                "name": "library_type",
                                "symbols": [
                                    "fr-unstranded",
                                    "fr-firststrand",
                                    "fr-secondstrand"
                                ],
                                "type": "enum"
                            }
                        ],
                        "sbg:toolDefaultValue": "fr-unstranded"
                    },
                    {
                        "sbg:category": "Advanced Options",
                        "inputBinding": {
                            "prefix": "--keep-fasta-order",
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 131
                        },
                        "id": "#keep_fasta_order",
                        "label": "Keep FASTA order",
                        "description": "In order to sort alignments in the same order in the genome FASTA file, the option can be used. But this option will make the output SAM/BAM file incompatible with those from the previous versions of TopHat (1.4.1 or lower).",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "sbg:toolDefaultValue": "False"
                    },
                    {
                        "sbg:category": "Input files",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "prefix": "--insertions",
                            "separate": true,
                            "streamable": false,
                            "position": 147
                        },
                        "sbg:fileTypes": "JUNCS, TAB, TXT",
                        "id": "#insertions",
                        "label": "Insertions",
                        "required": false,
                        "description": "Supply TopHat with a list of insertions with respect to the reference. Indels are specified one per line, in a tab-delimited format, identical to that of junctions.",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "sbg:category": "Fusion Options",
                        "inputBinding": {
                            "prefix": "--fusion-search",
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 134
                        },
                        "id": "#fusion_search",
                        "label": "Fusion search",
                        "description": "Turn on fusion mapping.",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "sbg:toolDefaultValue": "False"
                    },
                    {
                        "sbg:category": "Fusion Options",
                        "inputBinding": {
                            "prefix": "--fusion-read-mismatches",
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 137
                        },
                        "id": "#fusion_read_mismatches",
                        "label": "Fusion read mismatches",
                        "description": "Reads support fusions if they map across fusion with at most these many mismatches.",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "2"
                    },
                    {
                        "sbg:category": "Fusion Options",
                        "inputBinding": {
                            "prefix": "--fusion-multireads",
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 138
                        },
                        "id": "#fusion_multireads",
                        "label": "Fusion multireads",
                        "description": "Reads that map to more than these many places will be ignored. It may be possible that a fusion is supported by reads (or pairs) that map to multiple places.",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "2"
                    },
                    {
                        "sbg:category": "Fusion Options",
                        "inputBinding": {
                            "prefix": "--fusion-multipairs",
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 139
                        },
                        "id": "#fusion_multipairs",
                        "label": "Fusion multipairs",
                        "description": "Pairs that map to more than these many places will be ignored.",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "2"
                    },
                    {
                        "sbg:category": "Fusion Options",
                        "inputBinding": {
                            "prefix": "--fusion-min-dist",
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 136
                        },
                        "id": "#fusion_min_dist",
                        "label": "Fusion minimum distance",
                        "description": "For intra-chromosomal fusions, TopHat-Fusion tries to find fusions separated by at least this distance.",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "10000000"
                    },
                    {
                        "sbg:category": "Fusion Options",
                        "inputBinding": {
                            "prefix": "--fusion-ignore-chromosomes",
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 140,
                            "itemSeparator": ","
                        },
                        "id": "#fusion_ignore_chromosomes",
                        "label": "Fusion ignore chromosomes",
                        "description": "Ignore some chromosomes such as chrM when detecting fusion break points. Please check the correct names for chromosomes, that is, mitochondrial DNA is represented as chrM or M depending on the annotation you use. List chromosomes separated with commas.",
                        "type": [
                            "null",
                            {
                                "items": {
                                    "type": "string"
                                },
                                "type": "array"
                            }
                        ]
                    },
                    {
                        "sbg:category": "Fusion Options",
                        "inputBinding": {
                            "prefix": "--fusion-anchor-length",
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 135
                        },
                        "id": "#fusion_anchor_length",
                        "label": "Fusion anchor length",
                        "description": "A \"supporting\" read must map to both sides of a fusion by at least these many bases.",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "20"
                    },
                    {
                        "sbg:category": "Input files",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "prefix": "--deletions",
                            "separate": true,
                            "streamable": false,
                            "position": 148
                        },
                        "sbg:fileTypes": "JUNCS, TAB, TXT",
                        "id": "#deletions",
                        "label": "Deletions",
                        "required": false,
                        "description": "Supply TopHat with a list of deletions with respect to the reference. Indels are specified one per line, in a tab-delimited format, identical to that of junctions.",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "sbg:category": "Basic Options",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 121,
                            "valueFrom": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "{\t\n  if ($job.inputs.coverage_search){\n    return \"--coverage-search\"\n  }else{\n    return \"--no-coverage-search\"\n  }\n}"
                            }
                        },
                        "id": "#coverage_search",
                        "label": "Coverage search",
                        "description": "Disables or enables the coverage-based search for junctions. It is suggested to only enable coverage search for short reads (< 45bp) and with a small number of reads (<= 10 million).",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "sbg:toolDefaultValue": "False"
                    },
                    {
                        "sbg:category": "Advanced Options",
                        "inputBinding": {
                            "prefix": "--bowtie-n",
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 124
                        },
                        "id": "#bowtie_n",
                        "label": "Bowtie -n",
                        "description": "TopHat uses \"-v\" in Bowtie for initial read mapping (the default), but with this option, \"-n\" is used instead. Read segments are always mapped using \"-v\" option.",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "sbg:toolDefaultValue": "False"
                    },
                    {
                        "sbg:category": "Input files",
                        "sbg:stageInput": "link",
                        "sbg:fileTypes": "TAR",
                        "id": "#bowtie_index_archive",
                        "label": "Bowtie index archive",
                        "required": true,
                        "description": "Archive file produced by Bowtie2 Indexer.",
                        "type": [
                            "File"
                        ]
                    },
                    {
                        "sbg:category": "Bowtie2 Alignment Score Function",
                        "id": "#b2_score_min_F",
                        "label": "Function type",
                        "description": "Sets a function type F in function governing the minimum alignment score needed for an alignment to be considered \"valid\" (i.e. good enough to report). This is a function of read length. The minimum-score function f is f(x) = A + B * F(x), where x is the read length. By default, function F is set to \"Linear\", Constant A and Coefficient B to -0.6.",
                        "type": [
                            "null",
                            {
                                "name": "b2_score_min_F",
                                "symbols": [
                                    "Constant",
                                    "Linear",
                                    "Square-root",
                                    "Natural log"
                                ],
                                "type": "enum"
                            }
                        ],
                        "sbg:toolDefaultValue": "Linear"
                    },
                    {
                        "sbg:category": "Bowtie2 Alignment Score Function",
                        "id": "#b2_score_min_B",
                        "label": "Coefficient B",
                        "description": "Sets a coefficient B in function governing the minimum alignment score needed for an alignment to be considered 'valid' (i.e. good enough to report). This is a function of read length. The minimum-score function f is f(x) = A + B * F(x), where x is the read length.",
                        "type": [
                            "null",
                            "float"
                        ],
                        "sbg:toolDefaultValue": "-0.6"
                    },
                    {
                        "sbg:category": "Bowtie2 Alignment Score Function",
                        "id": "#b2_score_min_A",
                        "label": "Constant A",
                        "description": "Sets a constant A in function governing the minimum alignment score needed for an alignment to be considered 'valid' (i.e. good enough to report). This is a function of read length. The minimum-score function f is f(x) = A + B * F(x), where x is the read length.",
                        "type": [
                            "null",
                            "float"
                        ],
                        "sbg:toolDefaultValue": "-0.6"
                    },
                    {
                        "sbg:category": "Bowtie2 Scoring Options",
                        "inputBinding": {
                            "prefix": "--b2-rfg",
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "itemSeparator": ","
                        },
                        "id": "#b2_rfg",
                        "label": "Reference gap penalties",
                        "description": "Sets the reference gap open (first value) and extend (second value) penalty, respectively. A reference gap of length N gets a penalty of <gap-open-penalty> + N * <gap-extend-penalty>.",
                        "type": [
                            "null",
                            {
                                "items": "int",
                                "type": "array"
                            }
                        ],
                        "sbg:toolDefaultValue": "5,3"
                    },
                    {
                        "sbg:category": "Bowtie2 Scoring Options",
                        "inputBinding": {
                            "prefix": "--b2-rdg",
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "itemSeparator": ","
                        },
                        "id": "#b2_rdg",
                        "label": "Read gap penalties",
                        "description": "Sets the read gap open (first value) and extend (second value) penalty, respectively. A read gap of length N gets a penalty of <gap-open-penalty> + N * <gap-extend-penalty>.",
                        "type": [
                            "null",
                            {
                                "items": "int",
                                "type": "array"
                            }
                        ],
                        "sbg:toolDefaultValue": "5,3"
                    },
                    {
                        "sbg:category": "Bowtie2 Preset Options",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "valueFrom": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "{\n  var preset_option = $job.inputs.b2_preset\n  \n  var presets = {\n    \"Very fast\": \"--b2-very-fast\",\n    \"Fast\": \"--b2-fast\",\n    \"Sensitive\": \"--b2-sensitive\",\n    \"Very sensitive\": \"--b2-very-sensitive\"\n  }\n  \n  if (preset_option && preset_option != \"Custom\"){\n    return presets[preset_option]\n  }\n}"
                            }
                        },
                        "id": "#b2_preset",
                        "label": "Bowtie2 preset",
                        "description": "Preset options Bowtie2 to allow finer control of read mapping in end-to-end alignment mode (local alignment is not used in TopHat2). See the Bowtie2 manual for the alignment settings that correspond to each of the presets. Select \"Custom\" and set values in \"Bowtie2 Alignment Options\", \"Bowtie2 Scoring Options\" or \"Bowtie2 Effort Options\" categories to override preset values.",
                        "type": [
                            "null",
                            {
                                "name": "b2_preset",
                                "symbols": [
                                    "Very fast",
                                    "Fast",
                                    "Sensitive",
                                    "Very sensitive",
                                    "Custom"
                                ],
                                "type": "enum"
                            }
                        ],
                        "sbg:toolDefaultValue": "Fast"
                    },
                    {
                        "sbg:category": "Bowtie2 Scoring Options",
                        "inputBinding": {
                            "prefix": "--b2-np",
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "id": "#b2_np",
                        "label": "Ambiguous character penalty",
                        "description": "Sets penalty for positions where the read, reference, or both, contain an ambiguous character such as N.",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "1"
                    },
                    {
                        "sbg:category": "Bowtie2 Ambiguous Chars Function",
                        "id": "#b2_n_ceil_F",
                        "label": "Function type",
                        "description": "Sets a function type F in function governing the maximum number of ambiguous characters (usually Ns and/or .s) allowed in a read as a function of read length. The N-ceiling function f is f(x) = A + B * F(x), where x is the read length. Reads exceeding this ceiling are filtered out.",
                        "type": [
                            "null",
                            {
                                "name": "b2_n_ceil_F",
                                "symbols": [
                                    "Constant",
                                    "Linear",
                                    "Square-root",
                                    "Natural log"
                                ],
                                "type": "enum"
                            }
                        ],
                        "sbg:toolDefaultValue": "Linear"
                    },
                    {
                        "sbg:category": "Bowtie2 Ambiguous Chars Function",
                        "id": "#b2_n_ceil_B",
                        "label": "Coefficient B",
                        "description": "Sets a coefficient B in function governing the maximum number of ambiguous characters (usually Ns and/or .s) allowed in a read as a function of read length. The N-ceiling function f is f(x) = A + B * F(x), where x is the read length. Reads exceeding this ceiling are filtered out.",
                        "type": [
                            "null",
                            "float"
                        ],
                        "sbg:toolDefaultValue": "0.15"
                    },
                    {
                        "sbg:category": "Bowtie2 Ambiguous Chars Function",
                        "id": "#b2_n_ceil_A",
                        "label": "Constant A",
                        "description": "Sets a constant A in function governing the maximum number of ambiguous characters (usually Ns and/or .s) allowed in a read as a function of read length. The N-ceiling function f is f(x) = A + B * F(x), where x is the read length. Reads exceeding this ceiling are filtered out.",
                        "type": [
                            "null",
                            "float"
                        ],
                        "sbg:toolDefaultValue": "0"
                    },
                    {
                        "sbg:category": "Bowtie2 Scoring Options",
                        "inputBinding": {
                            "prefix": "--b2-mp",
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "itemSeparator": ","
                        },
                        "id": "#b2_mp",
                        "label": "Mismatch penalty",
                        "description": "Set maximum and minimum mismatch penalties, respectively.",
                        "type": [
                            "null",
                            {
                                "items": "int",
                                "type": "array"
                            }
                        ],
                        "sbg:toolDefaultValue": "6,2"
                    },
                    {
                        "sbg:category": "Bowtie2 Interval Function",
                        "id": "#b2_i_F",
                        "label": "Function type",
                        "description": "Sets a function type F in function f governing the interval between seed substrings, to use during multiseed alignment. The interval function f is f(x) = A + B * F(x), where x is the read length. By default, function F is set to 'Square-root', Constant A to 1 and Coefficient B to 1.25.",
                        "type": [
                            "null",
                            {
                                "name": "b2_i_F",
                                "symbols": [
                                    "Constant",
                                    "Linear",
                                    "Square-root",
                                    "Natural log"
                                ],
                                "type": "enum"
                            }
                        ],
                        "sbg:toolDefaultValue": "Square-root"
                    },
                    {
                        "sbg:category": "Bowtie2 Interval Function",
                        "id": "#b2_i_B",
                        "label": "Coefficient B",
                        "description": "Sets a coefficient B in function governing the interval between seed substrings to use during multiseed alignment. The interval function f is f(x) = A + B * F(x), where x is the read length.",
                        "type": [
                            "null",
                            "float"
                        ],
                        "sbg:toolDefaultValue": "1.25"
                    },
                    {
                        "sbg:category": "Bowtie2 Interval Function",
                        "id": "#b2_i_A",
                        "label": "Constant A",
                        "description": "Sets a constant A in function governing the interval between seed substrings to use during multiseed alignment. The interval function f is f(x) = A + B * F(x), where x is the read length.",
                        "type": [
                            "null",
                            "float"
                        ],
                        "sbg:toolDefaultValue": "1"
                    },
                    {
                        "sbg:category": "Bowtie2 Alignment Options",
                        "inputBinding": {
                            "prefix": "--b2-gbar",
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "id": "#b2_gbar",
                        "label": "Disallow gaps",
                        "description": "Disallow gaps within the given number of positions of the beginning or end of the read.",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "4"
                    },
                    {
                        "sbg:category": "Bowtie2 Effort Options",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "valueFrom": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "{\n  if ($job.inputs.b2_preset == \"Custom\" && $job.inputs.b2_R) {\n    return \"--b2-R \".concat($job.inputs.b2_R)\n  }\n}"
                            }
                        },
                        "id": "#b2_R",
                        "label": "Max number of re-seed",
                        "description": "Given number is the maximum number of times Bowtie2 will 're-seed' reads with repetitive seeds. When 're-seeding', Bowtie2 simply chooses a new set of reads (same length, same number of mismatches allowed) at different offsets and searches for more alignments. A read is considered to have repetitive seeds if the total number of seed hits divided by the number of seeds that aligned at least once is greater than 300.",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "2"
                    },
                    {
                        "sbg:category": "Bowtie2 Alignment Options",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "valueFrom": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "{\n  if ($job.inputs.b2_preset == \"Custom\" && $job.inputs.b2_N) {\n    return \"--b2-N \".concat($job.inputs.b2_N)\n  }\n}"
                            }
                        },
                        "id": "#b2_N",
                        "label": "Allowed mismatch number",
                        "description": "Sets the number of mismatches to allowed in a seed alignment during multiseed alignment. Can be set to 0 or 1. Setting this higher makes alignment slower (often much slower) but increases sensitivity.",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "0"
                    },
                    {
                        "sbg:category": "Bowtie2 Alignment Options",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "valueFrom": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "{\n  if ($job.inputs.b2_preset == \"Custom\" && $job.inputs.b2_L) {\n    return \"--b2-L \".concat($job.inputs.b2_L)\n  }\n}"
                            }
                        },
                        "id": "#b2_L",
                        "label": "Seed substring length",
                        "description": "Sets the length of the seed substrings to align during multiseed alignment. Smaller values make alignment slower but more senstive. Must be > 3 and < 32.",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "20"
                    },
                    {
                        "sbg:category": "Bowtie2 Effort Options",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "valueFrom": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "{\n  if ($job.inputs.b2_preset == \"Custom\" && $job.inputs.b2_D) {\n    return \"--b2-D \".concat($job.inputs.b2_D)\n  }\n}"
                            }
                        },
                        "id": "#b2_D",
                        "label": "Seed extension attempts",
                        "description": "Maximum number of to consecutive seed extension attempts that can \"fail\" before Bowtie2 moves on, using the alignments found so far. A seed extension \"fails\" if it does not yield a new best or a new second-best alignment.",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "15"
                    },
                    {
                        "sbg:category": "Input files",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "prefix": "--GTF",
                            "separate": true,
                            "streamable": false,
                            "position": 143
                        },
                        "sbg:fileTypes": "GTF",
                        "id": "#GTF",
                        "label": "Annotations",
                        "required": false,
                        "sbg:altPrefix": "-G",
                        "description": "Supply TopHat with a set of gene model annotations and/or known transcripts, as a GTF 2.2 or GFF3 formatted file. If this option is provided, TopHat will first extract the transcript sequences and use Bowtie to align reads to this virtual transcriptome first. Only the reads that do not fully map to the transcriptome will then be mapped on the genome. The reads that did map on the transcriptome will be converted to genomic mappings (spliced as needed) and merged with the novel mappings and junctions in the final TopHat output.",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "hints": [
                    {
                        "class": "DockerRequirement",
                        "dockerImageId": "ec5ac2a1890a",
                        "dockerPull": "images.sbgenomics.com/ana_d/tophat2:2.1.0"
                    },
                    {
                        "class": "sbg:CPURequirement",
                        "value": 8
                    },
                    {
                        "class": "sbg:MemRequirement",
                        "value": 12000
                    }
                ],
                "successCodes": [],
                "stdin": "",
                "sbg:image_url": null,
                "sbg:createdBy": "bix-demo",
                "sbg:validationErrors": [],
                "requirements": [
                    {
                        "class": "MemoryRequirement",
                        "value": 1000
                    },
                    {
                        "engineCommand": "cwl-engine.js",
                        "class": "ExpressionEngineRequirement",
                        "requirements": [
                            {
                                "class": "DockerRequirement",
                                "dockerPull": "rabix/js-engine"
                            }
                        ],
                        "id": "#cwl-js-engine"
                    }
                ],
                "temporaryFailCodes": [],
                "outputs": [
                    {
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#read",
                            "glob": "tophat_out/*_unmapped.bam"
                        },
                        "id": "#unmapped",
                        "sbg:fileTypes": "BAM",
                        "label": "Unmapped reads",
                        "description": "A list of unmapped reads in BAM format. It does not contain multi-mapped reads as opposed to versions prior to TopHat 2.0.9.",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "outputBinding": {
                            "sbg:metadata": {},
                            "sbg:inheritMetadataFrom": "#read",
                            "glob": "tophat_out/*_junctions.bed"
                        },
                        "id": "#tophat_junctions",
                        "sbg:fileTypes": "BED",
                        "label": "TopHat Junctions",
                        "description": "A UCSC BED track of junctions reported by TopHat. Each junction consists of two connected BED blocks, where each block is as long as the maximal overhang of any read spanning the junction. The score is the number of alignments spanning the junction.",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "outputBinding": {
                            "sbg:metadata": {},
                            "sbg:inheritMetadataFrom": "#read",
                            "glob": "tophat_out/*_insertions.bed"
                        },
                        "id": "#tophat_insertions",
                        "sbg:fileTypes": "BED",
                        "label": "TopHat Insertions",
                        "description": "UCSC BED tracks of insertions reported by TopHat. ChromLeft refers to the last genomic base before the insertion.",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "outputBinding": {
                            "sbg:metadata": {},
                            "sbg:inheritMetadataFrom": "#read",
                            "glob": "tophat_out/*_deletions.bed"
                        },
                        "id": "#tophat_deletions",
                        "sbg:fileTypes": "BED",
                        "label": "TopHat Deletions",
                        "description": "UCSC BED tracks of deletions reported by TopHat. ChromLeft refers to the last genomic base before the deletion.",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "outputBinding": {
                            "sbg:metadata": {},
                            "sbg:inheritMetadataFrom": "#read",
                            "glob": "tophat_out/*_accepted_hits.bam"
                        },
                        "id": "#aligned",
                        "sbg:fileTypes": "BAM",
                        "label": "Aligned BAM",
                        "description": "A list of read alignments in BAM format.",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "outputBinding": {
                            "sbg:metadata": {},
                            "sbg:inheritMetadataFrom": "#read",
                            "glob": "tophat_out/*_align_summary.txt"
                        },
                        "id": "#align_summary",
                        "sbg:fileTypes": "TXT",
                        "label": "Align Summary",
                        "description": "Containing read (pair) input and mapping counts.",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "cwlVersion": "sbg:draft-2",
                "sbg:contributors": [
                    "ana_d",
                    "jexnaex",
                    "bix-demo"
                ],
                "sbg:toolAuthor": "Daehwan Kim, Steven Salzberg, Cole Trapnell/Johns Hopkins University, University of Washington",
                "sbg:toolkit": "TopHat",
                "sbg:modifiedBy": "ana_d",
                "sbg:revisionNotes": "Javascript for reads input fixed.",
                "sbg:project": "bix-demo/tophat-2-1-0-demo",
                "sbg:id": "admin/sbg-public-data/tophat2/11",
                "description": "## TopHat2 (version 2.1.1)\n\n[TopHat2](https://ccb.jhu.edu/software/tophat/manual.shtml) is a program that aligns RNA-Seq reads to a genome in order to identify exon-exon splice junctions. It is built on the ultrafast short read mapping program [Bowtie2](http://bowtie-bio.sourceforge.net/bowtie2/manual.shtml).\n\nTopHat2 can also align reads directly to a transcriptome. If provided with annotation of known transcripts, TopHat2 constructs a virtual transcriptome and uses Bowtie2 to align reads to this reference first. Reads that do not align to the transcriptome are then mapped on the reference genome. The reads that did align on the transcriptome will be converted to genomic mappings (spliced as needed) and merged with the novel mappings and junctions in the final output.\n\nThis version of TopHat only accepts reads in FASTQ format. It is optimized for reads that are at least 75bp long.\n\n**Common issues:**\nOne of the most common issues when running TopHat is incompatibility between reference genome and annotations. Please, make sure that you are using compatible FASTA (from which you have created tar bundle with index files) and GTF files in order to run tasks successfully. If you suspect your task has failed due to this incompatibility, you can check the last line in `job.err.log` file which would look as following if your assumptions are correct: `Error: Couldn't build bowtie index with err = 1`.\n\n**Q&A:**\n\n***Q: What should I do if I already have Bowtie2 index files, not archived as tar bundle?***\n\n***A***: You can provide your *.bt2 files to [SBG Compressor](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/sbg-compressor-1-0/) app from our public apps and set \"TAR\" as your output format. After the task is finished, **you should assign common prefix of the index files to the `Reference genome` metadata field** and your TAR is ready for use.\n\n***Example:***\nIndexed files: chr20.1.bt2, chr20.2.bt2, chr20.3.bt2, chr20.4.bt2, chr20.rev.1.bt2, chr20.rev.2.bt2\n\nMetadata - `Reference genome`: **chr20**\n\n__Important note: In case of paired-end alignment it is crucial to set metadata 'paired-end' field to 1/2. Sequences specified as mate 1s must correspond file-for-file and read-for-read with those specified for mate 2s. Reads may be a mix of different lengths. In case of unpaired reads, the same metadata field should be set to '-'. Only one type of alignment can be performed at once, so all specified reads should be either paired or unpaired.__",
                "arguments": [
                    {
                        "prefix": "--num-threads",
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "engine": "#cwl-js-engine",
                            "script": "$job.allocatedResources.cpu"
                        }
                    },
                    {
                        "prefix": "",
                        "separate": false,
                        "valueFrom": {
                            "class": "Expression",
                            "engine": "#cwl-js-engine",
                            "script": "{\t\n  var list = $job.inputs.read\n  \n  if (list.length > 0){    \n\n    if (list[0].metadata != null){\n    \n      if(list[0].metadata.qual_scale == \"solexa\"){  \n        return \"--solexa-quals\"\n      }else if (list[0].metadata.qual_scale == \"illumina13\" || list[0].metadata.qual_scale == \"illumina15\"){\n        return \"--solexa1.3-quals\"\n      }\n    }\n    \n  }\n}"
                        }
                    },
                    {
                        "prefix": "--output-dir",
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "engine": "#cwl-js-engine",
                            "script": "\"./tophat_out\""
                        }
                    },
                    {
                        "separate": true,
                        "position": 151,
                        "valueFrom": {
                            "class": "Expression",
                            "engine": "#cwl-js-engine",
                            "script": "{\n  var index_prefix = $job.inputs.bowtie_index_archive.metadata.reference_genome\n  return \"./\".concat(index_prefix)\n}"
                        }
                    },
                    {
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "engine": "#cwl-js-engine",
                            "script": "{\n  var functions = {\n    \"Constant\": \"C\",\n    \"Linear\": \"L\",\n    \"Square-root\": \"S\",\n    \"Natural log\": \"G\"\n  }\n  function_type = $job.inputs.b2_i_F\n  value_list = [functions[function_type], $job.inputs.b2_i_A, $job.inputs.b2_i_B]\n  if ($job.inputs.b2_preset == \"Custom\") {\n    if (functions[function_type] && $job.inputs.b2_i_A && $job.inputs.b2_i_B) {\n      return \"--b2-i \".concat(value_list.join(\",\"))\n    }\n  }\n}"
                        }
                    },
                    {
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "engine": "#cwl-js-engine",
                            "script": "{\n  var functions = {\n    \"Constant\": \"C\",\n    \"Linear\": \"L\",\n    \"Square-root\": \"S\",\n    \"Natural log\": \"G\"\n  }\n  function_type = $job.inputs.b2_n_ceil_F\n  value_list = [functions[function_type], $job.inputs.b2_n_ceil_A, $job.inputs.b2_n_ceil_B]\n  if (functions[function_type] && $job.inputs.b2_n_ceil_A && $job.inputs.b2_n_ceil_B) {\n    return \"--b2-n-ceil \".concat(value_list.join(\",\"))\n  }\n}"
                        }
                    },
                    {
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "engine": "#cwl-js-engine",
                            "script": "{\n  var functions = {\n    \"Constant\": \"C\",\n    \"Linear\": \"L\",\n    \"Square-root\": \"S\",\n    \"Natural log\": \"G\"\n  }\n  function_type = $job.inputs.b2_score_min_F\n  value_list = [functions[function_type], $job.inputs.b2_score_min_A, $job.inputs.b2_score_min_B]\n  if (functions[function_type] && $job.inputs.b2_score_min_A && $job.inputs.b2_score_min_B) {\n    return \"--b2-score-min \".concat(value_list.join(\",\"))\n  }\n}"
                        }
                    },
                    {
                        "separate": true,
                        "position": 200,
                        "valueFrom": {
                            "class": "Expression",
                            "engine": "#cwl-js-engine",
                            "script": "{\n  function sharedStart(array){\n  var A= array.concat().sort(), \n      a1= A[0], a2= A[A.length-1], L= a1.length, i= 0;\n  while(i<L && a1.charAt(i)=== a2.charAt(i)) i++;\n  return a1.substring(0, i);\n  }\n  path_list = []\n  $job.inputs.read.forEach(function(f){return path_list.push(f.path.replace(/\\\\/g,'/').replace( /.*\\//, '' ))})\n  common_prefix = sharedStart(path_list)\n  only_name = common_prefix.replace( /\\-$|\\_$|\\.$/, '' )\n  summary = \"&& mv tophat_out/align_summary.txt tophat_out/\".concat(only_name, \"_align_summary.txt\")\n  deletions = \"&& mv tophat_out/deletions.bed tophat_out/\".concat(only_name, \"_deletions.bed\")\n  insertions = \"&& mv tophat_out/insertions.bed tophat_out/\".concat(only_name, \"_insertions.bed\")\n  junctions = \"&& mv tophat_out/junctions.bed tophat_out/\".concat(only_name, \"_junctions.bed\")\n  hits = \"&& mv tophat_out/accepted_hits.bam tophat_out/\".concat(only_name, \"_accepted_hits.bam\")\n  unmapped = \"&& mv tophat_out/unmapped.bam tophat_out/\".concat(only_name, \"_unmapped.bam\")\n  command_list = [summary, deletions, insertions, junctions, hits, unmapped]\n  return command_list.join(\" \")\n}"
                        }
                    }
                ],
                "sbg:revision": 11,
                "sbg:latestRevision": 11,
                "sbg:license": "Boost Software License 1.0",
                "sbg:createdOn": 1450911590,
                "x": 616.0000000000002,
                "baseCommand": [
                    {
                        "class": "Expression",
                        "engine": "#cwl-js-engine",
                        "script": "{\n  var archive_name = $job.inputs.bowtie_index_archive.path.split(\"/\").pop()\n  return \"tar -xvf \".concat(archive_name, \" && rm -rf \", archive_name, \" && \")\n}"
                    },
                    "/opt/tophat-2.1.0.Linux_x86_64/tophat2",
                    ""
                ],
                "sbg:cmdPreview": "tar -xvf chr20_bowtie2-2.2.6.tar && rm -rf chr20_bowtie2-2.2.6.tar &&  /opt/tophat-2.1.0.Linux_x86_64/tophat2  --num-threads 8 --output-dir ./tophat_out    --b2-n-ceil G,1,1  --b2-score-min C,0.5,0.5  ./chr20  /test-data/read_A_1.fastq,/test-data/read_B_1.fastq /test-data/read_A_2.fastq,/test-data/read_B_2.fastq  && mv tophat_out/align_summary.txt tophat_out/read_align_summary.txt && mv tophat_out/deletions.bed tophat_out/read_deletions.bed && mv tophat_out/insertions.bed tophat_out/read_insertions.bed && mv tophat_out/junctions.bed tophat_out/read_junctions.bed && mv tophat_out/accepted_hits.bam tophat_out/read_accepted_hits.bam && mv tophat_out/unmapped.bam tophat_out/read_unmapped.bam",
                "sbg:modifiedOn": 1475670811
            },
            "outputs": [
                {
                    "id": "#TopHat2.unmapped"
                },
                {
                    "id": "#TopHat2.tophat_junctions"
                },
                {
                    "id": "#TopHat2.tophat_insertions"
                },
                {
                    "id": "#TopHat2.tophat_deletions"
                },
                {
                    "id": "#TopHat2.aligned"
                },
                {
                    "id": "#TopHat2.align_summary"
                }
            ]
        },
        {
            "sbg:y": 274.7105521842059,
            "inputs": [
                {
                    "source": [
                        "#fastq"
                    ],
                    "id": "#SBG_FASTQ_Quality_Detector.fastq"
                }
            ],
            "sbg:x": 289.877259117123,
            "scatter": "#SBG_FASTQ_Quality_Detector.fastq",
            "id": "#SBG_FASTQ_Quality_Detector",
            "run": {
                "sbg:sbgMaintained": false,
                "inputs": [
                    {
                        "sbg:category": "Input",
                        "inputBinding": {
                            "prefix": "--fastq",
                            "sbg:cmdInclude": true,
                            "separate": true
                        },
                        "sbg:fileTypes": "FASTQ,FQ",
                        "id": "#fastq",
                        "label": "Fastq",
                        "required": true,
                        "description": "FASTQ file.",
                        "type": [
                            "File"
                        ]
                    }
                ],
                "y": 274.7105521842059,
                "id": "bix-demo/sbgtools-demo/sbg-fastq-quality-detector/8",
                "sbg:modifiedBy": "milan.domazet.sudo",
                "label": "SBG FASTQ Quality Detector",
                "class": "CommandLineTool",
                "sbg:job": {
                    "inputs": {
                        "fastq": {
                            "secondaryFiles": [],
                            "class": "File",
                            "size": 0,
                            "path": "/path/to/fastq.ext"
                        }
                    },
                    "allocatedResources": {
                        "mem": 1000,
                        "cpu": 1
                    }
                },
                "stdout": "",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1450911312
                    },
                    {
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1450911313
                    },
                    {
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1450911313
                    },
                    {
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1450911314
                    },
                    {
                        "sbg:modifiedBy": "milan.domazet.sudo",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1472045214
                    },
                    {
                        "sbg:modifiedBy": "milan.domazet.sudo",
                        "sbg:revisionNotes": "Changed input type to FASTQ and FQ.",
                        "sbg:revision": 5,
                        "sbg:modifiedOn": 1473774177
                    },
                    {
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "Added Category.",
                        "sbg:revision": 6,
                        "sbg:modifiedOn": 1473775728
                    },
                    {
                        "sbg:modifiedBy": "milan.domazet.sudo",
                        "sbg:revisionNotes": "Fixed Sanger range and moved script to crate files.",
                        "sbg:revision": 7,
                        "sbg:modifiedOn": 1475083591
                    },
                    {
                        "sbg:modifiedBy": "milan.domazet.sudo",
                        "sbg:revisionNotes": "Reverted Sanger scale to (33,126), until we find a better range.",
                        "sbg:revision": 8,
                        "sbg:modifiedOn": 1475246089
                    }
                ],
                "sbg:revisionNotes": "Reverted Sanger scale to (33,126), until we find a better range.",
                "sbg:latestRevision": 8,
                "hints": [
                    {
                        "class": "DockerRequirement",
                        "dockerImageId": "",
                        "dockerPull": "images.sbgenomics.com/tziotas/sbg_fastq_quality_scale_detector:1.0"
                    },
                    {
                        "class": "sbg:CPURequirement",
                        "value": 1
                    },
                    {
                        "class": "sbg:MemRequirement",
                        "value": 1000
                    }
                ],
                "successCodes": [],
                "stdin": "",
                "sbg:toolkit": "SBGTools",
                "sbg:createdBy": "bix-demo",
                "sbg:toolAuthor": "Seven Bridges Genomics",
                "requirements": [
                    {
                        "class": "CreateFileRequirement",
                        "fileDef": [
                            {
                                "fileContent": "\"\"\"\nUsage:\n    sbg_fastq_sniff.py --fastq FILE\n\nOptions:\n    -h, --help          Show this message.\n\n    -f, --fastq FILE    Input FASTQ file.\n\n\"\"\"\n\nfrom docopt import docopt\nimport os\nimport gzip\nimport itertools as it\nimport shutil\n\nfrom sdkcwl import *\n\nargs = docopt(__doc__, version='1.0')\n\n\nclass myGzipFile(gzip.GzipFile):\n    def __enter__(self, *args, **kwargs):\n        if self.fileobj is None:\n            raise Exception(\"I/O operation on closed GzipFile object\")\n        return self\n\n    def __exit__(self, *args, **kwargs):\n        self.close()\n\n\ndef extremes(a, b):\n    if a is False:\n        return b, b\n    return min(a[0], b), max(a[1], b)\n\n\ndef walk_qualities(f, sample_size=1000):\n    for i in xrange(sample_size * 4):\n        try:\n            line = f.next()\n        except StopIteration:\n            return\n        if i % 4 == 3:\n            yield line.rstrip(\"\\n\\r\")\n\n\ndef sniff(path):\n    with open(path, 'rb') as f:\n        gz = f.read(2) == '\\x1f\\x8b'\n    opn = myGzipFile if gz else open\n    with opn(path) as f:\n        return get_scale(*map(ord, reduce(extremes, it.chain(*walk_qualities(f)), False)))\n\n\ndef get_scale(ord_min, ord_max):\n    options = {\n        'illumina13': (64, 105),\n        'illumina15': (66, 105),\n        'sanger': (33, 126),\n        'solexa': (59, 105),\n    }\n    fits = [(k, v) for k, v in options.iteritems() if v[0] <= ord_min and v[1] >= ord_max]\n    if not fits:\n        message = 'Quality scale for range (%s, %s) not found.' % (ord_min, ord_max)\n        raise Exception(message)\n        # Return narrowest range\n    return reduce(lambda a, b: a if a[1][1] - a[1][0] < b[1][1] - b[1][0] else b, fits)[0]\n\ncwl_input(args, '--fastq', 'fastq')\ncwl_output('result')\n\nfq = self.inputs.fastq\n\nquality_scale = sniff(fq)\n\noutput_file = fq[fq.rfind('/')+1:]\nshutil.copyfile(fq, output_file)\n\nself.outputs.result = output_file\nself.outputs.result.meta = fq.make_metadata(quality_scale=quality_scale)\n\ncwl_finish()",
                                "filename": "sbg_fastq_quality_scale_detector.py"
                            },
                            {
                                "fileContent": "import json\nimport os\n\ndef _get_meta(fpath, reload_job=False):\n    def get_files(o):\n        if isinstance(o, dict) and o.get('class') == 'File':\n            return [o]\n        if isinstance(o, dict):\n            return sum(map(get_files, o.itervalues()), [])\n        if isinstance(o, list):\n            return sum(map(get_files, o), [])\n        return []\n\n    files = getattr(_get_meta, '_files', None)\n    if reload_job or files is None:\n        with open('job.json') as fp:\n            job = json.load(fp)\n        files = {f['path']: f for f in get_files(job['inputs'])}\n    return files[fpath].get('metadata', {})\n\n\nclass _DotDict(dict):\n    def _map(self, attr):\n        key_map = {\n            \"file_type\": \"file_extension\",\n            \"seq_tech\": \"platform\",\n            \"sample\": \"sample_id\",\n            \"library\": \"library_id\",\n            \"platform_unit\": \"platform_unit_id\",\n            \"chunk\": \"file_segment_number\",\n            \"qual_scale\": \"quality_scale\"\n        }\n        if attr in key_map:\n            attr = key_map[attr]\n        return attr\n\n    def __init__(self, *args, **kwargs):\n        super(_DotDict, self).__init__(*args, **kwargs)\n        for arg in args:\n            if isinstance(arg, dict) or isinstance(arg, _DotDict):\n                for k, v in arg.iteritems():\n                    nk = self._map(k)\n                    if k != nk and k in self:\n                        self.pop(k)\n                    self[nk] = v\n        if kwargs:\n            for k, v in kwargs.iteritems():\n                self[self._map(k)] = v\n\n    def __getattr__(self, attr):\n        return self.get(self._map(attr))\n\n    def __setattr__(self, key, value):\n        self.__setitem__(self._map(key), value)\n\n    def __setitem__(self, key, value):\n        super(_DotDict, self).__setitem__(self._map(key), value)\n        self.__dict__.update({self._map(key): value})\n\n    def __delattr__(self, item):\n        self.__delitem__(self._map(item))\n\n    def __delitem__(self, key):\n        super(_DotDict, self).__delitem__(self._map(key))\n        del self.__dict__[self._map(key)]\n\nclass _OldInput(str):\n\n    _meta = None\n\n    @property\n    def meta(self):\n        if self._meta is None:\n            self._meta = _DotDict(_get_meta(self))\n        return self._meta\n    \n    def make_metadata(self, **kwargs):\n        new_meta = _DotDict(self.meta)\n        if kwargs is not None:\n            for key, value in kwargs.iteritems():\n                new_meta[key] = value\n        return new_meta\n\n\nclass _OldOutputBucket(_DotDict):\n    \n    def __setitem__(self, key, value):\n        if isinstance(value, list):\n            super(_OldOutputBucket, self).__setitem__(key, _OldOutputList(value))\n        else:\n            super(_DotDict, self).__setitem__(key, _OldOutput(value))\n\nclass _OldOutput(str):\n\n    _meta = None\n\n    @property\n    def meta(self):\n        if self._meta is None:\n            self._meta = _DotDict()\n        return self._meta\n\n    @meta.setter\n    def meta(self, value):\n        self._meta = _DotDict(value)\n\n\nclass _OldOutputList(list):\n\n    def add_file(self, name):\n        new_file = _OldOutput(name)\n        self.append(new_file)\n        return new_file\ndef cwl_input(_args, _new, _old, list=False):\n    _new = _args[_new]\n    if isinstance(_new, str):\n        _new = [_new]\n    if list==False and len(_new) > 1:\n        raise Exception('Number of items provided to a non-list type input.')\n    if len(_new) == 1 and list == False:\n        self.inputs[_old] =  _OldInput(_new[0])\n    else:\n        self.inputs[_old] = map(_OldInput, _new)\n\ndef cwl_param(_args, _new, _old):\n    self.params[_old] = _args[_new]\n\ndef cwl_output(_old, list=False):\n    if list is False:\n        self.outputs[_old] = _OldOutput()\n    else:\n        self.outputs[_old] = _OldOutputList()\n\n\ndef cwl_finish():\n    if not self['outputs']:\n        return\n    if 'cwl_secondary' not in self:\n        self['cwl_secondary'] = {}\n    data = {}\n    for output in self['outputs']:\n        o = self['outputs'][output]\n        sf = self['cwl_secondary'].get(output, None)\n        if isinstance(o, _OldOutputList):\n            file_data = []\n            for f in o:\n                f_dict = {'name': os.path.split(f)[1], \\\n                          'class': 'File', \\\n                          'metadata': f.meta, \\\n                          'path': os.path.join(os.getcwd(), f)}\n                if sf:\n                    f_dict['secondaryFiles'] = [{'path': os.path.join(os.getcwd(), x), \"class\": \"File\"} for x in sf]\n                file_data.append(f_dict)\n        else:\n            file_data = {\n                'name': os.path.split(o)[1],\n                'class': 'File',\n                'metadata': o.meta,\n                'path': os.path.join(os.getcwd(), o)\n            }\n            if sf:\n                file_data['secondaryFiles'] = [{'path': os.path.join(os.getcwd(), x), \"class\": \"File\"} for x in sf]\n        data[output] = file_data\n    with open('cwl.output.json', 'w') as w:\n        json.dump(data, w)\n\ndef cwl_set_secondary(output, secondary_files):\n    if 'cwl_secondary' not in self:\n        self['cwl_secondary'] = {}\n    if not isinstance(secondary_files, list):\n        secondary_files = [secondary_files]\n    self['cwl_secondary'][output] = secondary_files\n\n################################################################################\n\nglobal self\nself = _DotDict(globals())\nif 'inputs' not in self:\n    self['inputs'] = _DotDict()\nif 'outputs' not in self:\n    self['outputs'] =  _OldOutputBucket()\nif 'params' not in self:\n    self['params'] = _DotDict()",
                                "filename": "sdkcwl.py"
                            }
                        ]
                    }
                ],
                "temporaryFailCodes": [],
                "outputs": [
                    {
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#fastq",
                            "glob": "*.fastq"
                        },
                        "id": "#result",
                        "sbg:fileTypes": "FASTQ",
                        "label": "Result",
                        "description": "Source FASTQ file with updated metadata.",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "cwlVersion": "sbg:draft-2",
                "sbg:contributors": [
                    "vladimirk",
                    "milan.domazet.sudo",
                    "bix-demo"
                ],
                "sbg:validationErrors": [],
                "sbg:image_url": null,
                "sbg:license": "Apache License 2.0",
                "sbg:project": "bix-demo/sbgtools-demo",
                "sbg:id": "admin/sbg-public-data/sbg-fastq-quality-detector/12",
                "description": "FASTQ Quality Scale Detector detects which quality encoding scheme was used in your reads and automatically enters the proper value in the \"Quality Scale\" metadata field.",
                "arguments": [],
                "sbg:revision": 8,
                "sbg:categories": [
                    "FASTQ-Processing"
                ],
                "sbg:createdOn": 1450911312,
                "x": 289.877259117123,
                "baseCommand": [
                    "python",
                    "sbg_fastq_quality_scale_detector.py"
                ],
                "sbg:cmdPreview": "python sbg_fastq_quality_scale_detector.py --fastq /path/to/fastq.ext",
                "sbg:modifiedOn": 1475246089
            },
            "outputs": [
                {
                    "id": "#SBG_FASTQ_Quality_Detector.result"
                }
            ]
        },
        {
            "sbg:y": 506.9913633594781,
            "inputs": [
                {
                    "id": "#Picard_CollectAlignmentSummaryMetrics.verbosity"
                },
                {
                    "id": "#Picard_CollectAlignmentSummaryMetrics.validation_stringency"
                },
                {
                    "id": "#Picard_CollectAlignmentSummaryMetrics.stop_after"
                },
                {
                    "source": [
                        "#fasta_reference"
                    ],
                    "id": "#Picard_CollectAlignmentSummaryMetrics.reference"
                },
                {
                    "id": "#Picard_CollectAlignmentSummaryMetrics.quiet"
                },
                {
                    "id": "#Picard_CollectAlignmentSummaryMetrics.metric_accumulation_level"
                },
                {
                    "id": "#Picard_CollectAlignmentSummaryMetrics.memory_per_job"
                },
                {
                    "id": "#Picard_CollectAlignmentSummaryMetrics.max_records_in_ram"
                },
                {
                    "id": "#Picard_CollectAlignmentSummaryMetrics.max_insert_size"
                },
                {
                    "id": "#Picard_CollectAlignmentSummaryMetrics.is_bisulfite_sequenced"
                },
                {
                    "source": [
                        "#TopHat2.aligned"
                    ],
                    "id": "#Picard_CollectAlignmentSummaryMetrics.input_bam"
                },
                {
                    "id": "#Picard_CollectAlignmentSummaryMetrics.compression_level"
                },
                {
                    "id": "#Picard_CollectAlignmentSummaryMetrics.assume_sorted"
                },
                {
                    "id": "#Picard_CollectAlignmentSummaryMetrics.adapter_sequence"
                }
            ],
            "sbg:x": 1054.6581635869127,
            "id": "#Picard_CollectAlignmentSummaryMetrics",
            "run": {
                "sbg:sbgMaintained": false,
                "sbg:categories": [
                    "SAM/BAM-Processing",
                    "Quality-Control",
                    "Quantification"
                ],
                "y": 506.9913633594781,
                "successCodes": [],
                "label": "Picard CollectAlignmentSummaryMetrics",
                "class": "CommandLineTool",
                "sbg:job": {
                    "inputs": {
                        "reference": {
                            "path": "/root/directory/example.fasta"
                        },
                        "memory_per_job": 0,
                        "input_bam": {
                            "path": "/root/folder/example.bam"
                        },
                        "metric_accumulation_level": [
                            "ALL_READS"
                        ]
                    },
                    "allocatedResources": {
                        "mem": 2048,
                        "cpu": 1
                    }
                },
                "baseCommand": [
                    "java",
                    {
                        "class": "Expression",
                        "engine": "#cwl-js-engine",
                        "script": "{   \n  if($job.inputs.memory_per_job){\n    return '-Xmx'.concat($job.inputs.memory_per_job, 'M')\n  }   \n  \treturn '-Xmx2048M'\n}"
                    },
                    "-jar",
                    "/opt/picard-tools-1.140/picard.jar",
                    "CollectAlignmentSummaryMetrics"
                ],
                "stdout": "",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1450911255
                    },
                    {
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1450911256
                    },
                    {
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null,
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1450911257
                    },
                    {
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": "[].concat(input_bam)[0].path",
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1472811193
                    }
                ],
                "sbg:toolkitVersion": "1.140",
                "sbg:links": [
                    {
                        "id": "http://broadinstitute.github.io/picard/index.html",
                        "label": "Homepage"
                    },
                    {
                        "id": "https://github.com/broadinstitute/picard/releases/tag/1.140",
                        "label": "Source Code"
                    },
                    {
                        "id": "http://broadinstitute.github.io/picard/",
                        "label": "Wiki"
                    },
                    {
                        "id": "https://github.com/broadinstitute/picard/zipball/master",
                        "label": "Download"
                    },
                    {
                        "id": "http://broadinstitute.github.io/picard/",
                        "label": "Publication"
                    }
                ],
                "inputs": [
                    {
                        "sbg:category": "",
                        "inputBinding": {
                            "prefix": "VERBOSITY=",
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 6
                        },
                        "id": "#verbosity",
                        "label": "Verbosity",
                        "required": false,
                        "description": "Control verbosity of logging. Default value: INFO. This option can be set to 'null' to clear the default value. Possible values: {ERROR, WARNING, INFO, DEBUG}.",
                        "type": [
                            "null",
                            {
                                "name": "verbosity",
                                "symbols": [
                                    "ERROR",
                                    "WARNING",
                                    "INFO",
                                    "DEBUG"
                                ],
                                "type": "enum"
                            }
                        ],
                        "sbg:toolDefaultValue": "INFO"
                    },
                    {
                        "inputBinding": {
                            "prefix": "VALIDATION_STRINGENCY=",
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 4,
                            "valueFrom": {
                                "class": "Expression",
                                "engine": "#cwl-js-engine",
                                "script": "{\n  if ($job.inputs.validation_stringency)\n  {\n    return $job.inputs.validation_stringency\n  }\n  else\n  {\n    return \"SILENT\"\n  }\n}"
                            }
                        },
                        "id": "#validation_stringency",
                        "label": "Validation stringency",
                        "required": false,
                        "description": "Validation stringency for all SAM files read by this program. Setting stringency to SILENT can improve performance when processing a BAM file in which variable-length data (read, qualities, tags) do not otherwise need to be decoded. Default value: STRICT. This option can be set to 'null' to clear the default value. Possible values: {STRICT, LENIENT, SILENT}.",
                        "type": [
                            "null",
                            {
                                "name": "validation_stringency",
                                "symbols": [
                                    "STRICT",
                                    "LENIENT",
                                    "SILENT"
                                ],
                                "type": "enum"
                            }
                        ],
                        "sbg:toolDefaultValue": "SILENT"
                    },
                    {
                        "sbg:category": "",
                        "inputBinding": {
                            "prefix": "STOP_AFTER=",
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 9
                        },
                        "id": "#stop_after",
                        "label": "Stop after",
                        "required": false,
                        "description": "Stop after processing N reads, mainly for debugging. Default value: 0. This option can be set to 'null' to clear the default value.",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "0"
                    },
                    {
                        "sbg:category": "File inputs",
                        "inputBinding": {
                            "prefix": "REFERENCE_SEQUENCE=",
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 3
                        },
                        "sbg:fileTypes": "FASTA",
                        "id": "#reference",
                        "label": "Reference sequence",
                        "required": false,
                        "sbg:altPrefix": "R",
                        "description": "Reference sequence file. Note that while this argument is not required, without it only a small subset of the metrics will be calculated.  Default value: null.",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "sbg:category": "",
                        "inputBinding": {
                            "prefix": "QUIET=",
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 4
                        },
                        "id": "#quiet",
                        "label": "Quiet",
                        "required": false,
                        "description": "This parameter indicates whether to suppress job-summary info on System.err. Default value: false. This option can be set to 'null' to clear the default value. Possible values: {true, false}.",
                        "type": [
                            "null",
                            {
                                "name": "quiet",
                                "symbols": [
                                    "true",
                                    "false"
                                ],
                                "type": "enum"
                            }
                        ],
                        "sbg:toolDefaultValue": "false"
                    },
                    {
                        "sbg:category": "",
                        "inputBinding": {
                            "prefix": "METRIC_ACCUMULATION_LEVEL=",
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 8,
                            "itemSeparator": null
                        },
                        "id": "#metric_accumulation_level",
                        "sbg:altPrefix": "LEVEL",
                        "required": false,
                        "label": "Metric accumulation level",
                        "description": "This parameter indicates the level(s) at which to accumulate metrics. Default value: [ALL_READS]. This option can be set to 'null' to clear the default value. Possible values: {ALL_READS, SAMPLE, LIBRARY, READ_GROUP}. This option may be specified 0 or more times. This option can be set to 'null' to clear the default list.",
                        "type": [
                            "null",
                            {
                                "items": {
                                    "name": "metric_accumulation_level",
                                    "symbols": [
                                        "ALL_READS",
                                        "SAMPLE",
                                        "LIBRARY",
                                        "READ_GROUP"
                                    ],
                                    "type": "enum"
                                },
                                "type": "array"
                            }
                        ],
                        "sbg:toolDefaultValue": "ALL_READS"
                    },
                    {
                        "id": "#memory_per_job",
                        "label": "Memory per job",
                        "required": false,
                        "description": "Amount of RAM memory to be used per job. Defaults to 2048 MB for single threaded jobs.",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "2048"
                    },
                    {
                        "sbg:category": "",
                        "inputBinding": {
                            "prefix": "MAX_RECORDS_IN_RAM=",
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 4
                        },
                        "id": "#max_records_in_ram",
                        "label": "Max records in RAM",
                        "required": false,
                        "description": "When writing SAM files that need to be sorted, this parameter will specify the number of records stored in RAM before spilling to disk. Increasing this number reduces the number of file handles needed to sort a SAM file, and increases the amount of RAM needed. Default value: 500000. This option can be set to 'null' to clear the default value.",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "500000"
                    },
                    {
                        "sbg:category": "",
                        "inputBinding": {
                            "prefix": "MAX_INSERT_SIZE=",
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 9
                        },
                        "id": "#max_insert_size",
                        "label": "Max insert size",
                        "required": false,
                        "description": "Paired end reads above this insert size will be considered chimeric along with inter-chromosomal pairs. Default value: 100000. This option can be set to 'null' to clear the default value.",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "100000"
                    },
                    {
                        "sbg:category": "",
                        "inputBinding": {
                            "prefix": "BS=",
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 8
                        },
                        "id": "#is_bisulfite_sequenced",
                        "sbg:altPrefix": "BS",
                        "required": false,
                        "label": "Is bisulfite sequenced",
                        "description": "This parameter indicates whether the SAM or BAM file consists of bisulfite sequenced reads. Default value: false. This option can be set to 'null' to clear the default value. Possible values: {true, false}.",
                        "type": [
                            "null",
                            {
                                "name": "is_bisulfite_sequenced",
                                "symbols": [
                                    "true",
                                    "false"
                                ],
                                "type": "enum"
                            }
                        ],
                        "sbg:toolDefaultValue": "false"
                    },
                    {
                        "sbg:category": "File inputs",
                        "inputBinding": {
                            "prefix": "INPUT=",
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 0
                        },
                        "sbg:fileTypes": "BAM, SAM",
                        "id": "#input_bam",
                        "label": "Input file",
                        "required": true,
                        "sbg:altPrefix": "I",
                        "description": "Input SAM or BAM file.  Required.",
                        "type": [
                            "File"
                        ]
                    },
                    {
                        "sbg:category": "",
                        "inputBinding": {
                            "prefix": "COMPRESSION_LEVEL=",
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 4
                        },
                        "id": "#compression_level",
                        "label": "Compression level",
                        "required": false,
                        "description": "Compression level for all compressed files created (e.g. BAM and GELI). Default value: 5. This option can be set to 'null' to clear the default value.",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "5"
                    },
                    {
                        "sbg:category": "",
                        "inputBinding": {
                            "prefix": "ASSUME_SORTED=",
                            "sbg:cmdInclude": true,
                            "separate": false
                        },
                        "id": "#assume_sorted",
                        "sbg:altPrefix": "AS",
                        "required": false,
                        "label": "Assume sorted",
                        "description": "If this parameter is set to true, the sort order in the header file will be ignored. Default value: true. This option can be set to 'null' to clear the default value. Possible values: {true, false}.",
                        "type": [
                            "null",
                            {
                                "name": "assume_sorted",
                                "symbols": [
                                    "true",
                                    "false"
                                ],
                                "type": "enum"
                            }
                        ],
                        "sbg:toolDefaultValue": "true"
                    },
                    {
                        "sbg:category": "",
                        "inputBinding": {
                            "prefix": "ADAPTER_SEQUENCE=",
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 8,
                            "itemSeparator": null
                        },
                        "id": "#adapter_sequence",
                        "label": "Adapter sequence",
                        "required": false,
                        "description": "List of adapter sequences to use when processing the alignment metrics. Default value: [AATGATACGGCGACCACCGAGATCTACACTCTTTCCCTACACGACGCTCTTCCGATCT, AGATCGGAAGAGCTCGTATGCCGTCTTCTGCTTG, AATGATACGGCGACCACCGAGATCTACACTCTTTCCCTACACGACGCTCTTCCGATCT, AGATCGGAAGAGCGGTTCAGCAGGAATGCCGAGACCGATCTCGTATGCCGTCTTCTGCTTG, AATGATACGGCGACCACCGAGATCTACACTCTTTCCCTACACGACGCTCTTCCGATCT, AGATCGGAAGAGCACACGTCTGAACTCCAGTCACNNNNNNNNATCTCGTATGCCGTCTTCTGCTTG]. This option can be set to 'null' to clear the default value. This option may be specified 0 or more times. This option can be set to 'null' to clear the default list.",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "sbg:toolDefaultValue": "AATGATACGGCGACCACCGAGATCTACACTCTTTCCCTACACGACGCTCTTCCGATCT"
                    }
                ],
                "hints": [
                    {
                        "class": "DockerRequirement",
                        "dockerImageId": "eab0e70b6629",
                        "dockerPull": "images.sbgenomics.com/mladenlsbg/picard:1.140"
                    },
                    {
                        "class": "sbg:CPURequirement",
                        "value": 1
                    },
                    {
                        "class": "sbg:MemRequirement",
                        "value": {
                            "class": "Expression",
                            "engine": "#cwl-js-engine",
                            "script": "{\n  if($job.inputs.memory_per_job){\n  \treturn $job.inputs.memory_per_job\n  }\n  \treturn 2048\n}"
                        }
                    }
                ],
                "appUrl": "/u/bix-demo/picard-1-140-demo/apps/#bix-demo/picard-1-140-demo/picard-collectalignmentsummarymetrics-1-140/3",
                "stdin": "",
                "sbg:image_url": null,
                "sbg:createdBy": "bix-demo",
                "sbg:toolAuthor": "Broad Institute",
                "requirements": [
                    {
                        "class": "ExpressionEngineRequirement",
                        "requirements": [
                            {
                                "class": "DockerRequirement",
                                "dockerPull": "rabix/js-engine"
                            }
                        ],
                        "id": "#cwl-js-engine"
                    }
                ],
                "temporaryFailCodes": [],
                "id": "bix-demo/picard-1-140-demo/picard-collectalignmentsummarymetrics-1-140/3",
                "cwlVersion": "sbg:draft-2",
                "sbg:contributors": [
                    "bix-demo"
                ],
                "sbg:validationErrors": [],
                "sbg:toolkit": "Picard",
                "sbg:modifiedBy": "bix-demo",
                "sbg:revisionNotes": "[].concat(input_bam)[0].path",
                "sbg:project": "bix-demo/picard-1-140-demo",
                "sbg:id": "admin/sbg-public-data/picard-collectalignmentsummarymetrics-1-140/3",
                "description": "Picard CollectAlignmentSummaryMetrics assesses the quality of alignment by analyzing a SAM or BAM file. It compares it with the reference file (FASTA) and provides alignment statistics, such as the number of input reads and the percent of reads that are mapped. It produces a file which contains summary alignment metrics from a SAM or BAM file.\n\nNote: This tool requires the exact same FASTA file as the one to which raw reads were aligned.",
                "arguments": [
                    {
                        "prefix": "OUTPUT=",
                        "separate": false,
                        "position": 3,
                        "valueFrom": {
                            "class": "Expression",
                            "engine": "#cwl-js-engine",
                            "script": "{\n  if ($job.inputs.input_bam)\n  {\n    filename = [].concat($job.inputs.input_bam)[0].path\n    filebase = filename.split('.').slice(0, -1)\n\n    return filebase.concat(\"summary_metrics.txt\").join(\".\").replace(/^.*[\\\\\\/]/, '')\n  }\n}\n"
                        }
                    }
                ],
                "sbg:revision": 3,
                "sbg:createdOn": 1450911255,
                "sbg:latestRevision": 3,
                "sbg:license": "MIT License, Apache 2.0 Licence",
                "sbg:modifiedOn": 1472811193,
                "x": 1054.6581635869127,
                "outputs": [
                    {
                        "outputBinding": {
                            "secondaryFiles": [],
                            "sbg:metadata": {},
                            "sbg:inheritMetadataFrom": "#input_bam",
                            "glob": "*.summary_metrics.txt"
                        },
                        "id": "#summary_metrics",
                        "sbg:fileTypes": "TXT",
                        "label": "Summary metrics",
                        "description": "File to which the output will be written.",
                        "type": [
                            "File"
                        ]
                    }
                ],
                "sbg:cmdPreview": "java -Xmx2048M -jar /opt/picard-tools-1.140/picard.jar CollectAlignmentSummaryMetrics INPUT=/root/folder/example.bam OUTPUT=example.summary_metrics.txt"
            },
            "outputs": [
                {
                    "id": "#Picard_CollectAlignmentSummaryMetrics.summary_metrics"
                }
            ]
        }
    ],
    "sbg:createdOn": 1501518672,
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": null,
            "sbg:revision": 0,
            "sbg:modifiedOn": 1501518672
        },
        {
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": null,
            "sbg:revision": 1,
            "sbg:modifiedOn": 1501518672
        },
        {
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": null,
            "sbg:revision": 2,
            "sbg:modifiedOn": 1501518672
        },
        {
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": "TopHat2 and Bowtie2 Indexer updated to the versions which support archived index files; TopHat2 parameters exposed; instance hint set to c4.2xlarge.",
            "sbg:revision": 3,
            "sbg:modifiedOn": 1501518672
        },
        {
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": "Suggested files added; BamTools Index updated; FastQC updated.",
            "sbg:revision": 4,
            "sbg:modifiedOn": 1501518672
        },
        {
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": "Workflow description updated.",
            "sbg:revision": 5,
            "sbg:modifiedOn": 1501518672
        },
        {
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": "Workflow description updated.",
            "sbg:revision": 6,
            "sbg:modifiedOn": 1501518672
        },
        {
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": "TopHat2 updated.",
            "sbg:revision": 7,
            "sbg:modifiedOn": 1501518672
        },
        {
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": "SBG FASTQ Quality Detector updated.",
            "sbg:revision": 8,
            "sbg:modifiedOn": 1501518672
        },
        {
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": "TopHat2 and SBG FASTQ Quality Detector updated.",
            "sbg:revision": 9,
            "sbg:modifiedOn": 1501518672
        },
        {
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": "TopHat2 and SBG FASTQ Quality Detector updated.",
            "sbg:revision": 10,
            "sbg:modifiedOn": 1501518672
        },
        {
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": "Picard CollectAlignmentSummaryMetrics updated.",
            "sbg:revision": 11,
            "sbg:modifiedOn": 1501518672
        }
    ],
    "sbg:revisionNotes": "Picard CollectAlignmentSummaryMetrics updated.",
    "sbg:latestRevision": 11,
    "inputs": [
        {
            "sbg:y": 483.11415493941837,
            "sbg:x": 255.47370478075206,
            "sbg:suggestedValue": {
                "path": "5772b6da507c1752674486e8",
                "class": "File",
                "name": "human_g1k_v37_decoy.phiX174.fasta"
            },
            "id": "#fasta_reference",
            "label": "FASTA reference",
            "type": [
                "File"
            ]
        },
        {
            "sbg:y": 274.7105521842058,
            "sbg:includeInPorts": true,
            "id": "#fastq",
            "label": "Reads",
            "sbg:x": 118.403525659913,
            "type": [
                {
                    "items": "File",
                    "type": "array"
                }
            ]
        },
        {
            "sbg:y": 540.1079113062708,
            "sbg:x": 435.07850849940337,
            "sbg:suggestedValue": {
                "path": "5772b6c4507c1752674486cd",
                "class": "File",
                "name": "Homo_sapiens.GRCh37.75.gtf"
            },
            "id": "#GTF",
            "label": "GTF annotations",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:y": 393.1667025354181,
            "sbg:x": 53.999994913736764,
            "sbg:suggestedValue": {
                "path": "57bd5d15507c17b56d99b0d7",
                "class": "File",
                "name": "human_g1k_v37_decoy.phiX174_bowtie2-2.2.6.tar"
            },
            "id": "#reference_or_index",
            "label": "Reference or index files",
            "sbg:fileTypes": "FASTA, FA, TAR",
            "type": [
                "File"
            ]
        },
        {
            "sbg:category": "Basic Options",
            "id": "#transcriptome_only",
            "sbg:altPrefix": "-T",
            "label": "Transcriptome only",
            "description": "Only align the reads to the transcriptome and report only those mappings as genomic mappings. Requires a GTF input and/or transcriptome index.",
            "type": [
                "null",
                "boolean"
            ],
            "sbg:toolDefaultValue": "False"
        },
        {
            "sbg:category": "Basic Options",
            "id": "#transcriptome_max_hits",
            "sbg:altPrefix": "-x",
            "label": "Transcriptome max hits",
            "description": "Maximum number of mappings allowed for a read, when aligned to the transcriptome (any reads found with more then this number of mappings will be discarded).",
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "60"
        },
        {
            "sbg:category": "Basic Options",
            "id": "#splice_mismatches",
            "sbg:altPrefix": "-m",
            "label": "Splice mismatches",
            "description": "The maximum number of mismatches that may appear in the \"anchor\" region of a spliced alignment. Only values between 0 and 2 supported.",
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "0"
        },
        {
            "sbg:category": "Advanced Options",
            "id": "#segment_mismatches",
            "label": "Segment mismatches",
            "description": "Read segments are mapped independently, allowing up to this many mismatches in each segment alignment.",
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "2"
        },
        {
            "sbg:category": "Advanced Options",
            "id": "#segment_length",
            "label": "Segment length",
            "description": "Each read is cut up into segments, each at least this long. These segments are mapped independently.",
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "25"
        },
        {
            "sbg:category": "Advanced Options",
            "id": "#report_secondary_alignments",
            "label": "Report secondary alignments",
            "description": "By default TopHat reports best or primary alignments based on alignment scores (AS). Use this option if you want to output additional or secondary alignments (up to 20 alignments will be reported this way, this limit can be changed by using the \"Maximum multihits\" option from \"Basic Options\" category).",
            "type": [
                "null",
                "boolean"
            ],
            "sbg:toolDefaultValue": "False"
        },
        {
            "sbg:category": "Basic Options",
            "id": "#read_realign_edit_dist",
            "label": "Read realign edit distance",
            "description": "Some of the reads spanning multiple exons may be mapped incorrectly as a contiguous alignment to the genome even though the correct alignment should be a spliced one - this can happen in the presence of processed pseudogenes that are rarely (if at all) transcribed or expressed. This option can direct TopHat to re-align reads for which the edit distance of an alignment obtained in a previous mapping step is above or equal to this option value. If you set this option to 0, TopHat will map every read in all the mapping steps (transcriptome if you provided gene annotations, genome, and finally splice variants detected by TopHat), reporting the best possible alignment found in any of these mapping steps. This may greatly increase the mapping accuracy at the expense of an increase in running time. The default value for this option is set such that TopHat will not try to realign reads already mapped in earlier steps.",
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "\"Read edit distance\" + 1"
        },
        {
            "sbg:category": "Basic Options",
            "id": "#read_mismatches",
            "sbg:altPrefix": "-N",
            "label": "Read mismatches",
            "description": "Final read alignments having more than these many mismatches are discarded.",
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "2"
        },
        {
            "sbg:category": "Basic Options",
            "id": "#read_gap_length",
            "label": "Read gap length",
            "description": "Final read alignments having more than these many total length of gaps are discarded.",
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "2"
        },
        {
            "sbg:category": "Basic Options",
            "id": "#read_edit_dist",
            "label": "Read edit distance",
            "description": "Final read alignments having more than these many edit distance are discarded.",
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "2"
        },
        {
            "sbg:category": "Basic Options",
            "id": "#prefilter_multihits",
            "sbg:altPrefix": "-M",
            "label": "Prefilter multihits",
            "description": "When mapping reads on the transcriptome, some repetitive or low complexity reads that would be discarded in the context of the genome may appear to align to the transcript sequences and thus may end up reported as mapped to those genes only. This option directs TopHat to first align the reads to the whole genome in order to determine and exclude such multi-mapped reads (according to the value of the \"Maximum multihits\" option).",
            "type": [
                "null",
                "boolean"
            ],
            "sbg:toolDefaultValue": "False"
        },
        {
            "sbg:category": "Advanced Options",
            "id": "#no_sort_bam",
            "label": "Disable BAM sorting",
            "description": "Output BAM is not coordinate-sorted.",
            "type": [
                "null",
                "boolean"
            ],
            "sbg:toolDefaultValue": "False"
        },
        {
            "sbg:category": "Basic Options",
            "id": "#no_novel_juncs",
            "label": "No novel juncs",
            "description": "Only look for reads across junctions indicated in the supplied GTF/GFF or junctions file. Ignored unless one or both of these files are included.",
            "type": [
                "null",
                "boolean"
            ],
            "sbg:toolDefaultValue": "False"
        },
        {
            "sbg:category": "Basic Options",
            "id": "#no_novel_indels",
            "label": "No novel indels",
            "description": "Only look for reads across indels in the supplied indel file, or disable indel detection when no file has been provided.",
            "type": [
                "null",
                "boolean"
            ],
            "sbg:toolDefaultValue": "False"
        },
        {
            "sbg:category": "Advanced Options",
            "id": "#no_mixed",
            "label": "Disable mixed alignments",
            "description": "For paired reads, only report read alignments if both reads in a pair can be mapped (by default, if TopHat cannot find a concordant or discordant alignment for both reads in a pair, it will find and report alignments for each read separately; this option disables that behavior).",
            "type": [
                "null",
                "boolean"
            ],
            "sbg:toolDefaultValue": "False"
        },
        {
            "sbg:category": "Advanced Options",
            "id": "#no_discordant",
            "label": "Disable discordant alignments",
            "description": "For paired reads, report only concordant mappings.",
            "type": [
                "null",
                "boolean"
            ],
            "sbg:toolDefaultValue": "False"
        },
        {
            "sbg:category": "Advanced Options",
            "id": "#min_segment_intron",
            "label": "Minimum segment intron",
            "description": "The minimum intron length that may be found during split-segment search.",
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "50"
        },
        {
            "sbg:category": "Basic Options",
            "id": "#min_intron_length",
            "sbg:altPrefix": "-i",
            "label": "Minimum intron length",
            "description": "The minimum intron length. TopHat will ignore donor/acceptor pairs closer than this many bases apart.",
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "50"
        },
        {
            "sbg:category": "Advanced Options",
            "id": "#min_coverage_intron",
            "label": "Minimum coverage intron",
            "description": "The minimum intron length that may be found during coverage search.",
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "50"
        },
        {
            "sbg:category": "Basic Options",
            "id": "#min_anchor_length",
            "sbg:altPrefix": "-a",
            "label": "Minimum anchor length",
            "description": "The \"anchor length\". TopHat will report junctions spanned by reads with at least this many bases on each side of the junction. Note that individual spliced alignments may span a junction with fewer than this many bases on one side. However, every junction involved in spliced alignments is supported by at least one read with this many bases on each side. This must be at least 3.",
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "8"
        },
        {
            "sbg:category": "Basic Options",
            "id": "#microexon_search",
            "label": "Microexon search",
            "description": "With this option, the pipeline will attempt to find alignments incident to micro-exons. Works only for reads 50bp or longer.",
            "type": [
                "null",
                "boolean"
            ],
            "sbg:toolDefaultValue": "False"
        },
        {
            "sbg:category": "Advanced Options",
            "id": "#max_segment_intron",
            "label": "Maximum segment intron",
            "description": "The maximum intron length that may be found during split-segment search.",
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "500000"
        },
        {
            "sbg:category": "Basic Options",
            "id": "#max_multihits",
            "sbg:altPrefix": "-g",
            "label": "Maximum multihits",
            "description": "Instructs TopHat to allow up to this many alignments to the reference for a given read, and choose the alignments based on their alignment scores if there are more than this number. Unless you use \"Report secondary alignments\", TopHat will report the alignments with the best alignment score. If there are more alignments with the same score than this number, TopHat will randomly report only this many alignments. In case of using \"Report secondary alignments\", TopHat will try to report alignments up to this option value, and TopHat may randomly output some of the alignments with the same score to meet this number.",
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "20"
        },
        {
            "sbg:category": "Basic Options",
            "id": "#max_intron_length",
            "sbg:altPrefix": "-I",
            "label": "Maximum intron length",
            "description": "The maximum intron length. When searching for junctions ab initio, TopHat will ignore donor/acceptor pairs farther than this many bases apart, except when such a pair is supported by a split segment alignment of a long read.",
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "500000"
        },
        {
            "sbg:category": "Basic Options",
            "id": "#max_insertion_length",
            "label": "Maximum insertion length",
            "description": "The maximum insertion length.",
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "3"
        },
        {
            "sbg:category": "Basic Options",
            "id": "#max_deletion_length",
            "label": "Maximum deletion length",
            "description": "The maximum deletion length.",
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "3"
        },
        {
            "sbg:category": "Advanced Options",
            "id": "#max_coverage_intron",
            "label": "Maximum coverage intron",
            "description": "The maximum intron length that may be found during coverage search.",
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "20000"
        },
        {
            "sbg:category": "Basic Options",
            "id": "#mate_std_dev",
            "label": "Mate standard deviation",
            "description": "The standard deviation for the distribution on inner distances between mate pairs.",
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "20"
        },
        {
            "sbg:category": "Basic Options",
            "id": "#mate_inner_dist",
            "sbg:altPrefix": "-r",
            "label": "Mate inner distance",
            "description": "This is the expected (mean) inner distance between mate pairs. For, example, for paired end runs with fragments selected at 300bp, where each end is 50bp, you should set -r to be 200.",
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "50"
        },
        {
            "sbg:category": "Basic Options",
            "id": "#library_type",
            "label": "Library type",
            "description": "The default is unstranded (fr-unstranded); i.e. Standard Illumina - Reads from the left-most end of the fragment (in transcript coordinates) map to the transcript strand, and the right-most end maps to the opposite strand. Consider supplying library type options below to select the correct RNA-seq protocol. When selecting fr-firststrand ( i.e. dUTP, NSR, NNSR) or fr-secondstrand (i.e. Ligation, Standard SOLiD) as a library type, see TopHat manual for more information.",
            "type": [
                "null",
                {
                    "name": "library_type",
                    "symbols": [
                        "fr-unstranded",
                        "fr-firststrand",
                        "fr-secondstrand"
                    ],
                    "type": "enum"
                }
            ],
            "sbg:toolDefaultValue": "fr-unstranded"
        },
        {
            "sbg:category": "Advanced Options",
            "id": "#keep_fasta_order",
            "label": "Keep FASTA order",
            "description": "In order to sort alignments in the same order in the genome FASTA file, the option can be used. But this option will make the output SAM/BAM file incompatible with those from the previous versions of TopHat (1.4.1 or lower).",
            "type": [
                "null",
                "boolean"
            ],
            "sbg:toolDefaultValue": "False"
        },
        {
            "sbg:category": "Fusion Options",
            "id": "#fusion_search",
            "label": "Fusion search",
            "description": "Turn on fusion mapping.",
            "type": [
                "null",
                "boolean"
            ],
            "sbg:toolDefaultValue": "False"
        },
        {
            "sbg:category": "Fusion Options",
            "id": "#fusion_read_mismatches",
            "label": "Fusion read mismatches",
            "description": "Reads support fusions if they map across fusion with at most these many mismatches.",
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "2"
        },
        {
            "sbg:category": "Fusion Options",
            "id": "#fusion_multireads",
            "label": "Fusion multireads",
            "description": "Reads that map to more than these many places will be ignored. It may be possible that a fusion is supported by reads (or pairs) that map to multiple places.",
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "2"
        },
        {
            "sbg:category": "Fusion Options",
            "id": "#fusion_multipairs",
            "label": "Fusion multipairs",
            "description": "Pairs that map to more than these many places will be ignored.",
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "2"
        },
        {
            "sbg:category": "Fusion Options",
            "id": "#fusion_min_dist",
            "label": "Fusion minimum distance",
            "description": "For intra-chromosomal fusions, TopHat-Fusion tries to find fusions separated by at least this distance.",
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "10000000"
        },
        {
            "sbg:category": "Fusion Options",
            "description": "Ignore some chromosomes such as chrM when detecting fusion break points. Please check the correct names for chromosomes, that is, mitochondrial DNA is represented as chrM or M depending on the annotation you use. List chromosomes separated with commas.",
            "id": "#fusion_ignore_chromosomes",
            "type": [
                "null",
                {
                    "items": {
                        "type": "string"
                    },
                    "type": "array"
                }
            ],
            "label": "Fusion ignore chromosomes"
        },
        {
            "sbg:category": "Fusion Options",
            "id": "#fusion_anchor_length",
            "label": "Fusion anchor length",
            "description": "A \"supporting\" read must map to both sides of a fusion by at least these many bases.",
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "20"
        },
        {
            "sbg:category": "Basic Options",
            "id": "#coverage_search",
            "label": "Coverage search",
            "description": "Disables or enables the coverage-based search for junctions. It is suggested to only enable coverage search for short reads (< 45bp) and with a small number of reads (<= 10 million).",
            "type": [
                "null",
                "boolean"
            ],
            "sbg:toolDefaultValue": "False"
        },
        {
            "sbg:category": "Advanced Options",
            "id": "#bowtie_n",
            "label": "Bowtie -n",
            "description": "TopHat uses \"-v\" in Bowtie for initial read mapping (the default), but with this option, \"-n\" is used instead. Read segments are always mapped using \"-v\" option.",
            "type": [
                "null",
                "boolean"
            ],
            "sbg:toolDefaultValue": "False"
        },
        {
            "sbg:category": "Bowtie2 Alignment Score Function",
            "id": "#b2_score_min_F",
            "label": "Function type",
            "description": "Sets a function type F in function governing the minimum alignment score needed for an alignment to be considered \"valid\" (i.e. good enough to report). This is a function of read length. The minimum-score function f is f(x) = A + B * F(x), where x is the read length. By default, function F is set to \"Linear\", Constant A and Coefficient B to -0.6.",
            "type": [
                "null",
                {
                    "name": "b2_score_min_F",
                    "symbols": [
                        "Constant",
                        "Linear",
                        "Square-root",
                        "Natural log"
                    ],
                    "type": "enum"
                }
            ],
            "sbg:toolDefaultValue": "Linear"
        },
        {
            "sbg:category": "Bowtie2 Alignment Score Function",
            "id": "#b2_score_min_B",
            "label": "Coefficient B",
            "description": "Sets a coefficient B in function governing the minimum alignment score needed for an alignment to be considered 'valid' (i.e. good enough to report). This is a function of read length. The minimum-score function f is f(x) = A + B * F(x), where x is the read length.",
            "type": [
                "null",
                "float"
            ],
            "sbg:toolDefaultValue": "-0.6"
        },
        {
            "sbg:category": "Bowtie2 Alignment Score Function",
            "id": "#b2_score_min_A",
            "label": "Constant A",
            "description": "Sets a constant A in function governing the minimum alignment score needed for an alignment to be considered 'valid' (i.e. good enough to report). This is a function of read length. The minimum-score function f is f(x) = A + B * F(x), where x is the read length.",
            "type": [
                "null",
                "float"
            ],
            "sbg:toolDefaultValue": "-0.6"
        },
        {
            "sbg:category": "Bowtie2 Scoring Options",
            "id": "#b2_rfg",
            "label": "Reference gap penalties",
            "description": "Sets the reference gap open (first value) and extend (second value) penalty, respectively. A reference gap of length N gets a penalty of <gap-open-penalty> + N * <gap-extend-penalty>.",
            "type": [
                "null",
                {
                    "items": "int",
                    "type": "array"
                }
            ],
            "sbg:toolDefaultValue": "5,3"
        },
        {
            "sbg:category": "Bowtie2 Scoring Options",
            "id": "#b2_rdg",
            "label": "Read gap penalties",
            "description": "Sets the read gap open (first value) and extend (second value) penalty, respectively. A read gap of length N gets a penalty of <gap-open-penalty> + N * <gap-extend-penalty>.",
            "type": [
                "null",
                {
                    "items": "int",
                    "type": "array"
                }
            ],
            "sbg:toolDefaultValue": "5,3"
        },
        {
            "sbg:category": "Bowtie2 Preset Options",
            "id": "#b2_preset",
            "label": "Bowtie2 preset",
            "description": "Preset options Bowtie2 to allow finer control of read mapping in end-to-end alignment mode (local alignment is not used in TopHat2). See the Bowtie2 manual for the alignment settings that correspond to each of the presets. Select \"Custom\" and set values in \"Bowtie2 Alignment Options\", \"Bowtie2 Scoring Options\" or \"Bowtie2 Effort Options\" categories to override preset values.",
            "type": [
                "null",
                {
                    "name": "b2_preset",
                    "symbols": [
                        "Very fast",
                        "Fast",
                        "Sensitive",
                        "Very sensitive",
                        "Custom"
                    ],
                    "type": "enum"
                }
            ],
            "sbg:toolDefaultValue": "Fast"
        },
        {
            "sbg:category": "Bowtie2 Scoring Options",
            "id": "#b2_np",
            "label": "Ambiguous character penalty",
            "description": "Sets penalty for positions where the read, reference, or both, contain an ambiguous character such as N.",
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "1"
        },
        {
            "sbg:category": "Bowtie2 Ambiguous Chars Function",
            "id": "#b2_n_ceil_F",
            "label": "Function type",
            "description": "Sets a function type F in function governing the maximum number of ambiguous characters (usually Ns and/or .s) allowed in a read as a function of read length. The N-ceiling function f is f(x) = A + B * F(x), where x is the read length. Reads exceeding this ceiling are filtered out.",
            "type": [
                "null",
                {
                    "name": "b2_n_ceil_F",
                    "symbols": [
                        "Constant",
                        "Linear",
                        "Square-root",
                        "Natural log"
                    ],
                    "type": "enum"
                }
            ],
            "sbg:toolDefaultValue": "Linear"
        },
        {
            "sbg:category": "Bowtie2 Ambiguous Chars Function",
            "id": "#b2_n_ceil_B",
            "label": "Coefficient B",
            "description": "Sets a coefficient B in function governing the maximum number of ambiguous characters (usually Ns and/or .s) allowed in a read as a function of read length. The N-ceiling function f is f(x) = A + B * F(x), where x is the read length. Reads exceeding this ceiling are filtered out.",
            "type": [
                "null",
                "float"
            ],
            "sbg:toolDefaultValue": "0.15"
        },
        {
            "sbg:category": "Bowtie2 Ambiguous Chars Function",
            "id": "#b2_n_ceil_A",
            "label": "Constant A",
            "description": "Sets a constant A in function governing the maximum number of ambiguous characters (usually Ns and/or .s) allowed in a read as a function of read length. The N-ceiling function f is f(x) = A + B * F(x), where x is the read length. Reads exceeding this ceiling are filtered out.",
            "type": [
                "null",
                "float"
            ],
            "sbg:toolDefaultValue": "0"
        },
        {
            "sbg:category": "Bowtie2 Scoring Options",
            "id": "#b2_mp",
            "label": "Mismatch penalty",
            "description": "Set maximum and minimum mismatch penalties, respectively.",
            "type": [
                "null",
                {
                    "items": "int",
                    "type": "array"
                }
            ],
            "sbg:toolDefaultValue": "6,2"
        },
        {
            "sbg:category": "Bowtie2 Interval Function",
            "id": "#b2_i_F",
            "label": "Function type",
            "description": "Sets a function type F in function f governing the interval between seed substrings, to use during multiseed alignment. The interval function f is f(x) = A + B * F(x), where x is the read length. By default, function F is set to 'Square-root', Constant A to 1 and Coefficient B to 1.25.",
            "type": [
                "null",
                {
                    "name": "b2_i_F",
                    "symbols": [
                        "Constant",
                        "Linear",
                        "Square-root",
                        "Natural log"
                    ],
                    "type": "enum"
                }
            ],
            "sbg:toolDefaultValue": "Square-root"
        },
        {
            "sbg:category": "Bowtie2 Interval Function",
            "id": "#b2_i_B",
            "label": "Coefficient B",
            "description": "Sets a coefficient B in function governing the interval between seed substrings to use during multiseed alignment. The interval function f is f(x) = A + B * F(x), where x is the read length.",
            "type": [
                "null",
                "float"
            ],
            "sbg:toolDefaultValue": "1.25"
        },
        {
            "sbg:category": "Bowtie2 Interval Function",
            "id": "#b2_i_A",
            "label": "Constant A",
            "description": "Sets a constant A in function governing the interval between seed substrings to use during multiseed alignment. The interval function f is f(x) = A + B * F(x), where x is the read length.",
            "type": [
                "null",
                "float"
            ],
            "sbg:toolDefaultValue": "1"
        },
        {
            "sbg:category": "Bowtie2 Alignment Options",
            "id": "#b2_gbar",
            "label": "Disallow gaps",
            "description": "Disallow gaps within the given number of positions of the beginning or end of the read.",
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "4"
        },
        {
            "sbg:category": "Bowtie2 Effort Options",
            "id": "#b2_R",
            "label": "Max number of re-seed",
            "description": "Given number is the maximum number of times Bowtie2 will 're-seed' reads with repetitive seeds. When 're-seeding', Bowtie2 simply chooses a new set of reads (same length, same number of mismatches allowed) at different offsets and searches for more alignments. A read is considered to have repetitive seeds if the total number of seed hits divided by the number of seeds that aligned at least once is greater than 300.",
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "2"
        },
        {
            "sbg:category": "Bowtie2 Alignment Options",
            "id": "#b2_N",
            "label": "Allowed mismatch number",
            "description": "Sets the number of mismatches to allowed in a seed alignment during multiseed alignment. Can be set to 0 or 1. Setting this higher makes alignment slower (often much slower) but increases sensitivity.",
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "0"
        },
        {
            "sbg:category": "Bowtie2 Alignment Options",
            "id": "#b2_L",
            "label": "Seed substring length",
            "description": "Sets the length of the seed substrings to align during multiseed alignment. Smaller values make alignment slower but more senstive. Must be > 3 and < 32.",
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "20"
        },
        {
            "sbg:category": "Bowtie2 Effort Options",
            "id": "#b2_D",
            "label": "Seed extension attempts",
            "description": "Maximum number of to consecutive seed extension attempts that can \"fail\" before Bowtie2 moves on, using the alignments found so far. A seed extension \"fails\" if it does not yield a new best or a new second-best alignment.",
            "type": [
                "null",
                "int"
            ],
            "sbg:toolDefaultValue": "15"
        }
    ],
    "sbg:canvas_y": -62,
    "id": "https://api.sbgenomics.com/v2/apps/bixqa/qa-load-2017-07-31-18/rna-seq-alignment-tophat/11/raw/",
    "sbg:license": "Apache License 2.0",
    "sbg:toolkit": "TopHat",
    "sbg:createdBy": "bixqa",
    "sbg:validationErrors": [],
    "requirements": [],
    "sbg:revision": 11,
    "outputs": [
        {
            "sbg:y": 380.8623531207376,
            "sbg:includeInPorts": true,
            "id": "#output_bam_file",
            "label": "Output BAM file",
            "source": [
                "#BamTools_Index.output_bam_file"
            ],
            "required": true,
            "sbg:x": 1287.6159819079473,
            "type": [
                "File"
            ]
        },
        {
            "sbg:y": 168.7618941914739,
            "sbg:includeInPorts": true,
            "id": "#report_zip",
            "label": "FastQC archived report",
            "source": [
                "#FastQC.report_zip"
            ],
            "required": false,
            "sbg:x": 611.3633746481667,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:y": 181.30703385566446,
            "sbg:includeInPorts": true,
            "id": "#unmapped",
            "label": "Unmapped reads",
            "source": [
                "#TopHat2.unmapped"
            ],
            "required": false,
            "sbg:x": 820.7809367159036,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:y": 161.39476129325578,
            "sbg:includeInPorts": true,
            "id": "#tophat_junctions",
            "label": "TopHat junctions",
            "source": [
                "#TopHat2.tophat_junctions"
            ],
            "required": false,
            "sbg:x": 1165.4563043166368,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:y": 240.94739211721082,
            "sbg:includeInPorts": true,
            "id": "#tophat_insertions",
            "label": "TopHat insertions",
            "source": [
                "#TopHat2.tophat_insertions"
            ],
            "required": false,
            "sbg:x": 1284.500254458859,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:y": 319.16667938232416,
            "sbg:includeInPorts": true,
            "id": "#tophat_deletions",
            "label": "Tophat deletions",
            "source": [
                "#TopHat2.tophat_deletions"
            ],
            "required": false,
            "sbg:x": 1403.6667631997016,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:y": 540.2608246906917,
            "sbg:includeInPorts": true,
            "id": "#align_summary",
            "label": "TopHat summary metrics",
            "source": [
                "#TopHat2.align_summary"
            ],
            "required": false,
            "sbg:x": 799.9026399878372,
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:y": 507.15799944896077,
            "sbg:includeInPorts": true,
            "id": "#summary_metrics",
            "label": "Picard summary metrics",
            "source": [
                "#Picard_CollectAlignmentSummaryMetrics.summary_metrics"
            ],
            "required": true,
            "sbg:x": 1279.4914652966688,
            "type": [
                "File"
            ]
        }
    ],
    "cwlVersion": "sbg:draft-2",
    "sbg:projectName": "qa-load-2017-07-31-18",
    "sbg:contributors": [
        "bixqa"
    ],
    "sbg:toolAuthor": "Seven Bridges Genomics",
    "sbg:image_url": "https://brood.sbgenomics.com/static/bixqa/qa-load-2017-07-31-18/rna-seq-alignment-tophat/11.png",
    "sbg:modifiedBy": "bixqa",
    "sbg:project": "bixqa/qa-load-2017-07-31-18",
    "sbg:copyOf": "admin/sbg-public-data/rna-seq-alignment-tophat/11",
    "description": "RNA-Seq technology represents a powerful method to interrogate gene expression. In addition to determining total gene expression levels, RNA-Seq allows quantitation of isoforms, identification of novel transcripts, and interrogation of RNA editing events. The first step in profiling the transcriptome is the alignment of RNA-Seq reads against the reference genome. This step reveals the location in the genome from which the reads originated.\n\nThis pipeline uses the popular split-read aligner, TopHat, to map reads to a reference genome, and it is set up to accommodate the most common experimental conditions (e.g. RNA-Seq experiments of samples from well annotated transcriptomes such as Human and Mouse). It utilizes a transcript annotation file (GTF) to speed read mapping across known splice junctions. This pipeline will generate alignment files that can then be compared for differential expression, analyzed to discover novel transcripts, or viewed directly in a genome browser. TopHat is highly versatile and by building pipelines, you are able to exploit its many functions including the use of experimentally identified junctions, insertions and deletions.\n\nThis pipeline can be used in combination with the \"RNA-Seq Differential Expression\" (available in Public Apps) to take you all the way from raw sequencing reads to a list of differentially expressed genes.\n\nAlignment of RNA-Seq reads to a reference genome is performed using the split read aligner TopHat. TopHat incorporates the ultrafast short read aligner **Bowtie 2**. While Bowtie 2 is able to align tens of millions of reads per CPU hour, it does not allow alignments between the read and genome to contain large gaps. This limitation precludes the use of Bowtie 2 to align reads that span introns. TopHat was built to overcome this restriction - any reads that cannot be initially aligned to the genome are broken up by TopHat into smaller pieces which, when processed independently can be aligned by Bowtie 2. When read segments are found to align to the genome far apart from each other, TopHat infers that the read spans a splice junction and estimates the location of the splice sites. While TopHat can build up an index of splice sites in the transcriptome without a priori gene or splice site annotations, alignment speed and accuracy is increased by providing this information during the mapping process. \n\n###Inputs###\n\n**Reads**: This pipeline accepts both single stranded or paired-end RNA-Seq data in FASTQ format. If paired-end reads are used, the read pair metadata fields must be set as 1 and 2. The metadata field Sample ID should be unique for each biological sample.\n\n**Reference or index files**: For proper TopHat performance (which relies on Bowtie 2 for alignment) Bowtie 2 requires that the reference genome is indexed before read alignment can be performed. We have added **Bowtie 2 Indexer** to this pipeline for reference file indexing. This indexing can be time intensive, and in order to optimize for execution time of this pipeline, you can index reference file separately using Bowtie 2 Indexer. You may create a short pipeline with this tool and reuse index archive if you intend to perform several alignments with the same reference. By default, you will be provided with the tar bundle containing index files (`human_g1k_v37_decoy.phiX174_bowtie2-2.2.6.tar` obtained from `human_g1k_v37_decoy.phiX174.fasta`) as a suggested file.\n\n**FASTA reference**: FASTA file containing reference genome. Pipeline is provided with `human_g1k_v37_decoy.phiX174.fasta` as a suggested reference file.\n\n**GTF annotations**: Gene Transfer Format file containing known gene annotations. Using a GTF file will increase mapping speed and accuracy but it is not required. It is critical that the chromosome numbering schema used in the GTF file matches that used in the Reference file (UCSC convention is to number chromosomes as Chr _number_, whereas ensembl simply numbers chromosomes just with _number_). Suggested file for this input is `Homo_sapiens.GRCh37.75.gtf` annotation file.\n\n###Q&A###\n\n***Q: What should I do if I already have Bowtie2 index files, not archived as tar bundle?***\n\n***A***: You can provide your *.bt2 files to **SBG Compressor** app from our public apps and set \"TAR\" as your output format. After the task is finished, **you should assign common prefix of the index files to the `Reference genome` metadata field** and your TAR is ready for use.\n\n***Example:***\nIndexed files: chr20.1.bt2, chr20.2.bt2, chr20.3.bt2, chr20.4.bt2, chr20.rev.1.bt2, chr20.rev.2.bt2\n\nMetadata - `Reference genome`: **chr20**\n\n###Common issues###\nOne of the most common issues when running TopHat is incompatibility between reference genome and annotations. Please, make sure that you are using compatible FASTA (from which you have created tar bundle with index files) and GTF files in order to run tasks successfully. If you suspect your task has failed due to this incompatibility, you can check the last line in `job.err.log` file which would look as following if your assumptions are correct: `Error: Couldn't build bowtie index with err = 1`.\n\n**Important note: In case of paired-end alignment it is crucial to set metadata `Paired-end` field to \"1\" or \"2\". Sequences specified as \"1\" must correspond file-for-file and read-for-read with those specified as \"2\". Reads may be a mix of different lengths. In case of unpaired reads, the same metadata field should be set to '-'. Only one type of alignment can be performed at once, so all specified reads should be either paired or unpaired.**",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:canvas_zoom": 0.5999999999999996,
    "sbg:modifiedOn": 1501518672,
    "sbg:toolkitVersion": "2.1.0",
    "sbg:canvas_x": 23,
    "hints": [

    ]
}
