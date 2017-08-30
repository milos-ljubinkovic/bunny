{
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1501518703,
            "sbg:revision": 0,
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1501518703,
            "sbg:revision": 1,
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1501518703,
            "sbg:revision": 2,
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1501518703,
            "sbg:revision": 3,
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1501518703,
            "sbg:revision": 4,
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1501518703,
            "sbg:revision": 5,
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1501518703,
            "sbg:revision": 6,
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1501518703,
            "sbg:revision": 7,
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1501518703,
            "sbg:revision": 8,
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1501518703,
            "sbg:revision": 9,
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1501518703,
            "sbg:revision": 10,
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1501518703,
            "sbg:revision": 11,
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1501518703,
            "sbg:revision": 12,
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1501518703,
            "sbg:revision": 13,
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1501518703,
            "sbg:revision": 14,
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1501518703,
            "sbg:revision": 15,
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": "SBG untar fasta from Public Apps replaced with one not from Public Apps"
        },
        {
            "sbg:modifiedOn": 1501518703,
            "sbg:revision": 16,
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": "Source from Public Apps of nodes removed."
        },
        {
            "sbg:modifiedOn": 1501518703,
            "sbg:revision": 17,
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": "updated tools."
        },
        {
            "sbg:modifiedOn": 1501518703,
            "sbg:revision": 18,
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": "Returned to last version."
        },
        {
            "sbg:modifiedOn": 1501518703,
            "sbg:revision": 19,
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": "Support for single FASTQS added. SBG Pair FASTQS by metadata and BWA-MEM updated."
        },
        {
            "sbg:modifiedOn": 1501518703,
            "sbg:revision": 20,
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": "All tools updated."
        },
        {
            "sbg:modifiedOn": 1501518703,
            "sbg:revision": 21,
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": "Picard Build BAM index removed."
        },
        {
            "sbg:modifiedOn": 1501518703,
            "sbg:revision": 22,
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": "Fastq batch input"
        },
        {
            "sbg:modifiedOn": 1501518703,
            "sbg:revision": 23,
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": "Tools and suggested bed file update"
        },
        {
            "sbg:modifiedOn": 1501518703,
            "sbg:revision": 24,
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": "Suggested bed file changed"
        },
        {
            "sbg:modifiedOn": 1501518703,
            "sbg:revision": 25,
            "sbg:modifiedBy": "bixqa",
            "sbg:revisionNotes": "No suggested files for bed input"
        }
    ],
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:canvas_x": 67,
    "outputs": [
        {
            "required": false,
            "sbg:includeInPorts": true,
            "source": [
                "#SBG_Html2b64.b64html"
            ],
            "sbg:y": 629.3139058211337,
            "label": "FastQC report",
            "id": "#b64html",
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "HTML, B64HTML",
            "sbg:x": 331.96081811696195
        },
        {
            "required": false,
            "sbg:includeInPorts": true,
            "source": [
                "#GATK_BaseRecalibrator.plot_pdf"
            ],
            "sbg:y": 560.0001857413254,
            "label": "BaseRecalibrator plot PDF",
            "id": "#plot_pdf",
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "PDF",
            "sbg:x": 1734.902453710069
        },
        {
            "required": true,
            "sbg:includeInPorts": true,
            "source": [
                "#Picard_CollectAlignmentSummaryMetrics.summary_metrics"
            ],
            "sbg:y": 613.077110770428,
            "label": "Alignment summary metrics",
            "id": "#summary_metrics",
            "type": [
                "File"
            ],
            "sbg:fileTypes": "TXT",
            "sbg:x": 2535.256936679557
        },
        {
            "required": true,
            "sbg:includeInPorts": true,
            "source": [
                "#GATK_CombineVariants.combined_vcf"
            ],
            "sbg:y": 394.6154434660581,
            "label": "Filtered VCF",
            "id": "#combined_vcf",
            "type": [
                "File"
            ],
            "sbg:fileTypes": "VCF",
            "sbg:x": 3459.872451936101
        },
        {
            "required": true,
            "sbg:includeInPorts": true,
            "source": [
                "#BEDTools_Coverage.output_file"
            ],
            "sbg:y": 56.205140307418674,
            "label": "Coverage BEDs",
            "id": "#output_file",
            "type": [
                "File"
            ],
            "sbg:fileTypes": "BAM, BED",
            "sbg:x": 2735.693142097251
        },
        {
            "required": false,
            "sbg:includeInPorts": true,
            "source": [
                "#GATK_UnifiedGenotyper.raw_vcf"
            ],
            "sbg:y": 145.00000120533826,
            "label": "Raw VCF",
            "id": "#raw_vcf",
            "type": [
                "null",
                "File"
            ],
            "sbg:fileTypes": "VCF",
            "sbg:x": 2603.333436846735
        }
    ],
    "sbg:toolkitVersion": "1",
    "sbg:validationErrors": [],
    "sbg:contributors": [
        "bixqa"
    ],
    "sbg:sbgMaintained": false,
    "sbg:copyOf": "admin/sbg-public-data/targeted-capture-analysis-bwa-gatk-2-3-9-lite/25",
    "hints": [
        
    ],
    "sbg:modifiedBy": "bixqa",
    "sbg:latestRevision": 25,
    "sbg:image_url": "https://brood.sbgenomics.com/static/bixqa/qa-load-2017-07-31-18/targeted-capture-analysis-bwa-gatk-2-3-9-lite/25.png",
    "sbg:id": "bixqa/qa-load-2017-07-31-18/targeted-capture-analysis-bwa-gatk-2-3-9-lite/25",
    "sbg:toolkit": "SBGTools",
    "sbg:createdBy": "bixqa",
    "requirements": [],
    "sbg:batchInput": "#FASTQ",
    "label": "Targeted Capture Analysis - BWA + GATK 2.3.9-Lite ",
    "id": "https://api.sbgenomics.com/v2/apps/bixqa/qa-load-2017-07-31-18/targeted-capture-analysis-bwa-gatk-2-3-9-lite/25/raw/",
    "sbg:projectName": "qa-load-2017-07-31-18",
    "class": "Workflow",
    "sbg:batchBy": {
        "type": "criteria",
        "criteria": [
            "metadata.sample_id"
        ]
    },
    "sbg:revisionNotes": "No suggested files for bed input",
    "cwlVersion": "sbg:draft-2",
    "sbg:revision": 25,
    "sbg:canvas_zoom": 0.5999999999999996,
    "sbg:modifiedOn": 1501518703,
    "description": "Targeted Capture Analyses detects variants in selected regions of a genome. The advantages of this method are lower cost and shorter turnover time than Whole Exome Sequencing (WES) and Whole Genome Sequencing (WGS). In addition, this method provides greater coverage warranting increased sensitivity and specificity, increased confidence in heterozygous calls, increased likelihood of detecting mosaicism or low-level heterogeneity in mitochondrial or oncological applications, and greater ability to interpret the findings in a clinical context since sequenced regions have an established role in the disease. (H L Rehm, S J Bale et al. ACMG clinical laboratory standards for next-generation sequencing, Genet Med. 2013 September ; 15(9): 733\u2013747. doi:10.1038/gim.2013.92.) \nThe pipeline is constructed following the Broad Institute best practice and utilizing Broad Institute's GATK tools. A separate step is undertaken to assess the quality of sequenced reads using Babraham Institute's tool FastQC. \nSequenced reads are aligned with the BWA tool after which duplicates are removed. The next step uses algorithms developed by the Broad Institute to improve alignment around indels followed by the re-evaluation of the qualities of sequenced bases. Generated SAM files are pooled together and joint variant calling is performed. The key difference between this pipeline and WES pipeline is the restriction to predetermined regions of genome (genes or parts of genes), as oppose to WES where intervals of interest include all genes. \nDetected variants are subjected to additional analysis resulting in refined, high quality set of identified variants (for more information on how variant calling is performed, please refer to the [Broad Institute's web site](https://www.broadinstitute.org/gatk/guide/topic?name=methods/)). \nThe pipeline utilizes human reference genome hg19 as well as several public databases (dbSNP v142 and database of known indels generated by Seven Bridges).",
    "inputs": [
        {
            "sbg:includeInPorts": true,
            "sbg:y": 396.66678441895806,
            "sbg:fileTypes": "FASTQ,FASTQ.GZ,FQ,FQ.GZ",
            "id": "#FASTQ",
            "type": [
                {
                    "items": "File",
                    "type": "array"
                }
            ],
            "label": "#FASTQ",
            "sbg:x": -255.0980526115383,
            "batchType": "metadata.sample_id"
        },
        {
            "sbg:includeInPorts": true,
            "sbg:y": 217.33340822326088,
            "sbg:fileTypes": "FASTA,FA,FA.GZ,FASTA.GZ,TAR",
            "id": "#Input_reference",
            "sbg:suggestedValue": {
                "class": "File",
                "path": "5772b6d9507c1752674486e7",
                "name": "human_g1k_v37_decoy.fasta.tar"
            },
            "label": "Reference or TAR with BWA reference indices",
            "type": [
                "File"
            ],
            "sbg:x": -221.20514401615247
        },
        {
            "sbg:includeInPorts": true,
            "sbg:y": 589.402916089809,
            "sbg:fileTypes": "BAM, BED, GFF, VCF",
            "id": "#Target_BED",
            "type": [
                "File"
            ],
            "label": "Target BED",
            "sbg:x": 833.5087629361448
        },
        {
            "sbg:includeInPorts": true,
            "sbg:y": 644.7441662448307,
            "sbg:fileTypes": "VCF, BED, TXT",
            "id": "#Known_SNPs",
            "sbg:suggestedValue": {
                "class": "File",
                "path": "5772b6cd507c1752674486d8",
                "name": "dbsnp_137.b37.vcf"
            },
            "label": "Known SNPs",
            "type": [
                "File"
            ],
            "sbg:x": 1390.5128706500068
        },
        {
            "sbg:includeInPorts": true,
            "sbg:y": 447.2552685839039,
            "sbg:fileTypes": "VCF",
            "id": "#Known_Indels",
            "sbg:suggestedValue": [
                {
                    "class": "File",
                    "path": "578cf947507c17681a3117ce",
                    "name": "1000G_phase1.indels.b37.vcf"
                },
                {
                    "class": "File",
                    "path": "5772b6c9507c1752674486d4",
                    "name": "Mills_and_1000G_gold_standard.indels.b37.sites.vcf"
                }
            ],
            "label": "Known Indels",
            "type": [
                {
                    "items": "File",
                    "type": "array"
                }
            ],
            "sbg:x": 829.9020081322188
        }
    ],
    "sbg:createdOn": 1501518703,
    "sbg:categories": [
        "Targeted-sequencing"
    ],
    "sbg:project": "bixqa/qa-load-2017-07-31-18",
    "steps": [
        {
            "inputs": [
                {
                    "id": "#GATK_VariantFiltration_.variants",
                    "source": [
                        "#SNP_GATK_SelectVariants.select_variants_vcf"
                    ]
                },
                {
                    "id": "#GATK_VariantFiltration_.validation_strictness"
                },
                {
                    "id": "#GATK_VariantFiltration_.use_original_qualities"
                },
                {
                    "id": "#GATK_VariantFiltration_.use_legacy_downsampler"
                },
                {
                    "id": "#GATK_VariantFiltration_.unsafe",
                    "default": "ALLOW_UNINDEXED_BAM"
                },
                {
                    "id": "#GATK_VariantFiltration_.threads_per_job"
                },
                {
                    "id": "#GATK_VariantFiltration_.tag"
                },
                {
                    "id": "#GATK_VariantFiltration_.remove_program_records"
                },
                {
                    "id": "#GATK_VariantFiltration_.reference",
                    "source": [
                        "#SBG_FASTA_Indices.fasta_reference"
                    ]
                },
                {
                    "id": "#GATK_VariantFiltration_.read_group_black_list"
                },
                {
                    "id": "#GATK_VariantFiltration_.read_filter"
                },
                {
                    "id": "#GATK_VariantFiltration_.preserve_qscores_less_than"
                },
                {
                    "id": "#GATK_VariantFiltration_.phone_home"
                },
                {
                    "id": "#GATK_VariantFiltration_.pedigree_validation_type"
                },
                {
                    "id": "#GATK_VariantFiltration_.pedigree_string"
                },
                {
                    "id": "#GATK_VariantFiltration_.non_deterministic_random_seed"
                },
                {
                    "id": "#GATK_VariantFiltration_.missing_values_in_expressions_should_evaluate_as_failing"
                },
                {
                    "id": "#GATK_VariantFiltration_.memory_per_job",
                    "default": 2048
                },
                {
                    "id": "#GATK_VariantFiltration_.memory_overhead_per_job"
                },
                {
                    "id": "#GATK_VariantFiltration_.max_runtime_units"
                },
                {
                    "id": "#GATK_VariantFiltration_.max_runtime"
                },
                {
                    "id": "#GATK_VariantFiltration_.mask_name"
                },
                {
                    "id": "#GATK_VariantFiltration_.mask_extension"
                },
                {
                    "id": "#GATK_VariantFiltration_.mask"
                },
                {
                    "id": "#GATK_VariantFiltration_.keep_program_records"
                },
                {
                    "id": "#GATK_VariantFiltration_.invalidate_previous_filters"
                },
                {
                    "id": "#GATK_VariantFiltration_.intervals_file"
                },
                {
                    "id": "#GATK_VariantFiltration_.intervals"
                },
                {
                    "id": "#GATK_VariantFiltration_.interval_set_rule"
                },
                {
                    "id": "#GATK_VariantFiltration_.interval_padding"
                },
                {
                    "id": "#GATK_VariantFiltration_.interval_merging"
                },
                {
                    "id": "#GATK_VariantFiltration_.genotype_filter_name"
                },
                {
                    "id": "#GATK_VariantFiltration_.genotype_filter_expression"
                },
                {
                    "id": "#GATK_VariantFiltration_.gatk_key"
                },
                {
                    "id": "#GATK_VariantFiltration_.fix_misencoded_quals"
                },
                {
                    "id": "#GATK_VariantFiltration_.filter_name",
                    "default": [
                        "QD",
                        "MQ",
                        "FS",
                        "HaplotypeScore",
                        "MQRankSum",
                        "ReadPosRankSum"
                    ]
                },
                {
                    "id": "#GATK_VariantFiltration_.filter_expression",
                    "default": [
                        "QD < 2.0",
                        "MQ < 40.0",
                        "FS > 60.0",
                        "HaplotypeScore > 13.0",
                        "MQRankSum < -12.5",
                        "ReadPosRankSum < -8.0"
                    ]
                },
                {
                    "id": "#GATK_VariantFiltration_.exclude_intervals"
                },
                {
                    "id": "#GATK_VariantFiltration_.emit_original_quals"
                },
                {
                    "id": "#GATK_VariantFiltration_.downsampling_type"
                },
                {
                    "id": "#GATK_VariantFiltration_.downsample_to_fraction"
                },
                {
                    "id": "#GATK_VariantFiltration_.downsample_to_coverage"
                },
                {
                    "id": "#GATK_VariantFiltration_.disable_radnomization"
                },
                {
                    "id": "#GATK_VariantFiltration_.disable_indel_quals"
                },
                {
                    "id": "#GATK_VariantFiltration_.default_base_qualities"
                },
                {
                    "id": "#GATK_VariantFiltration_.cpu_per_job",
                    "default": 1
                },
                {
                    "id": "#GATK_VariantFiltration_.cluster_window_size"
                },
                {
                    "id": "#GATK_VariantFiltration_.cluster_size"
                },
                {
                    "id": "#GATK_VariantFiltration_.baq_gap_open_penalty"
                },
                {
                    "id": "#GATK_VariantFiltration_.baq"
                },
                {
                    "id": "#GATK_VariantFiltration_.allow_potentailly_misencoded_quals"
                }
            ],
            "sbg:y": 285.12827849897815,
            "id": "#GATK_VariantFiltration_",
            "outputs": [
                {
                    "id": "#GATK_VariantFiltration_.filtered_vcf"
                }
            ],
            "sbg:x": 2957.8206735778094,
            "run": {
                "stdout": "",
                "outputs": [
                    {
                        "sbg:fileTypes": "VCF",
                        "id": "#filtered_vcf",
                        "type": [
                            "File"
                        ],
                        "label": "Filtered VCF",
                        "outputBinding": {
                            "glob": "*.vcf",
                            "sbg:metadata": {},
                            "sbg:inheritMetadataFrom": "#variants",
                            "secondaryFiles": [
                                ".idx"
                            ]
                        },
                        "description": "File to which variants should be written."
                    }
                ],
                "sbg:toolkitVersion": "2.3.9 Lite",
                "sbg:validationErrors": [],
                "sbg:contributors": [
                    "bix-demo"
                ],
                "sbg:sbgMaintained": false,
                "hints": [
                    {
                        "dockerPull": "images.sbgenomics.com/stefanristeski/gatk2-lite:2.3-9",
                        "class": "DockerRequirement",
                        "dockerImageId": "47510cb2da55"
                    },
                    {
                        "class": "sbg:CPURequirement",
                        "value": {
                            "class": "Expression",
                            "script": "{\n  if($job.inputs.cpu_per_job){\n  \treturn $job.inputs.cpu_per_job\n  }\n  return 1 \n}",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "class": "sbg:MemRequirement",
                        "value": {
                            "class": "Expression",
                            "script": "{\n  if($job.inputs.memory_per_job){\n    if($job.inputs.memory_overhead_per_job){\n    \treturn $job.inputs.memory_per_job + $job.inputs.memory_overhead_per_job\n    }\n    else\n  \t\treturn $job.inputs.memory_per_job\n  }\n  else if(!$job.inputs.memory_per_job && $job.inputs.memory_overhead_per_job){\n\t\treturn 2048 + $job.inputs.memory_overhead_per_job  \n  }\n  else\n  \treturn 2048\n}",
                            "engine": "#cwl-js-engine"
                        }
                    }
                ],
                "sbg:modifiedBy": "bix-demo",
                "baseCommand": [
                    "java",
                    {
                        "class": "Expression",
                        "script": "{\n  if($job.inputs.memory_per_job){\n  \treturn '-Xmx'.concat($job.inputs.memory_per_job, 'M')\n  }\n  \treturn '-Xmx2048M'\n}",
                        "engine": "#cwl-js-engine"
                    },
                    "-jar",
                    "/opt/GenomeAnalysisTKLite.jar",
                    "--analysis_type",
                    "VariantFiltration"
                ],
                "sbg:latestRevision": 6,
                "sbg:cmdPreview": "java -Xmx2048M -jar /opt/GenomeAnalysisTKLite.jar --analysis_type VariantFiltration --variant varaint.vcf  --filterName \"qd\" --filterExpression \"qd<2\" --filterName \"rank\" --filterExpression \"rank>10\"   --out varaint.vcf",
                "inputs": [
                    {
                        "required": true,
                        "inputBinding": {
                            "prefix": "--variant",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-V",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "VCF",
                        "id": "#variants",
                        "type": [
                            {
                                "items": "File",
                                "type": "array"
                            }
                        ],
                        "label": "Variants",
                        "description": "Input VCF file."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--validation_strictness",
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "itemSeparator": " ",
                            "valueFrom": {
                                "class": "Expression",
                                "script": "{\n  if (!$job.inputs.validation_strictness){\n  \treturn 'SILENT'\n  }\n  else\n    return $job.inputs.validation_strictness\n}",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "sbg:altPrefix": "-S",
                        "sbg:category": "GATK General",
                        "label": "Validation Strictness",
                        "id": "#validation_strictness",
                        "sbg:toolDefaultValue": "SILENT",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "SILENT",
                                    "LENIENT",
                                    "STRICT"
                                ],
                                "name": "validation_strictness",
                                "type": "enum"
                            }
                        ],
                        "description": "How strict should we be with validation."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--useOriginalQualities",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-OQ",
                        "sbg:category": "GATK General",
                        "label": "Use Original Qualities",
                        "id": "#use_original_qualities",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "If set, use the original base quality scores from the OQ tag when present instead of the standard scores."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--use_legacy_downsampler",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-use_legacy_downsampler",
                        "sbg:category": "GATK General",
                        "label": "Use Legacy Downsampler",
                        "id": "#use_legacy_downsampler",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Use the legacy downsampling implementation instead of the newer, less-tested implementation."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--unsafe",
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "itemSeparator": " ",
                            "valueFrom": {
                                "class": "Expression",
                                "script": "{\n  if (!$job.inputs.unsafe){\n  \treturn 'LENIENT_VCF_PROCESSING'\n  }\n  else\n    return $job.inputs.unsafe\n}",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "sbg:altPrefix": "-U",
                        "sbg:category": "GATK General",
                        "label": "Unsafe",
                        "id": "#unsafe",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "ALLOW_UNINDEXED_BAM",
                                    "ALLOW_UNSET_BAM_SORT_ORDER",
                                    "NO_READ_ORDER_VERIFICATION",
                                    "ALLOW_SEQ_DICT_INCOMPATIBILITY",
                                    "LENIENT_VCF_PROCESSING",
                                    "ALL"
                                ],
                                "name": "unsafe",
                                "type": "enum"
                            }
                        ],
                        "description": "If set, enables unsafe operations: nothing will be checked at runtime.  For expert users only who know what they are doing.  We do not support usage of this argument."
                    },
                    {
                        "sbg:altPrefix": null,
                        "sbg:category": "Execution",
                        "label": "Threads per job",
                        "id": "#threads_per_job",
                        "sbg:toolDefaultValue": "4",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "For tools which support multiprocessing, this value can be used to set the number of threads to be used."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--tag",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-tag",
                        "sbg:category": "GATK General",
                        "label": "Tag",
                        "id": "#tag",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "Arbitrary tag string to identify this GATK run as part of a group of runs, for later analysis."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--remove_program_records",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-rpr",
                        "sbg:category": "GATK General",
                        "label": "Remove Program Records",
                        "id": "#remove_program_records",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Should we override the Walker's default and remove program records from the SAM header."
                    },
                    {
                        "required": true,
                        "inputBinding": {
                            "prefix": "--reference_sequence",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-R",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "FASTA, FA",
                        "id": "#reference",
                        "type": [
                            "File"
                        ],
                        "label": "Reference Genome",
                        "description": "Reference Genome in FASTA format."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--read_group_black_list",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-rgbl",
                        "sbg:category": "GATK General",
                        "label": "Read Group Black List",
                        "id": "#read_group_black_list",
                        "sbg:toolDefaultValue": "[]",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "description": "Filters out read groups matching : or a .txt file containing the filter strings one per line."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--read_filter",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-rf",
                        "sbg:category": "GATK General",
                        "label": "Read Filter",
                        "id": "#read_filter",
                        "sbg:toolDefaultValue": "[]",
                        "type": [
                            "null",
                            {
                                "items": {
                                    "symbols": [
                                        "BadCigarFilter",
                                        "BadMateFilter",
                                        "CountingFilteringIterator.CountingReadFilter",
                                        "DuplicateReadFilter",
                                        "FailsVendorQualityCheckFilter",
                                        "HCMappingQualityFilter",
                                        "LibraryReadFilter",
                                        "MalformedReadFilter",
                                        "MappingQualityFilter",
                                        "MappingQualityUnavailableFilter",
                                        "MappingQualityZeroFilter",
                                        "MateSameStrandFilter",
                                        "MaxInsertSizeFilter",
                                        "MissingReadGroupFilter",
                                        "NoOriginalQualityScoresFilter",
                                        "NotPrimaryAlignmentFilter",
                                        "OverclippedReadFilter",
                                        "Platform454Filter",
                                        "PlatformFilter",
                                        "PlatformUnitFilter",
                                        "ReadGroupBlackListFilter",
                                        "ReadLengthFilter",
                                        "ReadNameFilter",
                                        "ReadStrandFilter",
                                        "ReassignMappingQualityFilter",
                                        "ReassignOneMappingQualityFilter",
                                        "SampleFilter",
                                        "SingleReadGroupFilter",
                                        "UnmappedReadFilter"
                                    ],
                                    "name": "read_filter",
                                    "type": "enum"
                                },
                                "type": "array"
                            }
                        ],
                        "description": "Specify filtration criteria to apply to each read individually."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--preserve_qscores_less_than",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-preserveQ",
                        "sbg:category": "GATK General",
                        "label": "Preserve Qscores Less Than",
                        "id": "#preserve_qscores_less_than",
                        "sbg:toolDefaultValue": "6",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Bases with quality scores less than this threshold won't be recalibrated (with -BQSR)."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--phone_home",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-et",
                        "sbg:category": "GATK General",
                        "label": "Phone Home",
                        "id": "#phone_home",
                        "sbg:toolDefaultValue": "STANDARD",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "NO_ET",
                                    "STANDARD"
                                ],
                                "name": "phone_home",
                                "type": "enum"
                            }
                        ],
                        "description": "What kind of GATK run report should we generate? STANDARD is the default, can be NO_ET so nothing is posted to the run repository. Please see http://gatkforums.broadinstitute.org/discussion/1250/what-is-phone-home-and-how-does-it-affect-me#latest for details."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--pedigreeValidationType",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-pedValidationType",
                        "sbg:category": "GATK General",
                        "label": "Pedigree Validation Type",
                        "id": "#pedigree_validation_type",
                        "sbg:toolDefaultValue": "STRICT",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "STRICT",
                                    "SILENT"
                                ],
                                "name": "pedigree_validation_type",
                                "type": "enum"
                            }
                        ],
                        "description": "How strict should we be in validating the pedigree information?."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--pedigreeString",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-pedString",
                        "sbg:category": "GATK General",
                        "label": "Pedigree String",
                        "id": "#pedigree_string",
                        "sbg:toolDefaultValue": "[]",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "description": "Pedigree string for samples."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--nonDeterministicRandomSeed",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-ndrs",
                        "sbg:category": "GATK General",
                        "label": "Non Deterministic Random Seed",
                        "id": "#non_deterministic_random_seed",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Makes the GATK behave non deterministically, that is, the random numbers generated will be different in every run."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--missingValuesInExpressionsShouldEvaluateAsFailing",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": null,
                        "sbg:category": "Variant Filtration",
                        "label": "Missing Values In Expressions Should Evaluate As Failing",
                        "id": "#missing_values_in_expressions_should_evaluate_as_failing",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "When evaluating the JEXL expressions, missing values should be considered failing the expression."
                    },
                    {
                        "sbg:altPrefix": null,
                        "sbg:category": "Execution",
                        "label": "Memory per job",
                        "id": "#memory_per_job",
                        "sbg:toolDefaultValue": "2048",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Amount of RAM memory to be used per job."
                    },
                    {
                        "sbg:category": "Execution",
                        "label": "Memory overhead per job",
                        "id": "#memory_overhead_per_job",
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Memory overhead per job. By default this parameter value is set to '0' (zero megabytes). This parameter value is added to the Memory per job parameter value. This results in the allocation of the sum total (Memory per job and Memory overhead per job) amount of memory per job. By default the memory per job parameter value is set to 2048 megabytes, unless specified otherwise."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--maxRuntimeUnits",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-maxRuntimeUnits",
                        "sbg:category": "GATK General",
                        "label": "Max Runtime Units",
                        "id": "#max_runtime_units",
                        "sbg:toolDefaultValue": "MINUTES",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "NANOSECONDS",
                                    "MICROSECONDS",
                                    "MILLISECONDS",
                                    "SECONDS",
                                    "MINUTES",
                                    "HOURS",
                                    "DAYS"
                                ],
                                "name": "max_runtime_units",
                                "type": "enum"
                            }
                        ],
                        "description": "The TimeUnit for maxRuntime."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--maxRuntime",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-maxRuntime",
                        "sbg:category": "GATK General",
                        "label": "Max Runtime",
                        "id": "#max_runtime",
                        "sbg:toolDefaultValue": "-1",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "If provided, that GATK will stop execution cleanly as soon after maxRuntime has been exceeded, truncating the run but not exiting with a failure.  By default the value is interpreted in minutes, but this can be changed by maxRuntimeUnits."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--maskName",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-maskName",
                        "sbg:category": "Variant Filtration",
                        "label": "Mask Name",
                        "id": "#mask_name",
                        "sbg:toolDefaultValue": "Mask",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "The text to put in the FILTER field if a 'mask' rod is provided and overlaps with a variant call."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--maskExtension",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-maskExtend",
                        "sbg:category": "Variant Filtration",
                        "label": "Mask Extension",
                        "id": "#mask_extension",
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "How many bases beyond records from a provided 'mask' rod should variants be filtered."
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "prefix": "--mask",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-mask",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "BCF2, BEAGLE, BED, BEDTABLE, EXAMPLEBINARY, GELITEXT, RAWHAPMAP, REFSEQ, SAMPILEUP, SAMREAD, TABLE, VCF, VCF3",
                        "id": "#mask",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Mask",
                        "description": "Input ROD mask."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--keep_program_records",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-kpr",
                        "sbg:category": "GATK General",
                        "label": "Keep Program Records",
                        "id": "#keep_program_records",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Should we override the Walker's default and keep program records from the SAM header."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--invalidatePreviousFilters",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": null,
                        "sbg:category": "Variant Filtration",
                        "label": "Invalidate Previous Filters",
                        "id": "#invalidate_previous_filters",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Remove previous filters applied to the VCF."
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "prefix": "--intervals",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-L",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "TXT, BED, VCF",
                        "id": "#intervals_file",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Intervals",
                        "description": "One or more genomic intervals over which to operate. Can be an specified in an .intervals file or a rod file."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-L",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "--intervals",
                        "sbg:category": "GATK General",
                        "label": "Intervals",
                        "id": "#intervals",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "One or more genomic intervals over which to operate."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--interval_set_rule",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-isr",
                        "sbg:category": "GATK General",
                        "label": "Interval Set Rule",
                        "id": "#interval_set_rule",
                        "sbg:toolDefaultValue": "UNION",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "UNION",
                                    "INTERSECTION"
                                ],
                                "name": "interval_set_rule",
                                "type": "enum"
                            }
                        ],
                        "description": "Indicates the set merging approach the interval parser should use to combine the various -L or -XL inputs."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--interval_padding",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-ip",
                        "sbg:category": "GATK General",
                        "label": "Interval Padding",
                        "id": "#interval_padding",
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Indicates how many basepairs of padding to include around each of the intervals specified with the -L/--intervals argument."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--interval_merging",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-im",
                        "sbg:category": "GATK General",
                        "label": "Interval Merging",
                        "id": "#interval_merging",
                        "sbg:toolDefaultValue": "ALL",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "ALL",
                                    "OVERLAPPING_ONLY"
                                ],
                                "name": "interval_merging",
                                "type": "enum"
                            }
                        ],
                        "description": "Indicates the interval merging rule we should use for abutting intervals."
                    },
                    {
                        "sbg:altPrefix": "-G_filterName",
                        "sbg:category": "Variant Filtration",
                        "label": "Genotype filter name",
                        "id": "#genotype_filter_name",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "description": "Names to use for the list of sample/genotype filters (must be a 1-to-1 mapping); this name is put in the FILTER field for variants that get filtered"
                    },
                    {
                        "sbg:altPrefix": "-G_filter",
                        "sbg:category": "Variant Filtration",
                        "label": "Genotype filter expression",
                        "id": "#genotype_filter_expression",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "description": "One or more expression used with FORMAT (sample/genotype-level) fields to filter (see documentation guide for more info)"
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "prefix": "--gatk_key",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-K",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "KEY, LICENSE",
                        "id": "#gatk_key",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Gatk key",
                        "description": "GATK Key file. Required if running with -et NO_ET. Please see http://gatkforums.broadinstitute.org/discussion/1250/what-is-phone-home-and-how-does-it-affect-me#latest for details."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-fixMisencodedQuals",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-fixMisencodedQuals",
                        "sbg:category": "GATK General",
                        "label": "Fix Misencoded Quals",
                        "id": "#fix_misencoded_quals",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Fix mis-encoded base quality scores."
                    },
                    {
                        "sbg:altPrefix": "-filterName",
                        "sbg:category": "Variant Filtration",
                        "label": "FIlter name",
                        "id": "#filter_name",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "description": "Names to use for the list of filters"
                    },
                    {
                        "sbg:altPrefix": "-filter",
                        "sbg:category": "Variant Filtration",
                        "label": "Filter expression",
                        "id": "#filter_expression",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "description": "One or more expression used with INFO fields to filter"
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "prefix": "--excludeIntervals",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-XL",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "TXT, BED, VCF",
                        "id": "#exclude_intervals",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Exclude Intervals",
                        "description": "One or more genomic intervals to exclude from processing. Can be an .intervals file or a rod file."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--emit_original_quals",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-EOQ",
                        "sbg:category": "GATK General",
                        "label": "Emit Original Quals",
                        "id": "#emit_original_quals",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "If true, enables printing of the OQ tag with the original base qualities (with -BQSR)."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--downsampling_type",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-dt",
                        "sbg:category": "GATK General",
                        "label": "Downsampling Type",
                        "id": "#downsampling_type",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "NONE",
                                    "ALL_READS",
                                    "BY_SAMPLE"
                                ],
                                "name": "downsampling_type",
                                "type": "enum"
                            }
                        ],
                        "description": "Type of reads downsampling to employ at a given locus. Reads will be selected randomly to be removed from the pile based on the method described here."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--downsample_to_fraction",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-dfrac",
                        "sbg:category": "GATK General",
                        "label": "Downsample to Fraction",
                        "id": "#downsample_to_fraction",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            "float"
                        ],
                        "description": "Fraction [0.0-1.0] of reads to downsample to."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--downsample_to_coverage",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-dcov",
                        "sbg:category": "GATK General",
                        "label": "Downsample to Coverage",
                        "id": "#downsample_to_coverage",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Coverage to downsample to at any given locus; note that downsampled reads are randomly selected from all possible reads at a locus. For non-locus-based traversals (eg., ReadWalkers), this sets the maximum number of reads at each alignment start position."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--disableRandomization",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": null,
                        "sbg:category": "GATK General",
                        "label": "Disable Randomization",
                        "id": "#disable_radnomization",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Completely eliminates randomization from nondeterministic methods. To be used mostly in the testing framework where dynamic parallelism can result in differing numbers of calls to the generator."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--disable_indel_quals",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-DIQ",
                        "sbg:category": "GATK General",
                        "label": "Disable Indel Quals",
                        "id": "#disable_indel_quals",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "If 'true', disables printing of base insertion and base deletion tags (with -BQSR). Turns off printing of the base insertion and base deletion tags when using the -BQSR argument and only the base substitution qualities will be produced."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--defaultBaseQualities",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-DBQ",
                        "sbg:category": "GATK General",
                        "label": "Default Base Qualities",
                        "id": "#default_base_qualities",
                        "sbg:toolDefaultValue": "-1",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "If reads are missing some or all base quality scores, this value will be used for all base quality scores."
                    },
                    {
                        "sbg:altPrefix": null,
                        "sbg:category": "Execution",
                        "label": "CPU per job",
                        "id": "#cpu_per_job",
                        "sbg:toolDefaultValue": "1",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Number of CPUs per job."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--clusterWindowSize",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-window",
                        "sbg:category": "Variant Filtration",
                        "label": "Cluster Window Size",
                        "id": "#cluster_window_size",
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "The window size (in bases) in which to evaluate clustered SNPs."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--clusterSize",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-cluster",
                        "sbg:category": "Variant Filtration",
                        "label": "Cluster Size",
                        "id": "#cluster_size",
                        "sbg:toolDefaultValue": "3",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "The number of SNPs which make up a cluster."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--baqGapOpenPenalty",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-baqGOP",
                        "sbg:category": "GATK General",
                        "label": "BAQ Gap Open Penalty",
                        "id": "#baq_gap_open_penalty",
                        "sbg:toolDefaultValue": "40.0",
                        "type": [
                            "null",
                            "float"
                        ],
                        "description": "BAQ gap open penalty (Phred Scaled). Default value is 40. 30 is perhaps better for whole genome call sets."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--baq",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-baq",
                        "sbg:category": "GATK General",
                        "label": "BAQ Calculation Type",
                        "id": "#baq",
                        "sbg:toolDefaultValue": "OFF",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "OFF",
                                    "CALCULATE_AS_NECESSARY",
                                    "RECALCULATE"
                                ],
                                "name": "baq",
                                "type": "enum"
                            }
                        ],
                        "description": "Type of BAQ calculation to apply in the engine."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-allowPotentiallyMisencodedQuals",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "--allow_potentially_misencoded_quality_scores",
                        "sbg:category": "GATK General",
                        "label": "Allow Potentially Misencoded Quals",
                        "id": "#allow_potentailly_misencoded_quals",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Do not fail when encountered base qualities that are too high and seemingly indicate a problem with the base quality encoding of the BAM file."
                    }
                ],
                "sbg:toolkit": "GATK",
                "sbg:createdBy": "bix-demo",
                "requirements": [
                    {
                        "id": "#cwl-js-engine",
                        "class": "ExpressionEngineRequirement",
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ]
                    }
                ],
                "label": "SNP GATK VariantFiltration",
                "id": "bix-demo/gatk-2-3-9-lite-demo/gatk-2-3-9-lite-variantfiltration/6",
                "class": "CommandLineTool",
                "y": 285.12827849897815,
                "cwlVersion": "sbg:draft-2",
                "stdin": "",
                "sbg:revision": 6,
                "sbg:id": "admin/sbg-public-data/gatk-2-3-9-lite-variantfiltration/9",
                "sbg:categories": [
                    "VCF-Processing"
                ],
                "sbg:modifiedOn": 1450911419,
                "description": "Overview\nThis tool is designed for hard-filtering variant calls based on certain criteria. Records are hard-filtered by changing the value in the FILTER field to something other than PASS. Filtered records will be preserved in the output unless their removal is requested in the command line.\n\nInput\nA variant set to filter.\n\nOutput\nA filtered VCF.\n\nUsage example\n java -jar GenomeAnalysisTK.jar \\\n   -T VariantFiltration \\\n   -R reference.fasta \\\n   -o output.vcf \\\n   --variant input.vcf \\\n   --filterExpression \"AB < 0.2 || MQ0 > 50\" \\\n   --filterName \"Nov09filters\" \\\n   --mask mask.vcf \\\n   --maskName InDel\n\n(IMPORTANT) Reference \".fasta\" Secondary Files\n\nTools in GATK that require a fasta reference file also look for the reference file's corresponding .fai (fasta index) and .dict (fasta dictionary) files. The fasta index file allows random access to reference bases and the dictionary file is a dictionary of the contig names and sizes contained within the fasta reference. These two secondary files are essential for GATK to work properly. To append these two files to your fasta reference please use the 'SBG FASTA Indices' tool within your GATK based workflow before using any of the GATK tools.",
                "sbg:createdOn": 1450911414,
                "sbg:links": [
                    {
                        "id": "https://www.broadinstitute.org/gatk/index.php",
                        "label": "Homepage"
                    },
                    {
                        "id": "https://github.com/broadgsa/gatk-protected",
                        "label": "Source code"
                    },
                    {
                        "id": "https://www.broadinstitute.org/gatk/guide/pdfdocs/GATK_GuideBook_2.3-9.pdf",
                        "label": "Wiki"
                    },
                    {
                        "id": "https://www.broadinstitute.org/gatk/download/auth?package=GATK-archive&version=2.3-9-ge5ebf34",
                        "label": "Download"
                    },
                    {
                        "id": "https://www.broadinstitute.org/gatk/about/#in-the-literature",
                        "label": "Publication"
                    },
                    {
                        "id": "https://www.broadinstitute.org/gatk/gatkdocs/org_broadinstitute_gatk_tools_walkers_filters_VariantFiltration.php",
                        "label": "Documentation"
                    }
                ],
                "x": 2957.8206735778094,
                "temporaryFailCodes": [],
                "successCodes": [],
                "sbg:project": "bix-demo/gatk-2-3-9-lite-demo",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:modifiedOn": 1450911414
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:modifiedOn": 1450911415
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:modifiedOn": 1450911416
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:modifiedOn": 1450911417
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:modifiedOn": 1450911418
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:modifiedOn": 1450911419
                    },
                    {
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:modifiedOn": 1450911419
                    }
                ],
                "sbg:job": {
                    "inputs": {
                        "filter_name": [
                            "qd",
                            "rank"
                        ],
                        "memory_overhead_per_job": 0,
                        "filter_expression": [
                            "qd<2",
                            "rank>10"
                        ],
                        "genotype_filter_name": [],
                        "genotype_filter_expression": [],
                        "validation_strictness": null,
                        "unsafe": null,
                        "variants": [
                            {
                                "path": "varaint.vcf"
                            }
                        ]
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 2048
                    }
                },
                "arguments": [
                    {
                        "prefix": "--out",
                        "position": 1,
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\n  read_name = [].concat($job.inputs.variants)[0].path.replace(/^.*[\\\\\\/]/, '').split('.')\n  read_namebase = read_name.slice(0, read_name.length-1).join('.')\n  return read_namebase + '.vcf'\n}",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{ \n  if($job.inputs.filter_name && $job.inputs.filter_expression){\n    name = $job.inputs.filter_name\n    expression = $job.inputs.filter_expression\n    filter = []\n    for (i = 0; i < name.length; i++) {\n      filter.push('--filterName \"', name[i], '\" --filterExpression ', '\"', expression[i], '\" ')\n    }\n    return filter.join(\"\").trim()\n  }\n}\n",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\n  if($job.inputs.genotype_filter_name && $job.inputs.genotype_filter_expression){\n    name = $job.inputs.genotype_filter_name\n    expression = $job.inputs.genotype_filter_expression\n    filter = []\n    for (i = 0; i < name.length; i++) {\n      filter.push('--genotypeFilterName \"', name[i], '\" --genotypeFilterExpression ', '\"', expression[i], '\" ')\n    }\n    return filter.join(\"\").trim()\n  }\n}\n",
                            "engine": "#cwl-js-engine"
                        }
                    }
                ],
                "sbg:toolAuthor": "Broad",
                "sbg:license": "MIT License"
            }
        },
        {
            "inputs": [
                {
                    "id": "#GATK_VariantFiltration__1.variants",
                    "source": [
                        "#Indel_GATK_SelectVariants.select_variants_vcf"
                    ]
                },
                {
                    "id": "#GATK_VariantFiltration__1.validation_strictness"
                },
                {
                    "id": "#GATK_VariantFiltration__1.use_original_qualities"
                },
                {
                    "id": "#GATK_VariantFiltration__1.use_legacy_downsampler"
                },
                {
                    "id": "#GATK_VariantFiltration__1.unsafe",
                    "default": "ALLOW_UNINDEXED_BAM"
                },
                {
                    "id": "#GATK_VariantFiltration__1.threads_per_job"
                },
                {
                    "id": "#GATK_VariantFiltration__1.tag"
                },
                {
                    "id": "#GATK_VariantFiltration__1.remove_program_records"
                },
                {
                    "id": "#GATK_VariantFiltration__1.reference",
                    "source": [
                        "#SBG_FASTA_Indices.fasta_reference"
                    ]
                },
                {
                    "id": "#GATK_VariantFiltration__1.read_group_black_list"
                },
                {
                    "id": "#GATK_VariantFiltration__1.read_filter"
                },
                {
                    "id": "#GATK_VariantFiltration__1.preserve_qscores_less_than"
                },
                {
                    "id": "#GATK_VariantFiltration__1.phone_home"
                },
                {
                    "id": "#GATK_VariantFiltration__1.pedigree_validation_type"
                },
                {
                    "id": "#GATK_VariantFiltration__1.pedigree_string"
                },
                {
                    "id": "#GATK_VariantFiltration__1.non_deterministic_random_seed"
                },
                {
                    "id": "#GATK_VariantFiltration__1.missing_values_in_expressions_should_evaluate_as_failing"
                },
                {
                    "id": "#GATK_VariantFiltration__1.memory_per_job",
                    "default": 2048
                },
                {
                    "id": "#GATK_VariantFiltration__1.memory_overhead_per_job"
                },
                {
                    "id": "#GATK_VariantFiltration__1.max_runtime_units"
                },
                {
                    "id": "#GATK_VariantFiltration__1.max_runtime"
                },
                {
                    "id": "#GATK_VariantFiltration__1.mask_name"
                },
                {
                    "id": "#GATK_VariantFiltration__1.mask_extension"
                },
                {
                    "id": "#GATK_VariantFiltration__1.mask"
                },
                {
                    "id": "#GATK_VariantFiltration__1.keep_program_records"
                },
                {
                    "id": "#GATK_VariantFiltration__1.invalidate_previous_filters"
                },
                {
                    "id": "#GATK_VariantFiltration__1.intervals_file"
                },
                {
                    "id": "#GATK_VariantFiltration__1.intervals"
                },
                {
                    "id": "#GATK_VariantFiltration__1.interval_set_rule"
                },
                {
                    "id": "#GATK_VariantFiltration__1.interval_padding"
                },
                {
                    "id": "#GATK_VariantFiltration__1.interval_merging"
                },
                {
                    "id": "#GATK_VariantFiltration__1.genotype_filter_name",
                    "default": [
                        "QD",
                        "FS",
                        "ReadPosRankSum"
                    ]
                },
                {
                    "id": "#GATK_VariantFiltration__1.genotype_filter_expression",
                    "default": [
                        "QD < 2.0",
                        "FS > 200.0",
                        "ReadPosRankSum < -20.0"
                    ]
                },
                {
                    "id": "#GATK_VariantFiltration__1.gatk_key"
                },
                {
                    "id": "#GATK_VariantFiltration__1.fix_misencoded_quals"
                },
                {
                    "id": "#GATK_VariantFiltration__1.filter_name"
                },
                {
                    "id": "#GATK_VariantFiltration__1.filter_expression"
                },
                {
                    "id": "#GATK_VariantFiltration__1.exclude_intervals"
                },
                {
                    "id": "#GATK_VariantFiltration__1.emit_original_quals"
                },
                {
                    "id": "#GATK_VariantFiltration__1.downsampling_type"
                },
                {
                    "id": "#GATK_VariantFiltration__1.downsample_to_fraction"
                },
                {
                    "id": "#GATK_VariantFiltration__1.downsample_to_coverage"
                },
                {
                    "id": "#GATK_VariantFiltration__1.disable_radnomization"
                },
                {
                    "id": "#GATK_VariantFiltration__1.disable_indel_quals"
                },
                {
                    "id": "#GATK_VariantFiltration__1.default_base_qualities"
                },
                {
                    "id": "#GATK_VariantFiltration__1.cpu_per_job",
                    "default": 1
                },
                {
                    "id": "#GATK_VariantFiltration__1.cluster_window_size"
                },
                {
                    "id": "#GATK_VariantFiltration__1.cluster_size"
                },
                {
                    "id": "#GATK_VariantFiltration__1.baq_gap_open_penalty"
                },
                {
                    "id": "#GATK_VariantFiltration__1.baq"
                },
                {
                    "id": "#GATK_VariantFiltration__1.allow_potentailly_misencoded_quals"
                }
            ],
            "sbg:y": 492.4361054540777,
            "id": "#GATK_VariantFiltration__1",
            "outputs": [
                {
                    "id": "#GATK_VariantFiltration__1.filtered_vcf"
                }
            ],
            "sbg:x": 2950.898310617536,
            "run": {
                "stdout": "",
                "outputs": [
                    {
                        "sbg:fileTypes": "VCF",
                        "id": "#filtered_vcf",
                        "type": [
                            "File"
                        ],
                        "label": "Filtered VCF",
                        "outputBinding": {
                            "glob": "*.vcf",
                            "sbg:metadata": {},
                            "sbg:inheritMetadataFrom": "#variants",
                            "secondaryFiles": [
                                ".idx"
                            ]
                        },
                        "description": "File to which variants should be written."
                    }
                ],
                "sbg:toolkitVersion": "2.3.9 Lite",
                "sbg:validationErrors": [],
                "sbg:contributors": [
                    "bix-demo"
                ],
                "sbg:sbgMaintained": false,
                "hints": [
                    {
                        "dockerPull": "images.sbgenomics.com/stefanristeski/gatk2-lite:2.3-9",
                        "class": "DockerRequirement",
                        "dockerImageId": "47510cb2da55"
                    },
                    {
                        "class": "sbg:CPURequirement",
                        "value": {
                            "class": "Expression",
                            "script": "{\n  if($job.inputs.cpu_per_job){\n  \treturn $job.inputs.cpu_per_job\n  }\n  return 1 \n}",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "class": "sbg:MemRequirement",
                        "value": {
                            "class": "Expression",
                            "script": "{\n  if($job.inputs.memory_per_job){\n    if($job.inputs.memory_overhead_per_job){\n    \treturn $job.inputs.memory_per_job + $job.inputs.memory_overhead_per_job\n    }\n    else\n  \t\treturn $job.inputs.memory_per_job\n  }\n  else if(!$job.inputs.memory_per_job && $job.inputs.memory_overhead_per_job){\n\t\treturn 2048 + $job.inputs.memory_overhead_per_job  \n  }\n  else\n  \treturn 2048\n}",
                            "engine": "#cwl-js-engine"
                        }
                    }
                ],
                "sbg:modifiedBy": "bix-demo",
                "baseCommand": [
                    "java",
                    {
                        "class": "Expression",
                        "script": "{\n  if($job.inputs.memory_per_job){\n  \treturn '-Xmx'.concat($job.inputs.memory_per_job, 'M')\n  }\n  \treturn '-Xmx2048M'\n}",
                        "engine": "#cwl-js-engine"
                    },
                    "-jar",
                    "/opt/GenomeAnalysisTKLite.jar",
                    "--analysis_type",
                    "VariantFiltration"
                ],
                "sbg:latestRevision": 6,
                "sbg:cmdPreview": "java -Xmx2048M -jar /opt/GenomeAnalysisTKLite.jar --analysis_type VariantFiltration --variant varaint.vcf  --filterName \"qd\" --filterExpression \"qd<2\" --filterName \"rank\" --filterExpression \"rank>10\"   --out varaint.vcf",
                "inputs": [
                    {
                        "required": true,
                        "inputBinding": {
                            "prefix": "--variant",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-V",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "VCF",
                        "id": "#variants",
                        "type": [
                            {
                                "items": "File",
                                "type": "array"
                            }
                        ],
                        "label": "Variants",
                        "description": "Input VCF file."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--validation_strictness",
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "itemSeparator": " ",
                            "valueFrom": {
                                "class": "Expression",
                                "script": "{\n  if (!$job.inputs.validation_strictness){\n  \treturn 'SILENT'\n  }\n  else\n    return $job.inputs.validation_strictness\n}",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "sbg:altPrefix": "-S",
                        "sbg:category": "GATK General",
                        "label": "Validation Strictness",
                        "id": "#validation_strictness",
                        "sbg:toolDefaultValue": "SILENT",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "SILENT",
                                    "LENIENT",
                                    "STRICT"
                                ],
                                "name": "validation_strictness",
                                "type": "enum"
                            }
                        ],
                        "description": "How strict should we be with validation."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--useOriginalQualities",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-OQ",
                        "sbg:category": "GATK General",
                        "label": "Use Original Qualities",
                        "id": "#use_original_qualities",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "If set, use the original base quality scores from the OQ tag when present instead of the standard scores."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--use_legacy_downsampler",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-use_legacy_downsampler",
                        "sbg:category": "GATK General",
                        "label": "Use Legacy Downsampler",
                        "id": "#use_legacy_downsampler",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Use the legacy downsampling implementation instead of the newer, less-tested implementation."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--unsafe",
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "itemSeparator": " ",
                            "valueFrom": {
                                "class": "Expression",
                                "script": "{\n  if (!$job.inputs.unsafe){\n  \treturn 'LENIENT_VCF_PROCESSING'\n  }\n  else\n    return $job.inputs.unsafe\n}",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "sbg:altPrefix": "-U",
                        "sbg:category": "GATK General",
                        "label": "Unsafe",
                        "id": "#unsafe",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "ALLOW_UNINDEXED_BAM",
                                    "ALLOW_UNSET_BAM_SORT_ORDER",
                                    "NO_READ_ORDER_VERIFICATION",
                                    "ALLOW_SEQ_DICT_INCOMPATIBILITY",
                                    "LENIENT_VCF_PROCESSING",
                                    "ALL"
                                ],
                                "name": "unsafe",
                                "type": "enum"
                            }
                        ],
                        "description": "If set, enables unsafe operations: nothing will be checked at runtime.  For expert users only who know what they are doing.  We do not support usage of this argument."
                    },
                    {
                        "sbg:altPrefix": null,
                        "sbg:category": "Execution",
                        "label": "Threads per job",
                        "id": "#threads_per_job",
                        "sbg:toolDefaultValue": "4",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "For tools which support multiprocessing, this value can be used to set the number of threads to be used."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--tag",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-tag",
                        "sbg:category": "GATK General",
                        "label": "Tag",
                        "id": "#tag",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "Arbitrary tag string to identify this GATK run as part of a group of runs, for later analysis."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--remove_program_records",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-rpr",
                        "sbg:category": "GATK General",
                        "label": "Remove Program Records",
                        "id": "#remove_program_records",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Should we override the Walker's default and remove program records from the SAM header."
                    },
                    {
                        "required": true,
                        "inputBinding": {
                            "prefix": "--reference_sequence",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-R",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "FASTA, FA",
                        "id": "#reference",
                        "type": [
                            "File"
                        ],
                        "label": "Reference Genome",
                        "description": "Reference Genome in FASTA format."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--read_group_black_list",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-rgbl",
                        "sbg:category": "GATK General",
                        "label": "Read Group Black List",
                        "id": "#read_group_black_list",
                        "sbg:toolDefaultValue": "[]",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "description": "Filters out read groups matching : or a .txt file containing the filter strings one per line."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--read_filter",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-rf",
                        "sbg:category": "GATK General",
                        "label": "Read Filter",
                        "id": "#read_filter",
                        "sbg:toolDefaultValue": "[]",
                        "type": [
                            "null",
                            {
                                "items": {
                                    "symbols": [
                                        "BadCigarFilter",
                                        "BadMateFilter",
                                        "CountingFilteringIterator.CountingReadFilter",
                                        "DuplicateReadFilter",
                                        "FailsVendorQualityCheckFilter",
                                        "HCMappingQualityFilter",
                                        "LibraryReadFilter",
                                        "MalformedReadFilter",
                                        "MappingQualityFilter",
                                        "MappingQualityUnavailableFilter",
                                        "MappingQualityZeroFilter",
                                        "MateSameStrandFilter",
                                        "MaxInsertSizeFilter",
                                        "MissingReadGroupFilter",
                                        "NoOriginalQualityScoresFilter",
                                        "NotPrimaryAlignmentFilter",
                                        "OverclippedReadFilter",
                                        "Platform454Filter",
                                        "PlatformFilter",
                                        "PlatformUnitFilter",
                                        "ReadGroupBlackListFilter",
                                        "ReadLengthFilter",
                                        "ReadNameFilter",
                                        "ReadStrandFilter",
                                        "ReassignMappingQualityFilter",
                                        "ReassignOneMappingQualityFilter",
                                        "SampleFilter",
                                        "SingleReadGroupFilter",
                                        "UnmappedReadFilter"
                                    ],
                                    "name": "read_filter",
                                    "type": "enum"
                                },
                                "type": "array"
                            }
                        ],
                        "description": "Specify filtration criteria to apply to each read individually."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--preserve_qscores_less_than",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-preserveQ",
                        "sbg:category": "GATK General",
                        "label": "Preserve Qscores Less Than",
                        "id": "#preserve_qscores_less_than",
                        "sbg:toolDefaultValue": "6",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Bases with quality scores less than this threshold won't be recalibrated (with -BQSR)."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--phone_home",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-et",
                        "sbg:category": "GATK General",
                        "label": "Phone Home",
                        "id": "#phone_home",
                        "sbg:toolDefaultValue": "STANDARD",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "NO_ET",
                                    "STANDARD"
                                ],
                                "name": "phone_home",
                                "type": "enum"
                            }
                        ],
                        "description": "What kind of GATK run report should we generate? STANDARD is the default, can be NO_ET so nothing is posted to the run repository. Please see http://gatkforums.broadinstitute.org/discussion/1250/what-is-phone-home-and-how-does-it-affect-me#latest for details."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--pedigreeValidationType",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-pedValidationType",
                        "sbg:category": "GATK General",
                        "label": "Pedigree Validation Type",
                        "id": "#pedigree_validation_type",
                        "sbg:toolDefaultValue": "STRICT",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "STRICT",
                                    "SILENT"
                                ],
                                "name": "pedigree_validation_type",
                                "type": "enum"
                            }
                        ],
                        "description": "How strict should we be in validating the pedigree information?."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--pedigreeString",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-pedString",
                        "sbg:category": "GATK General",
                        "label": "Pedigree String",
                        "id": "#pedigree_string",
                        "sbg:toolDefaultValue": "[]",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "description": "Pedigree string for samples."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--nonDeterministicRandomSeed",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-ndrs",
                        "sbg:category": "GATK General",
                        "label": "Non Deterministic Random Seed",
                        "id": "#non_deterministic_random_seed",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Makes the GATK behave non deterministically, that is, the random numbers generated will be different in every run."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--missingValuesInExpressionsShouldEvaluateAsFailing",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": null,
                        "sbg:category": "Variant Filtration",
                        "label": "Missing Values In Expressions Should Evaluate As Failing",
                        "id": "#missing_values_in_expressions_should_evaluate_as_failing",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "When evaluating the JEXL expressions, missing values should be considered failing the expression."
                    },
                    {
                        "sbg:altPrefix": null,
                        "sbg:category": "Execution",
                        "label": "Memory per job",
                        "id": "#memory_per_job",
                        "sbg:toolDefaultValue": "2048",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Amount of RAM memory to be used per job."
                    },
                    {
                        "sbg:category": "Execution",
                        "label": "Memory overhead per job",
                        "id": "#memory_overhead_per_job",
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Memory overhead per job. By default this parameter value is set to '0' (zero megabytes). This parameter value is added to the Memory per job parameter value. This results in the allocation of the sum total (Memory per job and Memory overhead per job) amount of memory per job. By default the memory per job parameter value is set to 2048 megabytes, unless specified otherwise."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--maxRuntimeUnits",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-maxRuntimeUnits",
                        "sbg:category": "GATK General",
                        "label": "Max Runtime Units",
                        "id": "#max_runtime_units",
                        "sbg:toolDefaultValue": "MINUTES",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "NANOSECONDS",
                                    "MICROSECONDS",
                                    "MILLISECONDS",
                                    "SECONDS",
                                    "MINUTES",
                                    "HOURS",
                                    "DAYS"
                                ],
                                "name": "max_runtime_units",
                                "type": "enum"
                            }
                        ],
                        "description": "The TimeUnit for maxRuntime."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--maxRuntime",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-maxRuntime",
                        "sbg:category": "GATK General",
                        "label": "Max Runtime",
                        "id": "#max_runtime",
                        "sbg:toolDefaultValue": "-1",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "If provided, that GATK will stop execution cleanly as soon after maxRuntime has been exceeded, truncating the run but not exiting with a failure.  By default the value is interpreted in minutes, but this can be changed by maxRuntimeUnits."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--maskName",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-maskName",
                        "sbg:category": "Variant Filtration",
                        "label": "Mask Name",
                        "id": "#mask_name",
                        "sbg:toolDefaultValue": "Mask",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "The text to put in the FILTER field if a 'mask' rod is provided and overlaps with a variant call."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--maskExtension",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-maskExtend",
                        "sbg:category": "Variant Filtration",
                        "label": "Mask Extension",
                        "id": "#mask_extension",
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "How many bases beyond records from a provided 'mask' rod should variants be filtered."
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "prefix": "--mask",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-mask",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "BCF2, BEAGLE, BED, BEDTABLE, EXAMPLEBINARY, GELITEXT, RAWHAPMAP, REFSEQ, SAMPILEUP, SAMREAD, TABLE, VCF, VCF3",
                        "id": "#mask",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Mask",
                        "description": "Input ROD mask."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--keep_program_records",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-kpr",
                        "sbg:category": "GATK General",
                        "label": "Keep Program Records",
                        "id": "#keep_program_records",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Should we override the Walker's default and keep program records from the SAM header."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--invalidatePreviousFilters",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": null,
                        "sbg:category": "Variant Filtration",
                        "label": "Invalidate Previous Filters",
                        "id": "#invalidate_previous_filters",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Remove previous filters applied to the VCF."
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "prefix": "--intervals",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-L",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "TXT, BED, VCF",
                        "id": "#intervals_file",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Intervals",
                        "description": "One or more genomic intervals over which to operate. Can be an specified in an .intervals file or a rod file."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-L",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "--intervals",
                        "sbg:category": "GATK General",
                        "label": "Intervals",
                        "id": "#intervals",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "One or more genomic intervals over which to operate."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--interval_set_rule",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-isr",
                        "sbg:category": "GATK General",
                        "label": "Interval Set Rule",
                        "id": "#interval_set_rule",
                        "sbg:toolDefaultValue": "UNION",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "UNION",
                                    "INTERSECTION"
                                ],
                                "name": "interval_set_rule",
                                "type": "enum"
                            }
                        ],
                        "description": "Indicates the set merging approach the interval parser should use to combine the various -L or -XL inputs."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--interval_padding",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-ip",
                        "sbg:category": "GATK General",
                        "label": "Interval Padding",
                        "id": "#interval_padding",
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Indicates how many basepairs of padding to include around each of the intervals specified with the -L/--intervals argument."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--interval_merging",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-im",
                        "sbg:category": "GATK General",
                        "label": "Interval Merging",
                        "id": "#interval_merging",
                        "sbg:toolDefaultValue": "ALL",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "ALL",
                                    "OVERLAPPING_ONLY"
                                ],
                                "name": "interval_merging",
                                "type": "enum"
                            }
                        ],
                        "description": "Indicates the interval merging rule we should use for abutting intervals."
                    },
                    {
                        "sbg:altPrefix": "-G_filterName",
                        "sbg:category": "Variant Filtration",
                        "label": "Genotype filter name",
                        "id": "#genotype_filter_name",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "description": "Names to use for the list of sample/genotype filters (must be a 1-to-1 mapping); this name is put in the FILTER field for variants that get filtered"
                    },
                    {
                        "sbg:altPrefix": "-G_filter",
                        "sbg:category": "Variant Filtration",
                        "label": "Genotype filter expression",
                        "id": "#genotype_filter_expression",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "description": "One or more expression used with FORMAT (sample/genotype-level) fields to filter (see documentation guide for more info)"
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "prefix": "--gatk_key",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-K",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "KEY, LICENSE",
                        "id": "#gatk_key",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Gatk key",
                        "description": "GATK Key file. Required if running with -et NO_ET. Please see http://gatkforums.broadinstitute.org/discussion/1250/what-is-phone-home-and-how-does-it-affect-me#latest for details."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-fixMisencodedQuals",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-fixMisencodedQuals",
                        "sbg:category": "GATK General",
                        "label": "Fix Misencoded Quals",
                        "id": "#fix_misencoded_quals",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Fix mis-encoded base quality scores."
                    },
                    {
                        "sbg:altPrefix": "-filterName",
                        "sbg:category": "Variant Filtration",
                        "label": "FIlter name",
                        "id": "#filter_name",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "description": "Names to use for the list of filters"
                    },
                    {
                        "sbg:altPrefix": "-filter",
                        "sbg:category": "Variant Filtration",
                        "label": "Filter expression",
                        "id": "#filter_expression",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "description": "One or more expression used with INFO fields to filter"
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "prefix": "--excludeIntervals",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-XL",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "TXT, BED, VCF",
                        "id": "#exclude_intervals",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Exclude Intervals",
                        "description": "One or more genomic intervals to exclude from processing. Can be an .intervals file or a rod file."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--emit_original_quals",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-EOQ",
                        "sbg:category": "GATK General",
                        "label": "Emit Original Quals",
                        "id": "#emit_original_quals",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "If true, enables printing of the OQ tag with the original base qualities (with -BQSR)."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--downsampling_type",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-dt",
                        "sbg:category": "GATK General",
                        "label": "Downsampling Type",
                        "id": "#downsampling_type",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "NONE",
                                    "ALL_READS",
                                    "BY_SAMPLE"
                                ],
                                "name": "downsampling_type",
                                "type": "enum"
                            }
                        ],
                        "description": "Type of reads downsampling to employ at a given locus. Reads will be selected randomly to be removed from the pile based on the method described here."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--downsample_to_fraction",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-dfrac",
                        "sbg:category": "GATK General",
                        "label": "Downsample to Fraction",
                        "id": "#downsample_to_fraction",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            "float"
                        ],
                        "description": "Fraction [0.0-1.0] of reads to downsample to."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--downsample_to_coverage",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-dcov",
                        "sbg:category": "GATK General",
                        "label": "Downsample to Coverage",
                        "id": "#downsample_to_coverage",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Coverage to downsample to at any given locus; note that downsampled reads are randomly selected from all possible reads at a locus. For non-locus-based traversals (eg., ReadWalkers), this sets the maximum number of reads at each alignment start position."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--disableRandomization",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": null,
                        "sbg:category": "GATK General",
                        "label": "Disable Randomization",
                        "id": "#disable_radnomization",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Completely eliminates randomization from nondeterministic methods. To be used mostly in the testing framework where dynamic parallelism can result in differing numbers of calls to the generator."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--disable_indel_quals",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-DIQ",
                        "sbg:category": "GATK General",
                        "label": "Disable Indel Quals",
                        "id": "#disable_indel_quals",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "If 'true', disables printing of base insertion and base deletion tags (with -BQSR). Turns off printing of the base insertion and base deletion tags when using the -BQSR argument and only the base substitution qualities will be produced."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--defaultBaseQualities",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-DBQ",
                        "sbg:category": "GATK General",
                        "label": "Default Base Qualities",
                        "id": "#default_base_qualities",
                        "sbg:toolDefaultValue": "-1",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "If reads are missing some or all base quality scores, this value will be used for all base quality scores."
                    },
                    {
                        "sbg:altPrefix": null,
                        "sbg:category": "Execution",
                        "label": "CPU per job",
                        "id": "#cpu_per_job",
                        "sbg:toolDefaultValue": "1",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Number of CPUs per job."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--clusterWindowSize",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-window",
                        "sbg:category": "Variant Filtration",
                        "label": "Cluster Window Size",
                        "id": "#cluster_window_size",
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "The window size (in bases) in which to evaluate clustered SNPs."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--clusterSize",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-cluster",
                        "sbg:category": "Variant Filtration",
                        "label": "Cluster Size",
                        "id": "#cluster_size",
                        "sbg:toolDefaultValue": "3",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "The number of SNPs which make up a cluster."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--baqGapOpenPenalty",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-baqGOP",
                        "sbg:category": "GATK General",
                        "label": "BAQ Gap Open Penalty",
                        "id": "#baq_gap_open_penalty",
                        "sbg:toolDefaultValue": "40.0",
                        "type": [
                            "null",
                            "float"
                        ],
                        "description": "BAQ gap open penalty (Phred Scaled). Default value is 40. 30 is perhaps better for whole genome call sets."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--baq",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-baq",
                        "sbg:category": "GATK General",
                        "label": "BAQ Calculation Type",
                        "id": "#baq",
                        "sbg:toolDefaultValue": "OFF",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "OFF",
                                    "CALCULATE_AS_NECESSARY",
                                    "RECALCULATE"
                                ],
                                "name": "baq",
                                "type": "enum"
                            }
                        ],
                        "description": "Type of BAQ calculation to apply in the engine."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-allowPotentiallyMisencodedQuals",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "--allow_potentially_misencoded_quality_scores",
                        "sbg:category": "GATK General",
                        "label": "Allow Potentially Misencoded Quals",
                        "id": "#allow_potentailly_misencoded_quals",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Do not fail when encountered base qualities that are too high and seemingly indicate a problem with the base quality encoding of the BAM file."
                    }
                ],
                "sbg:toolkit": "GATK",
                "sbg:createdBy": "bix-demo",
                "requirements": [
                    {
                        "id": "#cwl-js-engine",
                        "class": "ExpressionEngineRequirement",
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ]
                    }
                ],
                "label": "Indel GATK VariantFiltration",
                "id": "bix-demo/gatk-2-3-9-lite-demo/gatk-2-3-9-lite-variantfiltration/6",
                "class": "CommandLineTool",
                "y": 492.4361054540777,
                "cwlVersion": "sbg:draft-2",
                "stdin": "",
                "sbg:revision": 6,
                "sbg:id": "admin/sbg-public-data/gatk-2-3-9-lite-variantfiltration/9",
                "sbg:categories": [
                    "VCF-Processing"
                ],
                "sbg:modifiedOn": 1450911419,
                "description": "Overview\nThis tool is designed for hard-filtering variant calls based on certain criteria. Records are hard-filtered by changing the value in the FILTER field to something other than PASS. Filtered records will be preserved in the output unless their removal is requested in the command line.\n\nInput\nA variant set to filter.\n\nOutput\nA filtered VCF.\n\nUsage example\n java -jar GenomeAnalysisTK.jar \\\n   -T VariantFiltration \\\n   -R reference.fasta \\\n   -o output.vcf \\\n   --variant input.vcf \\\n   --filterExpression \"AB < 0.2 || MQ0 > 50\" \\\n   --filterName \"Nov09filters\" \\\n   --mask mask.vcf \\\n   --maskName InDel\n\n(IMPORTANT) Reference \".fasta\" Secondary Files\n\nTools in GATK that require a fasta reference file also look for the reference file's corresponding .fai (fasta index) and .dict (fasta dictionary) files. The fasta index file allows random access to reference bases and the dictionary file is a dictionary of the contig names and sizes contained within the fasta reference. These two secondary files are essential for GATK to work properly. To append these two files to your fasta reference please use the 'SBG FASTA Indices' tool within your GATK based workflow before using any of the GATK tools.",
                "sbg:createdOn": 1450911414,
                "sbg:links": [
                    {
                        "id": "https://www.broadinstitute.org/gatk/index.php",
                        "label": "Homepage"
                    },
                    {
                        "id": "https://github.com/broadgsa/gatk-protected",
                        "label": "Source code"
                    },
                    {
                        "id": "https://www.broadinstitute.org/gatk/guide/pdfdocs/GATK_GuideBook_2.3-9.pdf",
                        "label": "Wiki"
                    },
                    {
                        "id": "https://www.broadinstitute.org/gatk/download/auth?package=GATK-archive&version=2.3-9-ge5ebf34",
                        "label": "Download"
                    },
                    {
                        "id": "https://www.broadinstitute.org/gatk/about/#in-the-literature",
                        "label": "Publication"
                    },
                    {
                        "id": "https://www.broadinstitute.org/gatk/gatkdocs/org_broadinstitute_gatk_tools_walkers_filters_VariantFiltration.php",
                        "label": "Documentation"
                    }
                ],
                "x": 2950.898310617536,
                "temporaryFailCodes": [],
                "successCodes": [],
                "sbg:project": "bix-demo/gatk-2-3-9-lite-demo",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:modifiedOn": 1450911414
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:modifiedOn": 1450911415
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:modifiedOn": 1450911416
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:modifiedOn": 1450911417
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:modifiedOn": 1450911418
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:modifiedOn": 1450911419
                    },
                    {
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:modifiedOn": 1450911419
                    }
                ],
                "sbg:job": {
                    "inputs": {
                        "filter_name": [
                            "qd",
                            "rank"
                        ],
                        "memory_overhead_per_job": 0,
                        "filter_expression": [
                            "qd<2",
                            "rank>10"
                        ],
                        "genotype_filter_name": [],
                        "genotype_filter_expression": [],
                        "validation_strictness": null,
                        "unsafe": null,
                        "variants": [
                            {
                                "path": "varaint.vcf"
                            }
                        ]
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 2048
                    }
                },
                "arguments": [
                    {
                        "prefix": "--out",
                        "position": 1,
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\n  read_name = [].concat($job.inputs.variants)[0].path.replace(/^.*[\\\\\\/]/, '').split('.')\n  read_namebase = read_name.slice(0, read_name.length-1).join('.')\n  return read_namebase + '.vcf'\n}",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{ \n  if($job.inputs.filter_name && $job.inputs.filter_expression){\n    name = $job.inputs.filter_name\n    expression = $job.inputs.filter_expression\n    filter = []\n    for (i = 0; i < name.length; i++) {\n      filter.push('--filterName \"', name[i], '\" --filterExpression ', '\"', expression[i], '\" ')\n    }\n    return filter.join(\"\").trim()\n  }\n}\n",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\n  if($job.inputs.genotype_filter_name && $job.inputs.genotype_filter_expression){\n    name = $job.inputs.genotype_filter_name\n    expression = $job.inputs.genotype_filter_expression\n    filter = []\n    for (i = 0; i < name.length; i++) {\n      filter.push('--genotypeFilterName \"', name[i], '\" --genotypeFilterExpression ', '\"', expression[i], '\" ')\n    }\n    return filter.join(\"\").trim()\n  }\n}\n",
                            "engine": "#cwl-js-engine"
                        }
                    }
                ],
                "sbg:toolAuthor": "Broad",
                "sbg:license": "MIT License"
            }
        },
        {
            "inputs": [
                {
                    "id": "#SBG_FASTA_Indices.reference",
                    "source": [
                        "#SBG_Untar_fasta.output_fasta"
                    ]
                }
            ],
            "sbg:y": 100.07848469728141,
            "id": "#SBG_FASTA_Indices",
            "outputs": [
                {
                    "id": "#SBG_FASTA_Indices.fasta_reference"
                },
                {
                    "id": "#SBG_FASTA_Indices.fasta_index"
                },
                {
                    "id": "#SBG_FASTA_Indices.fasta_dict"
                }
            ],
            "sbg:x": 505.5099674268546,
            "run": {
                "stdout": "",
                "sbg:validationErrors": [],
                "sbg:contributors": [
                    "markop",
                    "bix-demo"
                ],
                "sbg:sbgMaintained": false,
                "hints": [
                    {
                        "dockerPull": "images.sbgenomics.com/djordje_klisic/sbg-fasta-indices:1.0",
                        "class": "DockerRequirement",
                        "dockerImageId": "b177f5bd06db"
                    },
                    {
                        "class": "sbg:CPURequirement",
                        "value": 1
                    },
                    {
                        "class": "sbg:MemRequirement",
                        "value": 2500
                    }
                ],
                "sbg:modifiedBy": "markop",
                "baseCommand": [
                    "python",
                    "/opt/sbg-fasta-indices.py"
                ],
                "sbg:latestRevision": 5,
                "sbg:cmdPreview": "python /opt/sbg-fasta-indices.py --REFERENCE /path/to/reference.ext  --dict  --fai",
                "id": "bix-demo/sbgtools-demo/sbg-fasta-indices/5",
                "sbg:id": "admin/sbg-public-data/sbg-fasta-indices/9",
                "sbg:toolkit": "SBGTools",
                "sbg:createdBy": "bix-demo",
                "requirements": [
                    {
                        "id": "#cwl-js-engine",
                        "class": "ExpressionEngineRequirement",
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ]
                    }
                ],
                "label": "SBG FASTA Indices",
                "sbg:image_url": null,
                "outputs": [
                    {
                        "fileTypes": "FASTA, FA",
                        "sbg:fileTypes": "FASTA",
                        "id": "#fasta_reference",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Reference",
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "script": "{\n  return $job.inputs.reference.path.split(\"/\").pop()\n}",
                                "engine": "#cwl-js-engine"
                            },
                            "sbg:inheritMetadataFrom": "#reference",
                            "secondaryFiles": [
                                ".fai",
                                "^.dict"
                            ]
                        }
                    },
                    {
                        "id": "#fasta_index",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "FASTA Index",
                        "outputBinding": {
                            "glob": "*.fai",
                            "sbg:metadata": {}
                        },
                        "sbg:fileTypes": "FAI"
                    },
                    {
                        "id": "#fasta_dict",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "FASTA Dictionary",
                        "outputBinding": {
                            "glob": "*.dict",
                            "sbg:metadata": {}
                        },
                        "sbg:fileTypes": "DICT"
                    }
                ],
                "y": 100.07848469728141,
                "cwlVersion": "sbg:draft-2",
                "stdin": "",
                "sbg:job": {
                    "inputs": {
                        "reference": {
                            "class": "File",
                            "path": "/path/to/reference.ext",
                            "size": 0,
                            "secondaryFiles": []
                        }
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 2500
                    }
                },
                "sbg:categories": [
                    "Indexing"
                ],
                "class": "CommandLineTool",
                "sbg:modifiedOn": 1458669249,
                "description": "Tool allows creating FASTA dictionary and index simultaneously which is necessary for running GATK tools. This version of tool for indexing uses SAMtools faidx command (toolkit version0.1.19), while for the FASTA dictionary is used Picard CreateFastaDictionary (toolkit version 1.140)",
                "inputs": [
                    {
                        "inputBinding": {
                            "prefix": "--REFERENCE",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "label": "FASTA file",
                        "id": "#reference",
                        "type": [
                            "File"
                        ],
                        "required": true,
                        "description": "FASTA file to be indexed",
                        "sbg:stageInput": "link"
                    }
                ],
                "sbg:createdOn": 1450911283,
                "x": 505.5099674268546,
                "temporaryFailCodes": [],
                "successCodes": [],
                "sbg:project": "bix-demo/sbgtools-demo",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:modifiedOn": 1450911283
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:modifiedOn": 1450911283
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:modifiedOn": 1458655509
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:modifiedOn": 1458655251
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "markop",
                        "sbg:modifiedOn": 1458658019
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "markop",
                        "sbg:modifiedOn": 1458669249
                    }
                ],
                "sbg:revision": 5,
                "arguments": [
                    {
                        "separate": true,
                        "valueFrom": "--dict"
                    },
                    {
                        "separate": true,
                        "valueFrom": "--fai"
                    }
                ],
                "sbg:toolAuthor": "Sanja Mijalkovic, Seven Bridges Genomics, <sanja.mijalkovic@sbgenomics.com>",
                "sbg:license": "Apache License 2.0"
            }
        },
        {
            "scatter": "#FastQC.input_fastq",
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
                    "id": "#FastQC.input_fastq",
                    "source": [
                        "#FASTQ"
                    ]
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
            "sbg:y": 626.3726219219344,
            "id": "#FastQC",
            "outputs": [
                {
                    "id": "#FastQC.report_zip"
                }
            ],
            "sbg:x": -67.05877889760818,
            "run": {
                "stdout": "",
                "outputs": [
                    {
                        "sbg:fileTypes": "ZIP",
                        "id": "#report_zip",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Report zip",
                        "outputBinding": {
                            "glob": "*_fastqc.zip",
                            "sbg:metadata": {
                                "__inherit__": "input_fastq"
                            },
                            "sbg:inheritMetadataFrom": "#input_fastq"
                        },
                        "description": "Zip archive of the report"
                    }
                ],
                "sbg:toolkitVersion": "0.11.4",
                "sbg:validationErrors": [],
                "sbg:contributors": [
                    "mladenlSBG",
                    "bix-demo"
                ],
                "sbg:sbgMaintained": false,
                "hints": [
                    {
                        "dockerPull": "images.sbgenomics.com/mladenlsbg/fastqc:0.11.4",
                        "class": "DockerRequirement",
                        "dockerImageId": "759c4c8fbafd"
                    },
                    {
                        "class": "sbg:CPURequirement",
                        "value": {
                            "class": "Expression",
                            "script": "{\tif ($job.inputs.threads)\n{\n  return $job.inputs.threads\n}\n else\n {\n   return 1\n }\n}",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "class": "sbg:MemRequirement",
                        "value": 2048
                    }
                ],
                "sbg:modifiedBy": "mladenlSBG",
                "baseCommand": [
                    "fastqc"
                ],
                "sbg:latestRevision": 3,
                "sbg:cmdPreview": "fastqc  --noextract --outdir .  /root/dir/example.fastq",
                "id": "bix-demo/fastqc-0-11-4-demo/fastqc-0-11-4/3",
                "sbg:id": "admin/sbg-public-data/fastqc-0-11-4/11",
                "sbg:toolkit": "FastQC",
                "sbg:createdBy": "bix-demo",
                "requirements": [
                    {
                        "id": "#cwl-js-engine",
                        "class": "ExpressionEngineRequirement",
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ]
                    }
                ],
                "label": "FastQC",
                "sbg:image_url": null,
                "class": "CommandLineTool",
                "y": 626.3726219219344,
                "cwlVersion": "sbg:draft-2",
                "stdin": "",
                "sbg:revision": 3,
                "sbg:categories": [
                    "FASTQ-Processing",
                    "Quality-Control",
                    "Quantification"
                ],
                "sbg:modifiedOn": 1459870965,
                "description": "FastQC reads a set of sequence files and produces a quality control (QC) report from each one. These reports consist of a number of different modules, each of which will help identify a different type of potential problem in your data.\n\nFastQC is a tool which takes a FastQ file and runs a series of tests on it to generate a comprehensive QC report.  This report will tell you if there is anything unusual about your sequence.  Each test is flagged as a pass, warning, or fail depending on how far it departs from what you would expect from a normal large dataset with no significant biases.  It is important to stress that warnings or even failures do not necessarily mean that there is a problem with your data, only that it is unusual.  It is possible that the biological nature of your sample means that you would expect this particular bias in your results.",
                "inputs": [
                    {
                        "inputBinding": {
                            "prefix": "--threads",
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "valueFrom": {
                                "class": "Expression",
                                "script": "{\tif ($job.inputs.threads)\n\t\t{\n  \t\t\treturn $job.inputs.threads\n\t\t}\n\telse\n \t\t{\n   \t\t\treturn 1\n \t\t}\n}",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "sbg:altPrefix": "-t",
                        "label": "Threads",
                        "id": "#threads",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--quiet",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-q",
                        "label": "Quiet",
                        "id": "#quiet",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Supress all progress messages on stdout and only report errors."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--nogroup",
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "",
                        "label": "Nogroup",
                        "id": "#nogroup",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Disable grouping of bases for reads >50bp. All reports will show data for every base in the read.  WARNING: Using this option will cause fastqc to crash and burn if you use it on really long reads, and your plots may end up a ridiculous size. You have been warned!"
                    },
                    {
                        "inputBinding": {
                            "prefix": "--nano",
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "",
                        "label": "Nano",
                        "id": "#nano",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Files come from naopore sequences and are in fast5 format. In this mode you can pass in directories to process and the program will take in all fast5 files within those directories and produce a single output file from the sequences found in all files."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--limits",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-l",
                        "sbg:category": "",
                        "label": "Limits",
                        "id": "#limits_file",
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "description": "Specifies a non-default file which contains a set of criteria which will be used to determine the warn/error limits for the various modules.  This file can also be used to selectively remove some modules from the output all together.  The format needs to mirror the default limits.txt file found in the Configuration folder."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--kmers",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-f",
                        "sbg:category": "",
                        "label": "Kmers",
                        "id": "#kmers",
                        "sbg:toolDefaultValue": "7",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Specifies the length of Kmer to look for in the Kmer content module. Specified Kmer length must be between 2 and 10. Default length is 7 if not specified."
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 100
                        },
                        "sbg:category": "",
                        "label": "Input file",
                        "id": "#input_fastq",
                        "type": [
                            "File"
                        ],
                        "required": true,
                        "description": "Input file."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--format",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-f",
                        "sbg:category": "",
                        "label": "Format",
                        "id": "#format",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "bam",
                                    "sam",
                                    "bam_mapped",
                                    "sam_mapped",
                                    "fastq"
                                ],
                                "name": "format",
                                "type": "enum"
                            }
                        ],
                        "description": "Bypasses the normal sequence file format detection and forces the program to use the specified format.  Valid formats are BAM, SAM, BAM_mapped, SAM_mapped and FASTQ."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--contaminants",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-c",
                        "sbg:category": "",
                        "label": "Contaminants",
                        "id": "#contaminants_file",
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "description": "Specifies a non-default file which contains the list of contaminants to screen overrepresented sequences against. The file must contain sets of named contaminants in the form name[tab]sequence.  Lines prefixed with a hash will be ignored."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--casava",
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "",
                        "label": "Casava",
                        "id": "#casava",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Files come from raw casava output. Files in the same sample group (differing only by the group number) will be analysed as a set rather than individually. Sequences with the filter flag set in the header will be excluded from the analysis. Files must have the same names given to them by casava (including being gzipped and ending with .gz) otherwise they won't be grouped together correctly."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--adapters",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-a",
                        "sbg:category": "",
                        "label": "Adapters",
                        "id": "#adapters_file",
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "description": "Specifies a non-default file which contains the list of adapter sequences which will be explicity searched against the library. The file must contain sets of named adapters in the form name[tab]sequence.  Lines prefixed with a hash will be ignored."
                    }
                ],
                "sbg:createdOn": 1450911593,
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
                "x": -67.05877889760818,
                "temporaryFailCodes": [],
                "successCodes": [],
                "sbg:project": "bix-demo/fastqc-0-11-4-demo",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:modifiedOn": 1450911593
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:modifiedOn": 1450911593
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:modifiedOn": 1450911594
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "mladenlSBG",
                        "sbg:modifiedOn": 1459870965
                    }
                ],
                "sbg:job": {
                    "inputs": {
                        "threads": 0,
                        "quiet": true,
                        "input_fastq": {
                            "path": "/root/dir/example.fastq"
                        }
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 2048
                    }
                },
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
                "sbg:toolAuthor": "Babraham Institute",
                "sbg:license": "GNU General Public License v3.0 only"
            }
        },
        {
            "scatter": "#SBG_Html2b64.input_file",
            "inputs": [
                {
                    "id": "#SBG_Html2b64.input_file",
                    "source": [
                        "#FastQC.report_zip"
                    ]
                }
            ],
            "sbg:y": 626.9609800429199,
            "id": "#SBG_Html2b64",
            "outputs": [
                {
                    "id": "#SBG_Html2b64.b64html"
                }
            ],
            "sbg:x": 130.2942762756721,
            "run": {
                "stdout": "",
                "sbg:toolkitVersion": "1.0",
                "sbg:validationErrors": [],
                "sbg:contributors": [
                    "bix-demo"
                ],
                "sbg:sbgMaintained": false,
                "hints": [
                    {
                        "dockerPull": "images.sbgenomics.com/mladenlsbg/sbg-html-to-b64:1.0.1",
                        "class": "DockerRequirement",
                        "dockerImageId": "8c35d2a2d8d1"
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
                "sbg:modifiedBy": "bix-demo",
                "baseCommand": [
                    "python",
                    "/opt/sbg_html_to_b64.py"
                ],
                "sbg:latestRevision": 2,
                "sbg:cmdPreview": "python /opt/sbg_html_to_b64.py",
                "id": "bix-demo/sbgtools-demo/sbg-html2b64/2",
                "sbg:id": "admin/sbg-public-data/sbg-html2b64/5",
                "sbg:toolkit": "SBGTools",
                "sbg:createdBy": "bix-demo",
                "requirements": [],
                "label": "SBG Html2b64",
                "sbg:image_url": null,
                "outputs": [
                    {
                        "sbg:fileTypes": "HTML, B64HTML",
                        "id": "#b64html",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "B64html",
                        "outputBinding": {
                            "glob": "*b64html",
                            "sbg:metadata": {},
                            "sbg:inheritMetadataFrom": "#input_file"
                        },
                        "description": "Output file, b64html."
                    }
                ],
                "y": 626.9609800429199,
                "cwlVersion": "sbg:draft-2",
                "stdin": "",
                "sbg:job": {
                    "inputs": {
                        "input_file": {
                            "class": "File",
                            "path": "input_file.ext",
                            "size": 0,
                            "secondaryFiles": []
                        }
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1000
                    }
                },
                "sbg:categories": [
                    "Converters",
                    "Plotting-and-Rendering"
                ],
                "class": "CommandLineTool",
                "sbg:modifiedOn": 1459963571,
                "description": "Tool for converting archived html output of FastQC and similar tools to b64html so it can easily be displayed in web browsers or on SBG platform.",
                "inputs": [
                    {
                        "required": false,
                        "inputBinding": {
                            "prefix": "--input",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "File input.",
                        "sbg:fileTypes": "ZIP",
                        "id": "#input_file",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Input file",
                        "description": "Compressed archive."
                    }
                ],
                "sbg:createdOn": 1450911294,
                "x": 130.2942762756721,
                "temporaryFailCodes": [],
                "successCodes": [],
                "sbg:project": "bix-demo/sbgtools-demo",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:modifiedOn": 1450911294
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:modifiedOn": 1450911294
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:modifiedOn": 1459963571
                    }
                ],
                "sbg:revision": 2,
                "arguments": [],
                "sbg:toolAuthor": "Seven Bridges",
                "sbg:license": "Apache License 2.0"
            }
        },
        {
            "inputs": [
                {
                    "id": "#GATK_CombineVariants.variants",
                    "source": [
                        "#GATK_VariantFiltration__1.filtered_vcf",
                        "#GATK_VariantFiltration_.filtered_vcf"
                    ]
                },
                {
                    "id": "#GATK_CombineVariants.validation_strictness"
                },
                {
                    "id": "#GATK_CombineVariants.use_original_qualities"
                },
                {
                    "id": "#GATK_CombineVariants.use_legacy_downsampler"
                },
                {
                    "id": "#GATK_CombineVariants.unsafe"
                },
                {
                    "id": "#GATK_CombineVariants.tag"
                },
                {
                    "id": "#GATK_CombineVariants.suppress_command_line_header"
                },
                {
                    "id": "#GATK_CombineVariants.set_key"
                },
                {
                    "id": "#GATK_CombineVariants.remove_program_records"
                },
                {
                    "id": "#GATK_CombineVariants.reference",
                    "source": [
                        "#SBG_FASTA_Indices.fasta_reference"
                    ]
                },
                {
                    "id": "#GATK_CombineVariants.read_group_black_list"
                },
                {
                    "id": "#GATK_CombineVariants.read_filter"
                },
                {
                    "id": "#GATK_CombineVariants.print_complex_merges"
                },
                {
                    "id": "#GATK_CombineVariants.preserve_qscores_less_than"
                },
                {
                    "id": "#GATK_CombineVariants.phone_home"
                },
                {
                    "id": "#GATK_CombineVariants.pedigree_validation_type"
                },
                {
                    "id": "#GATK_CombineVariants.pedigree_string"
                },
                {
                    "id": "#GATK_CombineVariants.non_deterministic_random_seed"
                },
                {
                    "id": "#GATK_CombineVariants.minimum_n"
                },
                {
                    "id": "#GATK_CombineVariants.minimal_vcf"
                },
                {
                    "id": "#GATK_CombineVariants.merge_info_with_max_ac"
                },
                {
                    "id": "#GATK_CombineVariants.memory_per_job",
                    "default": 2048
                },
                {
                    "id": "#GATK_CombineVariants.memory_overhead_per_job"
                },
                {
                    "id": "#GATK_CombineVariants.max_runtime_units"
                },
                {
                    "id": "#GATK_CombineVariants.max_runtime"
                },
                {
                    "id": "#GATK_CombineVariants.keep_program_records"
                },
                {
                    "id": "#GATK_CombineVariants.intervals_file"
                },
                {
                    "id": "#GATK_CombineVariants.intervals"
                },
                {
                    "id": "#GATK_CombineVariants.interval_set_rule"
                },
                {
                    "id": "#GATK_CombineVariants.interval_padding"
                },
                {
                    "id": "#GATK_CombineVariants.interval_merging"
                },
                {
                    "id": "#GATK_CombineVariants.genotypemergeoption"
                },
                {
                    "id": "#GATK_CombineVariants.gatk_key"
                },
                {
                    "id": "#GATK_CombineVariants.fix_misencoded_quals"
                },
                {
                    "id": "#GATK_CombineVariants.filteredrecordsmergetype"
                },
                {
                    "id": "#GATK_CombineVariants.filtered_are_uncalled"
                },
                {
                    "id": "#GATK_CombineVariants.exclude_intervals"
                },
                {
                    "id": "#GATK_CombineVariants.emit_original_quals"
                },
                {
                    "id": "#GATK_CombineVariants.downsampling_type"
                },
                {
                    "id": "#GATK_CombineVariants.downsample_to_fraction"
                },
                {
                    "id": "#GATK_CombineVariants.downsample_to_coverage"
                },
                {
                    "id": "#GATK_CombineVariants.disable_radnomization"
                },
                {
                    "id": "#GATK_CombineVariants.disable_indel_quals"
                },
                {
                    "id": "#GATK_CombineVariants.default_base_qualities"
                },
                {
                    "id": "#GATK_CombineVariants.cpu_per_job",
                    "default": 1
                },
                {
                    "id": "#GATK_CombineVariants.baq_gap_open_penalty"
                },
                {
                    "id": "#GATK_CombineVariants.baq"
                },
                {
                    "id": "#GATK_CombineVariants.assume_identical_samples"
                },
                {
                    "id": "#GATK_CombineVariants.allow_potentailly_misencoded_quals"
                }
            ],
            "sbg:y": 393.07701365458973,
            "id": "#GATK_CombineVariants",
            "outputs": [
                {
                    "id": "#GATK_CombineVariants.combined_vcf"
                }
            ],
            "sbg:x": 3213.4621226043987,
            "run": {
                "stdout": "",
                "outputs": [
                    {
                        "sbg:fileTypes": "VCF",
                        "id": "#combined_vcf",
                        "type": [
                            "File"
                        ],
                        "label": "Output Combined VCF",
                        "outputBinding": {
                            "glob": "*.vcf",
                            "sbg:metadata": {},
                            "sbg:inheritMetadataFrom": "#variants",
                            "secondaryFiles": [
                                ".idx"
                            ]
                        },
                        "description": "File to which variants should be written."
                    }
                ],
                "sbg:toolkitVersion": "2.3.9 Lite",
                "sbg:validationErrors": [],
                "sbg:contributors": [
                    "bix-demo"
                ],
                "sbg:sbgMaintained": false,
                "hints": [
                    {
                        "dockerPull": "images.sbgenomics.com/stefanristeski/gatk2-lite:2.3-9",
                        "class": "DockerRequirement",
                        "dockerImageId": "47510cb2da55"
                    },
                    {
                        "class": "sbg:CPURequirement",
                        "value": {
                            "class": "Expression",
                            "script": "{\n  if($job.inputs.cpu_per_job){\n  \treturn $job.inputs.cpu_per_job\n  }\n  return 1 \n}",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "class": "sbg:MemRequirement",
                        "value": {
                            "class": "Expression",
                            "script": "{\n  if($job.inputs.memory_per_job){\n    if($job.inputs.memory_overhead_per_job){\n    \treturn $job.inputs.memory_per_job + $job.inputs.memory_overhead_per_job\n    }\n    else\n  \t\treturn $job.inputs.memory_per_job\n  }\n  else if(!$job.inputs.memory_per_job && $job.inputs.memory_overhead_per_job){\n\t\treturn 2048 + $job.inputs.memory_overhead_per_job  \n  }\n  else\n  \treturn 2048\n}",
                            "engine": "#cwl-js-engine"
                        }
                    }
                ],
                "sbg:modifiedBy": "bix-demo",
                "baseCommand": [
                    "java",
                    {
                        "class": "Expression",
                        "script": "{\n  if($job.inputs.memory_per_job){\n  \treturn '-Xmx'.concat($job.inputs.memory_per_job, 'M')\n  }\n  \treturn '-Xmx2048M'\n}",
                        "engine": "#cwl-js-engine"
                    },
                    "-jar",
                    "/opt/GenomeAnalysisTKLite.jar",
                    "--analysis_type",
                    "CombineVariants"
                ],
                "sbg:latestRevision": 9,
                "sbg:cmdPreview": "java -Xmx2048M -jar /opt/GenomeAnalysisTKLite.jar --analysis_type CombineVariants --variant variant.vcf --out Sample_XY.Library_Unknown.Platform_Unit_Unknown.combined.vcf",
                "id": "bix-demo/gatk-2-3-9-lite-demo/gatk-2-3-9-lite-combinevariants/9",
                "sbg:id": "admin/sbg-public-data/gatk-2-3-9-lite-combinevariants/13",
                "sbg:toolkit": "GATK",
                "sbg:createdBy": "bix-demo",
                "requirements": [
                    {
                        "id": "#cwl-js-engine",
                        "class": "ExpressionEngineRequirement",
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ]
                    }
                ],
                "label": "GATK CombineVariants",
                "sbg:image_url": null,
                "class": "CommandLineTool",
                "y": 393.07701365458973,
                "cwlVersion": "sbg:draft-2",
                "stdin": "",
                "sbg:revision": 9,
                "sbg:categories": [
                    "VCF-Processing"
                ],
                "sbg:modifiedOn": 1458841427,
                "description": "Overview\n\nCombineVariants reads in variants records from separate ROD (Reference-Ordered Data) sources and combines them into a single VCF. Any (unique) name can be used to bind your ROD and any number of sources can be input. This tool aims to fulfill two main possible use cases, reflected by the two combination options (MERGE and UNION), for merging records at the variant level (the first 8 fields of the VCF) or at the genotype level (the rest).\n\nMERGE: combines multiple variant records present at the same site in the different input sources into a single variant record in the output. If sample names overlap, then they are \"uniquified\" by default, which means a suffix is appended to make them unique. Note that in version 3.3, the automatic uniquifying was disabled (unintentionally), and required setting `-genotypeMergeOptions UNIQUIFY` manually.\nUNION: assumes that each ROD source represents the same set of samples (although this is not enforced). It uses the priority list (if provided) to emit a single record instance at every position represented in the input RODs.\nCombineVariants will emit a record for every site that was present in any of your input VCF files, and will annotate (in the set attribute in the INFO field) whether the record had a PASS or FILTER status in each input ROD . In effect, CombineVariants always produces a union of the input VCFs. However, any part of the Venn of the merged VCFs can be extracted using JEXL expressions on the set attribute using SelectVariants. If you want to extract just the records in common between two VCFs, you would first run CombineVariants on the two files to generate a single VCF and then run SelectVariants to extract the common records with `-select 'set == \"Intersection\"'`, as worked out in the detailed example in the documentation guide.\n\nInput\nTwo or more variant sets to combine.\n\nOutput\nA combined VCF.\n\nUsage examples\n\nMerge two separate callsets\n java -jar GenomeAnalysisTK.jar \\\n   -T CombineVariants \\\n   -R reference.fasta \\\n   --variant input1.vcf \\\n   --variant input2.vcf \\\n   -o output.vcf \\\n   -genotypeMergeOptions UNIQUIFY\n \nGet the union of calls made on the same samples\n java -jar GenomeAnalysisTK.jar \\\n   -T CombineVariants \\\n   -R reference.fasta \\\n   --variant:foo input1.vcf \\\n   --variant:bar input2.vcf \\\n   -o output.vcf \\\n   -genotypeMergeOptions PRIORITIZE \\\n   -priority foo,bar\n \nCaveats\n\nThis tool is not intended to manipulate GVCFS! To combine GVCF files output by HaplotypeCaller, use CombineGVCFs.\nTo join intermediate VCFs produced by running jobs in parallel by interval (e.g. by chromosome), use CatVariants.\n\nAdditional notes\n\nUsing this tool's multi-threaded parallelism capability is particularly useful when converting from VCF to BCF2, which can be time-consuming. In this case each thread spends CPU time doing the conversion, and the GATK engine is smart enough to merge the partial BCF2 blocks together efficiently. However, since this merge runs in only one thread, you can quickly reach diminishing returns with the number of parallel threads. In our hands, `-nt 4` works well but `-nt 8` tends to be be too much.\nSince GATK 2.1, when merging multiple VCF records at a site, the combined VCF record has the QUAL of the first VCF record with a non-MISSING QUAL value. The previous behavior was to take the max QUAL, which could result in strange downstream confusion.\n\n(IMPORTANT) Reference \".fasta\" Secondary Files\n\nTools in GATK that require a fasta reference file also look for the reference file's corresponding .fai (fasta index) and .dict (fasta dictionary) files. The fasta index file allows random access to reference bases and the dictionary file is a dictionary of the contig names and sizes contained within the fasta reference. These two secondary files are essential for GATK to work properly. To append these two files to your fasta reference please use the 'SBG FASTA Indices' tool within your GATK based workflow before using any of the GATK tools.",
                "inputs": [
                    {
                        "required": true,
                        "inputBinding": {
                            "prefix": "--variant",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-V",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "VCF",
                        "id": "#variants",
                        "type": [
                            {
                                "items": "File",
                                "type": "array"
                            }
                        ],
                        "label": "Variants",
                        "description": "Input VCF file."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--validation_strictness",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-S",
                        "sbg:category": "GATK General",
                        "label": "Validation Strictness",
                        "id": "#validation_strictness",
                        "sbg:toolDefaultValue": "SILENT",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "SILENT",
                                    "LENIENT",
                                    "STRICT"
                                ],
                                "name": "validation_strictness",
                                "type": "enum"
                            }
                        ],
                        "description": "How strict should we be with validation."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--useOriginalQualities",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-OQ",
                        "sbg:category": "GATK General",
                        "label": "Use Original Qualities",
                        "id": "#use_original_qualities",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "If set, use the original base quality scores from the OQ tag when present instead of the standard scores."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--use_legacy_downsampler",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-use_legacy_downsampler",
                        "sbg:category": "GATK General",
                        "label": "Use Legacy Downsampler",
                        "id": "#use_legacy_downsampler",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Use the legacy downsampling implementation instead of the newer, less-tested implementation."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--unsafe",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-U",
                        "sbg:category": "GATK General",
                        "label": "Unsafe",
                        "id": "#unsafe",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "ALLOW_UNINDEXED_BAM",
                                    "ALLOW_UNSET_BAM_SORT_ORDER",
                                    "NO_READ_ORDER_VERIFICATION",
                                    "ALLOW_SEQ_DICT_INCOMPATIBILITY",
                                    "LENIENT_VCF_PROCESSING",
                                    "ALL"
                                ],
                                "name": "unsafe",
                                "type": "enum"
                            }
                        ],
                        "description": "If set, enables unsafe operations: nothing will be checked at runtime.  For expert users only who know what they are doing.  We do not support usage of this argument."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--tag",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-tag",
                        "sbg:category": "GATK General",
                        "label": "Tag",
                        "id": "#tag",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "Arbitrary tag string to identify this GATK run as part of a group of runs, for later analysis."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--suppressCommandLineHeader",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-suppressCommandLineHeader",
                        "sbg:category": "Combine Variants",
                        "label": "Suppress Command Line Header",
                        "id": "#suppress_command_line_header",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "If true, do not output the header containing the command line used."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--setKey",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-setKey",
                        "sbg:category": "Combine Variants",
                        "label": "Set Key",
                        "id": "#set_key",
                        "sbg:toolDefaultValue": "set",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "Key used in the INFO key=value tag emitted describing which set the combined VCF record came from."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--remove_program_records",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-rpr",
                        "sbg:category": "GATK General",
                        "label": "Remove Program Records",
                        "id": "#remove_program_records",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Should we override the Walker's default and remove program records from the SAM header."
                    },
                    {
                        "required": true,
                        "inputBinding": {
                            "prefix": "--reference_sequence",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-R",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "FASTA, FA",
                        "id": "#reference",
                        "type": [
                            "File"
                        ],
                        "label": "Reference Genome",
                        "description": "Reference Genome in FASTA format."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--read_group_black_list",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-rgbl",
                        "sbg:category": "GATK General",
                        "label": "Read Group Black List",
                        "id": "#read_group_black_list",
                        "sbg:toolDefaultValue": "[]",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "description": "Filters out read groups matching : or a .txt file containing the filter strings one per line."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--read_filter",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-rf",
                        "sbg:category": "GATK General",
                        "label": "Read Filter",
                        "id": "#read_filter",
                        "sbg:toolDefaultValue": "[]",
                        "type": [
                            "null",
                            {
                                "items": {
                                    "symbols": [
                                        "BadCigarFilter",
                                        "BadMateFilter",
                                        "CountingFilteringIterator.CountingReadFilter",
                                        "DuplicateReadFilter",
                                        "FailsVendorQualityCheckFilter",
                                        "HCMappingQualityFilter",
                                        "LibraryReadFilter",
                                        "MalformedReadFilter",
                                        "MappingQualityFilter",
                                        "MappingQualityUnavailableFilter",
                                        "MappingQualityZeroFilter",
                                        "MateSameStrandFilter",
                                        "MaxInsertSizeFilter",
                                        "MissingReadGroupFilter",
                                        "NoOriginalQualityScoresFilter",
                                        "NotPrimaryAlignmentFilter",
                                        "OverclippedReadFilter",
                                        "Platform454Filter",
                                        "PlatformFilter",
                                        "PlatformUnitFilter",
                                        "ReadGroupBlackListFilter",
                                        "ReadLengthFilter",
                                        "ReadNameFilter",
                                        "ReadStrandFilter",
                                        "ReassignMappingQualityFilter",
                                        "ReassignOneMappingQualityFilter",
                                        "SampleFilter",
                                        "SingleReadGroupFilter",
                                        "UnmappedReadFilter"
                                    ],
                                    "name": "read_filter",
                                    "type": "enum"
                                },
                                "type": "array"
                            }
                        ],
                        "description": "Specify filtration criteria to apply to each read individually."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--printComplexMerges",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-printComplexMerges",
                        "sbg:category": "Combine Variants",
                        "label": "Print Complex Merges",
                        "id": "#print_complex_merges",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Print out interesting sites requiring complex compatibility merging."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--preserve_qscores_less_than",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-preserveQ",
                        "sbg:category": "GATK General",
                        "label": "Preserve Qscores Less Than",
                        "id": "#preserve_qscores_less_than",
                        "sbg:toolDefaultValue": "6",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Bases with quality scores less than this threshold won't be recalibrated (with -BQSR)."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--phone_home",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-et",
                        "sbg:category": "GATK General",
                        "label": "Phone Home",
                        "id": "#phone_home",
                        "sbg:toolDefaultValue": "STANDARD",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "NO_ET",
                                    "STANDARD"
                                ],
                                "name": "phone_home",
                                "type": "enum"
                            }
                        ],
                        "description": "What kind of GATK run report should we generate? STANDARD is the default, can be NO_ET so nothing is posted to the run repository. Please see http://gatkforums.broadinstitute.org/discussion/1250/what-is-phone-home-and-how-does-it-affect-me#latest for details."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--pedigreeValidationType",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-pedValidationType",
                        "sbg:category": "GATK General",
                        "label": "Pedigree Validation Type",
                        "id": "#pedigree_validation_type",
                        "sbg:toolDefaultValue": "STRICT",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "STRICT",
                                    "SILENT"
                                ],
                                "name": "pedigree_validation_type",
                                "type": "enum"
                            }
                        ],
                        "description": "How strict should we be in validating the pedigree information?."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--pedigreeString",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-pedString",
                        "sbg:category": "GATK General",
                        "label": "Pedigree String",
                        "id": "#pedigree_string",
                        "sbg:toolDefaultValue": "[]",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "description": "Pedigree string for samples."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--nonDeterministicRandomSeed",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-ndrs",
                        "sbg:category": "GATK General",
                        "label": "Non Deterministic Random Seed",
                        "id": "#non_deterministic_random_seed",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Makes the GATK behave non deterministically, that is, the random numbers generated will be different in every run."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--minimumN",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-minN",
                        "sbg:category": "Combine Variants",
                        "label": "Minimum N",
                        "id": "#minimum_n",
                        "sbg:toolDefaultValue": "1",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Combine variants and output site only if the variant is present in at least N input files."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--minimalVCF",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-minimalVCF",
                        "sbg:category": "Combine Variants",
                        "label": "Minimal Vcf",
                        "id": "#minimal_vcf",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "If true, then the output VCF will contain no INFO or genotype FORMAT fields."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--mergeInfoWithMaxAC",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-mergeInfoWithMaxAC",
                        "sbg:category": "Combine Variants",
                        "label": "Merge Info With Max Ac",
                        "id": "#merge_info_with_max_ac",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "If true, when VCF records overlap the info field is taken from the one with the max AC instead of only taking the fields which are identical across the overlapping records."
                    },
                    {
                        "sbg:altPrefix": null,
                        "sbg:category": "Execution",
                        "label": "Memory per job",
                        "id": "#memory_per_job",
                        "sbg:toolDefaultValue": "2048",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Amount of RAM memory to be used per job."
                    },
                    {
                        "sbg:category": "Execution",
                        "label": "Memory overhead per job",
                        "id": "#memory_overhead_per_job",
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Memory overhead per job. By default this parameter value is set to '0' (zero megabytes). This parameter value is added to the Memory per job parameter value. This results in the allocation of the sum total (Memory per job and Memory overhead per job) amount of memory per job. By default the memory per job parameter value is set to 2048 megabytes, unless specified otherwise."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--maxRuntimeUnits",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-maxRuntimeUnits",
                        "sbg:category": "GATK General",
                        "label": "Max Runtime Units",
                        "id": "#max_runtime_units",
                        "sbg:toolDefaultValue": "MINUTES",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "NANOSECONDS",
                                    "MICROSECONDS",
                                    "MILLISECONDS",
                                    "SECONDS",
                                    "MINUTES",
                                    "HOURS",
                                    "DAYS"
                                ],
                                "name": "max_runtime_units",
                                "type": "enum"
                            }
                        ],
                        "description": "The TimeUnit for maxRuntime."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--maxRuntime",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-maxRuntime",
                        "sbg:category": "GATK General",
                        "label": "Max Runtime",
                        "id": "#max_runtime",
                        "sbg:toolDefaultValue": "-1",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "If provided, that GATK will stop execution cleanly as soon after maxRuntime has been exceeded, truncating the run but not exiting with a failure.  By default the value is interpreted in minutes, but this can be changed by maxRuntimeUnits."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--keep_program_records",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-kpr",
                        "sbg:category": "GATK General",
                        "label": "Keep Program Records",
                        "id": "#keep_program_records",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Should we override the Walker's default and keep program records from the SAM header."
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "prefix": "--intervals",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-L",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "VCF, BED, TXT",
                        "id": "#intervals_file",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Intervals",
                        "description": "One or more genomic intervals over which to operate. Can be an specified in an .intervals file or a rod file."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-L",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "--intervals",
                        "sbg:category": "GATK General",
                        "label": "Intervals",
                        "id": "#intervals",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "One or more genomic intervals over which to operate."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--interval_set_rule",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-isr",
                        "sbg:category": "GATK General",
                        "label": "Interval Set Rule",
                        "id": "#interval_set_rule",
                        "sbg:toolDefaultValue": "UNION",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "UNION",
                                    "INTERSECTION"
                                ],
                                "name": "interval_set_rule",
                                "type": "enum"
                            }
                        ],
                        "description": "Indicates the set merging approach the interval parser should use to combine the various -L or -XL inputs."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--interval_padding",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-ip",
                        "sbg:category": "GATK General",
                        "label": "Interval Padding",
                        "id": "#interval_padding",
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Indicates how many basepairs of padding to include around each of the intervals specified with the -L/--intervals argument."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--interval_merging",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-im",
                        "sbg:category": "GATK General",
                        "label": "Interval Merging",
                        "id": "#interval_merging",
                        "sbg:toolDefaultValue": "ALL",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "ALL",
                                    "OVERLAPPING_ONLY"
                                ],
                                "name": "interval_merging",
                                "type": "enum"
                            }
                        ],
                        "description": "Indicates the interval merging rule we should use for abutting intervals."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--genotypemergeoption",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-genotypeMergeOptions",
                        "sbg:category": "Combine Variants",
                        "label": "Genotypemergeoption",
                        "id": "#genotypemergeoption",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "UNIQUIFY",
                                    "UNSORTED",
                                    "REQUIRE_UNIQUE"
                                ],
                                "name": "genotypemergeoption",
                                "type": "enum"
                            }
                        ],
                        "description": "Determines how we should merge genotype records for samples shared across the ROD files."
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "prefix": "--gatk_key",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-K",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "KEY, LICENSE",
                        "id": "#gatk_key",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Gatk key",
                        "description": "GATK Key file. Required if running with -et NO_ET. Please see http://gatkforums.broadinstitute.org/discussion/1250/what-is-phone-home-and-how-does-it-affect-me#latest for details."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-fixMisencodedQuals",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-fixMisencodedQuals",
                        "sbg:category": "GATK General",
                        "label": "Fix Misencoded Quals",
                        "id": "#fix_misencoded_quals",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Fix mis-encoded base quality scores."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--filteredrecordsmergetype",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-filteredRecordsMergeType",
                        "sbg:category": "Combine Variants",
                        "label": "Filteredrecordsmergetype",
                        "id": "#filteredrecordsmergetype",
                        "sbg:toolDefaultValue": "KEEP_IF_ANY_UNFILTERED",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "KEEP_IF_ANY_UNFILTERED",
                                    "KEEP_IF_ALL_UNFILTERED",
                                    "KEEP_UNCONDITIONAL"
                                ],
                                "name": "filteredrecordsmergetype",
                                "type": "enum"
                            }
                        ],
                        "description": "Determines how we should handle records seen at the same site in the VCF, but with different FILTER fields."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--filteredAreUncalled",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-filteredAreUncalled",
                        "sbg:category": "Combine Variants",
                        "label": "Filtered Are Uncalled",
                        "id": "#filtered_are_uncalled",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "If true, then filtered VCFs are treated as uncalled, so that filtered set annotations don't appear in the combined VCF."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--excludeIntervals",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-XL",
                        "sbg:category": "Input Files",
                        "label": "Exclude Intervals",
                        "id": "#exclude_intervals",
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "description": "One or more genomic intervals to exclude from processing. Can be an .intervals file or a rod file."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--emit_original_quals",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-EOQ",
                        "sbg:category": "GATK General",
                        "label": "Emit Original Quals",
                        "id": "#emit_original_quals",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "If true, enables printing of the OQ tag with the original base qualities (with -BQSR)."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--downsampling_type",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-dt",
                        "sbg:category": "GATK General",
                        "label": "Downsampling Type",
                        "id": "#downsampling_type",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "NONE",
                                    "ALL_READS",
                                    "BY_SAMPLE"
                                ],
                                "name": "downsampling_type",
                                "type": "enum"
                            }
                        ],
                        "description": "Type of reads downsampling to employ at a given locus. Reads will be selected randomly to be removed from the pile based on the method described here."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--downsample_to_fraction",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-dfrac",
                        "sbg:category": "GATK General",
                        "label": "Downsample to Fraction",
                        "id": "#downsample_to_fraction",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            "float"
                        ],
                        "description": "Fraction [0.0-1.0] of reads to downsample to."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--downsample_to_coverage",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-dcov",
                        "sbg:category": "GATK General",
                        "label": "Downsample to Coverage",
                        "id": "#downsample_to_coverage",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Coverage to downsample to at any given locus; note that downsampled reads are randomly selected from all possible reads at a locus. For non-locus-based traversals (eg., ReadWalkers), this sets the maximum number of reads at each alignment start position."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--disableRandomization",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": null,
                        "sbg:category": "GATK General",
                        "label": "Disable Randomization",
                        "id": "#disable_radnomization",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Completely eliminates randomization from nondeterministic methods. To be used mostly in the testing framework where dynamic parallelism can result in differing numbers of calls to the generator."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--disable_indel_quals",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-DIQ",
                        "sbg:category": "GATK General",
                        "label": "Disable Indel Quals",
                        "id": "#disable_indel_quals",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "If 'true', disables printing of base insertion and base deletion tags (with -BQSR). Turns off printing of the base insertion and base deletion tags when using the -BQSR argument and only the base substitution qualities will be produced."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--defaultBaseQualities",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-DBQ",
                        "sbg:category": "GATK General",
                        "label": "Default Base Qualities",
                        "id": "#default_base_qualities",
                        "sbg:toolDefaultValue": "-1",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "If reads are missing some or all base quality scores, this value will be used for all base quality scores."
                    },
                    {
                        "sbg:altPrefix": null,
                        "sbg:category": "Execution",
                        "label": "CPU per job",
                        "id": "#cpu_per_job",
                        "sbg:toolDefaultValue": "1",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Number of CPUs per job."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--baqGapOpenPenalty",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-baqGOP",
                        "sbg:category": "GATK General",
                        "label": "BAQ Gap Open Penalty",
                        "id": "#baq_gap_open_penalty",
                        "sbg:toolDefaultValue": "40.0",
                        "type": [
                            "null",
                            "float"
                        ],
                        "description": "BAQ gap open penalty (Phred Scaled). Default value is 40. 30 is perhaps better for whole genome call sets."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--baq",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-baq",
                        "sbg:category": "GATK General",
                        "label": "BAQ Calculation Type",
                        "id": "#baq",
                        "sbg:toolDefaultValue": "OFF",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "OFF",
                                    "CALCULATE_AS_NECESSARY",
                                    "RECALCULATE"
                                ],
                                "name": "baq",
                                "type": "enum"
                            }
                        ],
                        "description": "Type of BAQ calculation to apply in the engine."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--assumeIdenticalSamples",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-assumeIdenticalSamples",
                        "sbg:category": "Combine Variants",
                        "label": "Assume Identical Samples",
                        "id": "#assume_identical_samples",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "If true, assume input VCFs have identical sample sets and disjoint calls."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-allowPotentiallyMisencodedQuals",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "--allow_potentially_misencoded_quality_scores",
                        "sbg:category": "GATK General",
                        "label": "Allow Potentially Misencoded Quals",
                        "id": "#allow_potentailly_misencoded_quals",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Do not fail when encountered base qualities that are too high and seemingly indicate a problem with the base quality encoding of the BAM file."
                    }
                ],
                "sbg:createdOn": 1450911447,
                "sbg:links": [
                    {
                        "id": "https://www.broadinstitute.org/gatk/index.php",
                        "label": "Homepage"
                    },
                    {
                        "id": "https://github.com/broadgsa/gatk-protected",
                        "label": "Source Code"
                    },
                    {
                        "id": "https://www.broadinstitute.org/gatk/guide/pdfdocs/GATK_GuideBook_2.3-9.pdf",
                        "label": "Wiki"
                    },
                    {
                        "id": "https://www.broadinstitute.org/gatk/download/auth?package=GATK-archive&version=2.3-9-ge5ebf34",
                        "label": "Download"
                    },
                    {
                        "id": "https://www.broadinstitute.org/gatk/about/#in-the-literature",
                        "label": "Publication"
                    },
                    {
                        "id": "https://www.broadinstitute.org/gatk/gatkdocs/org_broadinstitute_gatk_tools_walkers_variantutils_CombineVariants.php",
                        "label": "Documentation"
                    }
                ],
                "x": 3213.4621226043987,
                "temporaryFailCodes": [],
                "successCodes": [],
                "sbg:project": "bix-demo/gatk-2-3-9-lite-demo",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:modifiedOn": 1450911447
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:modifiedOn": 1450911448
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:modifiedOn": 1450911449
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:modifiedOn": 1450911450
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:modifiedOn": 1450911451
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:modifiedOn": 1450911452
                    },
                    {
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:modifiedOn": 1450911453
                    },
                    {
                        "sbg:revision": 7,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:modifiedOn": 1450911455
                    },
                    {
                        "sbg:revision": 8,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:modifiedOn": 1450911456
                    },
                    {
                        "sbg:revision": 9,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:modifiedOn": 1458841427
                    }
                ],
                "sbg:job": {
                    "inputs": {
                        "memory_overhead_per_job": 0,
                        "variants": [
                            {
                                "path": "variant.vcf",
                                "metadata": {
                                    "sample_id": "XY"
                                },
                                "secondaryFiles": []
                            }
                        ]
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 2048
                    }
                },
                "arguments": [
                    {
                        "prefix": "--out",
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\n  var input_file = [].concat($job.inputs.variants)[0]\n  var meta = input_file.metadata\n  if(meta){\n  \tvar sample = meta.sample_id ? meta.sample_id : 'Unknown'\n  \tvar library = meta.library_id ? meta.library_id  : 'Unknown'\n  \tvar platform_unit = meta.platform_unit_id  ? meta.platform_unit_id : 'Unknown'\n    if(sample !== 'Unknown' || library !== 'Unknown' || platform_unit !== 'Unknown'){\n    \treturn ['Sample_' + sample, 'Library_' + library, 'Platform_Unit_' + platform_unit, 'combined', 'vcf'].join('.')\n  \t}\n  }\n  var variant_name = input_file.path.replace(/^.*[\\\\\\/]/, '').split('.')\n  var variant_namebase = variant_name.slice(0, -1).join('.')\n  return variant_namebase + '.combined.vcf'\n}",
                            "engine": "#cwl-js-engine"
                        }
                    }
                ],
                "sbg:toolAuthor": "Broad Institute",
                "sbg:license": "MIT License"
            }
        },
        {
            "inputs": [
                {
                    "id": "#SBG_Untar_fasta.input_tar_with_reference",
                    "source": [
                        "#Input_reference"
                    ]
                }
            ],
            "sbg:y": 89.4270829794308,
            "id": "#SBG_Untar_fasta",
            "outputs": [
                {
                    "id": "#SBG_Untar_fasta.output_fasta"
                }
            ],
            "sbg:x": 191.66667222976696,
            "run": {
                "sbg:homepage": "https://igor.sbgenomics.com/",
                "stdout": "",
                "sbg:toolkitVersion": "v1.0",
                "sbg:validationErrors": [],
                "sbg:contributors": [
                    "sevenbridges"
                ],
                "sbg:sbgMaintained": false,
                "hints": [
                    {
                        "dockerPull": "images.sbgenomics.com/markop/sbg-decompressor:1.0",
                        "class": "DockerRequirement",
                        "dockerImageId": "58b79c627f95"
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
                "sbg:modifiedBy": "sevenbridges",
                "baseCommand": [
                    {
                        "class": "Expression",
                        "script": "{\n  reference_file = $job.inputs.input_tar_with_reference.path.split('/')[$job.inputs.input_tar_with_reference.path.split('/').length-1]\n  ext = reference_file.split('.')[reference_file.split('.').length-1]\n  if(ext=='tar'){\n    return 'tar -xf ' + reference_file    \n  }\n  else{\n    return 'echo Passing input file '\n  }\n}",
                        "engine": "#cwl-js-engine"
                    }
                ],
                "sbg:latestRevision": 4,
                "sbg:cmdPreview": "echo Passing input file",
                "id": "bix-demo/sbgtools-demo/sbg-untar-fasta/7",
                "sbg:id": "admin/sbg-public-data/sbg-untar-fasta/8",
                "sbg:toolkit": "SBGTools",
                "sbg:createdBy": "sevenbridges",
                "requirements": [
                    {
                        "id": "#cwl-js-engine",
                        "class": "ExpressionEngineRequirement",
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ]
                    }
                ],
                "label": "SBG Untar fasta",
                "sbg:image_url": null,
                "outputs": [
                    {
                        "id": "#output_fasta",
                        "type": [
                            "File"
                        ],
                        "outputBinding": {
                            "glob": "{*.fasta,*.fa,*.fa.gz,*.fasta.gz}",
                            "sbg:inheritMetadataFrom": "#input_tar_with_reference"
                        },
                        "description": "Unpacked fasta file from the input archive.",
                        "label": "Unpacked fasta file"
                    }
                ],
                "y": 89.4270829794308,
                "cwlVersion": "sbg:draft-2",
                "stdin": "",
                "sbg:revision": 4,
                "sbg:categories": [
                    "Other"
                ],
                "class": "CommandLineTool",
                "sbg:modifiedOn": 1466173968,
                "description": "SBG Untar fasta outputs FA/FASTA/FA.GZ/FASTA.GZ from TAR.",
                "inputs": [
                    {
                        "required": true,
                        "sbg:fileTypes": "TAR,FA,FASTA,FA.GZ,FASTA.GZ",
                        "id": "#input_tar_with_reference",
                        "type": [
                            "File"
                        ],
                        "label": "Input archive file with fasta",
                        "description": "The input archive file to be unpacked.",
                        "sbg:stageInput": "link"
                    }
                ],
                "sbg:createdOn": 1466173965,
                "x": 191.66667222976696,
                "temporaryFailCodes": [],
                "successCodes": [],
                "sbg:project": "bix-demo/sbgtools-demo",
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "sevenbridges",
                        "sbg:modifiedOn": 1466173965
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "sevenbridges",
                        "sbg:modifiedOn": 1466173968
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "sevenbridges",
                        "sbg:modifiedOn": 1466173968
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "sevenbridges",
                        "sbg:modifiedOn": 1466173968
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "sevenbridges",
                        "sbg:modifiedOn": 1466173968
                    }
                ],
                "sbg:job": {
                    "inputs": {
                        "input_tar_with_reference": {
                            "class": "File",
                            "path": "input_file.fasta",
                            "size": 0,
                            "secondaryFiles": []
                        }
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1000
                    }
                },
                "arguments": [],
                "sbg:toolAuthor": "Vladimir Kovacevic, Seven Bridges Genomics",
                "sbg:license": "Apache License 2.0"
            }
        },
        {
            "inputs": [
                {
                    "id": "#BWA_INDEX.total_memory"
                },
                {
                    "id": "#BWA_INDEX.reference",
                    "source": [
                        "#Input_reference"
                    ]
                },
                {
                    "id": "#BWA_INDEX.prefix_of_the_index_to_be_output"
                },
                {
                    "id": "#BWA_INDEX.bwt_construction"
                },
                {
                    "id": "#BWA_INDEX.block_size"
                },
                {
                    "id": "#BWA_INDEX.add_64_to_fasta_name"
                }
            ],
            "sbg:y": 234.42707712493012,
            "id": "#BWA_INDEX",
            "outputs": [
                {
                    "id": "#BWA_INDEX.indexed_reference"
                }
            ],
            "sbg:x": 290.0000129143399,
            "run": {
                "stdout": "",
                "outputs": [
                    {
                        "fileTypes": "TAR",
                        "sbg:fileTypes": "TAR",
                        "id": "#indexed_reference",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "TARed fasta with its BWA indices",
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "script": "{\n  reference_file = $job.inputs.reference.path.split('/')[$job.inputs.reference.path.split('/').length-1]\n  ext = reference_file.split('.')[reference_file.split('.').length-1]\n  if(ext=='tar'){\n    return reference_file\n  }\n  else{\n    return reference_file + '.tar'\n  }\n}\n",
                                "engine": "#cwl-js-engine"
                            },
                            "sbg:inheritMetadataFrom": "#reference"
                        },
                        "description": "TARed fasta with its BWA indices."
                    }
                ],
                "sbg:toolkitVersion": "0.7.13",
                "sbg:validationErrors": [],
                "sbg:contributors": [
                    "vladimirk"
                ],
                "sbg:sbgMaintained": false,
                "hints": [
                    {
                        "dockerPull": "images.sbgenomics.com/vladimirk/bwa:0.7.13",
                        "class": "DockerRequirement",
                        "dockerImageId": "2f813371e803"
                    },
                    {
                        "class": "sbg:CPURequirement",
                        "value": 1
                    },
                    {
                        "class": "sbg:MemRequirement",
                        "value": {
                            "class": "Expression",
                            "script": "{\n  GB_1 = 1024*1024*1024\n  reads_size = $job.inputs.reference.size\n\n  if(!reads_size) { reads_size = GB_1 }\n  \n  if($job.inputs.total_memory){\n    return $job.inputs.total_memory * 1024\n  } else {\n    return (parseInt(1.5 * reads_size / (1024*1024)))\n  }\n}",
                            "engine": "#cwl-js-engine"
                        }
                    }
                ],
                "sbg:modifiedBy": "vladimirk",
                "baseCommand": [
                    {
                        "class": "Expression",
                        "script": "{\n  reference_file = $job.inputs.reference.path.split('/')[$job.inputs.reference.path.split('/').length-1]\n  ext = reference_file.split('.')[reference_file.split('.').length-1]\n  if(ext=='tar'){\n    return 'echo Index files passed without any processing!'\n  }\n  else{\n    index_cmd = '/opt/bwa-0.7.13/bwa index '+ reference_file + ' '\n    return index_cmd\n  }\n}",
                        "engine": "#cwl-js-engine"
                    }
                ],
                "sbg:latestRevision": 15,
                "sbg:cmdPreview": "/opt/bwa-0.7.13/bwa index reference.fasta   -a bwtsw      -6    ; tar -cf reference.fasta.tar reference.fasta *.amb *.ann *.bwt *.pac *.sa",
                "id": "vladimirk/bwa-mem-bundle-0-7-13-demo/bwa-index/15",
                "sbg:id": "admin/sbg-public-data/bwa-index/32",
                "sbg:toolkit": "BWA",
                "sbg:createdBy": "vladimirk",
                "requirements": [
                    {
                        "id": "#cwl-js-engine",
                        "class": "ExpressionEngineRequirement",
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ]
                    }
                ],
                "label": "BWA INDEX",
                "sbg:image_url": null,
                "class": "CommandLineTool",
                "y": 234.42707712493012,
                "cwlVersion": "sbg:draft-2",
                "stdin": "",
                "sbg:revision": 15,
                "sbg:categories": [
                    "Indexing",
                    "FASTA-Processing"
                ],
                "sbg:modifiedOn": 1469449858,
                "description": "BWA INDEX constructs the FM-index (Full-text index in Minute space) for the reference genome.\nGenerated index files will be used with BWA MEM, BWA ALN, BWA SAMPE and BWA SAMSE tools.\n\nIf input reference file has TAR extension it is assumed that BWA indices came together with it. BWA INDEX will only pass that TAR to the output. If input is not TAR, the creation of BWA indices and its packing in TAR file (together with the reference) will be performed.",
                "inputs": [
                    {
                        "id": "#total_memory",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Configuration",
                        "description": "Total memory [GB] to be reserved for the tool (Default value is 1.5 x size_of_the_reference).",
                        "label": "Total memory [Gb]"
                    },
                    {
                        "required": true,
                        "sbg:category": "File input",
                        "sbg:fileTypes": "FASTA,FA,FA.GZ,FASTA.GZ,TAR",
                        "id": "#reference",
                        "type": [
                            "File"
                        ],
                        "label": "Reference",
                        "description": "Input reference fasta of TAR file with reference and indices.",
                        "sbg:stageInput": "link"
                    },
                    {
                        "id": "#prefix_of_the_index_to_be_output",
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:category": "Configuration",
                        "description": "Prefix of the index [same as fasta name].",
                        "label": "Prefix of the index to be output"
                    },
                    {
                        "inputBinding": {
                            "prefix": "-a",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Configuration",
                        "label": "Bwt construction",
                        "id": "#bwt_construction",
                        "sbg:toolDefaultValue": "auto",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "bwtsw",
                                    "is",
                                    "div"
                                ],
                                "name": "bwt_construction",
                                "type": "enum"
                            }
                        ],
                        "description": "Algorithm for constructing BWT index. Available options are:s\tIS linear-time algorithm for constructing suffix array. It requires 5.37N memory where N is the size of the database. IS is moderately fast, but does not work with database larger than 2GB. IS is the default algorithm due to its simplicity. The current codes for IS algorithm are reimplemented by Yuta Mori. bwtsw\tAlgorithm implemented in BWT-SW. This method works with the whole human genome. Warning: `-a bwtsw' does not work for short genomes, while `-a is' and `-a div' do not work not for long genomes."
                    },
                    {
                        "sbg:category": "Configuration",
                        "label": "Block size",
                        "id": "#block_size",
                        "sbg:toolDefaultValue": "10000000",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Block size for the bwtsw algorithm (effective with -a bwtsw)."
                    },
                    {
                        "id": "#add_64_to_fasta_name",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "sbg:category": "Configuration",
                        "description": "Index files named as <in.fasta>64 instead of <in.fasta>.*.",
                        "label": "Output index files renamed by adding 64"
                    }
                ],
                "sbg:createdOn": 1458658817,
                "sbg:links": [
                    {
                        "id": "http://bio-bwa.sourceforge.net/",
                        "label": "Homepage"
                    },
                    {
                        "id": "https://github.com/lh3/bwa",
                        "label": "Source code"
                    },
                    {
                        "id": "http://bio-bwa.sourceforge.net/bwa.shtml",
                        "label": "Wiki"
                    },
                    {
                        "id": "http://sourceforge.net/projects/bio-bwa/",
                        "label": "Download"
                    },
                    {
                        "id": "http://www.ncbi.nlm.nih.gov/pubmed/19451168",
                        "label": "Publication"
                    }
                ],
                "x": 290.0000129143399,
                "temporaryFailCodes": [],
                "successCodes": [],
                "sbg:project": "vladimirk/bwa-mem-bundle-0-7-13-demo",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1458658817,
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1458658836,
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1458745340,
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1460643813,
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1462801955,
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1465227109,
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1465231882,
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1465990497,
                        "sbg:revision": 7,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1465992672,
                        "sbg:revision": 8,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1465993183,
                        "sbg:revision": 9,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1465994793,
                        "sbg:revision": 10,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1466070064,
                        "sbg:revision": 11,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1466071727,
                        "sbg:revision": 12,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1466072504,
                        "sbg:revision": 13,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1466077580,
                        "sbg:revision": 14,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1469449858,
                        "sbg:revision": 15,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": null
                    }
                ],
                "sbg:job": {
                    "inputs": {
                        "bwt_construction": "bwtsw",
                        "add_64_to_fasta_name": true,
                        "reference": {
                            "class": "File",
                            "path": "/path/to/the/reference.fasta",
                            "size": 0,
                            "secondaryFiles": [
                                {
                                    "path": ".amb"
                                },
                                {
                                    "path": ".ann"
                                },
                                {
                                    "path": ".bwt"
                                },
                                {
                                    "path": ".pac"
                                },
                                {
                                    "path": ".sa"
                                }
                            ]
                        },
                        "total_memory": null,
                        "block_size": 0,
                        "prefix_of_the_index_to_be_output": "prefix"
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1536
                    }
                },
                "arguments": [
                    {
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\n  reference_file = $job.inputs.reference.path.split('/')[$job.inputs.reference.path.split('/').length-1]\n  ext = reference_file.split('.')[reference_file.split('.').length-1]\n  if(ext=='tar' || !$job.inputs.bwt_construction){\n    return ''\n  } else {\n    return '-a ' + $job.inputs.bwt_construction\n  }\n}",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\n  reference_file = $job.inputs.reference.path.split('/')[$job.inputs.reference.path.split('/').length-1]\n  ext = reference_file.split('.')[reference_file.split('.').length-1]\n  if(ext=='tar' || !$job.inputs.prefix){\n    return ''\n  } else {\n    return '-p ' + $job.inputs.prefix\n  }\n}\n",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\n  reference_file = $job.inputs.reference.path.split('/')[$job.inputs.reference.path.split('/').length-1]\n  ext = reference_file.split('.')[reference_file.split('.').length-1]\n  if(ext=='tar' || !$job.inputs.block_size){\n    return ''\n  } else {\n    return '-b ' + $job.inputs.block_size\n  }\n}\n\n",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\n  reference_file = $job.inputs.reference.path.split('/')[$job.inputs.reference.path.split('/').length-1]\n  ext = reference_file.split('.')[reference_file.split('.').length-1]\n  if(ext=='tar' || !$job.inputs.add_64_to_fasta_name){\n    return ''\n  } else {\n    return '-6 '\n  }\n}\n",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\n  reference_file = $job.inputs.reference.path.split('/')[$job.inputs.reference.path.split('/').length-1]\n  ext = reference_file.split('.')[reference_file.split('.').length-1]\n  if(ext=='tar'){\n    return ''\n  }\n  else{\n    tar_cmd = 'tar -cf ' + reference_file + '.tar ' + reference_file + ' *.amb' + ' *.ann' + ' *.bwt' + ' *.pac' + ' *.sa' \n    return ' ; ' + tar_cmd\n  }\n}",
                            "engine": "#cwl-js-engine"
                        }
                    }
                ],
                "sbg:toolAuthor": "Heng Li",
                "sbg:license": "GNU Affero General Public License v3.0, MIT License"
            }
        },
        {
            "inputs": [
                {
                    "id": "#Indel_GATK_SelectVariants.variants",
                    "source": [
                        "#GATK_UnifiedGenotyper.raw_vcf"
                    ]
                },
                {
                    "id": "#Indel_GATK_SelectVariants.validation_strictness"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.use_original_qualities"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.use_legacy_downsampler"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.unsafe"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.threads_per_job"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.tag"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.select_type_to_include",
                    "default": [
                        "INDEL"
                    ]
                },
                {
                    "id": "#Indel_GATK_SelectVariants.select_random_fraction"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.select_expressions"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.sample_name"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.sample_expressions"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.restrict_alleles_to"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.remove_program_records"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.remove_fraction_genotypes"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.regenotype"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.reference",
                    "source": [
                        "#SBG_FASTA_Indices.fasta_reference"
                    ]
                },
                {
                    "id": "#Indel_GATK_SelectVariants.read_group_black_list"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.read_filter"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.preserve_qscores_less_than"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.phone_home"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.pedigree_validation_type"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.pedigree_string"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.non_deterministic_random_seed"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.mvq"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.mendelian_violation"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.memory_per_job",
                    "default": 2048
                },
                {
                    "id": "#Indel_GATK_SelectVariants.memory_overhead_per_job"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.max_runtime_units"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.max_runtime"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.max_indel_size"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.keep_program_records"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.keep_original_ac"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.keep_ids"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.intervals_file"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.intervals"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.interval_set_rule"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.interval_padding"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.interval_merging"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.gatk_key"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.fix_misencoded_quals"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.exclude_sample_name"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.exclude_non_variants"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.exclude_intervals"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.exclude_filtered"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.emit_original_quals"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.downsampling_type"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.downsample_to_fraction"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.downsample_to_coverage"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.discordance"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.disable_radnomization"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.disable_indel_quals"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.default_base_qualities"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.cpu_per_job",
                    "default": 1
                },
                {
                    "id": "#Indel_GATK_SelectVariants.concordance"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.baq_gap_open_penalty"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.baq"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.allow_potentailly_misencoded_quals"
                },
                {
                    "id": "#Indel_GATK_SelectVariants.allow_nonoverlapping_command_line_samples"
                }
            ],
            "sbg:y": 501.4103580876329,
            "id": "#Indel_GATK_SelectVariants",
            "outputs": [
                {
                    "id": "#Indel_GATK_SelectVariants.select_variants_vcf"
                }
            ],
            "sbg:x": 2664.2314699317903,
            "run": {
                "stdout": "",
                "outputs": [
                    {
                        "sbg:fileTypes": "VCF",
                        "id": "#select_variants_vcf",
                        "type": [
                            "File"
                        ],
                        "label": "Select Variants VCF",
                        "outputBinding": {
                            "glob": "*.vcf",
                            "sbg:metadata": {},
                            "sbg:inheritMetadataFrom": "#variants",
                            "secondaryFiles": [
                                ".idx"
                            ]
                        },
                        "description": "File to which variants should be written."
                    }
                ],
                "sbg:toolkitVersion": "2.3.9 Lite",
                "sbg:validationErrors": [],
                "sbg:contributors": [
                    "bix-demo"
                ],
                "sbg:sbgMaintained": false,
                "hints": [
                    {
                        "dockerPull": "images.sbgenomics.com/stefanristeski/gatk2-lite:2.3-9",
                        "class": "DockerRequirement",
                        "dockerImageId": "47510cb2da55"
                    },
                    {
                        "class": "sbg:CPURequirement",
                        "value": {
                            "class": "Expression",
                            "script": "{\n  if($job.inputs.cpu_per_job){\n  \treturn $job.inputs.cpu_per_job\n  }\n  return 1 \n}",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "class": "sbg:MemRequirement",
                        "value": {
                            "class": "Expression",
                            "script": "{\n  if($job.inputs.memory_per_job){\n    if($job.inputs.memory_overhead_per_job){\n    \treturn $job.inputs.memory_per_job + $job.inputs.memory_overhead_per_job\n    }\n    else\n  \t\treturn $job.inputs.memory_per_job\n  }\n  else if(!$job.inputs.memory_per_job && $job.inputs.memory_overhead_per_job){\n\t\treturn 2048 + $job.inputs.memory_overhead_per_job  \n  }\n  else\n  \treturn 2048\n}",
                            "engine": "#cwl-js-engine"
                        }
                    }
                ],
                "sbg:modifiedBy": "bix-demo",
                "baseCommand": [
                    "java",
                    {
                        "class": "Expression",
                        "script": "{\n  if($job.inputs.memory_per_job){\n  \treturn '-Xmx'.concat($job.inputs.memory_per_job, 'M')\n  }\n  \treturn '-Xmx2048M'\n}",
                        "engine": "#cwl-js-engine"
                    },
                    "-jar",
                    "/opt/GenomeAnalysisTKLite.jar",
                    "--analysis_type",
                    "SelectVariants"
                ],
                "sbg:latestRevision": 8,
                "sbg:cmdPreview": "java -Xmx2048M -jar /opt/GenomeAnalysisTKLite.jar --analysis_type SelectVariants --variant bam.ext --out bam.vcf --sample_expressions  --sample_name  --select_expressions",
                "id": "bix-demo/gatk-2-3-9-lite-demo/gatk-2-3-9-lite-selectvariants/8",
                "sbg:id": "admin/sbg-public-data/gatk-2-3-9-lite-selectvariants/10",
                "sbg:toolkit": "GATK",
                "sbg:createdBy": "bix-demo",
                "requirements": [
                    {
                        "id": "#cwl-js-engine",
                        "class": "ExpressionEngineRequirement",
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ]
                    }
                ],
                "label": "Indel GATK SelectVariants",
                "sbg:image_url": null,
                "class": "CommandLineTool",
                "y": 501.4103580876329,
                "cwlVersion": "sbg:draft-2",
                "stdin": "",
                "sbg:revision": 8,
                "sbg:categories": [
                    "VCF-Processing"
                ],
                "sbg:modifiedOn": 1463664196,
                "description": "Overview\n\nOften, a VCF containing many samples and/or variants will need to be subset in order to facilitate certain analyses (e.g. comparing and contrasting cases vs. controls; extracting variant or non-variant loci that meet certain requirements, displaying just a few samples in a browser like IGV, etc.). SelectVariants can be used for this purpose.\n\nThere are many different options for selecting subsets of variants from a larger callset:\n\nExtract one or more samples from a callset based on either a complete sample name or a pattern match.\nSpecify criteria for inclusion that place thresholds on annotation values, e.g. \"DP > 1000\" (depth of coverage greater than 1000x), \"AF < 0.25\" (sites with allele frequency less than 0.25). These criteria are written as \"JEXL expressions\", which are documented in the article about using JEXL expressions.\nProvide concordance or discordance tracks in order to include or exclude variants that are also present in other given callsets.\nSelect variants based on criteria like their type (e.g. INDELs only), evidence of mendelian violation, filtering status, allelicity, and so on.\nThere are also several options for recording the original values of certain annotations that are recalculated when a subsetting the new callset, trimming alleles, and so on.\n\nInput\nA variant call set from which to select a subset.\n\nOutput\nA new VCF file containing the selected subset of variants.\n\n(IMPORTANT) Reference \".fasta\" Secondary Files\n\nTools in GATK that require a fasta reference file also look for the reference file's corresponding .fai (fasta index) and .dict (fasta dictionary) files. The fasta index file allows random access to reference bases and the dictionary file is a dictionary of the contig names and sizes contained within the fasta reference. These two secondary files are essential for GATK to work properly. To append these two files to your fasta reference please use the 'SBG FASTA Indices' tool within your GATK based workflow before using any of the GATK tools.",
                "inputs": [
                    {
                        "required": true,
                        "inputBinding": {
                            "prefix": "--variant",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-V",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "VCF",
                        "id": "#variants",
                        "type": [
                            {
                                "items": "File",
                                "type": "array"
                            }
                        ],
                        "label": "Variants",
                        "description": "Input VCF file."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--validation_strictness",
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "itemSeparator": " ",
                            "valueFrom": {
                                "class": "Expression",
                                "script": "{\n  if (!$job.inputs.validation_strictness){\n  \treturn 'SILENT'\n  }\n  else\n    return $job.inputs.validation_strictness\n}",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "sbg:altPrefix": "-S",
                        "sbg:category": "GATK General",
                        "label": "Validation Strictness",
                        "id": "#validation_strictness",
                        "sbg:toolDefaultValue": "SILENT",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "SILENT",
                                    "LENIENT",
                                    "STRICT"
                                ],
                                "name": "validation_strictness",
                                "type": "enum"
                            }
                        ],
                        "description": "How strict should we be with validation."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--useOriginalQualities",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-OQ",
                        "sbg:category": "GATK General",
                        "label": "Use Original Qualities",
                        "id": "#use_original_qualities",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "If set, use the original base quality scores from the OQ tag when present instead of the standard scores."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--use_legacy_downsampler",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-use_legacy_downsampler",
                        "sbg:category": "GATK General",
                        "label": "Use Legacy Downsampler",
                        "id": "#use_legacy_downsampler",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Use the legacy downsampling implementation instead of the newer, less-tested implementation."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--unsafe",
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "itemSeparator": " ",
                            "valueFrom": {
                                "class": "Expression",
                                "script": "{\n  if (!$job.inputs.unsafe){\n  \treturn 'LENIENT_VCF_PROCESSING'\n  }\n  else\n    return $job.inputs.unsafe\n}",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "sbg:altPrefix": "-U",
                        "sbg:category": "GATK General",
                        "label": "Unsafe",
                        "id": "#unsafe",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "ALLOW_UNINDEXED_BAM",
                                    "ALLOW_UNSET_BAM_SORT_ORDER",
                                    "NO_READ_ORDER_VERIFICATION",
                                    "ALLOW_SEQ_DICT_INCOMPATIBILITY",
                                    "LENIENT_VCF_PROCESSING",
                                    "ALL"
                                ],
                                "name": "unsafe",
                                "type": "enum"
                            }
                        ],
                        "description": "If set, enables unsafe operations: nothing will be checked at runtime.  For expert users only who know what they are doing.  We do not support usage of this argument."
                    },
                    {
                        "sbg:altPrefix": null,
                        "sbg:category": "Execution",
                        "label": "Threads per job",
                        "id": "#threads_per_job",
                        "sbg:toolDefaultValue": "4",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "For tools which support multiprocessing, this value can be used to set the number of threads to be used."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--tag",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-tag",
                        "sbg:category": "GATK General",
                        "label": "Tag",
                        "id": "#tag",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "Arbitrary tag string to identify this GATK run as part of a group of runs, for later analysis."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--selectTypeToInclude",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-selectType",
                        "sbg:category": "Select Variants",
                        "label": "Select Type To Include",
                        "id": "#select_type_to_include",
                        "sbg:toolDefaultValue": "[INDEL, SNP, MIXED, MNP, SYMBOLIC, NO_VARIATION]",
                        "type": [
                            "null",
                            {
                                "items": {
                                    "symbols": [
                                        "INDEL",
                                        "SNP",
                                        "MIXED",
                                        "MNP",
                                        "SYMBOLIC",
                                        "NO_VARIATION"
                                    ],
                                    "name": "select_type_to_include",
                                    "type": "enum"
                                },
                                "type": "array"
                            }
                        ],
                        "description": "Select only a certain type of variants from the input file. Valid types are INDEL, SNP, MIXED, MNP, SYMBOLIC, NO_VARIATION. Can be specified multiple times."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--select_random_fraction",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-fraction",
                        "sbg:category": "Select Variants",
                        "label": "Select Random Fraction",
                        "id": "#select_random_fraction",
                        "sbg:toolDefaultValue": "0.0",
                        "type": [
                            "null",
                            "float"
                        ],
                        "description": "Selects a fraction (a number between 0 and 1) of the total variants at random from the variant track."
                    },
                    {
                        "sbg:altPrefix": "-select",
                        "sbg:category": "Select Variants",
                        "label": "Select Expressions",
                        "id": "#select_expressions",
                        "sbg:toolDefaultValue": "[]",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "description": "One or more criteria to use when selecting the data."
                    },
                    {
                        "sbg:altPrefix": "-sn",
                        "sbg:category": "Select Variants",
                        "label": "Sample Name",
                        "id": "#sample_name",
                        "sbg:toolDefaultValue": "[]",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "description": "Include genotypes from this sample. Can be specified multiple times."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--sample_expressions",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-se",
                        "sbg:category": "Select Variants",
                        "label": "Sample Expressions",
                        "id": "#sample_expressions",
                        "sbg:toolDefaultValue": "[]",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "description": "Regular expression to select many samples from the ROD tracks provided. Can be specified multiple times."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--restrictAllelesTo",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-restrictAllelesTo",
                        "sbg:category": "Select Variants",
                        "label": "Restrict Alleles To",
                        "id": "#restrict_alleles_to",
                        "sbg:toolDefaultValue": "ALL",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "ALL",
                                    "MULTIALLELIC",
                                    "BIALLELIC"
                                ],
                                "name": "restrict_alleles_to",
                                "type": "enum"
                            }
                        ],
                        "description": "Select only variants of a particular allelicity. Valid options are ALL (default), MULTIALLELIC or BIALLELIC."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--remove_program_records",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-rpr",
                        "sbg:category": "GATK General",
                        "label": "Remove Program Records",
                        "id": "#remove_program_records",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Should we override the Walker's default and remove program records from the SAM header."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--remove_fraction_genotypes",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-fractionGenotypes",
                        "sbg:category": "Select Variants",
                        "label": "Remove Fraction Genotypes",
                        "id": "#remove_fraction_genotypes",
                        "sbg:toolDefaultValue": "0.0",
                        "type": [
                            "null",
                            "float"
                        ],
                        "description": "Selects a fraction (a number between 0 and 1) of the total genotypes at random from the variant track and sets them to nocall."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--regenotype",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-regenotype",
                        "sbg:category": "Select Variants",
                        "label": "Regenotype",
                        "id": "#regenotype",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Re-genotype the selected samples based on their GLs (or PLs)."
                    },
                    {
                        "required": true,
                        "inputBinding": {
                            "prefix": "--reference_sequence",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-R",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "FASTA, FA",
                        "id": "#reference",
                        "type": [
                            "File"
                        ],
                        "label": "Reference Genome",
                        "description": "Reference Genome in FASTA format."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--read_group_black_list",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-rgbl",
                        "sbg:category": "GATK General",
                        "label": "Read Group Black List",
                        "id": "#read_group_black_list",
                        "sbg:toolDefaultValue": "[]",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "description": "Filters out read groups matching : or a .txt file containing the filter strings one per line."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--read_filter",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-rf",
                        "sbg:category": "GATK General",
                        "label": "Read Filter",
                        "id": "#read_filter",
                        "sbg:toolDefaultValue": "[]",
                        "type": [
                            "null",
                            {
                                "items": {
                                    "symbols": [
                                        "BadCigarFilter",
                                        "BadMateFilter",
                                        "CountingFilteringIterator.CountingReadFilter",
                                        "DuplicateReadFilter",
                                        "FailsVendorQualityCheckFilter",
                                        "HCMappingQualityFilter",
                                        "LibraryReadFilter",
                                        "MalformedReadFilter",
                                        "MappingQualityFilter",
                                        "MappingQualityUnavailableFilter",
                                        "MappingQualityZeroFilter",
                                        "MateSameStrandFilter",
                                        "MaxInsertSizeFilter",
                                        "MissingReadGroupFilter",
                                        "NoOriginalQualityScoresFilter",
                                        "NotPrimaryAlignmentFilter",
                                        "OverclippedReadFilter",
                                        "Platform454Filter",
                                        "PlatformFilter",
                                        "PlatformUnitFilter",
                                        "ReadGroupBlackListFilter",
                                        "ReadLengthFilter",
                                        "ReadNameFilter",
                                        "ReadStrandFilter",
                                        "ReassignMappingQualityFilter",
                                        "ReassignOneMappingQualityFilter",
                                        "SampleFilter",
                                        "SingleReadGroupFilter",
                                        "UnmappedReadFilter"
                                    ],
                                    "name": "read_filter",
                                    "type": "enum"
                                },
                                "type": "array"
                            }
                        ],
                        "description": "Specify filtration criteria to apply to each read individually."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--preserve_qscores_less_than",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-preserveQ",
                        "sbg:category": "GATK General",
                        "label": "Preserve Qscores Less Than",
                        "id": "#preserve_qscores_less_than",
                        "sbg:toolDefaultValue": "6",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Bases with quality scores less than this threshold won't be recalibrated (with -BQSR)."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--phone_home",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-et",
                        "sbg:category": "GATK General",
                        "label": "Phone Home",
                        "id": "#phone_home",
                        "sbg:toolDefaultValue": "STANDARD",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "NO_ET",
                                    "STANDARD"
                                ],
                                "name": "phone_home",
                                "type": "enum"
                            }
                        ],
                        "description": "What kind of GATK run report should we generate? STANDARD is the default, can be NO_ET so nothing is posted to the run repository. Please see http://gatkforums.broadinstitute.org/discussion/1250/what-is-phone-home-and-how-does-it-affect-me#latest for details."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--pedigreeValidationType",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-pedValidationType",
                        "sbg:category": "GATK General",
                        "label": "Pedigree Validation Type",
                        "id": "#pedigree_validation_type",
                        "sbg:toolDefaultValue": "STRICT",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "STRICT",
                                    "SILENT"
                                ],
                                "name": "pedigree_validation_type",
                                "type": "enum"
                            }
                        ],
                        "description": "How strict should we be in validating the pedigree information?."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--pedigreeString",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-pedString",
                        "sbg:category": "GATK General",
                        "label": "Pedigree String",
                        "id": "#pedigree_string",
                        "sbg:toolDefaultValue": "[]",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "description": "Pedigree string for samples."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--nonDeterministicRandomSeed",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-ndrs",
                        "sbg:category": "GATK General",
                        "label": "Non Deterministic Random Seed",
                        "id": "#non_deterministic_random_seed",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Makes the GATK behave non deterministically, that is, the random numbers generated will be different in every run."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-mvq",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "--mendelianViolationQualThreshold",
                        "sbg:category": "Select Variants",
                        "label": "Mvq",
                        "id": "#mvq",
                        "sbg:toolDefaultValue": "0.0",
                        "type": [
                            "null",
                            "float"
                        ],
                        "description": "Minimum genotype QUAL score for each trio member required to accept a site as a violation."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--mendelianViolation",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-mv",
                        "sbg:category": "Select Variants",
                        "label": "Mendelian Violation",
                        "id": "#mendelian_violation",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Output mendelian violation sites only."
                    },
                    {
                        "sbg:altPrefix": null,
                        "sbg:category": "Execution",
                        "label": "Memory per job",
                        "id": "#memory_per_job",
                        "sbg:toolDefaultValue": "2048",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Amount of RAM memory to be used per job."
                    },
                    {
                        "sbg:category": "Execution",
                        "label": "Memory overhead per job",
                        "id": "#memory_overhead_per_job",
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Memory overhead per job. By default this parameter value is set to '0' (zero megabytes). This parameter value is added to the Memory per job parameter value. This results in the allocation of the sum total (Memory per job and Memory overhead per job) amount of memory per job. By default the memory per job parameter value is set to 2048 megabytes, unless specified otherwise."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--maxRuntimeUnits",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-maxRuntimeUnits",
                        "sbg:category": "GATK General",
                        "label": "Max Runtime Units",
                        "id": "#max_runtime_units",
                        "sbg:toolDefaultValue": "MINUTES",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "NANOSECONDS",
                                    "MICROSECONDS",
                                    "MILLISECONDS",
                                    "SECONDS",
                                    "MINUTES",
                                    "HOURS",
                                    "DAYS"
                                ],
                                "name": "max_runtime_units",
                                "type": "enum"
                            }
                        ],
                        "description": "The TimeUnit for maxRuntime."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--maxRuntime",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-maxRuntime",
                        "sbg:category": "GATK General",
                        "label": "Max Runtime",
                        "id": "#max_runtime",
                        "sbg:toolDefaultValue": "-1",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "If provided, that GATK will stop execution cleanly as soon after maxRuntime has been exceeded, truncating the run but not exiting with a failure.  By default the value is interpreted in minutes, but this can be changed by maxRuntimeUnits."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--maxIndelSize",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": null,
                        "sbg:category": "Select Variants",
                        "label": "Max Indel Size",
                        "id": "#max_indel_size",
                        "sbg:toolDefaultValue": "2147483647",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Indel size select."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--keep_program_records",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-kpr",
                        "sbg:category": "GATK General",
                        "label": "Keep Program Records",
                        "id": "#keep_program_records",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Should we override the Walker's default and keep program records from the SAM header."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--keepOriginalAC",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-keepOriginalAC",
                        "sbg:category": "Select Variants",
                        "label": "Keep Original Ac",
                        "id": "#keep_original_ac",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Store the original AC, AF, and AN values in the INFO field after selecting (using keys AC_Orig, AF_Orig, and AN_Orig)."
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "prefix": "--keepIDs",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-IDs",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "TXT",
                        "id": "#keep_ids",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Keep IDs",
                        "description": "Only emit sites whose ID is found in this file (one ID per line)."
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "prefix": "--intervals",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-L",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "TXT, BED, VCF",
                        "id": "#intervals_file",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Intervals",
                        "description": "One or more genomic intervals over which to operate. Can be an specified in an .intervals file or a rod file."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-L",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "--intervals",
                        "sbg:category": "GATK General",
                        "label": "Intervals",
                        "id": "#intervals",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "One or more genomic intervals over which to operate."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--interval_set_rule",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-isr",
                        "sbg:category": "GATK General",
                        "label": "Interval Set Rule",
                        "id": "#interval_set_rule",
                        "sbg:toolDefaultValue": "UNION",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "UNION",
                                    "INTERSECTION"
                                ],
                                "name": "interval_set_rule",
                                "type": "enum"
                            }
                        ],
                        "description": "Indicates the set merging approach the interval parser should use to combine the various -L or -XL inputs."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--interval_padding",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-ip",
                        "sbg:category": "GATK General",
                        "label": "Interval Padding",
                        "id": "#interval_padding",
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Indicates how many basepairs of padding to include around each of the intervals specified with the -L/--intervals argument."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--interval_merging",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-im",
                        "sbg:category": "GATK General",
                        "label": "Interval Merging",
                        "id": "#interval_merging",
                        "sbg:toolDefaultValue": "ALL",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "ALL",
                                    "OVERLAPPING_ONLY"
                                ],
                                "name": "interval_merging",
                                "type": "enum"
                            }
                        ],
                        "description": "Indicates the interval merging rule we should use for abutting intervals."
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "prefix": "--gatk_key",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-K",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "KEY, LICENSE",
                        "id": "#gatk_key",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Gatk key",
                        "description": "GATK Key file. Required if running with -et NO_ET. Please see http://gatkforums.broadinstitute.org/discussion/1250/what-is-phone-home-and-how-does-it-affect-me#latest for details."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-fixMisencodedQuals",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-fixMisencodedQuals",
                        "sbg:category": "GATK General",
                        "label": "Fix Misencoded Quals",
                        "id": "#fix_misencoded_quals",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Fix mis-encoded base quality scores."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--exclude_sample_name",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-xl_sn",
                        "sbg:category": "Select Variants",
                        "label": "Exclude Sample Name",
                        "id": "#exclude_sample_name",
                        "sbg:toolDefaultValue": "[]",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "description": "Exclude genotypes from this sample. Can be specified multiple times."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--excludeNonVariants",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-env",
                        "sbg:category": "Select Variants",
                        "label": "Exclude Non Variants",
                        "id": "#exclude_non_variants",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Don't include loci found to be non-variant after the subsetting procedure."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--excludeIntervals",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-XL",
                        "sbg:category": "Input Files",
                        "label": "Exclude Intervals",
                        "id": "#exclude_intervals",
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "description": "One or more genomic intervals to exclude from processing. Can be an .intervals file or a rod file."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--excludeFiltered",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-ef",
                        "sbg:category": "Select Variants",
                        "label": "Exclude Filtered",
                        "id": "#exclude_filtered",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Don't include filtered loci in the analysis."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--emit_original_quals",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-EOQ",
                        "sbg:category": "GATK General",
                        "label": "Emit Original Quals",
                        "id": "#emit_original_quals",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "If true, enables printing of the OQ tag with the original base qualities (with -BQSR)."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--downsampling_type",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-dt",
                        "sbg:category": "GATK General",
                        "label": "Downsampling Type",
                        "id": "#downsampling_type",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "NONE",
                                    "ALL_READS",
                                    "BY_SAMPLE"
                                ],
                                "name": "downsampling_type",
                                "type": "enum"
                            }
                        ],
                        "description": "Type of reads downsampling to employ at a given locus. Reads will be selected randomly to be removed from the pile based on the method described here."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--downsample_to_fraction",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-dfrac",
                        "sbg:category": "GATK General",
                        "label": "Downsample to Fraction",
                        "id": "#downsample_to_fraction",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            "float"
                        ],
                        "description": "Fraction [0.0-1.0] of reads to downsample to."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--downsample_to_coverage",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-dcov",
                        "sbg:category": "GATK General",
                        "label": "Downsample to Coverage",
                        "id": "#downsample_to_coverage",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Coverage to downsample to at any given locus; note that downsampled reads are randomly selected from all possible reads at a locus. For non-locus-based traversals (eg., ReadWalkers), this sets the maximum number of reads at each alignment start position."
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "prefix": "--discordance",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-disc",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "VCF",
                        "id": "#discordance",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Discordance",
                        "description": "Output variants that were not called in this comparison track."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--disableRandomization",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": null,
                        "sbg:category": "GATK General",
                        "label": "Disable Randomization",
                        "id": "#disable_radnomization",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Completely eliminates randomization from nondeterministic methods. To be used mostly in the testing framework where dynamic parallelism can result in differing numbers of calls to the generator."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--disable_indel_quals",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-DIQ",
                        "sbg:category": "GATK General",
                        "label": "Disable Indel Quals",
                        "id": "#disable_indel_quals",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "If 'true', disables printing of base insertion and base deletion tags (with -BQSR). Turns off printing of the base insertion and base deletion tags when using the -BQSR argument and only the base substitution qualities will be produced."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--defaultBaseQualities",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-DBQ",
                        "sbg:category": "GATK General",
                        "label": "Default Base Qualities",
                        "id": "#default_base_qualities",
                        "sbg:toolDefaultValue": "-1",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "If reads are missing some or all base quality scores, this value will be used for all base quality scores."
                    },
                    {
                        "sbg:altPrefix": null,
                        "sbg:category": "Execution",
                        "label": "CPU per job",
                        "id": "#cpu_per_job",
                        "sbg:toolDefaultValue": "1",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Number of CPUs per job."
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "prefix": "--concordance",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-conc",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "VCF",
                        "id": "#concordance",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Concordance",
                        "description": "Output variants that were also called in this comparison track."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--baqGapOpenPenalty",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-baqGOP",
                        "sbg:category": "GATK General",
                        "label": "BAQ Gap Open Penalty",
                        "id": "#baq_gap_open_penalty",
                        "sbg:toolDefaultValue": "40.0",
                        "type": [
                            "null",
                            "float"
                        ],
                        "description": "BAQ gap open penalty (Phred Scaled). Default value is 40. 30 is perhaps better for whole genome call sets."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--baq",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-baq",
                        "sbg:category": "GATK General",
                        "label": "BAQ Calculation Type",
                        "id": "#baq",
                        "sbg:toolDefaultValue": "OFF",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "OFF",
                                    "CALCULATE_AS_NECESSARY",
                                    "RECALCULATE"
                                ],
                                "name": "baq",
                                "type": "enum"
                            }
                        ],
                        "description": "Type of BAQ calculation to apply in the engine."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-allowPotentiallyMisencodedQuals",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "--allow_potentially_misencoded_quality_scores",
                        "sbg:category": "GATK General",
                        "label": "Allow Potentially Misencoded Quals",
                        "id": "#allow_potentailly_misencoded_quals",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Do not fail when encountered base qualities that are too high and seemingly indicate a problem with the base quality encoding of the BAM file."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--ALLOW_NONOVERLAPPING_COMMAND_LINE_SAMPLES",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": null,
                        "sbg:category": "Select Variants",
                        "label": "Allow Nonoverlapping Command Line Samples",
                        "id": "#allow_nonoverlapping_command_line_samples",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Allow a samples other than those in the VCF to be specified on the command line. These samples will be ignored."
                    }
                ],
                "sbg:createdOn": 1450911431,
                "sbg:links": [
                    {
                        "id": "https://www.broadinstitute.org/gatk/index.php",
                        "label": "Homepage"
                    },
                    {
                        "id": "https://github.com/broadgsa/gatk-protected",
                        "label": "Source Code"
                    },
                    {
                        "id": "https://www.broadinstitute.org/gatk/guide/pdfdocs/GATK_GuideBook_2.3-9.pdf",
                        "label": "Wiki"
                    },
                    {
                        "id": "https://www.broadinstitute.org/gatk/download/auth?package=GATK-archive&version=2.3-9-ge5ebf34",
                        "label": "Download"
                    },
                    {
                        "id": "https://www.broadinstitute.org/gatk/about/#in-the-literature",
                        "label": "Publication"
                    },
                    {
                        "id": "https://www.broadinstitute.org/gatk/gatkdocs/org_broadinstitute_gatk_tools_walkers_variantutils_SelectVariants.php",
                        "label": "Documentation"
                    }
                ],
                "x": 2664.2314699317903,
                "temporaryFailCodes": [],
                "successCodes": [],
                "sbg:project": "bix-demo/gatk-2-3-9-lite-demo",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1450911431,
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911432,
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911433,
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911434,
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911435,
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911436,
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911438,
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911439,
                        "sbg:revision": 7,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1463664196,
                        "sbg:revision": 8,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    }
                ],
                "sbg:job": {
                    "inputs": {
                        "validation_strictness": null,
                        "memory_overhead_per_job": 0,
                        "select_type_to_include": [
                            "INDEL",
                            "MIXED"
                        ],
                        "variants": [
                            {
                                "path": "bam.ext"
                            }
                        ],
                        "unsafe": null
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 2048
                    }
                },
                "arguments": [
                    {
                        "prefix": "--out",
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\n  read_name = [].concat($job.inputs.variants)[0].path.replace(/^.*[\\\\\\/]/, '').split('.')\n  read_namebase = read_name.slice(0, read_name.length-1).join('.')\n  return read_namebase + '.vcf'\n}",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "prefix": "--sample_expressions",
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{ \n  if($job.inputs.sample_expressions){\n\tsexpression = $job.inputs.sample_expressions\n\tfilter = []\n\tfor (i = 0; i < sexpression.length; i++) {\n      \t\tfilter.push('--sample_expressions \"', sexpression[i], '\"')\n    \t}\n\treturn filter.join(\"\").trim()\n  } \n}",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "prefix": "--sample_name",
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\n  if($job.inputs.sample_name){\n\tsname = $job.inputs.sample_name\n\tfilter = []\n\tfor (i = 0; i < sname.length; i++) {\n      \t\tfilter.push('--sample_name \"', sname[i], '\"')\n    \t}\n\treturn filter.join(\"\").trim()\n  } \n}",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "prefix": "--select_expressions",
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\n  if($job.inputs.select_expressions){\n\tsexpression = $job.inputs.select_expressions\n\tfilter = []\n\tfor (i = 0; i < sexpression.length; i++) {\n      \t\tfilter.push(' --select_expressions \"', sexpression[i], '\"')\n    \t}\n\treturn filter.join(\"\").trim()\n  } \n}",
                            "engine": "#cwl-js-engine"
                        }
                    }
                ],
                "sbg:toolAuthor": "Broad Institute",
                "sbg:license": "MIT Licence"
            }
        },
        {
            "inputs": [
                {
                    "id": "#SNP_GATK_SelectVariants.variants",
                    "source": [
                        "#GATK_UnifiedGenotyper.raw_vcf"
                    ]
                },
                {
                    "id": "#SNP_GATK_SelectVariants.validation_strictness"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.use_original_qualities"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.use_legacy_downsampler"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.unsafe"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.threads_per_job"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.tag"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.select_type_to_include",
                    "default": [
                        "SNP"
                    ]
                },
                {
                    "id": "#SNP_GATK_SelectVariants.select_random_fraction"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.select_expressions"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.sample_name"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.sample_expressions"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.restrict_alleles_to"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.remove_program_records"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.remove_fraction_genotypes"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.regenotype"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.reference",
                    "source": [
                        "#SBG_FASTA_Indices.fasta_reference"
                    ]
                },
                {
                    "id": "#SNP_GATK_SelectVariants.read_group_black_list"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.read_filter"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.preserve_qscores_less_than"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.phone_home"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.pedigree_validation_type"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.pedigree_string"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.non_deterministic_random_seed"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.mvq"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.mendelian_violation"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.memory_per_job",
                    "default": 2048
                },
                {
                    "id": "#SNP_GATK_SelectVariants.memory_overhead_per_job"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.max_runtime_units"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.max_runtime"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.max_indel_size"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.keep_program_records"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.keep_original_ac"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.keep_ids"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.intervals_file"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.intervals"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.interval_set_rule"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.interval_padding"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.interval_merging"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.gatk_key"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.fix_misencoded_quals"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.exclude_sample_name"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.exclude_non_variants"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.exclude_intervals"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.exclude_filtered"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.emit_original_quals"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.downsampling_type"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.downsample_to_fraction"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.downsample_to_coverage"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.discordance"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.disable_radnomization"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.disable_indel_quals"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.default_base_qualities"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.cpu_per_job",
                    "default": 1
                },
                {
                    "id": "#SNP_GATK_SelectVariants.concordance"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.baq_gap_open_penalty"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.baq"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.allow_potentailly_misencoded_quals"
                },
                {
                    "id": "#SNP_GATK_SelectVariants.allow_nonoverlapping_command_line_samples"
                }
            ],
            "sbg:y": 300.0001028776207,
            "id": "#SNP_GATK_SelectVariants",
            "outputs": [
                {
                    "id": "#SNP_GATK_SelectVariants.select_variants_vcf"
                }
            ],
            "sbg:x": 2632.564883122106,
            "run": {
                "stdout": "",
                "outputs": [
                    {
                        "sbg:fileTypes": "VCF",
                        "id": "#select_variants_vcf",
                        "type": [
                            "File"
                        ],
                        "label": "Select Variants VCF",
                        "outputBinding": {
                            "glob": "*.vcf",
                            "sbg:metadata": {},
                            "sbg:inheritMetadataFrom": "#variants",
                            "secondaryFiles": [
                                ".idx"
                            ]
                        },
                        "description": "File to which variants should be written."
                    }
                ],
                "sbg:toolkitVersion": "2.3.9 Lite",
                "sbg:validationErrors": [],
                "sbg:contributors": [
                    "bix-demo"
                ],
                "sbg:sbgMaintained": false,
                "hints": [
                    {
                        "dockerPull": "images.sbgenomics.com/stefanristeski/gatk2-lite:2.3-9",
                        "class": "DockerRequirement",
                        "dockerImageId": "47510cb2da55"
                    },
                    {
                        "class": "sbg:CPURequirement",
                        "value": {
                            "class": "Expression",
                            "script": "{\n  if($job.inputs.cpu_per_job){\n  \treturn $job.inputs.cpu_per_job\n  }\n  return 1 \n}",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "class": "sbg:MemRequirement",
                        "value": {
                            "class": "Expression",
                            "script": "{\n  if($job.inputs.memory_per_job){\n    if($job.inputs.memory_overhead_per_job){\n    \treturn $job.inputs.memory_per_job + $job.inputs.memory_overhead_per_job\n    }\n    else\n  \t\treturn $job.inputs.memory_per_job\n  }\n  else if(!$job.inputs.memory_per_job && $job.inputs.memory_overhead_per_job){\n\t\treturn 2048 + $job.inputs.memory_overhead_per_job  \n  }\n  else\n  \treturn 2048\n}",
                            "engine": "#cwl-js-engine"
                        }
                    }
                ],
                "sbg:modifiedBy": "bix-demo",
                "baseCommand": [
                    "java",
                    {
                        "class": "Expression",
                        "script": "{\n  if($job.inputs.memory_per_job){\n  \treturn '-Xmx'.concat($job.inputs.memory_per_job, 'M')\n  }\n  \treturn '-Xmx2048M'\n}",
                        "engine": "#cwl-js-engine"
                    },
                    "-jar",
                    "/opt/GenomeAnalysisTKLite.jar",
                    "--analysis_type",
                    "SelectVariants"
                ],
                "sbg:latestRevision": 8,
                "sbg:cmdPreview": "java -Xmx2048M -jar /opt/GenomeAnalysisTKLite.jar --analysis_type SelectVariants --variant bam.ext --out bam.vcf --sample_expressions  --sample_name  --select_expressions",
                "id": "bix-demo/gatk-2-3-9-lite-demo/gatk-2-3-9-lite-selectvariants/8",
                "sbg:id": "admin/sbg-public-data/gatk-2-3-9-lite-selectvariants/10",
                "sbg:toolkit": "GATK",
                "sbg:createdBy": "bix-demo",
                "requirements": [
                    {
                        "id": "#cwl-js-engine",
                        "class": "ExpressionEngineRequirement",
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ]
                    }
                ],
                "label": "SNP GATK SelectVariants",
                "sbg:image_url": null,
                "class": "CommandLineTool",
                "y": 300.0001028776207,
                "cwlVersion": "sbg:draft-2",
                "stdin": "",
                "sbg:revision": 8,
                "sbg:categories": [
                    "VCF-Processing"
                ],
                "sbg:modifiedOn": 1463664196,
                "description": "Overview\n\nOften, a VCF containing many samples and/or variants will need to be subset in order to facilitate certain analyses (e.g. comparing and contrasting cases vs. controls; extracting variant or non-variant loci that meet certain requirements, displaying just a few samples in a browser like IGV, etc.). SelectVariants can be used for this purpose.\n\nThere are many different options for selecting subsets of variants from a larger callset:\n\nExtract one or more samples from a callset based on either a complete sample name or a pattern match.\nSpecify criteria for inclusion that place thresholds on annotation values, e.g. \"DP > 1000\" (depth of coverage greater than 1000x), \"AF < 0.25\" (sites with allele frequency less than 0.25). These criteria are written as \"JEXL expressions\", which are documented in the article about using JEXL expressions.\nProvide concordance or discordance tracks in order to include or exclude variants that are also present in other given callsets.\nSelect variants based on criteria like their type (e.g. INDELs only), evidence of mendelian violation, filtering status, allelicity, and so on.\nThere are also several options for recording the original values of certain annotations that are recalculated when a subsetting the new callset, trimming alleles, and so on.\n\nInput\nA variant call set from which to select a subset.\n\nOutput\nA new VCF file containing the selected subset of variants.\n\n(IMPORTANT) Reference \".fasta\" Secondary Files\n\nTools in GATK that require a fasta reference file also look for the reference file's corresponding .fai (fasta index) and .dict (fasta dictionary) files. The fasta index file allows random access to reference bases and the dictionary file is a dictionary of the contig names and sizes contained within the fasta reference. These two secondary files are essential for GATK to work properly. To append these two files to your fasta reference please use the 'SBG FASTA Indices' tool within your GATK based workflow before using any of the GATK tools.",
                "inputs": [
                    {
                        "required": true,
                        "inputBinding": {
                            "prefix": "--variant",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-V",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "VCF",
                        "id": "#variants",
                        "type": [
                            {
                                "items": "File",
                                "type": "array"
                            }
                        ],
                        "label": "Variants",
                        "description": "Input VCF file."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--validation_strictness",
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "itemSeparator": " ",
                            "valueFrom": {
                                "class": "Expression",
                                "script": "{\n  if (!$job.inputs.validation_strictness){\n  \treturn 'SILENT'\n  }\n  else\n    return $job.inputs.validation_strictness\n}",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "sbg:altPrefix": "-S",
                        "sbg:category": "GATK General",
                        "label": "Validation Strictness",
                        "id": "#validation_strictness",
                        "sbg:toolDefaultValue": "SILENT",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "SILENT",
                                    "LENIENT",
                                    "STRICT"
                                ],
                                "name": "validation_strictness",
                                "type": "enum"
                            }
                        ],
                        "description": "How strict should we be with validation."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--useOriginalQualities",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-OQ",
                        "sbg:category": "GATK General",
                        "label": "Use Original Qualities",
                        "id": "#use_original_qualities",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "If set, use the original base quality scores from the OQ tag when present instead of the standard scores."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--use_legacy_downsampler",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-use_legacy_downsampler",
                        "sbg:category": "GATK General",
                        "label": "Use Legacy Downsampler",
                        "id": "#use_legacy_downsampler",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Use the legacy downsampling implementation instead of the newer, less-tested implementation."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--unsafe",
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "itemSeparator": " ",
                            "valueFrom": {
                                "class": "Expression",
                                "script": "{\n  if (!$job.inputs.unsafe){\n  \treturn 'LENIENT_VCF_PROCESSING'\n  }\n  else\n    return $job.inputs.unsafe\n}",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "sbg:altPrefix": "-U",
                        "sbg:category": "GATK General",
                        "label": "Unsafe",
                        "id": "#unsafe",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "ALLOW_UNINDEXED_BAM",
                                    "ALLOW_UNSET_BAM_SORT_ORDER",
                                    "NO_READ_ORDER_VERIFICATION",
                                    "ALLOW_SEQ_DICT_INCOMPATIBILITY",
                                    "LENIENT_VCF_PROCESSING",
                                    "ALL"
                                ],
                                "name": "unsafe",
                                "type": "enum"
                            }
                        ],
                        "description": "If set, enables unsafe operations: nothing will be checked at runtime.  For expert users only who know what they are doing.  We do not support usage of this argument."
                    },
                    {
                        "sbg:altPrefix": null,
                        "sbg:category": "Execution",
                        "label": "Threads per job",
                        "id": "#threads_per_job",
                        "sbg:toolDefaultValue": "4",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "For tools which support multiprocessing, this value can be used to set the number of threads to be used."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--tag",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-tag",
                        "sbg:category": "GATK General",
                        "label": "Tag",
                        "id": "#tag",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "Arbitrary tag string to identify this GATK run as part of a group of runs, for later analysis."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--selectTypeToInclude",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-selectType",
                        "sbg:category": "Select Variants",
                        "label": "Select Type To Include",
                        "id": "#select_type_to_include",
                        "sbg:toolDefaultValue": "[INDEL, SNP, MIXED, MNP, SYMBOLIC, NO_VARIATION]",
                        "type": [
                            "null",
                            {
                                "items": {
                                    "symbols": [
                                        "INDEL",
                                        "SNP",
                                        "MIXED",
                                        "MNP",
                                        "SYMBOLIC",
                                        "NO_VARIATION"
                                    ],
                                    "name": "select_type_to_include",
                                    "type": "enum"
                                },
                                "type": "array"
                            }
                        ],
                        "description": "Select only a certain type of variants from the input file. Valid types are INDEL, SNP, MIXED, MNP, SYMBOLIC, NO_VARIATION. Can be specified multiple times."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--select_random_fraction",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-fraction",
                        "sbg:category": "Select Variants",
                        "label": "Select Random Fraction",
                        "id": "#select_random_fraction",
                        "sbg:toolDefaultValue": "0.0",
                        "type": [
                            "null",
                            "float"
                        ],
                        "description": "Selects a fraction (a number between 0 and 1) of the total variants at random from the variant track."
                    },
                    {
                        "sbg:altPrefix": "-select",
                        "sbg:category": "Select Variants",
                        "label": "Select Expressions",
                        "id": "#select_expressions",
                        "sbg:toolDefaultValue": "[]",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "description": "One or more criteria to use when selecting the data."
                    },
                    {
                        "sbg:altPrefix": "-sn",
                        "sbg:category": "Select Variants",
                        "label": "Sample Name",
                        "id": "#sample_name",
                        "sbg:toolDefaultValue": "[]",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "description": "Include genotypes from this sample. Can be specified multiple times."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--sample_expressions",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-se",
                        "sbg:category": "Select Variants",
                        "label": "Sample Expressions",
                        "id": "#sample_expressions",
                        "sbg:toolDefaultValue": "[]",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "description": "Regular expression to select many samples from the ROD tracks provided. Can be specified multiple times."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--restrictAllelesTo",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-restrictAllelesTo",
                        "sbg:category": "Select Variants",
                        "label": "Restrict Alleles To",
                        "id": "#restrict_alleles_to",
                        "sbg:toolDefaultValue": "ALL",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "ALL",
                                    "MULTIALLELIC",
                                    "BIALLELIC"
                                ],
                                "name": "restrict_alleles_to",
                                "type": "enum"
                            }
                        ],
                        "description": "Select only variants of a particular allelicity. Valid options are ALL (default), MULTIALLELIC or BIALLELIC."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--remove_program_records",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-rpr",
                        "sbg:category": "GATK General",
                        "label": "Remove Program Records",
                        "id": "#remove_program_records",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Should we override the Walker's default and remove program records from the SAM header."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--remove_fraction_genotypes",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-fractionGenotypes",
                        "sbg:category": "Select Variants",
                        "label": "Remove Fraction Genotypes",
                        "id": "#remove_fraction_genotypes",
                        "sbg:toolDefaultValue": "0.0",
                        "type": [
                            "null",
                            "float"
                        ],
                        "description": "Selects a fraction (a number between 0 and 1) of the total genotypes at random from the variant track and sets them to nocall."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--regenotype",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-regenotype",
                        "sbg:category": "Select Variants",
                        "label": "Regenotype",
                        "id": "#regenotype",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Re-genotype the selected samples based on their GLs (or PLs)."
                    },
                    {
                        "required": true,
                        "inputBinding": {
                            "prefix": "--reference_sequence",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-R",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "FASTA, FA",
                        "id": "#reference",
                        "type": [
                            "File"
                        ],
                        "label": "Reference Genome",
                        "description": "Reference Genome in FASTA format."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--read_group_black_list",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-rgbl",
                        "sbg:category": "GATK General",
                        "label": "Read Group Black List",
                        "id": "#read_group_black_list",
                        "sbg:toolDefaultValue": "[]",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "description": "Filters out read groups matching : or a .txt file containing the filter strings one per line."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--read_filter",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-rf",
                        "sbg:category": "GATK General",
                        "label": "Read Filter",
                        "id": "#read_filter",
                        "sbg:toolDefaultValue": "[]",
                        "type": [
                            "null",
                            {
                                "items": {
                                    "symbols": [
                                        "BadCigarFilter",
                                        "BadMateFilter",
                                        "CountingFilteringIterator.CountingReadFilter",
                                        "DuplicateReadFilter",
                                        "FailsVendorQualityCheckFilter",
                                        "HCMappingQualityFilter",
                                        "LibraryReadFilter",
                                        "MalformedReadFilter",
                                        "MappingQualityFilter",
                                        "MappingQualityUnavailableFilter",
                                        "MappingQualityZeroFilter",
                                        "MateSameStrandFilter",
                                        "MaxInsertSizeFilter",
                                        "MissingReadGroupFilter",
                                        "NoOriginalQualityScoresFilter",
                                        "NotPrimaryAlignmentFilter",
                                        "OverclippedReadFilter",
                                        "Platform454Filter",
                                        "PlatformFilter",
                                        "PlatformUnitFilter",
                                        "ReadGroupBlackListFilter",
                                        "ReadLengthFilter",
                                        "ReadNameFilter",
                                        "ReadStrandFilter",
                                        "ReassignMappingQualityFilter",
                                        "ReassignOneMappingQualityFilter",
                                        "SampleFilter",
                                        "SingleReadGroupFilter",
                                        "UnmappedReadFilter"
                                    ],
                                    "name": "read_filter",
                                    "type": "enum"
                                },
                                "type": "array"
                            }
                        ],
                        "description": "Specify filtration criteria to apply to each read individually."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--preserve_qscores_less_than",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-preserveQ",
                        "sbg:category": "GATK General",
                        "label": "Preserve Qscores Less Than",
                        "id": "#preserve_qscores_less_than",
                        "sbg:toolDefaultValue": "6",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Bases with quality scores less than this threshold won't be recalibrated (with -BQSR)."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--phone_home",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-et",
                        "sbg:category": "GATK General",
                        "label": "Phone Home",
                        "id": "#phone_home",
                        "sbg:toolDefaultValue": "STANDARD",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "NO_ET",
                                    "STANDARD"
                                ],
                                "name": "phone_home",
                                "type": "enum"
                            }
                        ],
                        "description": "What kind of GATK run report should we generate? STANDARD is the default, can be NO_ET so nothing is posted to the run repository. Please see http://gatkforums.broadinstitute.org/discussion/1250/what-is-phone-home-and-how-does-it-affect-me#latest for details."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--pedigreeValidationType",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-pedValidationType",
                        "sbg:category": "GATK General",
                        "label": "Pedigree Validation Type",
                        "id": "#pedigree_validation_type",
                        "sbg:toolDefaultValue": "STRICT",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "STRICT",
                                    "SILENT"
                                ],
                                "name": "pedigree_validation_type",
                                "type": "enum"
                            }
                        ],
                        "description": "How strict should we be in validating the pedigree information?."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--pedigreeString",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-pedString",
                        "sbg:category": "GATK General",
                        "label": "Pedigree String",
                        "id": "#pedigree_string",
                        "sbg:toolDefaultValue": "[]",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "description": "Pedigree string for samples."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--nonDeterministicRandomSeed",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-ndrs",
                        "sbg:category": "GATK General",
                        "label": "Non Deterministic Random Seed",
                        "id": "#non_deterministic_random_seed",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Makes the GATK behave non deterministically, that is, the random numbers generated will be different in every run."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-mvq",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "--mendelianViolationQualThreshold",
                        "sbg:category": "Select Variants",
                        "label": "Mvq",
                        "id": "#mvq",
                        "sbg:toolDefaultValue": "0.0",
                        "type": [
                            "null",
                            "float"
                        ],
                        "description": "Minimum genotype QUAL score for each trio member required to accept a site as a violation."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--mendelianViolation",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-mv",
                        "sbg:category": "Select Variants",
                        "label": "Mendelian Violation",
                        "id": "#mendelian_violation",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Output mendelian violation sites only."
                    },
                    {
                        "sbg:altPrefix": null,
                        "sbg:category": "Execution",
                        "label": "Memory per job",
                        "id": "#memory_per_job",
                        "sbg:toolDefaultValue": "2048",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Amount of RAM memory to be used per job."
                    },
                    {
                        "sbg:category": "Execution",
                        "label": "Memory overhead per job",
                        "id": "#memory_overhead_per_job",
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Memory overhead per job. By default this parameter value is set to '0' (zero megabytes). This parameter value is added to the Memory per job parameter value. This results in the allocation of the sum total (Memory per job and Memory overhead per job) amount of memory per job. By default the memory per job parameter value is set to 2048 megabytes, unless specified otherwise."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--maxRuntimeUnits",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-maxRuntimeUnits",
                        "sbg:category": "GATK General",
                        "label": "Max Runtime Units",
                        "id": "#max_runtime_units",
                        "sbg:toolDefaultValue": "MINUTES",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "NANOSECONDS",
                                    "MICROSECONDS",
                                    "MILLISECONDS",
                                    "SECONDS",
                                    "MINUTES",
                                    "HOURS",
                                    "DAYS"
                                ],
                                "name": "max_runtime_units",
                                "type": "enum"
                            }
                        ],
                        "description": "The TimeUnit for maxRuntime."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--maxRuntime",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-maxRuntime",
                        "sbg:category": "GATK General",
                        "label": "Max Runtime",
                        "id": "#max_runtime",
                        "sbg:toolDefaultValue": "-1",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "If provided, that GATK will stop execution cleanly as soon after maxRuntime has been exceeded, truncating the run but not exiting with a failure.  By default the value is interpreted in minutes, but this can be changed by maxRuntimeUnits."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--maxIndelSize",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": null,
                        "sbg:category": "Select Variants",
                        "label": "Max Indel Size",
                        "id": "#max_indel_size",
                        "sbg:toolDefaultValue": "2147483647",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Indel size select."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--keep_program_records",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-kpr",
                        "sbg:category": "GATK General",
                        "label": "Keep Program Records",
                        "id": "#keep_program_records",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Should we override the Walker's default and keep program records from the SAM header."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--keepOriginalAC",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-keepOriginalAC",
                        "sbg:category": "Select Variants",
                        "label": "Keep Original Ac",
                        "id": "#keep_original_ac",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Store the original AC, AF, and AN values in the INFO field after selecting (using keys AC_Orig, AF_Orig, and AN_Orig)."
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "prefix": "--keepIDs",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-IDs",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "TXT",
                        "id": "#keep_ids",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Keep IDs",
                        "description": "Only emit sites whose ID is found in this file (one ID per line)."
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "prefix": "--intervals",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-L",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "TXT, BED, VCF",
                        "id": "#intervals_file",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Intervals",
                        "description": "One or more genomic intervals over which to operate. Can be an specified in an .intervals file or a rod file."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-L",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "--intervals",
                        "sbg:category": "GATK General",
                        "label": "Intervals",
                        "id": "#intervals",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "One or more genomic intervals over which to operate."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--interval_set_rule",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-isr",
                        "sbg:category": "GATK General",
                        "label": "Interval Set Rule",
                        "id": "#interval_set_rule",
                        "sbg:toolDefaultValue": "UNION",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "UNION",
                                    "INTERSECTION"
                                ],
                                "name": "interval_set_rule",
                                "type": "enum"
                            }
                        ],
                        "description": "Indicates the set merging approach the interval parser should use to combine the various -L or -XL inputs."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--interval_padding",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-ip",
                        "sbg:category": "GATK General",
                        "label": "Interval Padding",
                        "id": "#interval_padding",
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Indicates how many basepairs of padding to include around each of the intervals specified with the -L/--intervals argument."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--interval_merging",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-im",
                        "sbg:category": "GATK General",
                        "label": "Interval Merging",
                        "id": "#interval_merging",
                        "sbg:toolDefaultValue": "ALL",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "ALL",
                                    "OVERLAPPING_ONLY"
                                ],
                                "name": "interval_merging",
                                "type": "enum"
                            }
                        ],
                        "description": "Indicates the interval merging rule we should use for abutting intervals."
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "prefix": "--gatk_key",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-K",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "KEY, LICENSE",
                        "id": "#gatk_key",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Gatk key",
                        "description": "GATK Key file. Required if running with -et NO_ET. Please see http://gatkforums.broadinstitute.org/discussion/1250/what-is-phone-home-and-how-does-it-affect-me#latest for details."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-fixMisencodedQuals",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-fixMisencodedQuals",
                        "sbg:category": "GATK General",
                        "label": "Fix Misencoded Quals",
                        "id": "#fix_misencoded_quals",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Fix mis-encoded base quality scores."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--exclude_sample_name",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-xl_sn",
                        "sbg:category": "Select Variants",
                        "label": "Exclude Sample Name",
                        "id": "#exclude_sample_name",
                        "sbg:toolDefaultValue": "[]",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "description": "Exclude genotypes from this sample. Can be specified multiple times."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--excludeNonVariants",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-env",
                        "sbg:category": "Select Variants",
                        "label": "Exclude Non Variants",
                        "id": "#exclude_non_variants",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Don't include loci found to be non-variant after the subsetting procedure."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--excludeIntervals",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-XL",
                        "sbg:category": "Input Files",
                        "label": "Exclude Intervals",
                        "id": "#exclude_intervals",
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "description": "One or more genomic intervals to exclude from processing. Can be an .intervals file or a rod file."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--excludeFiltered",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-ef",
                        "sbg:category": "Select Variants",
                        "label": "Exclude Filtered",
                        "id": "#exclude_filtered",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Don't include filtered loci in the analysis."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--emit_original_quals",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-EOQ",
                        "sbg:category": "GATK General",
                        "label": "Emit Original Quals",
                        "id": "#emit_original_quals",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "If true, enables printing of the OQ tag with the original base qualities (with -BQSR)."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--downsampling_type",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-dt",
                        "sbg:category": "GATK General",
                        "label": "Downsampling Type",
                        "id": "#downsampling_type",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "NONE",
                                    "ALL_READS",
                                    "BY_SAMPLE"
                                ],
                                "name": "downsampling_type",
                                "type": "enum"
                            }
                        ],
                        "description": "Type of reads downsampling to employ at a given locus. Reads will be selected randomly to be removed from the pile based on the method described here."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--downsample_to_fraction",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-dfrac",
                        "sbg:category": "GATK General",
                        "label": "Downsample to Fraction",
                        "id": "#downsample_to_fraction",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            "float"
                        ],
                        "description": "Fraction [0.0-1.0] of reads to downsample to."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--downsample_to_coverage",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-dcov",
                        "sbg:category": "GATK General",
                        "label": "Downsample to Coverage",
                        "id": "#downsample_to_coverage",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Coverage to downsample to at any given locus; note that downsampled reads are randomly selected from all possible reads at a locus. For non-locus-based traversals (eg., ReadWalkers), this sets the maximum number of reads at each alignment start position."
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "prefix": "--discordance",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-disc",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "VCF",
                        "id": "#discordance",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Discordance",
                        "description": "Output variants that were not called in this comparison track."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--disableRandomization",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": null,
                        "sbg:category": "GATK General",
                        "label": "Disable Randomization",
                        "id": "#disable_radnomization",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Completely eliminates randomization from nondeterministic methods. To be used mostly in the testing framework where dynamic parallelism can result in differing numbers of calls to the generator."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--disable_indel_quals",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-DIQ",
                        "sbg:category": "GATK General",
                        "label": "Disable Indel Quals",
                        "id": "#disable_indel_quals",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "If 'true', disables printing of base insertion and base deletion tags (with -BQSR). Turns off printing of the base insertion and base deletion tags when using the -BQSR argument and only the base substitution qualities will be produced."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--defaultBaseQualities",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-DBQ",
                        "sbg:category": "GATK General",
                        "label": "Default Base Qualities",
                        "id": "#default_base_qualities",
                        "sbg:toolDefaultValue": "-1",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "If reads are missing some or all base quality scores, this value will be used for all base quality scores."
                    },
                    {
                        "sbg:altPrefix": null,
                        "sbg:category": "Execution",
                        "label": "CPU per job",
                        "id": "#cpu_per_job",
                        "sbg:toolDefaultValue": "1",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Number of CPUs per job."
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "prefix": "--concordance",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-conc",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "VCF",
                        "id": "#concordance",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Concordance",
                        "description": "Output variants that were also called in this comparison track."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--baqGapOpenPenalty",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-baqGOP",
                        "sbg:category": "GATK General",
                        "label": "BAQ Gap Open Penalty",
                        "id": "#baq_gap_open_penalty",
                        "sbg:toolDefaultValue": "40.0",
                        "type": [
                            "null",
                            "float"
                        ],
                        "description": "BAQ gap open penalty (Phred Scaled). Default value is 40. 30 is perhaps better for whole genome call sets."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--baq",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-baq",
                        "sbg:category": "GATK General",
                        "label": "BAQ Calculation Type",
                        "id": "#baq",
                        "sbg:toolDefaultValue": "OFF",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "OFF",
                                    "CALCULATE_AS_NECESSARY",
                                    "RECALCULATE"
                                ],
                                "name": "baq",
                                "type": "enum"
                            }
                        ],
                        "description": "Type of BAQ calculation to apply in the engine."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-allowPotentiallyMisencodedQuals",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "--allow_potentially_misencoded_quality_scores",
                        "sbg:category": "GATK General",
                        "label": "Allow Potentially Misencoded Quals",
                        "id": "#allow_potentailly_misencoded_quals",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Do not fail when encountered base qualities that are too high and seemingly indicate a problem with the base quality encoding of the BAM file."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--ALLOW_NONOVERLAPPING_COMMAND_LINE_SAMPLES",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": null,
                        "sbg:category": "Select Variants",
                        "label": "Allow Nonoverlapping Command Line Samples",
                        "id": "#allow_nonoverlapping_command_line_samples",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Allow a samples other than those in the VCF to be specified on the command line. These samples will be ignored."
                    }
                ],
                "sbg:createdOn": 1450911431,
                "sbg:links": [
                    {
                        "id": "https://www.broadinstitute.org/gatk/index.php",
                        "label": "Homepage"
                    },
                    {
                        "id": "https://github.com/broadgsa/gatk-protected",
                        "label": "Source Code"
                    },
                    {
                        "id": "https://www.broadinstitute.org/gatk/guide/pdfdocs/GATK_GuideBook_2.3-9.pdf",
                        "label": "Wiki"
                    },
                    {
                        "id": "https://www.broadinstitute.org/gatk/download/auth?package=GATK-archive&version=2.3-9-ge5ebf34",
                        "label": "Download"
                    },
                    {
                        "id": "https://www.broadinstitute.org/gatk/about/#in-the-literature",
                        "label": "Publication"
                    },
                    {
                        "id": "https://www.broadinstitute.org/gatk/gatkdocs/org_broadinstitute_gatk_tools_walkers_variantutils_SelectVariants.php",
                        "label": "Documentation"
                    }
                ],
                "x": 2632.564883122106,
                "temporaryFailCodes": [],
                "successCodes": [],
                "sbg:project": "bix-demo/gatk-2-3-9-lite-demo",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1450911431,
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911432,
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911433,
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911434,
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911435,
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911436,
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911438,
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911439,
                        "sbg:revision": 7,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1463664196,
                        "sbg:revision": 8,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    }
                ],
                "sbg:job": {
                    "inputs": {
                        "validation_strictness": null,
                        "memory_overhead_per_job": 0,
                        "select_type_to_include": [
                            "INDEL",
                            "MIXED"
                        ],
                        "variants": [
                            {
                                "path": "bam.ext"
                            }
                        ],
                        "unsafe": null
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 2048
                    }
                },
                "arguments": [
                    {
                        "prefix": "--out",
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\n  read_name = [].concat($job.inputs.variants)[0].path.replace(/^.*[\\\\\\/]/, '').split('.')\n  read_namebase = read_name.slice(0, read_name.length-1).join('.')\n  return read_namebase + '.vcf'\n}",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "prefix": "--sample_expressions",
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{ \n  if($job.inputs.sample_expressions){\n\tsexpression = $job.inputs.sample_expressions\n\tfilter = []\n\tfor (i = 0; i < sexpression.length; i++) {\n      \t\tfilter.push('--sample_expressions \"', sexpression[i], '\"')\n    \t}\n\treturn filter.join(\"\").trim()\n  } \n}",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "prefix": "--sample_name",
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\n  if($job.inputs.sample_name){\n\tsname = $job.inputs.sample_name\n\tfilter = []\n\tfor (i = 0; i < sname.length; i++) {\n      \t\tfilter.push('--sample_name \"', sname[i], '\"')\n    \t}\n\treturn filter.join(\"\").trim()\n  } \n}",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "prefix": "--select_expressions",
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\n  if($job.inputs.select_expressions){\n\tsexpression = $job.inputs.select_expressions\n\tfilter = []\n\tfor (i = 0; i < sexpression.length; i++) {\n      \t\tfilter.push(' --select_expressions \"', sexpression[i], '\"')\n    \t}\n\treturn filter.join(\"\").trim()\n  } \n}",
                            "engine": "#cwl-js-engine"
                        }
                    }
                ],
                "sbg:toolAuthor": "Broad Institute",
                "sbg:license": "MIT Licence"
            }
        },
        {
            "inputs": [
                {
                    "id": "#BEDTools_Coverage.strand_same"
                },
                {
                    "id": "#BEDTools_Coverage.strand_diff"
                },
                {
                    "id": "#BEDTools_Coverage.split"
                },
                {
                    "id": "#BEDTools_Coverage.sorted"
                },
                {
                    "id": "#BEDTools_Coverage.req_min_frac"
                },
                {
                    "id": "#BEDTools_Coverage.req_frac_overlap"
                },
                {
                    "id": "#BEDTools_Coverage.report"
                },
                {
                    "id": "#BEDTools_Coverage.output_bed"
                },
                {
                    "id": "#BEDTools_Coverage.nonamecheck"
                },
                {
                    "id": "#BEDTools_Coverage.mem_mb"
                },
                {
                    "id": "#BEDTools_Coverage.input_file_b",
                    "source": [
                        "#Target_BED"
                    ]
                },
                {
                    "id": "#BEDTools_Coverage.input_file_a",
                    "source": [
                        "#GATK_PrintReads.recalibrated_bam"
                    ]
                },
                {
                    "id": "#BEDTools_Coverage.input_buf_size"
                },
                {
                    "id": "#BEDTools_Coverage.header"
                },
                {
                    "id": "#BEDTools_Coverage.genome_file"
                },
                {
                    "id": "#BEDTools_Coverage.fraction_b"
                },
                {
                    "id": "#BEDTools_Coverage.fraction_a"
                },
                {
                    "id": "#BEDTools_Coverage.disable_buf_out"
                }
            ],
            "sbg:y": 54.92309432253936,
            "id": "#BEDTools_Coverage",
            "outputs": [
                {
                    "id": "#BEDTools_Coverage.output_file"
                }
            ],
            "sbg:x": 2395.256686975822,
            "run": {
                "sbg:revisionNotes": "Removed default enum",
                "outputs": [
                    {
                        "sbg:fileTypes": "BAM, BED",
                        "id": "#output_file",
                        "type": [
                            "File"
                        ],
                        "label": "Output result file",
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "script": "{\n  //sufix = \"test\";\n  sufix_ext = \"bed\";\n  filepath = $job.inputs.input_file_a.path\n  filename = filepath.split(\"/\").pop()\n  basename = filename.substr(0,filename.lastIndexOf(\".\"))\n  \n  file_dot_sep = filename.split(\".\")\n  file_ext = file_dot_sep[file_dot_sep.length-1]\n  \n  basename1 = basename\n  filepath = $job.inputs.input_file_b.path\n  filename = filepath.split(\"/\").pop()\n  basename2 = filename.substr(0,filename.lastIndexOf(\".\"))\n\n  new_filename = basename1 + \".\" + basename2 + \".\" + sufix_ext;\n  \n  return new_filename;\n}",
                                "engine": "#cwl-js-engine"
                            },
                            "sbg:inheritMetadataFrom": "#input_file_b"
                        },
                        "description": "After each entry in A, reports: 1) The number of features in B that overlapped the A interval. 2) The number of bases in A that had non-zero coverage. 3) The length of the entry in A. 4) The fraction of bases in A that had non-zero coverage."
                    }
                ],
                "sbg:toolkitVersion": "2.25.0",
                "sbg:validationErrors": [],
                "sbg:contributors": [
                    "ognjenm",
                    "bix-demo"
                ],
                "sbg:sbgMaintained": false,
                "hints": [
                    {
                        "dockerPull": "images.sbgenomics.com/thedzo/bedtools:2.25.0",
                        "class": "DockerRequirement",
                        "dockerImageId": "ad2043b902a2"
                    },
                    {
                        "class": "sbg:CPURequirement",
                        "value": 1
                    },
                    {
                        "class": "sbg:MemRequirement",
                        "value": {
                            "class": "Expression",
                            "script": "{\n \n  if ($job.inputs.mem_mb){\n    \n    return $job.inputs.mem_mb\n    \n  } else {\n    \n   return 1000\n    \n  }\n  \n}",
                            "engine": "#cwl-js-engine"
                        }
                    }
                ],
                "sbg:modifiedBy": "ognjenm",
                "baseCommand": [
                    "bedtools",
                    "coverage"
                ],
                "sbg:latestRevision": 10,
                "sbg:cmdPreview": "bedtools coverage -a input_file_a.ext -b input_file_b.ext > input_file_a.input_file_b.bed",
                "id": "bix-demo/bedtools-2-25-0-demo/bedtools-coverage-2-25-0/10",
                "sbg:id": "admin/sbg-public-data/bedtools-coverage-2-25-0/10",
                "sbg:toolkit": "BEDTools",
                "sbg:createdBy": "bix-demo",
                "requirements": [
                    {
                        "id": "#cwl-js-engine",
                        "class": "ExpressionEngineRequirement",
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ]
                    }
                ],
                "label": "BEDTools Coverage",
                "sbg:image_url": null,
                "class": "CommandLineTool",
                "y": 54.92309432253936,
                "stdout": {
                    "class": "Expression",
                    "script": "{\n  //sufix = \"test\";\n  sufix_ext = \"bed\";\n  filepath = $job.inputs.input_file_a.path\n  filename = filepath.split(\"/\").pop()\n  basename = filename.substr(0,filename.lastIndexOf(\".\"))\n  \n  file_dot_sep = filename.split(\".\")\n  file_ext = file_dot_sep[file_dot_sep.length-1]\n  \n  basename1 = basename\n  filepath = $job.inputs.input_file_b.path\n  filename = filepath.split(\"/\").pop()\n  basename2 = filename.substr(0,filename.lastIndexOf(\".\"))\n\n  new_filename = basename1 + \".\" + basename2 + \".\" + sufix_ext;\n  \n  return new_filename;\n}",
                    "engine": "#cwl-js-engine"
                },
                "cwlVersion": "sbg:draft-2",
                "stdin": "",
                "sbg:revision": 10,
                "sbg:categories": [
                    "BED-Processing"
                ],
                "sbg:modifiedOn": 1471016399,
                "description": "BEDTools coverage returns the depth and breadth of coverage of features from B on the intervals in A.\n\nThe BEDTools coverage computes both the depth and breadth of coverage of features in file B on the features in file A. For example, BEDTools coverage can compute the coverage of sequence alignments (file B) across 1 kilobase (arbitrary) windows (file A) tiling a genome of interest. One advantage that BEDTools coverage offers is that it not only counts the number of features that overlap an interval in file A, but it also computes the fraction of bases in the interval in A that were overlapped by one or more features. Thus, BEDTools coverage also computes the breadth of coverage observed for each interval in A.",
                "inputs": [
                    {
                        "inputBinding": {
                            "prefix": "-s",
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Execution",
                        "label": "Require same strandedness",
                        "id": "#strand_same",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Require same strandedness. That is, only report hits in B that overlap A on the _same_ strand. By default, overlaps are reported without respect to strand."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-S",
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Execution",
                        "label": "Require different strandedness",
                        "id": "#strand_diff",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Require different strandedness. That is, only report hits in B that overlap A on the _opposite_ strand. By default, overlaps are reported without respect to strand."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-split",
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Execution",
                        "label": "Split",
                        "id": "#split",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "Treat \"split\" BAM or BED12 entries as distinct BED intervals."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-sorted",
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Execution",
                        "label": "Sorted",
                        "id": "#sorted",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Use the \"chromsweep\" algorithm for sorted (-k1,1 -k2,2n) input. WARNING : Set a reference file when using this option."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-e",
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Execution",
                        "label": "Require minimum fraction",
                        "id": "#req_min_frac",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Require that the minimum fraction be satisfied for A _OR_ B. In other words, if -e is used with -f 0.90 and -F 0.10 this requires that either 90% of A is covered OR 10% of B is covered. Without -e, both fractions would have to be satisfied."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-r",
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Execution",
                        "label": "Require fraction overlap",
                        "id": "#req_frac_overlap",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Require that the fraction of overlap be reciprocal for A and B. In other words, if -f is 0.90 and -r is used, this requires that B overlap at least 90% of A and that A also overlaps at least 90% of B."
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 2,
                            "separate": false,
                            "valueFrom": {
                                "class": "Expression",
                                "script": "{\n\nswitch($job.inputs.report) {\n    case 'counts':\n        return '-counts'\n    case 'depth':\n        return '-d'\n    case 'histogram':\n        return '-hist'\n    case 'mean':\n        return '-mean'\n    default:\n        return ''\n\t}\n    \n}",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "sbg:category": "Execution",
                        "label": "Reported value",
                        "id": "#report",
                        "sbg:toolDefaultValue": "None",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "depth",
                                    "counts",
                                    "mean",
                                    "histogram"
                                ],
                                "name": "report",
                                "type": "enum"
                            }
                        ],
                        "description": "Mutually exclusive options for reporting values."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-bed",
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Execution",
                        "label": "Output as bed",
                        "id": "#output_bed",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "If using BAM input, write output as BED."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-nonamecheck",
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Execution",
                        "label": "No name check",
                        "id": "#nonamecheck",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "For sorted data, don't throw an error if the file has different naming conventions \t\t\tfor the same chromosome. ex. \"chr1\" vs \"chr01\"."
                    },
                    {
                        "sbg:category": "Execution",
                        "label": "Memory in MB",
                        "id": "#mem_mb",
                        "sbg:toolDefaultValue": "1000",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Memory in MB.",
                        "sbg:stageInput": null
                    },
                    {
                        "required": true,
                        "inputBinding": {
                            "prefix": "-b",
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 100
                        },
                        "sbg:category": "File input",
                        "sbg:fileTypes": "BAM, BED, GFF, VCF",
                        "id": "#input_file_b",
                        "type": [
                            "File"
                        ],
                        "label": "Input file B",
                        "description": "One or more BAM/BED/GFF/VCF file(s) \u201cB\u201d. Use \u201cstdin\u201d if passing B with a UNIX pipe. NEW!!!: -b may be followed with multiple databases and/or wildcard (*) character(s)."
                    },
                    {
                        "required": true,
                        "inputBinding": {
                            "prefix": "-a",
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 99
                        },
                        "sbg:category": "File input",
                        "sbg:fileTypes": "BAM, BED, GFF, VCF",
                        "id": "#input_file_a",
                        "type": [
                            "File"
                        ],
                        "label": "Input file A",
                        "description": "BAM/BED/GFF/VCF file \u201cA\u201d. Each feature in A is compared to B in search of overlaps. Use \u201cstdin\u201d if passing A with a UNIX pipe."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-iobuf",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Execution",
                        "label": "Input buffer size",
                        "id": "#input_buf_size",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Specify amount of memory to use for input buffer. Takes an integer argument. Optional suffixes K/M/G supported. Note: currently has no effect with compressed files."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-header",
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Execution",
                        "label": "Header",
                        "id": "#header",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Print the header from the A file prior to results."
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "prefix": "-g",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Execution",
                        "sbg:fileTypes": "TXT",
                        "id": "#genome_file",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Genome file",
                        "description": "Provide a genome file to enforce consistent chromosome sort order \t\tacross input files. Only applies when used with -sorted option."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-F",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Execution",
                        "label": "Fraction of B",
                        "id": "#fraction_b",
                        "type": [
                            "null",
                            "float"
                        ],
                        "description": "Minimum overlap required as a fraction of B. Default is 1E-9 (i.e., 1bp)."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-f",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Execution",
                        "label": "Fraction of A",
                        "id": "#fraction_a",
                        "type": [
                            "null",
                            "float"
                        ],
                        "description": "Minimum overlap required as a fraction of A. Default is 1E-9 (i.e. 1bp)."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-nobuf",
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Execution",
                        "label": "Disable buffered output",
                        "id": "#disable_buf_out",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Disable buffered output. Using this option will cause each line of output to be printed as it is generated, rather than saved in a buffer. This will make printing large output files noticeably slower, but can be useful in conjunction with other software tools and scripts that need to process one line of bedtools output at a time."
                    }
                ],
                "sbg:createdOn": 1450911572,
                "sbg:links": [
                    {
                        "id": "http://bedtools.readthedocs.org/",
                        "label": "Homepage"
                    },
                    {
                        "id": "https://github.com/arq5x/bedtools2",
                        "label": "Source code"
                    },
                    {
                        "id": "http://bioinformatics.oxfordjournals.org/content/26/6/841",
                        "label": "Publication"
                    },
                    {
                        "id": "https://media.readthedocs.org/pdf/bedtools/latest/bedtools.pdf",
                        "label": "Documentation"
                    },
                    {
                        "id": "https://github.com/arq5x/bedtools2/releases/download/v2.25.0/bedtools-2.25.0.tar.gz",
                        "label": "Download"
                    },
                    {
                        "id": "http://seqanswers.com/wiki/BEDTools",
                        "label": "Wiki"
                    }
                ],
                "x": 2395.256686975822,
                "temporaryFailCodes": [],
                "successCodes": [],
                "sbg:project": "bix-demo/bedtools-2-25-0-demo",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1450911572,
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911573,
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1457444879,
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1457445879,
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1470068157,
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "ognjenm",
                        "sbg:revisionNotes": "Changed modes from boolean to enum"
                    },
                    {
                        "sbg:modifiedOn": 1470132038,
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "ognjenm",
                        "sbg:revisionNotes": "Added input categories"
                    },
                    {
                        "sbg:modifiedOn": 1470136135,
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "ognjenm",
                        "sbg:revisionNotes": "Changed Links"
                    },
                    {
                        "sbg:modifiedOn": 1470147405,
                        "sbg:revision": 7,
                        "sbg:modifiedBy": "ognjenm",
                        "sbg:revisionNotes": "Added exposed memory"
                    },
                    {
                        "sbg:modifiedOn": 1470930139,
                        "sbg:revision": 8,
                        "sbg:modifiedBy": "ognjenm",
                        "sbg:revisionNotes": "Changed inheritance and added warning to -sorted"
                    },
                    {
                        "sbg:modifiedOn": 1471015090,
                        "sbg:revision": 9,
                        "sbg:modifiedBy": "ognjenm",
                        "sbg:revisionNotes": "Changed report enuim"
                    },
                    {
                        "sbg:modifiedOn": 1471016399,
                        "sbg:revision": 10,
                        "sbg:modifiedBy": "ognjenm",
                        "sbg:revisionNotes": "Removed default enum"
                    }
                ],
                "sbg:job": {
                    "inputs": {
                        "sorted": true,
                        "output_bed": true,
                        "header": true,
                        "input_file_b": {
                            "class": "File",
                            "path": "input_file_b.ext",
                            "size": 0,
                            "secondaryFiles": []
                        },
                        "input_buf_size": 0,
                        "strand_diff": true,
                        "req_min_frac": true,
                        "report": "depth",
                        "mem_mb": 8,
                        "split": "split",
                        "input_file_a": {
                            "class": "File",
                            "path": "input_file_a.ext",
                            "size": 0,
                            "secondaryFiles": []
                        },
                        "disable_buf_out": true,
                        "fraction_a": 0,
                        "req_frac_overlap": true,
                        "fraction_b": 0,
                        "genome_file": {
                            "class": "File",
                            "path": "genome_file.ext",
                            "size": 0,
                            "secondaryFiles": []
                        },
                        "strand_same": true,
                        "nonamecheck": true
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 8
                    }
                },
                "arguments": [],
                "sbg:toolAuthor": "Aaron R. Quinlan & Neil Kindlon",
                "sbg:license": "GNU General Public License v2.0 only"
            }
        },
        {
            "inputs": [
                {
                    "id": "#SBG_Pair_FASTQs_by_Metadata.fastq_list",
                    "source": [
                        "#SBG_FASTQ_Quality_Adjuster.result"
                    ]
                }
            ],
            "sbg:y": 397.7604579830345,
            "id": "#SBG_Pair_FASTQs_by_Metadata",
            "outputs": [
                {
                    "id": "#SBG_Pair_FASTQs_by_Metadata.tuple_list"
                }
            ],
            "sbg:x": 375.00000084770994,
            "run": {
                "sbg:revisionNotes": "Added support for single file.",
                "outputs": [
                    {
                        "id": "#tuple_list",
                        "type": [
                            "null",
                            {
                                "items": "File",
                                "type": "array"
                            }
                        ]
                    }
                ],
                "sbg:validationErrors": [],
                "sbg:contributors": [
                    "vladimirk",
                    "bix-demo",
                    "markop"
                ],
                "sbg:sbgMaintained": false,
                "hints": [
                    {
                        "dockerPull": "images.sbgenomics.com/djordje_klisic/sbg-pair-fastqs-by-metadata:1.0",
                        "class": "DockerRequirement",
                        "dockerImageId": "d41a0837ab81"
                    },
                    {
                        "class": "sbg:CPURequirement",
                        "value": 1
                    },
                    {
                        "class": "sbg:MemRequirement",
                        "value": 1024
                    }
                ],
                "sbg:modifiedBy": "vladimirk",
                "baseCommand": [
                    "python",
                    "pair_fastqs_by_metadata.py"
                ],
                "sbg:latestRevision": 5,
                "sbg:cmdPreview": "python pair_fastqs_by_metadata.py --fastq_list /asda/dsa/sda/sda/fasta1.fastq,/asda/dsa/sda/sda/fasta2.fastq,/asda/dsa/sda/sda/fasta3.fastq,/asda/dsa/sda/sda/fasta4.fastq --in_metafile job.json --out_metafile cwl.output.json",
                "id": "bix-demo/sbgtools-demo/sbg-pair-fastqs-by-metadata/5",
                "sbg:id": "admin/sbg-public-data/sbg-pair-fastqs-by-metadata/7",
                "sbg:toolkit": "SBGTools",
                "sbg:createdBy": "bix-demo",
                "requirements": [
                    {
                        "class": "CreateFileRequirement",
                        "fileDef": [
                            {
                                "fileContent": "import functools\nimport json\nimport itertools\nimport docopt\nimport types\nUSAGE = \"\"\"\n    Usage:\n    \tsbg_pair_fastqs_by_metadata.py --fastq_list FILE... --in_metafile FILE --out_metafile FILE [options]\n\n    Description:\n        Tool accepts list of FATSQ files for one sample as the input and groups them into pairs\n        (two files for each paired end). This grouping is done using metadata values that are creating\n        unique combination for each pair or of FASTQ files. Metadata that fields that are uniquely defining\n        one FASTQ pair are Sample ID, Library ID, Platform Unit ID and File Segment Number. Listed order of metadata fields is also\n        representing their hierarchy in the metadata structure. Not all of these four metadata fields are required,\n        but the present set has to be sufficient to create unique combinations for each pair of FASTQ files.\n\n    Options:\n\n        --help                                Show help dialog.\n\n        --version                             Tool version.\n\n        --fatsq_list FILE...                  List of the FASTQ files with properly set metadata fileds.\n\n        --in_metafile FILE                    File from which necessary metadata information will be extracted.\n                                              Expected value for the SBG platfrom is job.json. [Default: job.json]\n\n        --out_metafile FILE                   File into which necessary file structure is going to be written.\n                                              Expected value for the SBG platform is cwl.output.json.\n                                              [Default: cwl.output.json]\n\n\n\"\"\"\n\ndef make_rg_id(metadata_key, input1):\n\n    input_meta = input1.values()[0]\n\n    S = '__!__'\n    rg = list()\n    for key in ['sample_group', 'sample_id', 'library_id', 'platform_unit_id']:\n        if key in input_meta:\n            rg.append(input_meta[key])\n        else:\n            rg.append('')\n    if 'file_segment_number' in input_meta and input_meta['file_segment_number'] is not None:\n        rg.append(str(input_meta['file_segment_number']))\n    else:\n        rg.append('')\n\n    rg_map = {\n        'sample_id': rg[:2],\n        'library_id': rg[:3],\n        'platform_unit_id': rg[:4],\n        'file_segment_number': rg[:5],\n    }\n\n    return S.join(rg_map[metadata_key]) if metadata_key in rg_map else getattr(input_meta, metadata_key)\n\n\ndef group_inputs(inp):\n\n    metadata_key = 'file_segment_number'\n    if str(metadata_key) == 'None':\n        return {'': [f for f in inp]}\n    if metadata_key == 'file':\n        return {f: [f] for f in inp}\n    key_getter = functools.partial(make_rg_id, metadata_key)\n    print inp\n    files = sorted([x for x in inp], key=key_getter)\n    tuple_list_temp = [[f for f in val] for key, val in itertools.groupby(files, key_getter)]\n    tuple_list=list()\n    for elem in tuple_list_temp:\n        for key in elem[0].keys():\n            if len(files) != 1:\n                if elem[0][key]['paired_end'] == \"2\":\n                    tuple_list.append([str(elem[1].keys()[0]), str(elem[0].keys()[0])])\n                else:\n                    tuple_list.append([str(elem[0].keys()[0]), str(elem[1].keys()[0])])\n            else:\n                    tuple_list.append([str(elem[0].keys()[0])])\n\n    print tuple_list\n    return tuple_list\n\ndef main():\n\n    args = docopt.docopt(USAGE, version = 1.0)\n\n    job_json = args[\"--in_metafile\"]\n    job_json_file = open(job_json)\n    job_json_str = job_json_file.read()\n    job_json_dict = json.loads(job_json_str)\n    fastq_list = job_json_dict['inputs'][\"fastq_list\"]\n    if isinstance(fastq_list, list):\n        fastq_list = job_json_dict['inputs'][\"fastq_list\"]\n    else:\n        fastq_list = list()\n        fastq_list.append(job_json_dict['inputs'][\"fastq_list\"])\n    file_list = [{elem['path'] : elem['metadata']} for elem in fastq_list]\n    tuple_list = group_inputs(file_list)\n\n    for elem in tuple_list:\n        for i in range(0,len(elem)):\n            elem[i] = {\"class\": \"File\", \"path\": elem[i]}\n\n\n    tuple_list_dict = {\"tuple_list\": tuple_list}\n    with open(args[\"--out_metafile\"], 'w') as p:\n        json.dump(tuple_list_dict, p)\n\nif __name__ == '__main__':\n    main()",
                                "filename": "pair_fastqs_by_metadata.py"
                            }
                        ]
                    }
                ],
                "label": "SBG Pair FASTQs by Metadata",
                "sbg:image_url": null,
                "class": "CommandLineTool",
                "y": 397.7604579830345,
                "stdout": "",
                "cwlVersion": "sbg:draft-2",
                "stdin": "",
                "sbg:revision": 5,
                "sbg:categories": [
                    "Converters",
                    "Other"
                ],
                "sbg:modifiedOn": 1472059795,
                "description": "Tool accepts list of FASTQ files for one sample as the input and groups them into pairs  (two files for each paired end). This grouping is done using metadata values that are creating unique combination for each pair or of FASTQ files. Metadata that fields that are uniquely defining one FASTQ pair are Sample ID, Library ID, Platform unit ID and File segment number. Listed order of metadata fields is also representing their hierarchy in the metadata structure. Not all of these four metadata fields are required, but the present set has to be sufficient to create unique combinations for each pair of FASTQ files.",
                "inputs": [
                    {
                        "required": true,
                        "inputBinding": {
                            "prefix": "--fastq_list",
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "itemSeparator": ",",
                            "position": 0
                        },
                        "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
                        "id": "#fastq_list",
                        "type": [
                            {
                                "items": "File",
                                "type": "array",
                                "name": "fastq_list"
                            }
                        ],
                        "label": "List of FASTQ files",
                        "description": "List of the FASTQ files with properly set metadata fileds.",
                        "sbg:stageInput": "link"
                    }
                ],
                "sbg:createdOn": 1450911289,
                "sbg:links": [
                    {
                        "id": "https://cgc.sbgenomics.com/u/stefanristeski/group-fastqs/apps/#sbg-pair-fastqs-by-metadata/9",
                        "label": "Homepage"
                    }
                ],
                "x": 375.00000084770994,
                "temporaryFailCodes": [],
                "successCodes": [],
                "sbg:project": "bix-demo/sbgtools-demo",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1450911289,
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911290,
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911290,
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1463403276,
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1469015151,
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "markop",
                        "sbg:revisionNotes": "Link fastq_list"
                    },
                    {
                        "sbg:modifiedOn": 1472059795,
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "Added support for single file."
                    }
                ],
                "sbg:job": {
                    "inputs": {
                        "fastq_list": [
                            {
                                "class": "File",
                                "path": "/asda/dsa/sda/sda/fasta1.fastq",
                                "size": 0,
                                "secondaryFiles": []
                            },
                            {
                                "path": "/asda/dsa/sda/sda/fasta2.fastq"
                            },
                            {
                                "path": "/asda/dsa/sda/sda/fasta3.fastq"
                            },
                            {
                                "path": "/asda/dsa/sda/sda/fasta4.fastq"
                            }
                        ]
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1024
                    }
                },
                "arguments": [
                    {
                        "prefix": "--in_metafile",
                        "position": 1,
                        "separate": true,
                        "valueFrom": "job.json"
                    },
                    {
                        "prefix": "--out_metafile",
                        "position": 2,
                        "separate": true,
                        "valueFrom": "cwl.output.json"
                    }
                ],
                "sbg:toolAuthor": "Djordje Klisic, Seven Bridges Genomics, <djordje.klisic@sbgenomics.com>",
                "sbg:license": "Apache License 2.0"
            }
        },
        {
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
                    "id": "#Picard_CollectAlignmentSummaryMetrics.reference",
                    "source": [
                        "#SBG_FASTA_Indices.fasta_reference"
                    ]
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
                    "id": "#Picard_CollectAlignmentSummaryMetrics.input_bam",
                    "source": [
                        "#GATK_PrintReads.recalibrated_bam"
                    ]
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
            "sbg:y": 615.0000842809706,
            "id": "#Picard_CollectAlignmentSummaryMetrics",
            "outputs": [
                {
                    "id": "#Picard_CollectAlignmentSummaryMetrics.summary_metrics"
                }
            ],
            "sbg:x": 2277.051522906017,
            "run": {
                "sbg:revisionNotes": "[].concat(input_bam)[0].path",
                "outputs": [
                    {
                        "sbg:fileTypes": "TXT",
                        "id": "#summary_metrics",
                        "type": [
                            "File"
                        ],
                        "label": "Summary metrics",
                        "outputBinding": {
                            "glob": "*.summary_metrics.txt",
                            "sbg:metadata": {},
                            "sbg:inheritMetadataFrom": "#input_bam",
                            "secondaryFiles": []
                        },
                        "description": "File to which the output will be written."
                    }
                ],
                "sbg:toolkitVersion": "1.140",
                "sbg:validationErrors": [],
                "sbg:contributors": [
                    "bix-demo"
                ],
                "sbg:sbgMaintained": false,
                "hints": [
                    {
                        "dockerPull": "images.sbgenomics.com/mladenlsbg/picard:1.140",
                        "class": "DockerRequirement",
                        "dockerImageId": "eab0e70b6629"
                    },
                    {
                        "class": "sbg:CPURequirement",
                        "value": 1
                    },
                    {
                        "class": "sbg:MemRequirement",
                        "value": {
                            "class": "Expression",
                            "script": "{\n  if($job.inputs.memory_per_job){\n  \treturn $job.inputs.memory_per_job\n  }\n  \treturn 2048\n}",
                            "engine": "#cwl-js-engine"
                        }
                    }
                ],
                "sbg:modifiedBy": "bix-demo",
                "baseCommand": [
                    "java",
                    {
                        "class": "Expression",
                        "script": "{   \n  if($job.inputs.memory_per_job){\n    return '-Xmx'.concat($job.inputs.memory_per_job, 'M')\n  }   \n  \treturn '-Xmx2048M'\n}",
                        "engine": "#cwl-js-engine"
                    },
                    "-jar",
                    "/opt/picard-tools-1.140/picard.jar",
                    "CollectAlignmentSummaryMetrics"
                ],
                "sbg:latestRevision": 3,
                "sbg:cmdPreview": "java -Xmx2048M -jar /opt/picard-tools-1.140/picard.jar CollectAlignmentSummaryMetrics INPUT=/root/folder/example.bam OUTPUT=example.summary_metrics.txt",
                "id": "bix-demo/picard-1-140-demo/picard-collectalignmentsummarymetrics-1-140/3",
                "sbg:id": "admin/sbg-public-data/picard-collectalignmentsummarymetrics-1-140/3",
                "sbg:toolkit": "Picard",
                "sbg:createdBy": "bix-demo",
                "requirements": [
                    {
                        "id": "#cwl-js-engine",
                        "class": "ExpressionEngineRequirement",
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ]
                    }
                ],
                "label": "Picard CollectAlignmentSummaryMetrics",
                "sbg:image_url": null,
                "class": "CommandLineTool",
                "y": 615.0000842809706,
                "stdout": "",
                "cwlVersion": "sbg:draft-2",
                "stdin": "",
                "sbg:revision": 3,
                "sbg:categories": [
                    "SAM/BAM-Processing",
                    "Quality-Control",
                    "Quantification"
                ],
                "sbg:modifiedOn": 1472811193,
                "description": "Picard CollectAlignmentSummaryMetrics assesses the quality of alignment by analyzing a SAM or BAM file. It compares it with the reference file (FASTA) and provides alignment statistics, such as the number of input reads and the percent of reads that are mapped. It produces a file which contains summary alignment metrics from a SAM or BAM file.\n\nNote: This tool requires the exact same FASTA file as the one to which raw reads were aligned.",
                "inputs": [
                    {
                        "inputBinding": {
                            "prefix": "VERBOSITY=",
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 6
                        },
                        "sbg:category": "",
                        "label": "Verbosity",
                        "id": "#verbosity",
                        "sbg:toolDefaultValue": "INFO",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "ERROR",
                                    "WARNING",
                                    "INFO",
                                    "DEBUG"
                                ],
                                "name": "verbosity",
                                "type": "enum"
                            }
                        ],
                        "description": "Control verbosity of logging. Default value: INFO. This option can be set to 'null' to clear the default value. Possible values: {ERROR, WARNING, INFO, DEBUG}."
                    },
                    {
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "prefix": "VALIDATION_STRINGENCY=",
                            "position": 4,
                            "separate": false,
                            "valueFrom": {
                                "class": "Expression",
                                "script": "{\n  if ($job.inputs.validation_stringency)\n  {\n    return $job.inputs.validation_stringency\n  }\n  else\n  {\n    return \"SILENT\"\n  }\n}",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "label": "Validation stringency",
                        "id": "#validation_stringency",
                        "sbg:toolDefaultValue": "SILENT",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "STRICT",
                                    "LENIENT",
                                    "SILENT"
                                ],
                                "name": "validation_stringency",
                                "type": "enum"
                            }
                        ],
                        "description": "Validation stringency for all SAM files read by this program. Setting stringency to SILENT can improve performance when processing a BAM file in which variable-length data (read, qualities, tags) do not otherwise need to be decoded. Default value: STRICT. This option can be set to 'null' to clear the default value. Possible values: {STRICT, LENIENT, SILENT}."
                    },
                    {
                        "inputBinding": {
                            "prefix": "STOP_AFTER=",
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 9
                        },
                        "sbg:category": "",
                        "label": "Stop after",
                        "id": "#stop_after",
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Stop after processing N reads, mainly for debugging. Default value: 0. This option can be set to 'null' to clear the default value."
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "prefix": "REFERENCE_SEQUENCE=",
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 3
                        },
                        "sbg:altPrefix": "R",
                        "sbg:category": "File inputs",
                        "sbg:fileTypes": "FASTA",
                        "id": "#reference",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Reference sequence",
                        "description": "Reference sequence file. Note that while this argument is not required, without it only a small subset of the metrics will be calculated.  Default value: null."
                    },
                    {
                        "inputBinding": {
                            "prefix": "QUIET=",
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 4
                        },
                        "sbg:category": "",
                        "label": "Quiet",
                        "id": "#quiet",
                        "sbg:toolDefaultValue": "false",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "true",
                                    "false"
                                ],
                                "name": "quiet",
                                "type": "enum"
                            }
                        ],
                        "description": "This parameter indicates whether to suppress job-summary info on System.err. Default value: false. This option can be set to 'null' to clear the default value. Possible values: {true, false}."
                    },
                    {
                        "inputBinding": {
                            "prefix": "METRIC_ACCUMULATION_LEVEL=",
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "itemSeparator": null,
                            "position": 8
                        },
                        "sbg:altPrefix": "LEVEL",
                        "sbg:category": "",
                        "label": "Metric accumulation level",
                        "id": "#metric_accumulation_level",
                        "sbg:toolDefaultValue": "ALL_READS",
                        "type": [
                            "null",
                            {
                                "items": {
                                    "symbols": [
                                        "ALL_READS",
                                        "SAMPLE",
                                        "LIBRARY",
                                        "READ_GROUP"
                                    ],
                                    "name": "metric_accumulation_level",
                                    "type": "enum"
                                },
                                "type": "array"
                            }
                        ],
                        "description": "This parameter indicates the level(s) at which to accumulate metrics. Default value: [ALL_READS]. This option can be set to 'null' to clear the default value. Possible values: {ALL_READS, SAMPLE, LIBRARY, READ_GROUP}. This option may be specified 0 or more times. This option can be set to 'null' to clear the default list."
                    },
                    {
                        "id": "#memory_per_job",
                        "sbg:toolDefaultValue": "2048",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Amount of RAM memory to be used per job. Defaults to 2048 MB for single threaded jobs.",
                        "label": "Memory per job"
                    },
                    {
                        "inputBinding": {
                            "prefix": "MAX_RECORDS_IN_RAM=",
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 4
                        },
                        "sbg:category": "",
                        "label": "Max records in RAM",
                        "id": "#max_records_in_ram",
                        "sbg:toolDefaultValue": "500000",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "When writing SAM files that need to be sorted, this parameter will specify the number of records stored in RAM before spilling to disk. Increasing this number reduces the number of file handles needed to sort a SAM file, and increases the amount of RAM needed. Default value: 500000. This option can be set to 'null' to clear the default value."
                    },
                    {
                        "inputBinding": {
                            "prefix": "MAX_INSERT_SIZE=",
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 9
                        },
                        "sbg:category": "",
                        "label": "Max insert size",
                        "id": "#max_insert_size",
                        "sbg:toolDefaultValue": "100000",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Paired end reads above this insert size will be considered chimeric along with inter-chromosomal pairs. Default value: 100000. This option can be set to 'null' to clear the default value."
                    },
                    {
                        "inputBinding": {
                            "prefix": "BS=",
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 8
                        },
                        "sbg:altPrefix": "BS",
                        "sbg:category": "",
                        "label": "Is bisulfite sequenced",
                        "id": "#is_bisulfite_sequenced",
                        "sbg:toolDefaultValue": "false",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "true",
                                    "false"
                                ],
                                "name": "is_bisulfite_sequenced",
                                "type": "enum"
                            }
                        ],
                        "description": "This parameter indicates whether the SAM or BAM file consists of bisulfite sequenced reads. Default value: false. This option can be set to 'null' to clear the default value. Possible values: {true, false}."
                    },
                    {
                        "required": true,
                        "inputBinding": {
                            "prefix": "INPUT=",
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 0
                        },
                        "sbg:altPrefix": "I",
                        "sbg:category": "File inputs",
                        "sbg:fileTypes": "BAM, SAM",
                        "id": "#input_bam",
                        "type": [
                            "File"
                        ],
                        "label": "Input file",
                        "description": "Input SAM or BAM file.  Required."
                    },
                    {
                        "inputBinding": {
                            "prefix": "COMPRESSION_LEVEL=",
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "position": 4
                        },
                        "sbg:category": "",
                        "label": "Compression level",
                        "id": "#compression_level",
                        "sbg:toolDefaultValue": "5",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Compression level for all compressed files created (e.g. BAM and GELI). Default value: 5. This option can be set to 'null' to clear the default value."
                    },
                    {
                        "inputBinding": {
                            "prefix": "ASSUME_SORTED=",
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "AS",
                        "sbg:category": "",
                        "label": "Assume sorted",
                        "id": "#assume_sorted",
                        "sbg:toolDefaultValue": "true",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "true",
                                    "false"
                                ],
                                "name": "assume_sorted",
                                "type": "enum"
                            }
                        ],
                        "description": "If this parameter is set to true, the sort order in the header file will be ignored. Default value: true. This option can be set to 'null' to clear the default value. Possible values: {true, false}."
                    },
                    {
                        "inputBinding": {
                            "prefix": "ADAPTER_SEQUENCE=",
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "itemSeparator": null,
                            "position": 8
                        },
                        "sbg:category": "",
                        "label": "Adapter sequence",
                        "id": "#adapter_sequence",
                        "sbg:toolDefaultValue": "AATGATACGGCGACCACCGAGATCTACACTCTTTCCCTACACGACGCTCTTCCGATCT",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "description": "List of adapter sequences to use when processing the alignment metrics. Default value: [AATGATACGGCGACCACCGAGATCTACACTCTTTCCCTACACGACGCTCTTCCGATCT, AGATCGGAAGAGCTCGTATGCCGTCTTCTGCTTG, AATGATACGGCGACCACCGAGATCTACACTCTTTCCCTACACGACGCTCTTCCGATCT, AGATCGGAAGAGCGGTTCAGCAGGAATGCCGAGACCGATCTCGTATGCCGTCTTCTGCTTG, AATGATACGGCGACCACCGAGATCTACACTCTTTCCCTACACGACGCTCTTCCGATCT, AGATCGGAAGAGCACACGTCTGAACTCCAGTCACNNNNNNNNATCTCGTATGCCGTCTTCTGCTTG]. This option can be set to 'null' to clear the default value. This option may be specified 0 or more times. This option can be set to 'null' to clear the default list."
                    }
                ],
                "sbg:createdOn": 1450911255,
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
                "x": 2277.051522906017,
                "temporaryFailCodes": [],
                "successCodes": [],
                "sbg:project": "bix-demo/picard-1-140-demo",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1450911255,
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911256,
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911257,
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1472811193,
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": "[].concat(input_bam)[0].path"
                    }
                ],
                "sbg:job": {
                    "inputs": {
                        "metric_accumulation_level": [
                            "ALL_READS"
                        ],
                        "input_bam": {
                            "path": "/root/folder/example.bam"
                        },
                        "memory_per_job": 0,
                        "reference": {
                            "path": "/root/directory/example.fasta"
                        }
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 2048
                    }
                },
                "arguments": [
                    {
                        "prefix": "OUTPUT=",
                        "position": 3,
                        "separate": false,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\n  if ($job.inputs.input_bam)\n  {\n    filename = [].concat($job.inputs.input_bam)[0].path\n    filebase = filename.split('.').slice(0, -1)\n\n    return filebase.concat(\"summary_metrics.txt\").join(\".\").replace(/^.*[\\\\\\/]/, '')\n  }\n}\n",
                            "engine": "#cwl-js-engine"
                        }
                    }
                ],
                "sbg:toolAuthor": "Broad Institute",
                "sbg:license": "MIT License, Apache 2.0 Licence"
            }
        },
        {
            "inputs": [
                {
                    "id": "#GATK_UnifiedGenotyper.validation_strictness"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.use_original_qualities"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.use_legacy_downsampler"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.unsafe"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.threads_per_job",
                    "default": 4
                },
                {
                    "id": "#GATK_UnifiedGenotyper.tag"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.stand_emit_conf"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.stand_call_conf"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.remove_program_records"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.reference_sample_calls"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.reference",
                    "source": [
                        "#SBG_FASTA_Indices.fasta_reference"
                    ]
                },
                {
                    "id": "#GATK_UnifiedGenotyper.reads",
                    "source": [
                        "#GATK_PrintReads.recalibrated_bam"
                    ]
                },
                {
                    "id": "#GATK_UnifiedGenotyper.read_group_black_list"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.read_filter"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.preserve_qscores_less_than"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.phone_home"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.pedigree_validation_type"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.pedigree_string"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.pcr_error_rate"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.pair_hmm_implementation"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.p_nonref_model"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.output_mode"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.non_deterministic_random_seed"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.min_indel_frac"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.min_indel_cnt"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.min_base_quality_score"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.memory_per_job",
                    "default": 2048
                },
                {
                    "id": "#GATK_UnifiedGenotyper.memory_overhead_per_job"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.max_runtime_units"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.max_runtime"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.max_deletion_fraction"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.max_alternate_alleles"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.keep_program_records"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.intervals_file",
                    "source": [
                        "#Target_BED"
                    ]
                },
                {
                    "id": "#GATK_UnifiedGenotyper.intervals"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.interval_set_rule"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.interval_padding"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.interval_merging"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.indel_heterozygosity"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.indel_gap_open_penalty"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.indel_gap_continuation_penalty"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.ignore_lane_info"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.heterozygosity"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.group"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.genotyping_mode"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.genotype_likelihoods_model",
                    "default": "BOTH"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.gatk_key"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.fix_misencoded_quals"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.exclude_intervals"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.exclude_annotation"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.emit_original_quals"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.downsampling_type"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.downsample_to_fraction"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.downsample_to_coverage"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.disable_radnomization"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.disable_indel_quals"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.default_base_qualities"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.dbsnp",
                    "source": [
                        "#Known_SNPs"
                    ]
                },
                {
                    "id": "#GATK_UnifiedGenotyper.cpu_per_job",
                    "default": 1
                },
                {
                    "id": "#GATK_UnifiedGenotyper.contamination"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.compute_slod"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.comp"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.bqsr"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.baq_gap_open_penalty"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.baq"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.annotation"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.annotate_nda"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.allow_potentailly_misencoded_quals"
                },
                {
                    "id": "#GATK_UnifiedGenotyper.alleles"
                }
            ],
            "sbg:y": 401.66669445567726,
            "id": "#GATK_UnifiedGenotyper",
            "outputs": [
                {
                    "id": "#GATK_UnifiedGenotyper.raw_vcf"
                }
            ],
            "sbg:x": 2347.6925569518075,
            "run": {
                "sbg:revisionNotes": "Fix for single run without dbsnp",
                "outputs": [
                    {
                        "sbg:fileTypes": "VCF",
                        "id": "#raw_vcf",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "VCF",
                        "outputBinding": {
                            "glob": "*.vcf",
                            "sbg:metadata": {},
                            "sbg:inheritMetadataFrom": "#reads",
                            "secondaryFiles": [
                                ".idx"
                            ]
                        },
                        "description": "A raw, unfiltered, highly specific callset in VCF format."
                    }
                ],
                "sbg:toolkitVersion": "2.3.9 Lite",
                "sbg:validationErrors": [],
                "sbg:contributors": [
                    "bogdang",
                    "vladimirk",
                    "bix-demo"
                ],
                "sbg:sbgMaintained": false,
                "hints": [
                    {
                        "dockerPull": "images.sbgenomics.com/stefanristeski/gatk2-lite:2.3-9",
                        "class": "DockerRequirement",
                        "dockerImageId": "47510cb2da55"
                    },
                    {
                        "class": "sbg:CPURequirement",
                        "value": {
                            "class": "Expression",
                            "script": "{\n  if($job.inputs.cpu_per_job){\n  \treturn $job.inputs.cpu_per_job\n  }\n\treturn 1\n}",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "class": "sbg:MemRequirement",
                        "value": {
                            "class": "Expression",
                            "script": "{\n  if($job.inputs.memory_per_job){\n    if($job.inputs.memory_overhead_per_job){\n    \treturn $job.inputs.memory_per_job + $job.inputs.memory_overhead_per_job\n    }\n    else\n  \t\treturn $job.inputs.memory_per_job\n  }\n  else if(!$job.inputs.memory_per_job && $job.inputs.memory_overhead_per_job){\n\t\treturn 2048 + $job.inputs.memory_overhead_per_job  \n  }\n  else\n  \treturn 2048\n}",
                            "engine": "#cwl-js-engine"
                        }
                    }
                ],
                "sbg:modifiedBy": "bogdang",
                "baseCommand": [
                    "java",
                    {
                        "class": "Expression",
                        "script": "{\n  if($job.inputs.memory_per_job){\n  \treturn '-Xmx'.concat($job.inputs.memory_per_job, 'M')\n  }\n  return '-Xmx2048M'\n}",
                        "engine": "#cwl-js-engine"
                    },
                    "-jar",
                    "/opt/GenomeAnalysisTKLite.jar",
                    "--analysis_type",
                    "UnifiedGenotyper",
                    {
                        "class": "Expression",
                        "script": "{ \n  if($job.inputs.threads_per_job){\n    return '-nt '.concat($job.inputs.threads_per_job)\n  }\n  else{\n  \treturn '-nt '.concat(4)\n  }\n}",
                        "engine": "#cwl-js-engine"
                    }
                ],
                "sbg:latestRevision": 15,
                "sbg:cmdPreview": "java -Xmx2048M -jar /opt/GenomeAnalysisTKLite.jar --analysis_type UnifiedGenotyper -nt 4 --reference_sequence /folder/reference.fasta --input_file sample1.bam --input_file sample2.bam --out sample1.vcf",
                "id": "bix-demo/gatk-2-3-9-lite-demo/gatk-2-3-9-lite-unifiedgenotyper/15",
                "sbg:id": "admin/sbg-public-data/gatk-2-3-9-lite-unifiedgenotyper/34",
                "sbg:toolkit": "GATK",
                "sbg:createdBy": "bix-demo",
                "requirements": [
                    {
                        "id": "#cwl-js-engine",
                        "class": "ExpressionEngineRequirement",
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ]
                    }
                ],
                "label": "GATK UnifiedGenotyper",
                "sbg:image_url": null,
                "class": "CommandLineTool",
                "y": 401.66669445567726,
                "stdout": "",
                "cwlVersion": "sbg:draft-2",
                "stdin": "",
                "sbg:revision": 15,
                "sbg:categories": [
                    "Variant-Calling"
                ],
                "sbg:modifiedOn": 1484912384,
                "description": "Overview\n\nThis tool uses a Bayesian genotype likelihood model to estimate simultaneously the most likely genotypes and allele frequency in a population of N samples, emitting a genotype for each sample. The system can either emit just the variant sites or complete genotypes (which includes homozygous reference calls) satisfying some phred-scaled confidence value.\n\nInput\nThe read data from which to make variant calls.\n\nOutput\nA raw, unfiltered, highly sensitive callset in VCF format.\n\nUsage examples:\n\n//Multi-sample SNP calling\n java -jar GenomeAnalysisTK.jar \\\n   -T UnifiedGenotyper \\\n   -R reference.fasta \\\n   -I sample1.bam [-I sample2.bam ...] \\\n   --dbsnp dbSNP.vcf \\\n   -o snps.raw.vcf \\\n   -stand_call_conf [50.0] \\\n   -stand_emit_conf 10.0 \\\n   [-L targets.interval_list]\n \n//Generate calls at all sites\n java -jar GenomeAnalysisTK.jar \\\n   -T UnifiedGenotyper \\\n   -R reference.fasta \\\n   -I input.bam \\\n   -o raw_variants.vcf \\\n   --output_mode EMIT_ALL_SITES\n \nCaveats\n\nThe caller can be very aggressive in calling variants in order to be very sensitive, so the raw output will contain many false positives. We use extensive post-calling filters to eliminate most of these FPs. See the documentation on filtering (especially by Variant Quality Score Recalibration) for more details.\nThis tool has been deprecated in favor of HaplotypeCaller, a much more sophisticated variant caller that produces much better calls, especially on indels, and includes features that allow it to scale to much larger cohort sizes.\nSpecial note on ploidy\n\nThis tool is able to handle almost any ploidy (except very high ploidies in large pooled experiments); the ploidy can be specified using the -ploidy argument for non-diploid organisms.\n\n(IMPORTANT) Reference \".fasta\" Secondary Files\n\nTools in GATK that require a fasta reference file also look for the reference file's corresponding .fai (fasta index) and .dict (fasta dictionary) files. The fasta index file allows random access to reference bases and the dictionary file is a dictionary of the contig names and sizes contained within the fasta reference. These two secondary files are essential for GATK to work properly. To append these two files to your fasta reference please use the 'SBG FASTA Indices' tool within your GATK based workflow before using any of the GATK tools.",
                "inputs": [
                    {
                        "inputBinding": {
                            "prefix": "--validation_strictness",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-S",
                        "sbg:category": "GATK General",
                        "label": "Validation Strictness",
                        "id": "#validation_strictness",
                        "sbg:toolDefaultValue": "SILENT",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "SILENT",
                                    "LENIENT",
                                    "STRICT"
                                ],
                                "name": "validation_strictness",
                                "type": "enum"
                            }
                        ],
                        "description": "How strict should we be with validation."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--useOriginalQualities",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-OQ",
                        "sbg:category": "GATK General",
                        "label": "Use Original Qualities",
                        "id": "#use_original_qualities",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "If set, use the original base quality scores from the OQ tag when present instead of the standard scores."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--use_legacy_downsampler",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-use_legacy_downsampler",
                        "sbg:category": "GATK General",
                        "label": "Use Legacy Downsampler",
                        "id": "#use_legacy_downsampler",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Use the legacy downsampling implementation instead of the newer, less-tested implementation."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--unsafe",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-U",
                        "sbg:category": "GATK General",
                        "label": "Unsafe",
                        "id": "#unsafe",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "ALLOW_UNINDEXED_BAM",
                                    "ALLOW_UNSET_BAM_SORT_ORDER",
                                    "NO_READ_ORDER_VERIFICATION",
                                    "ALLOW_SEQ_DICT_INCOMPATIBILITY",
                                    "LENIENT_VCF_PROCESSING",
                                    "ALL"
                                ],
                                "name": "unsafe",
                                "type": "enum"
                            }
                        ],
                        "description": "If set, enables unsafe operations: nothing will be checked at runtime.  For expert users only who know what they are doing.  We do not support usage of this argument."
                    },
                    {
                        "sbg:altPrefix": null,
                        "sbg:category": "Execution",
                        "label": "Threads per job",
                        "id": "#threads_per_job",
                        "sbg:toolDefaultValue": "4",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "For tools which support multiprocessing, this value can be used to set the number of threads to be used."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--tag",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-tag",
                        "sbg:category": "GATK General",
                        "label": "Tag",
                        "id": "#tag",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "Arbitrary tag string to identify this GATK run as part of a group of runs, for later analysis."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--standard_min_confidence_threshold_for_emitting",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-stand_emit_conf",
                        "sbg:category": "Unified Genotyper",
                        "label": "Stand Emit Conf",
                        "id": "#stand_emit_conf",
                        "sbg:toolDefaultValue": "30.0",
                        "type": [
                            "null",
                            "float"
                        ],
                        "description": "The minimum phred-scaled confidence threshold at which variants should be emitted (and filtered with LowQual if less than the calling threshold)."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--standard_min_confidence_threshold_for_calling",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-stand_call_conf",
                        "sbg:category": "Unified Genotyper",
                        "label": "Stand Call Conf",
                        "id": "#stand_call_conf",
                        "sbg:toolDefaultValue": "30.0",
                        "type": [
                            "null",
                            "float"
                        ],
                        "description": "The minimum phred-scaled confidence threshold at which variants should be called."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--remove_program_records",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-rpr",
                        "sbg:category": "GATK General",
                        "label": "Remove Program Records",
                        "id": "#remove_program_records",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Should we override the Walker's default and remove program records from the SAM header."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--reference_sample_calls",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": null,
                        "sbg:category": "Input Files",
                        "label": "Reference Sample Calls",
                        "id": "#reference_sample_calls",
                        "type": [
                            "null",
                            "File"
                        ],
                        "required": false,
                        "description": "VCF file with the truth callset for the reference sample."
                    },
                    {
                        "required": true,
                        "inputBinding": {
                            "prefix": "--reference_sequence",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-R",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "FASTA, FA",
                        "id": "#reference",
                        "type": [
                            "File"
                        ],
                        "label": "Reference Genome",
                        "description": "Reference Genome in FASTA format."
                    },
                    {
                        "required": true,
                        "inputBinding": {
                            "secondaryFiles": [
                                ".bai"
                            ],
                            "prefix": "--input_file",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-I",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "SAM,BAM",
                        "id": "#reads",
                        "type": [
                            {
                                "items": "File",
                                "type": "array",
                                "name": "reads"
                            }
                        ],
                        "label": "Read sequences",
                        "description": "Read sequences in BAM format."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--read_group_black_list",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-rgbl",
                        "sbg:category": "GATK General",
                        "label": "Read Group Black List",
                        "id": "#read_group_black_list",
                        "sbg:toolDefaultValue": "[]",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "description": "Filters out read groups matching : or a .txt file containing the filter strings one per line."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--read_filter",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-rf",
                        "sbg:category": "GATK General",
                        "label": "Read Filter",
                        "id": "#read_filter",
                        "sbg:toolDefaultValue": "[]",
                        "type": [
                            "null",
                            {
                                "items": {
                                    "symbols": [
                                        "BadCigarFilter",
                                        "BadMateFilter",
                                        "CountingFilteringIterator.CountingReadFilter",
                                        "DuplicateReadFilter",
                                        "FailsVendorQualityCheckFilter",
                                        "HCMappingQualityFilter",
                                        "LibraryReadFilter",
                                        "MalformedReadFilter",
                                        "MappingQualityFilter",
                                        "MappingQualityUnavailableFilter",
                                        "MappingQualityZeroFilter",
                                        "MateSameStrandFilter",
                                        "MaxInsertSizeFilter",
                                        "MissingReadGroupFilter",
                                        "NoOriginalQualityScoresFilter",
                                        "NotPrimaryAlignmentFilter",
                                        "OverclippedReadFilter",
                                        "Platform454Filter",
                                        "PlatformFilter",
                                        "PlatformUnitFilter",
                                        "ReadGroupBlackListFilter",
                                        "ReadLengthFilter",
                                        "ReadNameFilter",
                                        "ReadStrandFilter",
                                        "ReassignMappingQualityFilter",
                                        "ReassignOneMappingQualityFilter",
                                        "SampleFilter",
                                        "SingleReadGroupFilter",
                                        "UnmappedReadFilter"
                                    ],
                                    "name": "read_filter",
                                    "type": "enum"
                                },
                                "type": "array"
                            }
                        ],
                        "description": "Specify filtration criteria to apply to each read individually."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--preserve_qscores_less_than",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-preserveQ",
                        "sbg:category": "GATK General",
                        "label": "Preserve Qscores Less Than",
                        "id": "#preserve_qscores_less_than",
                        "sbg:toolDefaultValue": "6",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Bases with quality scores less than this threshold won't be recalibrated (with -BQSR)."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--phone_home",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-et",
                        "sbg:category": "GATK General",
                        "label": "Phone Home",
                        "id": "#phone_home",
                        "sbg:toolDefaultValue": "STANDARD",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "NO_ET",
                                    "STANDARD"
                                ],
                                "name": "phone_home",
                                "type": "enum"
                            }
                        ],
                        "description": "What kind of GATK run report should we generate? STANDARD is the default, can be NO_ET so nothing is posted to the run repository. Please see http://gatkforums.broadinstitute.org/discussion/1250/what-is-phone-home-and-how-does-it-affect-me#latest for details."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--pedigreeValidationType",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-pedValidationType",
                        "sbg:category": "GATK General",
                        "label": "Pedigree Validation Type",
                        "id": "#pedigree_validation_type",
                        "sbg:toolDefaultValue": "STRICT",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "STRICT",
                                    "SILENT"
                                ],
                                "name": "pedigree_validation_type",
                                "type": "enum"
                            }
                        ],
                        "description": "How strict should we be in validating the pedigree information?."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--pedigreeString",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-pedString",
                        "sbg:category": "GATK General",
                        "label": "Pedigree String",
                        "id": "#pedigree_string",
                        "sbg:toolDefaultValue": "[]",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "description": "Pedigree string for samples."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--pcr_error_rate",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-pcr_error",
                        "sbg:category": "Unified Genotyper",
                        "label": "Pcr Error Rate",
                        "id": "#pcr_error_rate",
                        "sbg:toolDefaultValue": "0.0001",
                        "type": [
                            "null",
                            "float"
                        ],
                        "description": "The PCR error rate to be used for computing fragment-based likelihoods."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--pair_hmm_implementation",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-pairHMM",
                        "sbg:category": "Unified Genotyper",
                        "label": "Pair Hmm Implementation",
                        "id": "#pair_hmm_implementation",
                        "sbg:toolDefaultValue": "ORIGINAL",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "EXACT",
                                    "ORIGINAL",
                                    "CACHING",
                                    "LOGLESS_CACHING"
                                ],
                                "name": "pair_hmm_implementation",
                                "type": "enum"
                            }
                        ],
                        "description": "The PairHMM implementation to use for -glm INDEL genotype likelihood calculations."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--p_nonref_model",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": null,
                        "sbg:category": "Unified Genotyper",
                        "label": "P Nonref Model",
                        "id": "#p_nonref_model",
                        "sbg:toolDefaultValue": "EXACT_INDEPENDENT",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "EXACT_INDEPENDENT",
                                    "EXACT_REFERENCE",
                                    "EXACT_ORIGINAL",
                                    "EXACT_GENERAL_PLOIDY"
                                ],
                                "name": "p_nonref_model",
                                "type": "enum"
                            }
                        ],
                        "description": "Non-reference probability calculation model to employ."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--output_mode",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-out_mode",
                        "sbg:category": "Unified Genotyper",
                        "label": "Output Mode",
                        "id": "#output_mode",
                        "sbg:toolDefaultValue": "EMIT_VARIANTS_ONLY",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "EMIT_VARIANTS_ONLY",
                                    "EMIT_ALL_CONFIDENT_SITES",
                                    "EMIT_ALL_SITES"
                                ],
                                "name": "output_mode",
                                "type": "enum"
                            }
                        ],
                        "description": "Specifies which type of calls we should output."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--nonDeterministicRandomSeed",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-ndrs",
                        "sbg:category": "GATK General",
                        "label": "Non Deterministic Random Seed",
                        "id": "#non_deterministic_random_seed",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Makes the GATK behave non deterministically, that is, the random numbers generated will be different in every run."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-minIndelFrac",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-minIndelFrac",
                        "sbg:category": "Unified Genotyper",
                        "label": "Min Indel Frac",
                        "id": "#min_indel_frac",
                        "sbg:toolDefaultValue": "0.25",
                        "type": [
                            "null",
                            "float"
                        ],
                        "description": "Minimum fraction of all reads at a locus that must contain an indel (of any allele) for that sample to contribute to the indel count for alleles."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--min_indel_count_for_genotyping",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-minIndelCnt",
                        "sbg:category": "Unified Genotyper",
                        "label": "Min Indel Cnt",
                        "id": "#min_indel_cnt",
                        "sbg:toolDefaultValue": "5",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Minimum number of consensus indels required to trigger genotyping run."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--min_base_quality_score",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-mbq",
                        "sbg:category": "Unified Genotyper",
                        "label": "Min Base Quality Score",
                        "id": "#min_base_quality_score",
                        "sbg:toolDefaultValue": "17",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Minimum base quality required to consider a base for calling."
                    },
                    {
                        "sbg:altPrefix": null,
                        "sbg:category": "Execution",
                        "label": "Memory per job",
                        "id": "#memory_per_job",
                        "sbg:toolDefaultValue": "2048",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Amount of RAM memory in MB to be used per job."
                    },
                    {
                        "sbg:category": "Execution",
                        "label": "Memory overhead per job",
                        "id": "#memory_overhead_per_job",
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Memory overhead per job. By default this parameter value is set to '0' (zero megabytes). This parameter value is added to the Memory per job parameter value. This results in the allocation of the sum total (Memory per job and Memory overhead per job) amount of memory per job. By default the memory per job parameter value is set to 2048 megabytes, unless specified otherwise."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--maxRuntimeUnits",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-maxRuntimeUnits",
                        "sbg:category": "GATK General",
                        "label": "Max Runtime Units",
                        "id": "#max_runtime_units",
                        "sbg:toolDefaultValue": "MINUTES",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "NANOSECONDS",
                                    "MICROSECONDS",
                                    "MILLISECONDS",
                                    "SECONDS",
                                    "MINUTES",
                                    "HOURS",
                                    "DAYS"
                                ],
                                "name": "max_runtime_units",
                                "type": "enum"
                            }
                        ],
                        "description": "The TimeUnit for maxRuntime."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--maxRuntime",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-maxRuntime",
                        "sbg:category": "GATK General",
                        "label": "Max Runtime",
                        "id": "#max_runtime",
                        "sbg:toolDefaultValue": "-1",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "If provided, that GATK will stop execution cleanly as soon after maxRuntime has been exceeded, truncating the run but not exiting with a failure.  By default the value is interpreted in minutes, but this can be changed by maxRuntimeUnits."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--max_deletion_fraction",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-deletions",
                        "sbg:category": "Unified Genotyper",
                        "label": "Max Deletion Fraction",
                        "id": "#max_deletion_fraction",
                        "sbg:toolDefaultValue": "0.05",
                        "type": [
                            "null",
                            "float"
                        ],
                        "description": "Maximum fraction of reads with deletions spanning this locus for it to be callable [to disable, set to  1; default:0.05]."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--max_alternate_alleles",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-maxAltAlleles",
                        "sbg:category": "Unified Genotyper",
                        "label": "Max Alternate Alleles",
                        "id": "#max_alternate_alleles",
                        "sbg:toolDefaultValue": "6",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Maximum number of alternate alleles to genotype."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--keep_program_records",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-kpr",
                        "sbg:category": "GATK General",
                        "label": "Keep Program Records",
                        "id": "#keep_program_records",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Should we override the Walker's default and keep program records from the SAM header."
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "itemSeparator": null,
                            "valueFrom": {
                                "class": "Expression",
                                "script": "{\n  if($job.inputs.intervals_file){\n    if($job.inputs.intervals_file instanceof Array){\n      if($job.inputs.intervals_file.length > 1){\n        if([].concat($job.inputs.reads)[0].metadata)\n          if([].concat($job.inputs.reads)[0].metadata.intervals_file)\n            return '--intervals ' + [].concat($job.inputs.reads)[0].metadata.intervals_file\n      } else return '--intervals ' + [].concat($job.inputs.intervals_file)[0].path\n    } else return '--intervals ' + [].concat($job.inputs.intervals_file)[0].path\n  } else\n    return ''\n}",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "sbg:altPrefix": "-L",
                        "sbg:category": "Input Files",
                        "label": "Intervals",
                        "id": "#intervals_file",
                        "type": [
                            "null",
                            {
                                "items": "File",
                                "type": "array",
                                "name": "intervals_file"
                            }
                        ],
                        "sbg:fileTypes": "BED,LIST,PICARD,INTERVAL_LIST,INTERVALS",
                        "description": "One or more genomic intervals over which to operate. Can be an specified in an .intervals file or a rod file.",
                        "sbg:stageInput": "link"
                    },
                    {
                        "inputBinding": {
                            "prefix": "-L",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": null,
                        "sbg:category": "GATK General",
                        "label": "Intervals",
                        "id": "#intervals",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "One or more genomic intervals over which to operate."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--interval_set_rule",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-isr",
                        "sbg:category": "GATK General",
                        "label": "Interval Set Rule",
                        "id": "#interval_set_rule",
                        "sbg:toolDefaultValue": "UNION",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "UNION",
                                    "INTERSECTION"
                                ],
                                "name": "interval_set_rule",
                                "type": "enum"
                            }
                        ],
                        "description": "Indicates the set merging approach the interval parser should use to combine the various -L or -XL inputs."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--interval_padding",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-ip",
                        "sbg:category": "GATK General",
                        "label": "Interval Padding",
                        "id": "#interval_padding",
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Indicates how many basepairs of padding to include around each of the intervals specified with the -L/--intervals argument."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--interval_merging",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-im",
                        "sbg:category": "GATK General",
                        "label": "Interval Merging",
                        "id": "#interval_merging",
                        "sbg:toolDefaultValue": "ALL",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "ALL",
                                    "OVERLAPPING_ONLY"
                                ],
                                "name": "interval_merging",
                                "type": "enum"
                            }
                        ],
                        "description": "Indicates the interval merging rule we should use for abutting intervals."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--indel_heterozygosity",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-indelHeterozygosity",
                        "sbg:category": "Unified Genotyper",
                        "label": "Indel Heterozygosity",
                        "id": "#indel_heterozygosity",
                        "sbg:toolDefaultValue": "0.000125",
                        "type": [
                            "null",
                            "float"
                        ],
                        "description": "Heterozygosity for indel calling."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--indelGapOpenPenalty",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-indelGOP",
                        "sbg:category": "Unified Genotyper",
                        "label": "Indel Gap Open Penalty",
                        "id": "#indel_gap_open_penalty",
                        "sbg:toolDefaultValue": "45",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Indel gap open penalty, as Phred-scaled probability.  I.e., 30 => 10^-30/10."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--indelGapContinuationPenalty",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-indelGCP",
                        "sbg:category": "Unified Genotyper",
                        "label": "Indel Gap Continuation Penalty",
                        "id": "#indel_gap_continuation_penalty",
                        "sbg:toolDefaultValue": "10",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Indel gap continuation penalty, as Phred-scaled probability.  I.e., 30 => 10^-30/10."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--ignoreLaneInfo",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": null,
                        "sbg:category": "Unified Genotyper",
                        "label": "Ignore Lane Info",
                        "id": "#ignore_lane_info",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Ignore lane when building error model, error model is then per-site."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--heterozygosity",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-hets",
                        "sbg:category": "Unified Genotyper",
                        "label": "Heterozygosity",
                        "id": "#heterozygosity",
                        "sbg:toolDefaultValue": "0.001",
                        "type": [
                            "null",
                            "float"
                        ],
                        "description": "Heterozygosity value used to compute prior likelihoods for any locus."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--group",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-G",
                        "sbg:category": "Unified Genotyper",
                        "label": "Group",
                        "id": "#group",
                        "sbg:toolDefaultValue": "[u'Standard']",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "description": "One or more classes/groups of annotations to apply to variant calls."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--genotyping_mode",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-gt_mode",
                        "sbg:category": "Unified Genotyper",
                        "label": "Genotyping Mode",
                        "id": "#genotyping_mode",
                        "sbg:toolDefaultValue": "DISCOVERY",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "DISCOVERY",
                                    "GENOTYPE_GIVEN_ALLELES"
                                ],
                                "name": "genotyping_mode",
                                "type": "enum"
                            }
                        ],
                        "description": "Specifies how to determine the alternate alleles to use for genotyping."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--genotype_likelihoods_model",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-glm",
                        "sbg:category": "Unified Genotyper",
                        "label": "Genotype Likelihoods Model",
                        "id": "#genotype_likelihoods_model",
                        "sbg:toolDefaultValue": "SNP",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "SNP",
                                    "INDEL",
                                    "GENERALPLOIDYSNP",
                                    "GENERALPLOIDYINDEL",
                                    "BOTH"
                                ],
                                "name": "genotype_likelihoods_model",
                                "type": "enum"
                            }
                        ],
                        "description": "Genotype likelihoods calculation model to employ -- SNP is the default option, while INDEL is also available for calling indels and BOTH is available for calling both together."
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "prefix": "--gatk_key",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-K",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "KEY, LICENSE",
                        "id": "#gatk_key",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Gatk key",
                        "description": "GATK Key file. Required if running with -et NO_ET. Please see http://gatkforums.broadinstitute.org/discussion/1250/what-is-phone-home-and-how-does-it-affect-me#latest for details."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-fixMisencodedQuals",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-fixMisencodedQuals",
                        "sbg:category": "GATK General",
                        "label": "Fix Misencoded Quals",
                        "id": "#fix_misencoded_quals",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Fix mis-encoded base quality scores."
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "prefix": "--excludeIntervals",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-XL",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "TXT, BED, VCF",
                        "id": "#exclude_intervals",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Exclude Intervals",
                        "description": "One or more genomic intervals to exclude from processing. Can be an .intervals file or a rod file."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--excludeAnnotation",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-XA",
                        "sbg:category": "Unified Genotyper",
                        "label": "Exclude Annotation",
                        "id": "#exclude_annotation",
                        "sbg:toolDefaultValue": "[]",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "description": "One or more specific annotations to exclude."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--emit_original_quals",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-EOQ",
                        "sbg:category": "GATK General",
                        "label": "Emit Original Quals",
                        "id": "#emit_original_quals",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "If true, enables printing of the OQ tag with the original base qualities (with -BQSR)."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--downsampling_type",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-dt",
                        "sbg:category": "GATK General",
                        "label": "Downsampling Type",
                        "id": "#downsampling_type",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "NONE",
                                    "ALL_READS",
                                    "BY_SAMPLE"
                                ],
                                "name": "downsampling_type",
                                "type": "enum"
                            }
                        ],
                        "description": "Type of reads downsampling to employ at a given locus. Reads will be selected randomly to be removed from the pile based on the method described here."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--downsample_to_fraction",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-dfrac",
                        "sbg:category": "GATK General",
                        "label": "Downsample to Fraction",
                        "id": "#downsample_to_fraction",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            "float"
                        ],
                        "description": "Fraction [0.0-1.0] of reads to downsample to."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--downsample_to_coverage",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-dcov",
                        "sbg:category": "GATK General",
                        "label": "Downsample to Coverage",
                        "id": "#downsample_to_coverage",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Coverage to downsample to at any given locus; note that downsampled reads are randomly selected from all possible reads at a locus. For non-locus-based traversals (eg., ReadWalkers), this sets the maximum number of reads at each alignment start position."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--disableRandomization",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": null,
                        "sbg:category": "GATK General",
                        "label": "Disable Randomization",
                        "id": "#disable_radnomization",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Completely eliminates randomization from nondeterministic methods. To be used mostly in the testing framework where dynamic parallelism can result in differing numbers of calls to the generator."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--disable_indel_quals",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-DIQ",
                        "sbg:category": "GATK General",
                        "label": "Disable Indel Quals",
                        "id": "#disable_indel_quals",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "If 'true', disables printing of base insertion and base deletion tags (with -BQSR). Turns off printing of the base insertion and base deletion tags when using the -BQSR argument and only the base substitution qualities will be produced."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--defaultBaseQualities",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-DBQ",
                        "sbg:category": "GATK General",
                        "label": "Default Base Qualities",
                        "id": "#default_base_qualities",
                        "sbg:toolDefaultValue": "-1",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "If reads are missing some or all base quality scores, this value will be used for all base quality scores."
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "itemSeparator": " ",
                            "valueFrom": {
                                "class": "Expression",
                                "script": "{\n  if ($job.inputs.dbsnp)\n  return '--dbsnp ' + [].concat($job.inputs.dbsnp)[0].path\n}",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "sbg:altPrefix": "-D",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "VCF",
                        "id": "#dbsnp",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "DbSNP",
                        "description": "DbSNP file in VCF format."
                    },
                    {
                        "sbg:altPrefix": null,
                        "sbg:category": "Execution",
                        "label": "CPU per job",
                        "id": "#cpu_per_job",
                        "sbg:toolDefaultValue": "1",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Number of CPUs per job."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--contamination_fraction_to_filter",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-contamination",
                        "sbg:category": "Unified Genotyper",
                        "label": "Contamination",
                        "id": "#contamination",
                        "sbg:toolDefaultValue": "0.05",
                        "type": [
                            "null",
                            "float"
                        ],
                        "description": "Fraction of contamination in sequencing data (for all samples) to aggressively remove."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--computeSLOD",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-slod",
                        "sbg:category": "Unified Genotyper",
                        "label": "Compute Slod",
                        "id": "#compute_slod",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "If provided, we will calculate the SLOD (SB annotation)."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--comp",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": null,
                        "sbg:category": "Input Files",
                        "label": "Comp",
                        "id": "#comp",
                        "type": [
                            "null",
                            {
                                "items": "File",
                                "type": "array"
                            }
                        ],
                        "required": false,
                        "description": "Comparison VCF file."
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "prefix": "--BQSR",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-BQSR",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "GRP",
                        "id": "#bqsr",
                        "type": [
                            "null",
                            {
                                "items": "File",
                                "type": "array"
                            }
                        ],
                        "label": "BQSR",
                        "description": "The input covariates table file which enables on-the-fly base quality score recalibration."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--baqGapOpenPenalty",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-baqGOP",
                        "sbg:category": "GATK General",
                        "label": "BAQ Gap Open Penalty",
                        "id": "#baq_gap_open_penalty",
                        "sbg:toolDefaultValue": "40.0",
                        "type": [
                            "null",
                            "float"
                        ],
                        "description": "BAQ gap open penalty (Phred Scaled). Default value is 40. 30 is perhaps better for whole genome call sets."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--baq",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-baq",
                        "sbg:category": "GATK General",
                        "label": "BAQ Calculation Type",
                        "id": "#baq",
                        "sbg:toolDefaultValue": "OFF",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "OFF",
                                    "CALCULATE_AS_NECESSARY",
                                    "RECALCULATE"
                                ],
                                "name": "baq",
                                "type": "enum"
                            }
                        ],
                        "description": "Type of BAQ calculation to apply in the engine."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--annotation",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-A",
                        "sbg:category": "Unified Genotyper",
                        "label": "Annotation",
                        "id": "#annotation",
                        "sbg:toolDefaultValue": "[]",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "description": "One or more specific annotations to apply to variant calls."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--annotateNDA",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-nda",
                        "sbg:category": "Unified Genotyper",
                        "label": "Annotate Nda",
                        "id": "#annotate_nda",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "If provided, we will annotate records with the number of alternate alleles that were discovered (but not necessarily genotyped) at a given site."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-allowPotentiallyMisencodedQuals",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "--allow_potentially_misencoded_quality_scores",
                        "sbg:category": "GATK General",
                        "label": "Allow Potentially Misencoded Quals",
                        "id": "#allow_potentailly_misencoded_quals",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Do not fail when encountered base qualities that are too high and seemingly indicate a problem with the base quality encoding of the BAM file."
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "prefix": "--alleles",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-alleles",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "VCF",
                        "id": "#alleles",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Alleles",
                        "description": "The set of alleles at which to genotype when --genotyping_mode is GENOTYPE_GIVEN_ALLELES."
                    }
                ],
                "sbg:createdOn": 1450911349,
                "sbg:links": [
                    {
                        "id": "https://www.broadinstitute.org/gatk/index.php",
                        "label": "Homepage"
                    },
                    {
                        "id": "https://github.com/broadgsa/gatk-protected",
                        "label": "Source code"
                    },
                    {
                        "id": "https://www.broadinstitute.org/gatk/guide/pdfdocs/GATK_GuideBook_2.3-9.pdf",
                        "label": "Wiki"
                    },
                    {
                        "id": "https://www.broadinstitute.org/gatk/download/auth?package=GATK-archive&version=2.3-9-ge5ebf34",
                        "label": "Download"
                    },
                    {
                        "id": "https://www.broadinstitute.org/gatk/about/#in-the-literature",
                        "label": "Publication"
                    },
                    {
                        "id": "https://www.broadinstitute.org/gatk/gatkdocs/org_broadinstitute_gatk_tools_walkers_genotyper_UnifiedGenotyper.php",
                        "label": "Documentation"
                    }
                ],
                "x": 2347.6925569518075,
                "temporaryFailCodes": [],
                "successCodes": [],
                "sbg:project": "bix-demo/gatk-2-3-9-lite-demo",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1450911349,
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911350,
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911351,
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911352,
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911353,
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911354,
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1463297747,
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1463663096,
                        "sbg:revision": 7,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1469527805,
                        "sbg:revision": 8,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "bam.bai extension removed from secondary files of reads input."
                    },
                    {
                        "sbg:modifiedOn": 1471364268,
                        "sbg:revision": 9,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "dbsnp link."
                    },
                    {
                        "sbg:modifiedOn": 1471445503,
                        "sbg:revision": 10,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "dbsnp guard []concat()."
                    },
                    {
                        "sbg:modifiedOn": 1472656204,
                        "sbg:revision": 11,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "Metadata scatter."
                    },
                    {
                        "sbg:modifiedOn": 1475751155,
                        "sbg:revision": 12,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "fix for single interval file support"
                    },
                    {
                        "sbg:modifiedOn": 1475802580,
                        "sbg:revision": 13,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "Double --intervals removed!"
                    },
                    {
                        "sbg:modifiedOn": 1476436438,
                        "sbg:revision": 14,
                        "sbg:modifiedBy": "bogdang",
                        "sbg:revisionNotes": "^.bai --> .bai in reads input"
                    },
                    {
                        "sbg:modifiedOn": 1484912384,
                        "sbg:revision": 15,
                        "sbg:modifiedBy": "bogdang",
                        "sbg:revisionNotes": "Fix for single run without dbsnp"
                    }
                ],
                "sbg:job": {
                    "inputs": {
                        "stand_emit_conf": 10,
                        "memory_overhead_per_job": 0,
                        "intervals_file": [
                            {
                                "class": "File",
                                "path": "/path/to/intervals_file-1.ext",
                                "size": 0,
                                "secondaryFiles": []
                            },
                            {
                                "class": "File",
                                "path": "/path/to/intervals_file-2.ext",
                                "size": 0,
                                "secondaryFiles": []
                            }
                        ],
                        "reads": [
                            {
                                "path": "sample1.bam"
                            },
                            {
                                "path": "sample2.bam"
                            }
                        ],
                        "reference": {
                            "path": "/folder/reference.fasta"
                        },
                        "stand_call_conf": 50,
                        "dbsnp": {
                            "path": "/folder/dbSNP.vcf"
                        }
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 2048
                    }
                },
                "arguments": [
                    {
                        "prefix": "--out",
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\n  read_name = [].concat($job.inputs.reads)[0].path.replace(/^.*[\\\\\\/]/, '').split('.')\n  read_namebase = read_name.slice(0, read_name.length-1).join('.')\n\n  if($job.inputs.bqsr){\n  \treturn read_namebase + '.base_recalibrated.vcf'\n  }\n  else{\n  \treturn read_namebase + '.vcf'\n  }\n}",
                            "engine": "#cwl-js-engine"
                        }
                    }
                ],
                "sbg:toolAuthor": "Broad Institute",
                "sbg:license": "MIT License"
            }
        },
        {
            "inputs": [
                {
                    "id": "#GATK_PrintReads.validation_strictness"
                },
                {
                    "id": "#GATK_PrintReads.use_original_qualities"
                },
                {
                    "id": "#GATK_PrintReads.use_legacy_downsampler"
                },
                {
                    "id": "#GATK_PrintReads.unsafe"
                },
                {
                    "id": "#GATK_PrintReads.threads_per_job",
                    "default": 7
                },
                {
                    "id": "#GATK_PrintReads.tag"
                },
                {
                    "id": "#GATK_PrintReads.simplify"
                },
                {
                    "id": "#GATK_PrintReads.sample_name"
                },
                {
                    "id": "#GATK_PrintReads.sample_file"
                },
                {
                    "id": "#GATK_PrintReads.remove_program_records"
                },
                {
                    "id": "#GATK_PrintReads.reference",
                    "source": [
                        "#SBG_FASTA_Indices.fasta_reference"
                    ]
                },
                {
                    "id": "#GATK_PrintReads.reads",
                    "source": [
                        "#GATK_IndelRealigner.realigned_bam_file"
                    ]
                },
                {
                    "id": "#GATK_PrintReads.read_group_black_list"
                },
                {
                    "id": "#GATK_PrintReads.read_group"
                },
                {
                    "id": "#GATK_PrintReads.read_filter"
                },
                {
                    "id": "#GATK_PrintReads.preserve_qscores_less_than"
                },
                {
                    "id": "#GATK_PrintReads.platform"
                },
                {
                    "id": "#GATK_PrintReads.phone_home"
                },
                {
                    "id": "#GATK_PrintReads.pedigree_validation_type"
                },
                {
                    "id": "#GATK_PrintReads.pedigree_string"
                },
                {
                    "id": "#GATK_PrintReads.number"
                },
                {
                    "id": "#GATK_PrintReads.non_deterministic_random_seed"
                },
                {
                    "id": "#GATK_PrintReads.memory_per_job",
                    "default": 14000
                },
                {
                    "id": "#GATK_PrintReads.memory_overhead_per_job"
                },
                {
                    "id": "#GATK_PrintReads.max_runtime_units"
                },
                {
                    "id": "#GATK_PrintReads.max_runtime"
                },
                {
                    "id": "#GATK_PrintReads.keep_program_records"
                },
                {
                    "id": "#GATK_PrintReads.intervals_file",
                    "source": [
                        "#Target_BED"
                    ]
                },
                {
                    "id": "#GATK_PrintReads.intervals"
                },
                {
                    "id": "#GATK_PrintReads.interval_set_rule"
                },
                {
                    "id": "#GATK_PrintReads.interval_padding"
                },
                {
                    "id": "#GATK_PrintReads.interval_merging"
                },
                {
                    "id": "#GATK_PrintReads.gatk_key"
                },
                {
                    "id": "#GATK_PrintReads.fix_misencoded_quals"
                },
                {
                    "id": "#GATK_PrintReads.exclude_intervals"
                },
                {
                    "id": "#GATK_PrintReads.emit_original_quals"
                },
                {
                    "id": "#GATK_PrintReads.downsampling_type"
                },
                {
                    "id": "#GATK_PrintReads.downsample_to_fraction"
                },
                {
                    "id": "#GATK_PrintReads.downsample_to_coverage"
                },
                {
                    "id": "#GATK_PrintReads.disable_radnomization"
                },
                {
                    "id": "#GATK_PrintReads.disable_indel_quals"
                },
                {
                    "id": "#GATK_PrintReads.default_base_qualities"
                },
                {
                    "id": "#GATK_PrintReads.cpu_per_job",
                    "default": 1
                },
                {
                    "id": "#GATK_PrintReads.bqsr",
                    "source": [
                        "#GATK_BaseRecalibrator.bqsr"
                    ]
                },
                {
                    "id": "#GATK_PrintReads.baq_gap_open_penalty"
                },
                {
                    "id": "#GATK_PrintReads.baq"
                },
                {
                    "id": "#GATK_PrintReads.allow_potentailly_misencoded_quals"
                }
            ],
            "sbg:y": 325.00016828378665,
            "id": "#GATK_PrintReads",
            "outputs": [
                {
                    "id": "#GATK_PrintReads.recalibrated_bam"
                }
            ],
            "sbg:x": 1745.1435063339654,
            "run": {
                "sbg:revisionNotes": "Read_filter names corrected (\"Filter\" string removed)",
                "outputs": [
                    {
                        "sbg:fileTypes": "BAM, SAM",
                        "id": "#recalibrated_bam",
                        "type": [
                            "File"
                        ],
                        "label": "Recalibrated BAM",
                        "outputBinding": {
                            "glob": "*.bam",
                            "sbg:metadata": {},
                            "sbg:inheritMetadataFrom": "#reads",
                            "secondaryFiles": [
                                ".bai",
                                "^.bai"
                            ]
                        },
                        "description": "Write output to this BAM filename."
                    }
                ],
                "sbg:toolkitVersion": "2.3.9 Lite",
                "sbg:validationErrors": [],
                "sbg:contributors": [
                    "vladimirk",
                    "bix-demo"
                ],
                "sbg:sbgMaintained": false,
                "hints": [
                    {
                        "dockerPull": "images.sbgenomics.com/stefanristeski/gatk2-lite:2.3-9",
                        "class": "DockerRequirement",
                        "dockerImageId": "47510cb2da55"
                    },
                    {
                        "class": "sbg:CPURequirement",
                        "value": {
                            "class": "Expression",
                            "script": "{\n  if($job.inputs.cpu_per_job){\n  \treturn $job.inputs.cpu_per_job\n  }\n\treturn 1\n}",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "class": "sbg:MemRequirement",
                        "value": {
                            "class": "Expression",
                            "script": "{\n  if($job.inputs.memory_per_job){\n    if($job.inputs.memory_overhead_per_job){\n    \treturn $job.inputs.memory_per_job + $job.inputs.memory_overhead_per_job\n    }\n    else\n  \t\treturn $job.inputs.memory_per_job\n  }\n  else if(!$job.inputs.memory_per_job && $job.inputs.memory_overhead_per_job){\n\t\treturn 2048 + $job.inputs.memory_overhead_per_job  \n  }\n  else\n  \treturn 2048\n}",
                            "engine": "#cwl-js-engine"
                        }
                    }
                ],
                "sbg:modifiedBy": "vladimirk",
                "baseCommand": [
                    "java",
                    {
                        "class": "Expression",
                        "script": "{\n  if($job.inputs.memory_per_job){\n  \treturn '-Xmx'.concat($job.inputs.memory_per_job, 'M')\n  }\n  \treturn '-Xmx2048M'\n}",
                        "engine": "#cwl-js-engine"
                    },
                    "-jar",
                    "/opt/GenomeAnalysisTKLite.jar",
                    "--analysis_type",
                    "PrintReads",
                    {
                        "class": "Expression",
                        "script": "{ \n  if($job.inputs.threads_per_job){\n    return '-nct '.concat($job.inputs.threads_per_job)\n  }\n  else{\n  \treturn '-nct '.concat(4)\n  }\n}",
                        "engine": "#cwl-js-engine"
                    }
                ],
                "sbg:latestRevision": 12,
                "sbg:cmdPreview": "java -Xmx2048M -jar /opt/GenomeAnalysisTKLite.jar --analysis_type PrintReads -nct 4 --reference_sequence /folder/reference.fasta --input_file /folder/input1.bam --out input1.bam ; mv input1.bai input1.bam.bai",
                "id": "bix-demo/gatk-2-3-9-lite-demo/gatk-2-3-9-lite-printreads/12",
                "sbg:id": "admin/sbg-public-data/gatk-2-3-9-lite-printreads/21",
                "sbg:toolkit": "GATK",
                "sbg:createdBy": "bix-demo",
                "requirements": [
                    {
                        "id": "#cwl-js-engine",
                        "class": "ExpressionEngineRequirement",
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ]
                    }
                ],
                "label": "GATK PrintReads",
                "sbg:image_url": null,
                "class": "CommandLineTool",
                "y": 325.00016828378665,
                "stdout": "",
                "cwlVersion": "sbg:draft-2",
                "stdin": "",
                "sbg:revision": 12,
                "sbg:categories": [
                    "SAM/BAM-Processing"
                ],
                "sbg:modifiedOn": 1476372560,
                "description": "Overview\n\nPrintReads is a generic utility tool for manipulating sequencing data in SAM/BAM format. It can dynamically merge the contents of multiple input BAM files, resulting in merged output sorted in coordinate order. It can also optionally filter reads based on various read properties such as read group tags using the `--read_filter/-rf` command line argument (see documentation on read filters for more information).\n\nNote that when PrintReads is used as part of the Base Quality Score Recalibration workflow, it takes the `--BQSR` engine argument, which is listed under Inherited Arguments > CommandLineGATK below.\n\nInput\nOne or more bam files.\n\nOutput\nA single processed bam file.\n\nUsage examples:\n\n // Prints all reads that have a mapping quality above zero\n java -jar GenomeAnalysisTK.jar \\\n   -T PrintReads \\\n   -R reference.fasta \\\n   -I input1.bam \\\n   -I input2.bam \\\n   -o output.bam \\\n   --read_filter MappingQualityZero\n\n // Prints the first 2000 reads in the BAM file\n java -jar GenomeAnalysisTK.jar \\\n   -T PrintReads \\\n   -R reference.fasta \\\n   -I input.bam \\\n   -o output.bam \\\n   -n 2000\n\n // Downsamples BAM file to 25%\n java -jar GenomeAnalysisTK.jar \\\n   -T PrintReads \\\n   -R reference.fasta \\\n   -I input.bam \\\n   -o output.bam \\\n   -dfrac 0.25\n\n(IMPORTANT) Reference \".fasta\" Secondary Files\n\nTools in GATK that require a fasta reference file also look for the reference file's corresponding .fai (fasta index) and .dict (fasta dictionary) files. The fasta index file allows random access to reference bases and the dictionary file is a dictionary of the contig names and sizes contained within the fasta reference. These two secondary files are essential for GATK to work properly. To append these two files to your fasta reference please use the 'SBG FASTA Indices' tool within your GATK based workflow before using any of the GATK tools.",
                "inputs": [
                    {
                        "inputBinding": {
                            "prefix": "--validation_strictness",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-S",
                        "sbg:category": "GATK General",
                        "label": "Validation Strictness",
                        "id": "#validation_strictness",
                        "sbg:toolDefaultValue": "SILENT",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "SILENT",
                                    "LENIENT",
                                    "STRICT"
                                ],
                                "name": "validation_strictness",
                                "type": "enum"
                            }
                        ],
                        "description": "How strict should we be with validation."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--useOriginalQualities",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-OQ",
                        "sbg:category": "GATK General",
                        "label": "Use Original Qualities",
                        "id": "#use_original_qualities",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "If set, use the original base quality scores from the OQ tag when present instead of the standard scores."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--use_legacy_downsampler",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-use_legacy_downsampler",
                        "sbg:category": "GATK General",
                        "label": "Use Legacy Downsampler",
                        "id": "#use_legacy_downsampler",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Use the legacy downsampling implementation instead of the newer, less-tested implementation."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--unsafe",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-U",
                        "sbg:category": "GATK General",
                        "label": "Unsafe",
                        "id": "#unsafe",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "ALLOW_UNINDEXED_BAM",
                                    "ALLOW_UNSET_BAM_SORT_ORDER",
                                    "NO_READ_ORDER_VERIFICATION",
                                    "ALLOW_SEQ_DICT_INCOMPATIBILITY",
                                    "LENIENT_VCF_PROCESSING",
                                    "ALL"
                                ],
                                "name": "unsafe",
                                "type": "enum"
                            }
                        ],
                        "description": "If set, enables unsafe operations: nothing will be checked at runtime.  For expert users only who know what they are doing.  We do not support usage of this argument."
                    },
                    {
                        "sbg:altPrefix": null,
                        "sbg:category": "Execution",
                        "label": "Threads per job",
                        "id": "#threads_per_job",
                        "sbg:toolDefaultValue": "4",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "For tools which support multiprocessing, this value can be used to set the number of threads to be used."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--tag",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-tag",
                        "sbg:category": "GATK General",
                        "label": "Tag",
                        "id": "#tag",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "Arbitrary tag string to identify this GATK run as part of a group of runs, for later analysis."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--simplify",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-s",
                        "sbg:category": "Print Reads",
                        "label": "Simplify",
                        "id": "#simplify",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Simplify all reads."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--sample_name",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-sn",
                        "sbg:category": "Print Reads",
                        "label": "Sample Name",
                        "id": "#sample_name",
                        "sbg:toolDefaultValue": "[]",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "description": "Sample name to be included in the analysis. Can be specified multiple times."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--sample_file",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-sf",
                        "sbg:category": "Input Files",
                        "label": "Sample File",
                        "id": "#sample_file",
                        "type": [
                            "null",
                            {
                                "items": "File",
                                "type": "array"
                            }
                        ],
                        "required": false,
                        "description": "File containing a list of samples (one per line). Can be specified multiple times."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--remove_program_records",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-rpr",
                        "sbg:category": "GATK General",
                        "label": "Remove Program Records",
                        "id": "#remove_program_records",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Should we override the Walker's default and remove program records from the SAM header."
                    },
                    {
                        "required": true,
                        "inputBinding": {
                            "prefix": "--reference_sequence",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-R",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "FASTA, FA",
                        "id": "#reference",
                        "type": [
                            "File"
                        ],
                        "label": "Reference Genome",
                        "description": "Reference Genome in FASTA format."
                    },
                    {
                        "required": true,
                        "inputBinding": {
                            "prefix": "--input_file",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-I",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "SAM, BAM",
                        "id": "#reads",
                        "type": [
                            {
                                "items": "File",
                                "type": "array"
                            }
                        ],
                        "label": "Read sequences",
                        "description": "Read sequences in BAM format."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--read_group_black_list",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-rgbl",
                        "sbg:category": "GATK General",
                        "label": "Read Group Black List",
                        "id": "#read_group_black_list",
                        "sbg:toolDefaultValue": "[]",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "description": "Filters out read groups matching : or a .txt file containing the filter strings one per line."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--readGroup",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-readGroup",
                        "sbg:category": "Print Reads",
                        "label": "Read Group",
                        "id": "#read_group",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "Exclude all reads with this read group from the output."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--read_filter",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-rf",
                        "sbg:category": "GATK General",
                        "label": "Read Filter",
                        "id": "#read_filter",
                        "sbg:toolDefaultValue": "[]",
                        "type": [
                            "null",
                            {
                                "items": {
                                    "symbols": [
                                        "BadCigar",
                                        "BadMate",
                                        "CountingFilteringIterator.CountingRead",
                                        "DuplicateRead",
                                        "FailsVendorQualityCheck",
                                        "HCMappingQuality",
                                        "LibraryRead",
                                        "MalformedRead",
                                        "MappingQuality",
                                        "MappingQualityUnavailable",
                                        "MappingQualityZero",
                                        "MateSameStrand",
                                        "MaxInsertSize",
                                        "MissingReadGroup",
                                        "NoOriginalQualityScores",
                                        "NotPrimaryAlignment",
                                        "OverclippedRead",
                                        "Platform454",
                                        "PlatformFilter",
                                        "PlatformUnit",
                                        "ReadGroupBlackList",
                                        "ReadLength",
                                        "ReadName",
                                        "ReadStrand",
                                        "ReassignMappingQuality",
                                        "ReassignOneMappingQuality",
                                        "Sample",
                                        "SingleReadGroup",
                                        "UnmappedRead"
                                    ],
                                    "name": "read_filter",
                                    "type": "enum"
                                },
                                "type": "array",
                                "name": "read_filter"
                            }
                        ],
                        "description": "Specify filtration criteria to apply to each read individually."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--preserve_qscores_less_than",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-preserveQ",
                        "sbg:category": "GATK General",
                        "label": "Preserve Qscores Less Than",
                        "id": "#preserve_qscores_less_than",
                        "sbg:toolDefaultValue": "6",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Bases with quality scores less than this threshold won't be recalibrated (with -BQSR)."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--platform",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-platform",
                        "sbg:category": "Print Reads",
                        "label": "Platform",
                        "id": "#platform",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "Exclude all reads with this platform from the output."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--phone_home",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-et",
                        "sbg:category": "GATK General",
                        "label": "Phone Home",
                        "id": "#phone_home",
                        "sbg:toolDefaultValue": "STANDARD",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "NO_ET",
                                    "STANDARD"
                                ],
                                "name": "phone_home",
                                "type": "enum"
                            }
                        ],
                        "description": "What kind of GATK run report should we generate? STANDARD is the default, can be NO_ET so nothing is posted to the run repository. Please see http://gatkforums.broadinstitute.org/discussion/1250/what-is-phone-home-and-how-does-it-affect-me#latest for details."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--pedigreeValidationType",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-pedValidationType",
                        "sbg:category": "GATK General",
                        "label": "Pedigree Validation Type",
                        "id": "#pedigree_validation_type",
                        "sbg:toolDefaultValue": "STRICT",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "STRICT",
                                    "SILENT"
                                ],
                                "name": "pedigree_validation_type",
                                "type": "enum"
                            }
                        ],
                        "description": "How strict should we be in validating the pedigree information?."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--pedigreeString",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-pedString",
                        "sbg:category": "GATK General",
                        "label": "Pedigree String",
                        "id": "#pedigree_string",
                        "sbg:toolDefaultValue": "[]",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "description": "Pedigree string for samples."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--number",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-n",
                        "sbg:category": "Print Reads",
                        "label": "Number",
                        "id": "#number",
                        "sbg:toolDefaultValue": "-1",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Print the first n reads from the file, discarding the rest."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--nonDeterministicRandomSeed",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-ndrs",
                        "sbg:category": "GATK General",
                        "label": "Non Deterministic Random Seed",
                        "id": "#non_deterministic_random_seed",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Makes the GATK behave non deterministically, that is, the random numbers generated will be different in every run."
                    },
                    {
                        "sbg:altPrefix": null,
                        "sbg:category": "Execution",
                        "label": "Memory per job",
                        "id": "#memory_per_job",
                        "sbg:toolDefaultValue": "2048",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Amount of RAM memory in MB to be used per job."
                    },
                    {
                        "sbg:category": "Execution",
                        "label": "Memory overhead per job",
                        "id": "#memory_overhead_per_job",
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Memory overhead per job. By default this parameter value is set to '0' (zero megabytes). This parameter value is added to the Memory per job parameter value. This results in the allocation of the sum total (Memory per job and Memory overhead per job) amount of memory per job. By default the memory per job parameter value is set to 2048 megabytes, unless specified otherwise."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--maxRuntimeUnits",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-maxRuntimeUnits",
                        "sbg:category": "GATK General",
                        "label": "Max Runtime Units",
                        "id": "#max_runtime_units",
                        "sbg:toolDefaultValue": "MINUTES",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "NANOSECONDS",
                                    "MICROSECONDS",
                                    "MILLISECONDS",
                                    "SECONDS",
                                    "MINUTES",
                                    "HOURS",
                                    "DAYS"
                                ],
                                "name": "max_runtime_units",
                                "type": "enum"
                            }
                        ],
                        "description": "The TimeUnit for maxRuntime."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--maxRuntime",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-maxRuntime",
                        "sbg:category": "GATK General",
                        "label": "Max Runtime",
                        "id": "#max_runtime",
                        "sbg:toolDefaultValue": "-1",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "If provided, that GATK will stop execution cleanly as soon after maxRuntime has been exceeded, truncating the run but not exiting with a failure.  By default the value is interpreted in minutes, but this can be changed by maxRuntimeUnits."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--keep_program_records",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-kpr",
                        "sbg:category": "GATK General",
                        "label": "Keep Program Records",
                        "id": "#keep_program_records",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Should we override the Walker's default and keep program records from the SAM header."
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "itemSeparator": null,
                            "valueFrom": {
                                "class": "Expression",
                                "script": "{\n  if($job.inputs.intervals_file instanceof Array)\n    if([].concat($job.inputs.reads)[0].metadata)\n      if([].concat($job.inputs.reads)[0].metadata.intervals_file)\n        return '--intervals ' + [].concat($job.inputs.reads)[0].metadata.intervals_file\n  \n  if($job.inputs.intervals_file)\n    return '--intervals ' + $job.inputs.intervals_file.path\n  else\n    return ''\n}",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "TXT, BED, VCF",
                        "id": "#intervals_file",
                        "type": [
                            "null",
                            {
                                "items": "File",
                                "type": "array",
                                "name": "intervals_file"
                            }
                        ],
                        "label": "Intervals",
                        "description": "One or more genomic intervals over which to operate. Can be an specified in an .intervals file or a rod file.",
                        "sbg:stageInput": "link"
                    },
                    {
                        "inputBinding": {
                            "prefix": "-L",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": null,
                        "sbg:category": "GATK General",
                        "label": "Intervals",
                        "id": "#intervals",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "One or more genomic intervals over which to operate."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--interval_set_rule",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-isr",
                        "sbg:category": "GATK General",
                        "label": "Interval Set Rule",
                        "id": "#interval_set_rule",
                        "sbg:toolDefaultValue": "UNION",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "UNION",
                                    "INTERSECTION"
                                ],
                                "name": "interval_set_rule",
                                "type": "enum"
                            }
                        ],
                        "description": "Indicates the set merging approach the interval parser should use to combine the various -L or -XL inputs."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--interval_padding",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-ip",
                        "sbg:category": "GATK General",
                        "label": "Interval Padding",
                        "id": "#interval_padding",
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Indicates how many basepairs of padding to include around each of the intervals specified with the -L/--intervals argument."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--interval_merging",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-im",
                        "sbg:category": "GATK General",
                        "label": "Interval Merging",
                        "id": "#interval_merging",
                        "sbg:toolDefaultValue": "ALL",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "ALL",
                                    "OVERLAPPING_ONLY"
                                ],
                                "name": "interval_merging",
                                "type": "enum"
                            }
                        ],
                        "description": "Indicates the interval merging rule we should use for abutting intervals."
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "prefix": "--gatk_key",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-K",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "KEY, LICENSE",
                        "id": "#gatk_key",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Gatk key",
                        "description": "GATK Key file. Required if running with -et NO_ET. Please see http://gatkforums.broadinstitute.org/discussion/1250/what-is-phone-home-and-how-does-it-affect-me#latest for details."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-fixMisencodedQuals",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-fixMisencodedQuals",
                        "sbg:category": "GATK General",
                        "label": "Fix Misencoded Quals",
                        "id": "#fix_misencoded_quals",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Fix mis-encoded base quality scores."
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "prefix": "--excludeIntervals",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-XL",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "TXT, BED, VCF",
                        "id": "#exclude_intervals",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Exclude Intervals",
                        "description": "One or more genomic intervals to exclude from processing. Can be an .intervals file or a rod file."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--emit_original_quals",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-EOQ",
                        "sbg:category": "GATK General",
                        "label": "Emit Original Quals",
                        "id": "#emit_original_quals",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "If true, enables printing of the OQ tag with the original base qualities (with -BQSR)."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--downsampling_type",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-dt",
                        "sbg:category": "GATK General",
                        "label": "Downsampling Type",
                        "id": "#downsampling_type",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "NONE",
                                    "ALL_READS",
                                    "BY_SAMPLE"
                                ],
                                "name": "downsampling_type",
                                "type": "enum"
                            }
                        ],
                        "description": "Type of reads downsampling to employ at a given locus. Reads will be selected randomly to be removed from the pile based on the method described here."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--downsample_to_fraction",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-dfrac",
                        "sbg:category": "GATK General",
                        "label": "Downsample to Fraction",
                        "id": "#downsample_to_fraction",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            "float"
                        ],
                        "description": "Fraction [0.0-1.0] of reads to downsample to."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--downsample_to_coverage",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-dcov",
                        "sbg:category": "GATK General",
                        "label": "Downsample to Coverage",
                        "id": "#downsample_to_coverage",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Coverage to downsample to at any given locus; note that downsampled reads are randomly selected from all possible reads at a locus. For non-locus-based traversals (eg., ReadWalkers), this sets the maximum number of reads at each alignment start position."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--disableRandomization",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": null,
                        "sbg:category": "GATK General",
                        "label": "Disable Randomization",
                        "id": "#disable_radnomization",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Completely eliminates randomization from nondeterministic methods. To be used mostly in the testing framework where dynamic parallelism can result in differing numbers of calls to the generator."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--disable_indel_quals",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-DIQ",
                        "sbg:category": "GATK General",
                        "label": "Disable Indel Quals",
                        "id": "#disable_indel_quals",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "If 'true', disables printing of base insertion and base deletion tags (with -BQSR). Turns off printing of the base insertion and base deletion tags when using the -BQSR argument and only the base substitution qualities will be produced."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--defaultBaseQualities",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-DBQ",
                        "sbg:category": "GATK General",
                        "label": "Default Base Qualities",
                        "id": "#default_base_qualities",
                        "sbg:toolDefaultValue": "-1",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "If reads are missing some or all base quality scores, this value will be used for all base quality scores."
                    },
                    {
                        "sbg:altPrefix": null,
                        "sbg:category": "Execution",
                        "label": "CPU per job",
                        "id": "#cpu_per_job",
                        "sbg:toolDefaultValue": "1",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Number of CPUs per job."
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "prefix": "--BQSR",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": null,
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "GRP",
                        "id": "#bqsr",
                        "type": [
                            "null",
                            {
                                "items": "File",
                                "type": "array"
                            }
                        ],
                        "label": "BQSR Table",
                        "description": "The input covariates table file which enables on-the-fly base quality score recalibration."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--baqGapOpenPenalty",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-baqGOP",
                        "sbg:category": "GATK General",
                        "label": "BAQ Gap Open Penalty",
                        "id": "#baq_gap_open_penalty",
                        "sbg:toolDefaultValue": "40.0",
                        "type": [
                            "null",
                            "float"
                        ],
                        "description": "BAQ gap open penalty (Phred Scaled). Default value is 40. 30 is perhaps better for whole genome call sets."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--baq",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-baq",
                        "sbg:category": "GATK General",
                        "label": "BAQ Calculation Type",
                        "id": "#baq",
                        "sbg:toolDefaultValue": "OFF",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "OFF",
                                    "CALCULATE_AS_NECESSARY",
                                    "RECALCULATE"
                                ],
                                "name": "baq",
                                "type": "enum"
                            }
                        ],
                        "description": "Type of BAQ calculation to apply in the engine."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-allowPotentiallyMisencodedQuals",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "--allow_potentially_misencoded_quality_scores",
                        "sbg:category": "GATK General",
                        "label": "Allow Potentially Misencoded Quals",
                        "id": "#allow_potentailly_misencoded_quals",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Do not fail when encountered base qualities that are too high and seemingly indicate a problem with the base quality encoding of the BAM file."
                    }
                ],
                "sbg:createdOn": 1450911393,
                "sbg:links": [
                    {
                        "id": "https://www.broadinstitute.org/gatk/index.php",
                        "label": "Homepage"
                    },
                    {
                        "id": "https://github.com/broadgsa/gatk-protected",
                        "label": "Source Code"
                    },
                    {
                        "id": "https://www.broadinstitute.org/gatk/guide/pdfdocs/GATK_GuideBook_2.3-9.pdf",
                        "label": "Wiki"
                    },
                    {
                        "id": "https://www.broadinstitute.org/gatk/download/auth?package=GATK-archive&version=2.3-9-ge5ebf34",
                        "label": "Download"
                    },
                    {
                        "id": "https://www.broadinstitute.org/gatk/about/#in-the-literature",
                        "label": "Publication"
                    },
                    {
                        "id": "https://www.broadinstitute.org/gatk/gatkdocs/org_broadinstitute_gatk_tools_walkers_readutils_PrintReads.php",
                        "label": "Documentation"
                    }
                ],
                "x": 1745.1435063339654,
                "temporaryFailCodes": [],
                "successCodes": [],
                "sbg:project": "bix-demo/gatk-2-3-9-lite-demo",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1450911393,
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911394,
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911395,
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911396,
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911397,
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911398,
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911399,
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1461854096,
                        "sbg:revision": 7,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1461861365,
                        "sbg:revision": 8,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1472656041,
                        "sbg:revision": 9,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "metadata scatter."
                    },
                    {
                        "sbg:modifiedOn": 1472744347,
                        "sbg:revision": 10,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "intervals_file - stage link"
                    },
                    {
                        "sbg:modifiedOn": 1476371132,
                        "sbg:revision": 11,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "Added support for single bam processing without intervals"
                    },
                    {
                        "sbg:modifiedOn": 1476372560,
                        "sbg:revision": 12,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "Read_filter names corrected (\"Filter\" string removed)"
                    }
                ],
                "sbg:job": {
                    "inputs": {
                        "reads": [
                            {
                                "path": "/folder/input1.bam",
                                "metadata": {
                                    "intervals_file": "3333.intervals"
                                },
                                "secondaryFiles": []
                            }
                        ],
                        "intervals_file": [
                            {
                                "class": "File",
                                "path": "/path/to/intervals_file-1.ext",
                                "size": 0,
                                "secondaryFiles": []
                            },
                            {
                                "class": "File",
                                "path": "/path/to/intervals_file-2.ext",
                                "size": 0,
                                "secondaryFiles": []
                            }
                        ],
                        "memory_overhead_per_job": 0,
                        "read_filter": [
                            "MappingQualityZero"
                        ],
                        "reference": {
                            "path": "/folder/reference.fasta"
                        }
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 2048
                    }
                },
                "arguments": [
                    {
                        "prefix": "--out",
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\n  read_name = [].concat($job.inputs.reads)[0].path.replace(/^.*[\\\\\\/]/, '').split('.')\n  read_namebase = read_name.slice(0, read_name.length-1).join('.')\n\n  if($job.inputs.bqsr){\n  \treturn read_namebase + '.base_recalibrated.bam'\n  }\n  else{\n  \treturn read_namebase + '.bam'\n  }\n}",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "prefix": ";",
                        "position": 10000,
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\n  read_name = [].concat($job.inputs.reads)[0].path.replace(/^.*[\\\\\\/]/, '').split('.')\n  read_namebase = read_name.slice(0, read_name.length-1).join('.')\n  if($job.inputs.bqsr){\n\treturn 'mv ' + read_namebase + '.base_recalibrated.bai '+ read_namebase + '.base_recalibrated.bam.bai'\n  }\n  else{\n  \treturn 'mv ' + read_namebase + '.bai '+read_namebase+'.bam.bai'\n  }\n}",
                            "engine": "#cwl-js-engine"
                        }
                    }
                ],
                "sbg:toolAuthor": "Broad Institute",
                "sbg:license": "MIT License"
            }
        },
        {
            "inputs": [
                {
                    "id": "#GATK_BaseRecalibrator.validation_strictness"
                },
                {
                    "id": "#GATK_BaseRecalibrator.use_original_qualities"
                },
                {
                    "id": "#GATK_BaseRecalibrator.use_legacy_downsampler"
                },
                {
                    "id": "#GATK_BaseRecalibrator.unsafe"
                },
                {
                    "id": "#GATK_BaseRecalibrator.threads_per_job",
                    "default": 8
                },
                {
                    "id": "#GATK_BaseRecalibrator.tag"
                },
                {
                    "id": "#GATK_BaseRecalibrator.solid_recal_mode"
                },
                {
                    "id": "#GATK_BaseRecalibrator.solid_nocall_strategy"
                },
                {
                    "id": "#GATK_BaseRecalibrator.run_without_dbsnp_potentially_ruining_quality"
                },
                {
                    "id": "#GATK_BaseRecalibrator.remove_program_records"
                },
                {
                    "id": "#GATK_BaseRecalibrator.reference",
                    "source": [
                        "#SBG_FASTA_Indices.fasta_reference"
                    ]
                },
                {
                    "id": "#GATK_BaseRecalibrator.reads",
                    "source": [
                        "#GATK_IndelRealigner.realigned_bam_file"
                    ]
                },
                {
                    "id": "#GATK_BaseRecalibrator.read_group_black_list"
                },
                {
                    "id": "#GATK_BaseRecalibrator.read_filter"
                },
                {
                    "id": "#GATK_BaseRecalibrator.quantizing_levels"
                },
                {
                    "id": "#GATK_BaseRecalibrator.preserve_qscores_less_than"
                },
                {
                    "id": "#GATK_BaseRecalibrator.phone_home"
                },
                {
                    "id": "#GATK_BaseRecalibrator.pedigree_validation_type"
                },
                {
                    "id": "#GATK_BaseRecalibrator.pedigree_string"
                },
                {
                    "id": "#GATK_BaseRecalibrator.non_deterministic_random_seed"
                },
                {
                    "id": "#GATK_BaseRecalibrator.no_standard_covs"
                },
                {
                    "id": "#GATK_BaseRecalibrator.mismatches_default_quality"
                },
                {
                    "id": "#GATK_BaseRecalibrator.mismatches_context_size"
                },
                {
                    "id": "#GATK_BaseRecalibrator.memory_per_job",
                    "default": 14000
                },
                {
                    "id": "#GATK_BaseRecalibrator.memory_overhead_per_job"
                },
                {
                    "id": "#GATK_BaseRecalibrator.maximum_cycle_value"
                },
                {
                    "id": "#GATK_BaseRecalibrator.max_runtime_units"
                },
                {
                    "id": "#GATK_BaseRecalibrator.max_runtime"
                },
                {
                    "id": "#GATK_BaseRecalibrator.low_quality_tail"
                },
                {
                    "id": "#GATK_BaseRecalibrator.known_sites",
                    "source": [
                        "#Known_SNPs"
                    ]
                },
                {
                    "id": "#GATK_BaseRecalibrator.keep_program_records"
                },
                {
                    "id": "#GATK_BaseRecalibrator.intervals_file",
                    "source": [
                        "#Target_BED"
                    ]
                },
                {
                    "id": "#GATK_BaseRecalibrator.intervals"
                },
                {
                    "id": "#GATK_BaseRecalibrator.interval_set_rule"
                },
                {
                    "id": "#GATK_BaseRecalibrator.interval_padding"
                },
                {
                    "id": "#GATK_BaseRecalibrator.interval_merging"
                },
                {
                    "id": "#GATK_BaseRecalibrator.insertions_default_quality"
                },
                {
                    "id": "#GATK_BaseRecalibrator.indels_context_size"
                },
                {
                    "id": "#GATK_BaseRecalibrator.gatk_key"
                },
                {
                    "id": "#GATK_BaseRecalibrator.fix_misencoded_quals"
                },
                {
                    "id": "#GATK_BaseRecalibrator.exclude_intervals"
                },
                {
                    "id": "#GATK_BaseRecalibrator.emit_original_quals"
                },
                {
                    "id": "#GATK_BaseRecalibrator.downsampling_type"
                },
                {
                    "id": "#GATK_BaseRecalibrator.downsample_to_fraction"
                },
                {
                    "id": "#GATK_BaseRecalibrator.downsample_to_coverage"
                },
                {
                    "id": "#GATK_BaseRecalibrator.disable_radnomization"
                },
                {
                    "id": "#GATK_BaseRecalibrator.disable_indel_quals"
                },
                {
                    "id": "#GATK_BaseRecalibrator.deletions_default_quality"
                },
                {
                    "id": "#GATK_BaseRecalibrator.default_base_qualities"
                },
                {
                    "id": "#GATK_BaseRecalibrator.cpu_per_job",
                    "default": 8
                },
                {
                    "id": "#GATK_BaseRecalibrator.covariate"
                },
                {
                    "id": "#GATK_BaseRecalibrator.bqsr_baq_gap_open_penalty"
                },
                {
                    "id": "#GATK_BaseRecalibrator.binary_tag_name"
                },
                {
                    "id": "#GATK_BaseRecalibrator.baq_gap_open_penalty"
                },
                {
                    "id": "#GATK_BaseRecalibrator.baq"
                },
                {
                    "id": "#GATK_BaseRecalibrator.allow_potentailly_misencoded_quals"
                }
            ],
            "sbg:y": 427.1569752623087,
            "id": "#GATK_BaseRecalibrator",
            "outputs": [
                {
                    "id": "#GATK_BaseRecalibrator.plot_pdf"
                },
                {
                    "id": "#GATK_BaseRecalibrator.bqsr"
                }
            ],
            "sbg:x": 1582.2550237545036,
            "run": {
                "sbg:revisionNotes": ".bai secondary file",
                "outputs": [
                    {
                        "id": "#plot_pdf",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Plot",
                        "outputBinding": {
                            "glob": "*.pdf",
                            "sbg:metadata": {}
                        },
                        "sbg:fileTypes": "PDF"
                    },
                    {
                        "sbg:fileTypes": "GRP",
                        "id": "#bqsr",
                        "type": [
                            "File"
                        ],
                        "label": "BQSR Table",
                        "outputBinding": {
                            "glob": "*.recal_data.grp",
                            "sbg:metadata": {},
                            "sbg:inheritMetadataFrom": "#reads"
                        },
                        "description": "The output recalibration table file to create."
                    }
                ],
                "sbg:toolkitVersion": "2.3.9 Lite",
                "sbg:validationErrors": [],
                "sbg:contributors": [
                    "bogdang",
                    "vladimirk",
                    "bix-demo"
                ],
                "sbg:sbgMaintained": false,
                "hints": [
                    {
                        "dockerPull": "images.sbgenomics.com/stefanristeski/gatk2-lite:2.3-9",
                        "class": "DockerRequirement",
                        "dockerImageId": "47510cb2da55"
                    },
                    {
                        "class": "sbg:CPURequirement",
                        "value": {
                            "class": "Expression",
                            "script": "{\n  if($job.inputs.cpu_per_job){\n  \treturn $job.inputs.cpu_per_job\n  }\n\treturn 1\n}",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "class": "sbg:MemRequirement",
                        "value": {
                            "class": "Expression",
                            "script": "{\n  if($job.inputs.memory_per_job){\n    if($job.inputs.memory_overhead_per_job){\n    \treturn $job.inputs.memory_per_job + $job.inputs.memory_overhead_per_job\n    }\n    else\n  \t\treturn $job.inputs.memory_per_job\n  }\n  else if(!$job.inputs.memory_per_job && $job.inputs.memory_overhead_per_job){\n\t\treturn 2048 + $job.inputs.memory_overhead_per_job  \n  }\n  else\n  \treturn 2048\n}",
                            "engine": "#cwl-js-engine"
                        }
                    }
                ],
                "sbg:modifiedBy": "bogdang",
                "baseCommand": [
                    "java",
                    {
                        "class": "Expression",
                        "script": "{\n  if($job.inputs.memory_per_job){\n  \treturn '-Xmx'.concat($job.inputs.memory_per_job, 'M')\n  }\n  \treturn '-Xmx2048M'\n}",
                        "engine": "#cwl-js-engine"
                    },
                    "-jar",
                    "/opt/GenomeAnalysisTKLite.jar",
                    "--analysis_type",
                    "BaseRecalibrator",
                    {
                        "class": "Expression",
                        "script": "{ \n  if($job.inputs.threads_per_job){\n    return '-nct '.concat($job.inputs.threads_per_job)\n  }\n  else{\n  \treturn '-nct '.concat(3)\n  }\n}",
                        "engine": "#cwl-js-engine"
                    }
                ],
                "sbg:latestRevision": 9,
                "sbg:cmdPreview": "java -Xmx2048M -jar /opt/GenomeAnalysisTKLite.jar --analysis_type BaseRecalibrator -nct 3 --reference_sequence /folder/reference.fasta --input_file /folder/my_reads.bam --out my_reads.recal_data.grp  --disable_indel_quals --plot_pdf_file my_reads.pdf",
                "id": "bix-demo/gatk-2-3-9-lite-demo/gatk-2-3-9-lite-base-recalibrator/9",
                "sbg:id": "admin/sbg-public-data/gatk-2-3-9-lite-base-recalibrator/13",
                "sbg:toolkit": "GATK",
                "sbg:createdBy": "bix-demo",
                "requirements": [
                    {
                        "id": "#cwl-js-engine",
                        "class": "ExpressionEngineRequirement",
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ]
                    }
                ],
                "label": "GATK BaseRecalibrator",
                "sbg:image_url": null,
                "class": "CommandLineTool",
                "y": 427.1569752623087,
                "stdout": "",
                "cwlVersion": "sbg:draft-2",
                "stdin": "",
                "sbg:revision": 9,
                "sbg:categories": [
                    "Plotting-and-Rendering",
                    "SAM/BAM-Processing"
                ],
                "sbg:modifiedOn": 1478707638,
                "description": "Overview\n\nThis tool is designed to work as the first pass in a two-pass processing step. It does a by-locus traversal operating only at sites that are not in dbSNP. We assume that all reference mismatches we see are therefore errors and indicative of poor base quality. This tool generates tables based on various user-specified covariates (such as read group, reported quality score, cycle, and context). Since there is a large amount of data, one can then calculate an empirical probability of error given the particular covariates seen at this site, where p(error) = num mismatches / num observations. The output file is a table (of the several covariate values, num observations, num mismatches, empirical quality score).\n\nNote: ReadGroupCovariate and QualityScoreCovariate are required covariates and will be added regardless of whether or not they were specified.\n\nInput\nA BAM file containing data that needs to be recalibrated.\nA database of known polymorphic sites to mask out.\n\nOutput\nA GATKReport file with many tables:\nThe list of arguments\nThe quantized qualities table\nThe recalibration table by read group\nThe recalibration table by quality score\nThe recalibration table for all the optional covariates\nThe GATKReport table format is intended to be easy to read by both humans and computer languages (especially R). Check out the documentation of the GATKReport (in the FAQs) to learn how to manipulate this table.\n\nUsage example\n java -jar GenomeAnalysisTK.jar \\\n   -T BaseRecalibrator \\\n   -R reference.fasta \\\n   -I my_reads.bam \\\n   -knownSites latest_dbsnp.vcf \\\n   -o recal_data.table\n\n(IMPORTANT) Reference \".fasta\" Secondary Files\n\nTools in GATK that require a fasta reference file also look for the reference file's corresponding .fai (fasta index) and .dict (fasta dictionary) files. The fasta index file allows random access to reference bases and the dictionary file is a dictionary of the contig names and sizes contained within the fasta reference. These two secondary files are essential for GATK to work properly. To append these two files to your fasta reference please use the 'SBG FASTA Indices' tool within your GATK based workflow before using any of the GATK tools.",
                "inputs": [
                    {
                        "inputBinding": {
                            "prefix": "--validation_strictness",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-S",
                        "sbg:category": "GATK General",
                        "label": "Validation Strictness",
                        "id": "#validation_strictness",
                        "sbg:toolDefaultValue": "SILENT",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "SILENT",
                                    "LENIENT",
                                    "STRICT"
                                ],
                                "name": "validation_strictness",
                                "type": "enum"
                            }
                        ],
                        "description": "How strict should we be with validation."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--useOriginalQualities",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-OQ",
                        "sbg:category": "GATK General",
                        "label": "Use Original Qualities",
                        "id": "#use_original_qualities",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "If set, use the original base quality scores from the OQ tag when present instead of the standard scores."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--use_legacy_downsampler",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-use_legacy_downsampler",
                        "sbg:category": "GATK General",
                        "label": "Use Legacy Downsampler",
                        "id": "#use_legacy_downsampler",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Use the legacy downsampling implementation instead of the newer, less-tested implementation."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--unsafe",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-U",
                        "sbg:category": "GATK General",
                        "label": "Unsafe",
                        "id": "#unsafe",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "ALLOW_UNINDEXED_BAM",
                                    "ALLOW_UNSET_BAM_SORT_ORDER",
                                    "NO_READ_ORDER_VERIFICATION",
                                    "ALLOW_SEQ_DICT_INCOMPATIBILITY",
                                    "LENIENT_VCF_PROCESSING",
                                    "ALL"
                                ],
                                "name": "unsafe",
                                "type": "enum"
                            }
                        ],
                        "description": "If set, enables unsafe operations: nothing will be checked at runtime.  For expert users only who know what they are doing.  We do not support usage of this argument."
                    },
                    {
                        "sbg:altPrefix": null,
                        "sbg:category": "Execution",
                        "label": "Threads per job",
                        "id": "#threads_per_job",
                        "sbg:toolDefaultValue": "3",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "For tools which support multiprocessing, this value can be used to set the number of threads to be used."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--tag",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-tag",
                        "sbg:category": "GATK General",
                        "label": "Tag",
                        "id": "#tag",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "Arbitrary tag string to identify this GATK run as part of a group of runs, for later analysis."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--solid_recal_mode",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-sMode",
                        "sbg:category": "Base Recalibrator",
                        "label": "Solid Recal Mode",
                        "id": "#solid_recal_mode",
                        "sbg:toolDefaultValue": "SET_Q_ZERO",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "DO_NOTHING",
                                    "SET_Q_ZERO",
                                    "SET_Q_ZERO_BASE_N",
                                    "REMOVE_REF_BIAS"
                                ],
                                "name": "solid_recal_mode",
                                "type": "enum"
                            }
                        ],
                        "description": "How should we recalibrate solid bases in which the reference was inserted? Options = DO_NOTHING, SET_Q_ZERO, SET_Q_ZERO_BASE_N, or REMOVE_REF_BIAS."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--solid_nocall_strategy",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": null,
                        "sbg:category": "Base Recalibrator",
                        "label": "Solid Nocall Strategy",
                        "id": "#solid_nocall_strategy",
                        "sbg:toolDefaultValue": "THROW_EXCEPTION",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "THROW_EXCEPTION",
                                    "LEAVE_READ_UNRECALIBRATED",
                                    "PURGE_READ"
                                ],
                                "name": "solid_nocall_strategy",
                                "type": "enum"
                            }
                        ],
                        "description": "Defines the behavior of the recalibrator when it encounters no calls in the color space. Options = THROW_EXCEPTION, LEAVE_READ_UNRECALIBRATED, or PURGE_READ."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-run_without_dbsnp_potentially_ruining_quality",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": null,
                        "sbg:category": "Base Recalibrator",
                        "label": "Run Without Dbsnp Potentially Ruining Quality",
                        "id": "#run_without_dbsnp_potentially_ruining_quality",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "If specified, allows the recalibrator to be used without a dbsnp rod. Very unsafe and for expert users only."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--remove_program_records",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-rpr",
                        "sbg:category": "GATK General",
                        "label": "Remove Program Records",
                        "id": "#remove_program_records",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Should we override the Walker's default and remove program records from the SAM header."
                    },
                    {
                        "required": true,
                        "inputBinding": {
                            "prefix": "--reference_sequence",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-R",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "FASTA, FA",
                        "id": "#reference",
                        "type": [
                            "File"
                        ],
                        "label": "Reference Genome",
                        "description": "Reference Genome in FASTA format."
                    },
                    {
                        "required": true,
                        "inputBinding": {
                            "secondaryFiles": [
                                ".bai"
                            ],
                            "prefix": "--input_file",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-I",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "SAM, BAM",
                        "id": "#reads",
                        "type": [
                            {
                                "items": "File",
                                "type": "array"
                            }
                        ],
                        "label": "Read sequences",
                        "description": "Read sequences in BAM format."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--read_group_black_list",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-rgbl",
                        "sbg:category": "GATK General",
                        "label": "Read Group Black List",
                        "id": "#read_group_black_list",
                        "sbg:toolDefaultValue": "[]",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "description": "Filters out read groups matching : or a .txt file containing the filter strings one per line."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--read_filter",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-rf",
                        "sbg:category": "GATK General",
                        "label": "Read Filter",
                        "id": "#read_filter",
                        "sbg:toolDefaultValue": "[]",
                        "type": [
                            "null",
                            {
                                "items": {
                                    "symbols": [
                                        "BadCigarFilter",
                                        "BadMateFilter",
                                        "CountingFilteringIterator.CountingReadFilter",
                                        "DuplicateReadFilter",
                                        "FailsVendorQualityCheckFilter",
                                        "HCMappingQualityFilter",
                                        "LibraryReadFilter",
                                        "MalformedReadFilter",
                                        "MappingQualityFilter",
                                        "MappingQualityUnavailableFilter",
                                        "MappingQualityZeroFilter",
                                        "MateSameStrandFilter",
                                        "MaxInsertSizeFilter",
                                        "MissingReadGroupFilter",
                                        "NoOriginalQualityScoresFilter",
                                        "NotPrimaryAlignmentFilter",
                                        "OverclippedReadFilter",
                                        "Platform454Filter",
                                        "PlatformFilter",
                                        "PlatformUnitFilter",
                                        "ReadGroupBlackListFilter",
                                        "ReadLengthFilter",
                                        "ReadNameFilter",
                                        "ReadStrandFilter",
                                        "ReassignMappingQualityFilter",
                                        "ReassignOneMappingQualityFilter",
                                        "SampleFilter",
                                        "SingleReadGroupFilter",
                                        "UnmappedReadFilter"
                                    ],
                                    "name": "read_filter",
                                    "type": "enum"
                                },
                                "type": "array"
                            }
                        ],
                        "description": "Specify filtration criteria to apply to each read individually."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--quantizing_levels",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-ql",
                        "sbg:category": "Base Recalibrator",
                        "label": "Quantizing Levels",
                        "id": "#quantizing_levels",
                        "sbg:toolDefaultValue": "16",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Number of distinct quality scores in the quantized output."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--preserve_qscores_less_than",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-preserveQ",
                        "sbg:category": "GATK General",
                        "label": "Preserve Qscores Less Than",
                        "id": "#preserve_qscores_less_than",
                        "sbg:toolDefaultValue": "6",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Bases with quality scores less than this threshold won't be recalibrated (with -BQSR)."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--phone_home",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-et",
                        "sbg:category": "GATK General",
                        "label": "Phone Home",
                        "id": "#phone_home",
                        "sbg:toolDefaultValue": "STANDARD",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "NO_ET",
                                    "STANDARD"
                                ],
                                "name": "phone_home",
                                "type": "enum"
                            }
                        ],
                        "description": "What kind of GATK run report should we generate? STANDARD is the default, can be NO_ET so nothing is posted to the run repository. Please see http://gatkforums.broadinstitute.org/discussion/1250/what-is-phone-home-and-how-does-it-affect-me#latest for details."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--pedigreeValidationType",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-pedValidationType",
                        "sbg:category": "GATK General",
                        "label": "Pedigree Validation Type",
                        "id": "#pedigree_validation_type",
                        "sbg:toolDefaultValue": "STRICT",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "STRICT",
                                    "SILENT"
                                ],
                                "name": "pedigree_validation_type",
                                "type": "enum"
                            }
                        ],
                        "description": "How strict should we be in validating the pedigree information?."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--pedigreeString",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-pedString",
                        "sbg:category": "GATK General",
                        "label": "Pedigree String",
                        "id": "#pedigree_string",
                        "sbg:toolDefaultValue": "[]",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "description": "Pedigree string for samples."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--nonDeterministicRandomSeed",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-ndrs",
                        "sbg:category": "GATK General",
                        "label": "Non Deterministic Random Seed",
                        "id": "#non_deterministic_random_seed",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Makes the GATK behave non deterministically, that is, the random numbers generated will be different in every run."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--no_standard_covs",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-noStandard",
                        "sbg:category": "Base Recalibrator",
                        "label": "No Standard Covs",
                        "id": "#no_standard_covs",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Do not use the standard set of covariates, but rather just the ones listed using the -cov argument. Cannot be used if grouped by interval."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--mismatches_default_quality",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-msdq",
                        "sbg:category": "Base Recalibrator",
                        "label": "Mismatches Default Quality",
                        "id": "#mismatches_default_quality",
                        "sbg:toolDefaultValue": "-1",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Default quality for the base mismatches covariate."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--mismatches_context_size",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-mcs",
                        "sbg:category": "Base Recalibrator",
                        "label": "Mismatches Context Size",
                        "id": "#mismatches_context_size",
                        "sbg:toolDefaultValue": "2",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Size of the k-mer context to be used for base mismatches."
                    },
                    {
                        "sbg:altPrefix": null,
                        "sbg:category": "Execution",
                        "label": "Memory per job",
                        "id": "#memory_per_job",
                        "sbg:toolDefaultValue": "2048",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Amount of RAM memory in MB to be used per job."
                    },
                    {
                        "sbg:category": "Execution",
                        "label": "Memory overhead per job",
                        "id": "#memory_overhead_per_job",
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Memory overhead per job. By default this parameter value is set to '0' (zero megabytes). This parameter value is added to the Memory per job parameter value. This results in the allocation of the sum total (Memory per job and Memory overhead per job) amount of memory per job. By default the memory per job parameter value is set to 2048 megabytes, unless specified otherwise."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--maximum_cycle_value",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-maxCycle",
                        "sbg:category": "Base Recalibrator",
                        "label": "Maximum Cycle Value",
                        "id": "#maximum_cycle_value",
                        "sbg:toolDefaultValue": "500",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "The maximum cycle value permitted for the Cycle covariate."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--maxRuntimeUnits",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-maxRuntimeUnits",
                        "sbg:category": "GATK General",
                        "label": "Max Runtime Units",
                        "id": "#max_runtime_units",
                        "sbg:toolDefaultValue": "MINUTES",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "NANOSECONDS",
                                    "MICROSECONDS",
                                    "MILLISECONDS",
                                    "SECONDS",
                                    "MINUTES",
                                    "HOURS",
                                    "DAYS"
                                ],
                                "name": "max_runtime_units",
                                "type": "enum"
                            }
                        ],
                        "description": "The TimeUnit for maxRuntime."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--maxRuntime",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-maxRuntime",
                        "sbg:category": "GATK General",
                        "label": "Max Runtime",
                        "id": "#max_runtime",
                        "sbg:toolDefaultValue": "-1",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "If provided, that GATK will stop execution cleanly as soon after maxRuntime has been exceeded, truncating the run but not exiting with a failure.  By default the value is interpreted in minutes, but this can be changed by maxRuntimeUnits."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--low_quality_tail",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-lqt",
                        "sbg:category": "Base Recalibrator",
                        "label": "Low Quality Tail",
                        "id": "#low_quality_tail",
                        "sbg:toolDefaultValue": "2",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Minimum quality for the bases in the tail of the reads to be considered."
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "prefix": "--knownSites",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "VCF, BED, TXT",
                        "id": "#known_sites",
                        "type": [
                            "null",
                            {
                                "items": "File",
                                "type": "array",
                                "name": "known_sites"
                            }
                        ],
                        "label": "Known Sites",
                        "description": "A database of known polymorphic sites to skip over in the recalibration algorithm.",
                        "sbg:stageInput": "link"
                    },
                    {
                        "inputBinding": {
                            "prefix": "--keep_program_records",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-kpr",
                        "sbg:category": "GATK General",
                        "label": "Keep Program Records",
                        "id": "#keep_program_records",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Should we override the Walker's default and keep program records from the SAM header."
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "prefix": "--intervals",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "TXT,BED,VCF,INTERVALS",
                        "id": "#intervals_file",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Intervals",
                        "description": "One or more genomic intervals over which to operate. Can be an specified in an .intervals file or a rod file. Cannot be used if grouped by interval. ."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-L",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "GATK General",
                        "label": "Intervals",
                        "id": "#intervals",
                        "sbg:toolDefaultValue": "sample",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "One or more genomic intervals over which to operate."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--interval_set_rule",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-isr",
                        "sbg:category": "GATK General",
                        "label": "Interval Set Rule",
                        "id": "#interval_set_rule",
                        "sbg:toolDefaultValue": "UNION",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "UNION",
                                    "INTERSECTION"
                                ],
                                "name": "interval_set_rule",
                                "type": "enum"
                            }
                        ],
                        "description": "Indicates the set merging approach the interval parser should use to combine the various -L or -XL inputs."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--interval_padding",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-ip",
                        "sbg:category": "GATK General",
                        "label": "Interval Padding",
                        "id": "#interval_padding",
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Indicates how many basepairs of padding to include around each of the intervals specified with the -L/--intervals argument."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--interval_merging",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-im",
                        "sbg:category": "GATK General",
                        "label": "Interval Merging",
                        "id": "#interval_merging",
                        "sbg:toolDefaultValue": "ALL",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "ALL",
                                    "OVERLAPPING_ONLY"
                                ],
                                "name": "interval_merging",
                                "type": "enum"
                            }
                        ],
                        "description": "Indicates the interval merging rule we should use for abutting intervals."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--insertions_default_quality",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-idq",
                        "sbg:category": "Base Recalibrator",
                        "label": "Insertions Default Quality",
                        "id": "#insertions_default_quality",
                        "sbg:toolDefaultValue": "45",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Default quality for the base insertions covariate."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--indels_context_size",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-ics",
                        "sbg:category": "Base Recalibrator",
                        "label": "Indels Context Size",
                        "id": "#indels_context_size",
                        "sbg:toolDefaultValue": "3",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Size of the k-mer context to be used for base insertions and deletions."
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "prefix": "--gatk_key",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-K",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "KEY, LICENSE",
                        "id": "#gatk_key",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Gatk key",
                        "description": "GATK Key file. Required if running with -et NO_ET. Please see http://gatkforums.broadinstitute.org/discussion/1250/what-is-phone-home-and-how-does-it-affect-me#latest for details."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-fixMisencodedQuals",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-fixMisencodedQuals",
                        "sbg:category": "GATK General",
                        "label": "Fix Misencoded Quals",
                        "id": "#fix_misencoded_quals",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Fix mis-encoded base quality scores."
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "prefix": "--excludeIntervals",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-XL",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "TXT, BED, VCF",
                        "id": "#exclude_intervals",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Exclude Intervals",
                        "description": "One or more genomic intervals to exclude from processing. Can be an .intervals file or a rod file."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--emit_original_quals",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-EOQ",
                        "sbg:category": "GATK General",
                        "label": "Emit Original Quals",
                        "id": "#emit_original_quals",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "If true, enables printing of the OQ tag with the original base qualities (with -BQSR)."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--downsampling_type",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-dt",
                        "sbg:category": "GATK General",
                        "label": "Downsampling Type",
                        "id": "#downsampling_type",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "NONE",
                                    "ALL_READS",
                                    "BY_SAMPLE"
                                ],
                                "name": "downsampling_type",
                                "type": "enum"
                            }
                        ],
                        "description": "Type of reads downsampling to employ at a given locus. Reads will be selected randomly to be removed from the pile based on the method described here."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--downsample_to_fraction",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-dfrac",
                        "sbg:category": "GATK General",
                        "label": "Downsample to Fraction",
                        "id": "#downsample_to_fraction",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            "float"
                        ],
                        "description": "Fraction [0.0-1.0] of reads to downsample to."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--downsample_to_coverage",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-dcov",
                        "sbg:category": "GATK General",
                        "label": "Downsample to Coverage",
                        "id": "#downsample_to_coverage",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Coverage to downsample to at any given locus; note that downsampled reads are randomly selected from all possible reads at a locus. For non-locus-based traversals (eg., ReadWalkers), this sets the maximum number of reads at each alignment start position."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--disableRandomization",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": null,
                        "sbg:category": "GATK General",
                        "label": "Disable Randomization",
                        "id": "#disable_radnomization",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Completely eliminates randomization from nondeterministic methods. To be used mostly in the testing framework where dynamic parallelism can result in differing numbers of calls to the generator."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--disable_indel_quals",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": null,
                        "sbg:category": "Base Recalibrator",
                        "label": "Disable indel quals",
                        "id": "#disable_indel_quals",
                        "sbg:toolDefaultValue": "True",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Disable indel quality recalibration. Must be set to true in GATK Lite."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--deletions_default_quality",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-ddq",
                        "sbg:category": "Base Recalibrator",
                        "label": "Deletions Default Quality",
                        "id": "#deletions_default_quality",
                        "sbg:toolDefaultValue": "45",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Default quality for the base deletions covariate."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--defaultBaseQualities",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-DBQ",
                        "sbg:category": "GATK General",
                        "label": "Default Base Qualities",
                        "id": "#default_base_qualities",
                        "sbg:toolDefaultValue": "-1",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "If reads are missing some or all base quality scores, this value will be used for all base quality scores."
                    },
                    {
                        "sbg:category": "Execution",
                        "label": "CPU per job",
                        "id": "#cpu_per_job",
                        "sbg:toolDefaultValue": "1",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Number of CPU per job."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--covariate",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-cov",
                        "sbg:category": "Base Recalibrator",
                        "label": "Covariate",
                        "id": "#covariate",
                        "sbg:toolDefaultValue": "[]",
                        "type": [
                            "null",
                            {
                                "items": {
                                    "symbols": [
                                        "CycleCovariate",
                                        "ReadGroupCovariate",
                                        "ContextCovariate",
                                        "RepeatLengthCovariate",
                                        "QualityScoreCovariate"
                                    ],
                                    "name": "covariate",
                                    "type": "enum"
                                },
                                "type": "array"
                            }
                        ],
                        "description": "One or more covariates to be used in the recalibration. Can be specified multiple times."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--bqsrBAQGapOpenPenalty",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-bqsrBAQGOP",
                        "sbg:category": "Base Recalibrator",
                        "label": "Bqsr Baq Gap Open Penalty",
                        "id": "#bqsr_baq_gap_open_penalty",
                        "sbg:toolDefaultValue": "40.0",
                        "type": [
                            "null",
                            "float"
                        ],
                        "description": "BQSR BAQ gap open penalty (Phred Scaled).  Default value is 40.  30 is perhaps better for whole genome call sets."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--binary_tag_name",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-bintag",
                        "sbg:category": "Base Recalibrator",
                        "label": "Binary Tag Name",
                        "id": "#binary_tag_name",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "The binary tag covariate name if using it."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--baqGapOpenPenalty",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-baqGOP",
                        "sbg:category": "GATK General",
                        "label": "BAQ Gap Open Penalty",
                        "id": "#baq_gap_open_penalty",
                        "sbg:toolDefaultValue": "40.0",
                        "type": [
                            "null",
                            "float"
                        ],
                        "description": "BAQ gap open penalty (Phred Scaled). Default value is 40. 30 is perhaps better for whole genome call sets."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--baq",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-baq",
                        "sbg:category": "GATK General",
                        "label": "BAQ Calculation Type",
                        "id": "#baq",
                        "sbg:toolDefaultValue": "OFF",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "OFF",
                                    "CALCULATE_AS_NECESSARY",
                                    "RECALCULATE"
                                ],
                                "name": "baq",
                                "type": "enum"
                            }
                        ],
                        "description": "Type of BAQ calculation to apply in the engine."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-allowPotentiallyMisencodedQuals",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "--allow_potentially_misencoded_quality_scores",
                        "sbg:category": "GATK General",
                        "label": "Allow Potentially Misencoded Quals",
                        "id": "#allow_potentailly_misencoded_quals",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Do not fail when encountered base qualities that are too high and seemingly indicate a problem with the base quality encoding of the BAM file."
                    }
                ],
                "sbg:createdOn": 1450911406,
                "sbg:links": [
                    {
                        "id": "https://www.broadinstitute.org/gatk/index.php",
                        "label": "Homepage"
                    },
                    {
                        "id": "https://github.com/broadgsa/gatk-protected",
                        "label": "Source Code"
                    },
                    {
                        "id": "https://www.broadinstitute.org/gatk/guide/pdfdocs/GATK_GuideBook_2.3-9.pdf",
                        "label": "Wiki"
                    },
                    {
                        "id": "https://www.broadinstitute.org/gatk/download/auth?package=GATK-archive&version=2.3-9-ge5ebf34",
                        "label": "Download"
                    },
                    {
                        "id": "https://www.broadinstitute.org/gatk/about/#in-the-literature",
                        "label": "Publication"
                    },
                    {
                        "id": "https://www.broadinstitute.org/gatk/gatkdocs/org_broadinstitute_gatk_tools_walkers_bqsr_BaseRecalibrator.php",
                        "label": "Documentation"
                    }
                ],
                "x": 1582.2550237545036,
                "temporaryFailCodes": [],
                "successCodes": [],
                "sbg:project": "bix-demo/gatk-2-3-9-lite-demo",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1450911406,
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911409,
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911410,
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911411,
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911412,
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911413,
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1469450580,
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "File extensions for intervals_file corrected."
                    },
                    {
                        "sbg:modifiedOn": 1471364360,
                        "sbg:revision": 7,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "known sites link."
                    },
                    {
                        "sbg:modifiedOn": 1472226104,
                        "sbg:revision": 8,
                        "sbg:modifiedBy": "bogdang",
                        "sbg:revisionNotes": "-L intervals string"
                    },
                    {
                        "sbg:modifiedOn": 1478707638,
                        "sbg:revision": 9,
                        "sbg:modifiedBy": "bogdang",
                        "sbg:revisionNotes": ".bai secondary file"
                    }
                ],
                "sbg:job": {
                    "inputs": {
                        "memory_overhead_per_job": 0,
                        "intervals": "20",
                        "reference": {
                            "path": "/folder/reference.fasta"
                        },
                        "reads": [
                            {
                                "class": "File",
                                "path": "/folder/my_reads.bam",
                                "size": 0,
                                "secondaryFiles": []
                            }
                        ],
                        "cpu_per_job": null,
                        "known_sites": [
                            {
                                "path": "/folder/latest_dbsnp.vcf"
                            }
                        ]
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 2048
                    }
                },
                "arguments": [
                    {
                        "prefix": "--out",
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\n  read_name = [].concat($job.inputs.reads)[0].path.replace(/^.*[\\\\\\/]/, '').split('.')\n  read_namebase = read_name.slice(0, read_name.length-1).join('.')\n  return read_namebase + '.recal_data.grp'\n}",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "separate": true,
                        "valueFrom": "--disable_indel_quals"
                    },
                    {
                        "prefix": "--plot_pdf_file",
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\n    read_name = [].concat($job.inputs.reads)[0].path.replace(/^.*[\\\\\\/]/, '').split('.')\n    read_namebase = read_name.slice(0, read_name.length-1).join('.')\n    return read_namebase + '.pdf'\n\n}",
                            "engine": "#cwl-js-engine"
                        }
                    }
                ],
                "sbg:toolAuthor": "Broad Institute",
                "sbg:license": "MIT License"
            }
        },
        {
            "inputs": [
                {
                    "id": "#GATK_IndelRealigner.validation_strictness"
                },
                {
                    "id": "#GATK_IndelRealigner.use_original_qualities"
                },
                {
                    "id": "#GATK_IndelRealigner.use_legacy_downsampler"
                },
                {
                    "id": "#GATK_IndelRealigner.unsafe"
                },
                {
                    "id": "#GATK_IndelRealigner.target_intervals",
                    "source": [
                        "#GATK_RealignerTargetCreator.indel_realigner_intervals_file"
                    ]
                },
                {
                    "id": "#GATK_IndelRealigner.tag"
                },
                {
                    "id": "#GATK_IndelRealigner.remove_program_records"
                },
                {
                    "id": "#GATK_IndelRealigner.reference",
                    "source": [
                        "#SBG_FASTA_Indices.fasta_reference"
                    ]
                },
                {
                    "id": "#GATK_IndelRealigner.reads",
                    "source": [
                        "#BWA_MEM_Bundle_0_7_13.aligned_reads"
                    ]
                },
                {
                    "id": "#GATK_IndelRealigner.read_group_black_list"
                },
                {
                    "id": "#GATK_IndelRealigner.read_filter"
                },
                {
                    "id": "#GATK_IndelRealigner.preserve_qscores_less_than"
                },
                {
                    "id": "#GATK_IndelRealigner.phone_home"
                },
                {
                    "id": "#GATK_IndelRealigner.pedigree_validation_type"
                },
                {
                    "id": "#GATK_IndelRealigner.pedigree_string"
                },
                {
                    "id": "#GATK_IndelRealigner.non_deterministic_random_seed"
                },
                {
                    "id": "#GATK_IndelRealigner.no_original_alignment_tags"
                },
                {
                    "id": "#GATK_IndelRealigner.memory_per_job",
                    "default": 14000
                },
                {
                    "id": "#GATK_IndelRealigner.memory_overhead_per_job"
                },
                {
                    "id": "#GATK_IndelRealigner.max_runtime_units"
                },
                {
                    "id": "#GATK_IndelRealigner.max_runtime"
                },
                {
                    "id": "#GATK_IndelRealigner.max_reads_in_memory"
                },
                {
                    "id": "#GATK_IndelRealigner.max_reads_for_realignment"
                },
                {
                    "id": "#GATK_IndelRealigner.max_reads_for_consensuses"
                },
                {
                    "id": "#GATK_IndelRealigner.max_positional_move_allowed"
                },
                {
                    "id": "#GATK_IndelRealigner.max_isize_for_movement"
                },
                {
                    "id": "#GATK_IndelRealigner.max_consensuses"
                },
                {
                    "id": "#GATK_IndelRealigner.lod_threshold_for_cleaning"
                },
                {
                    "id": "#GATK_IndelRealigner.known_alleles",
                    "source": [
                        "#Known_Indels"
                    ]
                },
                {
                    "id": "#GATK_IndelRealigner.keep_program_records"
                },
                {
                    "id": "#GATK_IndelRealigner.intervals_file",
                    "source": [
                        "#Target_BED"
                    ]
                },
                {
                    "id": "#GATK_IndelRealigner.intervals"
                },
                {
                    "id": "#GATK_IndelRealigner.interval_set_rule"
                },
                {
                    "id": "#GATK_IndelRealigner.interval_padding"
                },
                {
                    "id": "#GATK_IndelRealigner.interval_merging"
                },
                {
                    "id": "#GATK_IndelRealigner.gatk_key"
                },
                {
                    "id": "#GATK_IndelRealigner.fix_misencoded_quals"
                },
                {
                    "id": "#GATK_IndelRealigner.exclude_intervals"
                },
                {
                    "id": "#GATK_IndelRealigner.entropy_threshold"
                },
                {
                    "id": "#GATK_IndelRealigner.emit_original_quals"
                },
                {
                    "id": "#GATK_IndelRealigner.downsampling_type"
                },
                {
                    "id": "#GATK_IndelRealigner.downsample_to_fraction"
                },
                {
                    "id": "#GATK_IndelRealigner.downsample_to_coverage"
                },
                {
                    "id": "#GATK_IndelRealigner.disable_radnomization"
                },
                {
                    "id": "#GATK_IndelRealigner.disable_indel_quals"
                },
                {
                    "id": "#GATK_IndelRealigner.default_base_qualities"
                },
                {
                    "id": "#GATK_IndelRealigner.cpu_per_job",
                    "default": 1
                },
                {
                    "id": "#GATK_IndelRealigner.consensus_determination_model"
                },
                {
                    "id": "#GATK_IndelRealigner.baq_gap_open_penalty"
                },
                {
                    "id": "#GATK_IndelRealigner.baq"
                },
                {
                    "id": "#GATK_IndelRealigner.allow_potentailly_misencoded_quals"
                }
            ],
            "sbg:y": 393.76329379995417,
            "id": "#GATK_IndelRealigner",
            "outputs": [
                {
                    "id": "#GATK_IndelRealigner.realigned_bam_file"
                }
            ],
            "sbg:x": 1341.9610304552052,
            "run": {
                "sbg:revisionNotes": "Output name based on reads filename",
                "outputs": [
                    {
                        "sbg:fileTypes": "BAM",
                        "id": "#realigned_bam_file",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Realigned BAM",
                        "outputBinding": {
                            "glob": "*.realigned.bam",
                            "sbg:metadata": {
                                "intervals_file": {
                                    "class": "Expression",
                                    "script": "{\n  if ($job.inputs.target_intervals)\n    if($job.inputs.target_intervals.metadata)\n      if('intervals_file' in $job.inputs.target_intervals.metadata)\n        return $job.inputs.target_intervals.metadata.intervals_file\n  return 'NO_INTERVALS'\n}",
                                    "engine": "#cwl-js-engine"
                                }
                            },
                            "sbg:inheritMetadataFrom": "#reads",
                            "secondaryFiles": [
                                ".bai",
                                "^.bai"
                            ]
                        },
                        "description": "Realigned BAM."
                    }
                ],
                "sbg:toolkitVersion": "2.3.9 Lite",
                "sbg:validationErrors": [],
                "sbg:contributors": [
                    "bogdang",
                    "vladimirk",
                    "bix-demo"
                ],
                "sbg:sbgMaintained": false,
                "hints": [
                    {
                        "dockerPull": "images.sbgenomics.com/stefanristeski/gatk2-lite:2.3-9",
                        "class": "DockerRequirement",
                        "dockerImageId": "47510cb2da55"
                    },
                    {
                        "class": "sbg:CPURequirement",
                        "value": {
                            "class": "Expression",
                            "script": "{\n  if($job.inputs.cpu_per_job){\n  \treturn $job.inputs.cpu_per_job\n  }\n\treturn 1\n}",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "class": "sbg:MemRequirement",
                        "value": {
                            "class": "Expression",
                            "script": "{\n  if($job.inputs.memory_per_job){\n    if($job.inputs.memory_overhead_per_job){\n    \treturn $job.inputs.memory_per_job + $job.inputs.memory_overhead_per_job\n    }\n    else\n  \t\treturn $job.inputs.memory_per_job\n  }\n  else if(!$job.inputs.memory_per_job && $job.inputs.memory_overhead_per_job){\n\t\treturn 2048 + $job.inputs.memory_overhead_per_job  \n  }\n  else\n  \treturn 2048\n}",
                            "engine": "#cwl-js-engine"
                        }
                    }
                ],
                "sbg:modifiedBy": "bogdang",
                "baseCommand": [
                    "java",
                    {
                        "class": "Expression",
                        "script": "{   \n  if($job.inputs.memory_per_job){\n    return '-Xmx'.concat($job.inputs.memory_per_job, 'M')\n  }   \n  \treturn '-Xmx2048M'\n}",
                        "engine": "#cwl-js-engine"
                    },
                    "-jar",
                    "/opt/GenomeAnalysisTKLite.jar",
                    "--analysis_type",
                    "IndelRealigner"
                ],
                "sbg:latestRevision": 13,
                "sbg:cmdPreview": "java -Xmx2048M -jar /opt/GenomeAnalysisTKLite.jar --analysis_type IndelRealigner --reference_sequence /folder/reference.fasta --input_file /folder/input.bam --targetIntervals intervalListFromRTC.intervals --out input.realigned.bam",
                "id": "bix-demo/gatk-2-3-9-lite-demo/gatk-2-3-9-lite-indelrealigner/13",
                "sbg:id": "admin/sbg-public-data/gatk-2-3-9-lite-indelrealigner/20",
                "sbg:toolkit": "GATK",
                "sbg:createdBy": "bix-demo",
                "requirements": [
                    {
                        "id": "#cwl-js-engine",
                        "class": "ExpressionEngineRequirement",
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ]
                    }
                ],
                "label": "GATK IndelRealigner",
                "sbg:image_url": null,
                "class": "CommandLineTool",
                "y": 393.76329379995417,
                "stdout": "",
                "cwlVersion": "sbg:draft-2",
                "stdin": "",
                "sbg:revision": 13,
                "sbg:categories": [
                    "Alignment"
                ],
                "sbg:modifiedOn": 1478713467,
                "description": "Overview\n\nThe local realignment process is designed to consume one or more BAM files and to locally realign reads such that the number of mismatching bases is minimized across all the reads. In general, a large percent of regions requiring local realignment are due to the presence of an insertion or deletion (indels) in the individual's genome with respect to the reference genome. Such alignment artifacts result in many bases mismatching the reference near the misalignment, which are easily mistaken as SNPs. Moreover, since read mapping algorithms operate on each read independently, it is impossible to place reads on the reference genome such at mismatches are minimized across all reads. Consequently, even when some reads are correctly mapped with indels, reads covering the indel near just the start or end of the read are often incorrectly mapped with respect the true indel, also requiring realignment. Local realignment serves to transform regions with misalignments due to indels into clean reads containing a consensus indel suitable for standard variant discovery approaches. Unlike most mappers, this walker uses the full alignment context to determine whether an appropriate alternate reference (i.e. indel) exists. Following local realignment, the GATK tool Unified Genotyper can be used to sensitively and specifically identify indels.\n\nThere are 2 steps to the realignment process:\n\n1. Determining (small) suspicious intervals which are likely in need of realignment (see the RealignerTargetCreator tool)\n2. Running the realigner over those intervals (IndelRealigner)\nFor more details, see the indel realignment method documentation.\n\nInput\nOne or more aligned BAM files and optionally one or more lists of known indels.\n\nOutput\nA realigned version of your input BAM file(s).\n\nUsage example:\n java -jar GenomeAnalysisTK.jar \\\n   -T IndelRealigner \\\n   -R reference.fasta \\\n   -I input.bam \\\n   --known indels.vcf \\\n   -targetIntervals intervalListFromRTC.intervals \\\n   -o realignedBam.bam\n \nCaveats\n\nThe input BAM(s), reference, and known indel file(s) should be the same ones to be used for the IndelRealigner step.\nBecause reads produced from the 454 technology inherently contain false indels, the realigner will not work with them (or with reads from similar technologies).\nThis tool also ignores MQ0 reads and reads with consecutive indel operators in the CIGAR string.\n\n(IMPORTANT) Reference \".fasta\" Secondary Files\n\nTools in GATK that require a fasta reference file also look for the reference file's corresponding .fai (fasta index) and .dict (fasta dictionary) files. The fasta index file allows random access to reference bases and the dictionary file is a dictionary of the contig names and sizes contained within the fasta reference. These two secondary files are essential for GATK to work properly. To append these two files to your fasta reference please use the 'SBG FASTA Indices' tool within your GATK based workflow before using any of the GATK tools.",
                "inputs": [
                    {
                        "inputBinding": {
                            "prefix": "--validation_strictness",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-S",
                        "sbg:category": "GATK General",
                        "label": "Validation Strictness",
                        "id": "#validation_strictness",
                        "sbg:toolDefaultValue": "SILENT",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "SILENT",
                                    "LENIENT",
                                    "STRICT"
                                ],
                                "name": "validation_strictness",
                                "type": "enum"
                            }
                        ],
                        "description": "How strict should we be with validation."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--useOriginalQualities",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-OQ",
                        "sbg:category": "GATK General",
                        "label": "Use Original Qualities",
                        "id": "#use_original_qualities",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "If set, use the original base quality scores from the OQ tag when present instead of the standard scores."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--use_legacy_downsampler",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-use_legacy_downsampler",
                        "sbg:category": "GATK General",
                        "label": "Use Legacy Downsampler",
                        "id": "#use_legacy_downsampler",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Use the legacy downsampling implementation instead of the newer, less-tested implementation."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--unsafe",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-U",
                        "sbg:category": "GATK General",
                        "label": "Unsafe",
                        "id": "#unsafe",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "ALLOW_UNINDEXED_BAM",
                                    "ALLOW_UNSET_BAM_SORT_ORDER",
                                    "NO_READ_ORDER_VERIFICATION",
                                    "ALLOW_SEQ_DICT_INCOMPATIBILITY",
                                    "LENIENT_VCF_PROCESSING",
                                    "ALL"
                                ],
                                "name": "unsafe",
                                "type": "enum"
                            }
                        ],
                        "description": "If set, enables unsafe operations: nothing will be checked at runtime.  For expert users only who know what they are doing.  We do not support usage of this argument."
                    },
                    {
                        "required": true,
                        "inputBinding": {
                            "prefix": "--targetIntervals",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-targetIntervals",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "TXT,INTERVALS",
                        "id": "#target_intervals",
                        "type": [
                            "File"
                        ],
                        "label": "Target Intervals",
                        "description": "Intervals file output from RealignerTargetCreator."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--tag",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-tag",
                        "sbg:category": "GATK General",
                        "label": "Tag",
                        "id": "#tag",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "Arbitrary tag string to identify this GATK run as part of a group of runs, for later analysis."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--remove_program_records",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-rpr",
                        "sbg:category": "GATK General",
                        "label": "Remove Program Records",
                        "id": "#remove_program_records",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Should we override the Walker's default and remove program records from the SAM header."
                    },
                    {
                        "required": true,
                        "inputBinding": {
                            "prefix": "--reference_sequence",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-R",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "FASTA, FA",
                        "id": "#reference",
                        "type": [
                            "File"
                        ],
                        "label": "Reference Genome",
                        "description": "Reference Genome in FASTA format."
                    },
                    {
                        "required": true,
                        "inputBinding": {
                            "secondaryFiles": [
                                ".bai"
                            ],
                            "prefix": "--input_file",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-I",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "SAM, BAM",
                        "id": "#reads",
                        "type": [
                            {
                                "items": "File",
                                "type": "array",
                                "name": "reads"
                            }
                        ],
                        "label": "Read sequences",
                        "description": "Read sequences in BAM format."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--read_group_black_list",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-rgbl",
                        "sbg:category": "GATK General",
                        "label": "Read Group Black List",
                        "id": "#read_group_black_list",
                        "sbg:toolDefaultValue": "[]",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "description": "Filters out read groups matching : or a .txt file containing the filter strings one per line."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--read_filter",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-rf",
                        "sbg:category": "GATK General",
                        "label": "Read Filter",
                        "id": "#read_filter",
                        "sbg:toolDefaultValue": "[]",
                        "type": [
                            "null",
                            {
                                "items": {
                                    "symbols": [
                                        "BadCigarFilter",
                                        "BadMateFilter",
                                        "CountingFilteringIterator.CountingReadFilter",
                                        "DuplicateReadFilter",
                                        "FailsVendorQualityCheckFilter",
                                        "HCMappingQualityFilter",
                                        "LibraryReadFilter",
                                        "MalformedReadFilter",
                                        "MappingQualityFilter",
                                        "MappingQualityUnavailableFilter",
                                        "MappingQualityZeroFilter",
                                        "MateSameStrandFilter",
                                        "MaxInsertSizeFilter",
                                        "MissingReadGroupFilter",
                                        "NoOriginalQualityScoresFilter",
                                        "NotPrimaryAlignmentFilter",
                                        "OverclippedReadFilter",
                                        "Platform454Filter",
                                        "PlatformFilter",
                                        "PlatformUnitFilter",
                                        "ReadGroupBlackListFilter",
                                        "ReadLengthFilter",
                                        "ReadNameFilter",
                                        "ReadStrandFilter",
                                        "ReassignMappingQualityFilter",
                                        "ReassignOneMappingQualityFilter",
                                        "SampleFilter",
                                        "SingleReadGroupFilter",
                                        "UnmappedReadFilter"
                                    ],
                                    "name": "read_filter",
                                    "type": "enum"
                                },
                                "type": "array"
                            }
                        ],
                        "description": "Specify filtration criteria to apply to each read individually."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--preserve_qscores_less_than",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-preserveQ",
                        "sbg:category": "GATK General",
                        "label": "Preserve Qscores Less Than",
                        "id": "#preserve_qscores_less_than",
                        "sbg:toolDefaultValue": "6",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Bases with quality scores less than this threshold won't be recalibrated (with -BQSR)."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--phone_home",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-et",
                        "sbg:category": "GATK General",
                        "label": "Phone Home",
                        "id": "#phone_home",
                        "sbg:toolDefaultValue": "STANDARD",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "NO_ET",
                                    "STANDARD"
                                ],
                                "name": "phone_home",
                                "type": "enum"
                            }
                        ],
                        "description": "What kind of GATK run report should we generate? STANDARD is the default, can be NO_ET so nothing is posted to the run repository. Please see http://gatkforums.broadinstitute.org/discussion/1250/what-is-phone-home-and-how-does-it-affect-me#latest for details."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--pedigreeValidationType",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-pedValidationType",
                        "sbg:category": "GATK General",
                        "label": "Pedigree Validation Type",
                        "id": "#pedigree_validation_type",
                        "sbg:toolDefaultValue": "STRICT",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "STRICT",
                                    "SILENT"
                                ],
                                "name": "pedigree_validation_type",
                                "type": "enum"
                            }
                        ],
                        "description": "How strict should we be in validating the pedigree information?."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--pedigreeString",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-pedString",
                        "sbg:category": "GATK General",
                        "label": "Pedigree String",
                        "id": "#pedigree_string",
                        "sbg:toolDefaultValue": "[]",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "description": "Pedigree string for samples."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--nonDeterministicRandomSeed",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-ndrs",
                        "sbg:category": "GATK General",
                        "label": "Non Deterministic Random Seed",
                        "id": "#non_deterministic_random_seed",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Makes the GATK behave non deterministically, that is, the random numbers generated will be different in every run."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--noOriginalAlignmentTags",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-noTags",
                        "sbg:category": "Indel Realigner",
                        "label": "No Original Alignment Tags",
                        "id": "#no_original_alignment_tags",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Don't output the original cigar or alignment start tags for each realigned read in the output bam."
                    },
                    {
                        "sbg:altPrefix": null,
                        "sbg:category": "Execution",
                        "label": "Memory per job",
                        "id": "#memory_per_job",
                        "sbg:toolDefaultValue": "2048",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Amount of RAM memory in MB to be used per job."
                    },
                    {
                        "sbg:category": "Execution",
                        "label": "Memory overhead per job",
                        "id": "#memory_overhead_per_job",
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Memory overhead per job. By default this parameter value is set to '0' (zero megabytes). This parameter value is added to the Memory per job parameter value. This results in the allocation of the sum total (Memory per job and Memory overhead per job) amount of memory per job. By default the memory per job parameter value is set to 2048 megabytes, unless specified otherwise."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--maxRuntimeUnits",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-maxRuntimeUnits",
                        "sbg:category": "GATK General",
                        "label": "Max Runtime Units",
                        "id": "#max_runtime_units",
                        "sbg:toolDefaultValue": "MINUTES",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "NANOSECONDS",
                                    "MICROSECONDS",
                                    "MILLISECONDS",
                                    "SECONDS",
                                    "MINUTES",
                                    "HOURS",
                                    "DAYS"
                                ],
                                "name": "max_runtime_units",
                                "type": "enum"
                            }
                        ],
                        "description": "The TimeUnit for maxRuntime."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--maxRuntime",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-maxRuntime",
                        "sbg:category": "GATK General",
                        "label": "Max Runtime",
                        "id": "#max_runtime",
                        "sbg:toolDefaultValue": "-1",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "If provided, that GATK will stop execution cleanly as soon after maxRuntime has been exceeded, truncating the run but not exiting with a failure.  By default the value is interpreted in minutes, but this can be changed by maxRuntimeUnits."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--maxReadsInMemory",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-maxInMemory",
                        "sbg:category": "Indel Realigner",
                        "label": "Max Reads In Memory",
                        "id": "#max_reads_in_memory",
                        "sbg:toolDefaultValue": "150000",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Max reads allowed to be kept in memory at a time by the SAMFileWriter."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--maxReadsForRealignment",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-maxReads",
                        "sbg:category": "Indel Realigner",
                        "label": "Max Reads For Realignment",
                        "id": "#max_reads_for_realignment",
                        "sbg:toolDefaultValue": "20000",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Max reads allowed at an interval for realignment."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--maxReadsForConsensuses",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-greedy",
                        "sbg:category": "Indel Realigner",
                        "label": "Max Reads For Consensuses",
                        "id": "#max_reads_for_consensuses",
                        "sbg:toolDefaultValue": "120",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Max reads used for finding the alternate consensuses (necessary to improve performance in deep coverage)."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--maxPositionalMoveAllowed",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-maxPosMove",
                        "sbg:category": "Indel Realigner",
                        "label": "Max Positional Move Allowed",
                        "id": "#max_positional_move_allowed",
                        "sbg:toolDefaultValue": "200",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Maximum positional move in basepairs that a read can be adjusted during realignment."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--maxIsizeForMovement",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-maxIsize",
                        "sbg:category": "Indel Realigner",
                        "label": "Max Isize For Movement",
                        "id": "#max_isize_for_movement",
                        "sbg:toolDefaultValue": "3000",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Maximum insert size of read pairs that we attempt to realign."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--maxConsensuses",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": null,
                        "sbg:category": "Indel Realigner",
                        "label": "Max Consensuses",
                        "id": "#max_consensuses",
                        "sbg:toolDefaultValue": "30",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Max alternate consensuses to try (necessary to improve performance in deep coverage)."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--LODThresholdForCleaning",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-LOD",
                        "sbg:category": "Indel Realigner",
                        "label": "Lod Threshold For Cleaning",
                        "id": "#lod_threshold_for_cleaning",
                        "sbg:toolDefaultValue": "5.0",
                        "type": [
                            "null",
                            "float"
                        ],
                        "description": "LOD threshold above which the cleaner will clean."
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "prefix": "--knownAlleles",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-known",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "VCF",
                        "id": "#known_alleles",
                        "type": [
                            "null",
                            {
                                "items": "File",
                                "type": "array"
                            }
                        ],
                        "label": "Known Alleles",
                        "description": "Input VCF file(s) with known indels."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--keep_program_records",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-kpr",
                        "sbg:category": "GATK General",
                        "label": "Keep Program Records",
                        "id": "#keep_program_records",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Should we override the Walker's default and keep program records from the SAM header."
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "itemSeparator": null,
                            "valueFrom": {
                                "class": "Expression",
                                "script": "{\n  if($job.inputs.intervals_file instanceof Array)\n    if($job.inputs.target_intervals.metadata)\n      if($job.inputs.target_intervals.metadata.intervals_file)\n        return '--intervals ' + $job.inputs.target_intervals.metadata.intervals_file\n  \n  if($job.inputs.intervals_file)\n    return '--intervals ' + $job.inputs.intervals_file.path\n  else\n    return ''\n}",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "sbg:altPrefix": "-L",
                        "sbg:category": "Input Files",
                        "label": "Intervals",
                        "id": "#intervals_file",
                        "type": [
                            "null",
                            {
                                "items": "File",
                                "type": "array",
                                "name": "intervals_file"
                            }
                        ],
                        "sbg:fileTypes": "TXT, BED, VCF",
                        "description": "One or more genomic intervals over which to operate. Can be an specified in an .intervals file or a rod file.",
                        "sbg:stageInput": "link"
                    },
                    {
                        "inputBinding": {
                            "prefix": "-L",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": null,
                        "sbg:category": "GATK General",
                        "label": "Intervals",
                        "id": "#intervals",
                        "sbg:toolDefaultValue": "sample",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "One or more genomic intervals over which to operate."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--interval_set_rule",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-isr",
                        "sbg:category": "GATK General",
                        "label": "Interval Set Rule",
                        "id": "#interval_set_rule",
                        "sbg:toolDefaultValue": "UNION",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "UNION",
                                    "INTERSECTION"
                                ],
                                "name": "interval_set_rule",
                                "type": "enum"
                            }
                        ],
                        "description": "Indicates the set merging approach the interval parser should use to combine the various -L or -XL inputs."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--interval_padding",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-ip",
                        "sbg:category": "GATK General",
                        "label": "Interval Padding",
                        "id": "#interval_padding",
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Indicates how many basepairs of padding to include around each of the intervals specified with the -L/--intervals argument."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--interval_merging",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-im",
                        "sbg:category": "GATK General",
                        "label": "Interval Merging",
                        "id": "#interval_merging",
                        "sbg:toolDefaultValue": "ALL",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "ALL",
                                    "OVERLAPPING_ONLY"
                                ],
                                "name": "interval_merging",
                                "type": "enum"
                            }
                        ],
                        "description": "Indicates the interval merging rule we should use for abutting intervals."
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "prefix": "--gatk_key",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-K",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "KEY, LICENSE",
                        "id": "#gatk_key",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Gatk key",
                        "description": "GATK Key file. Required if running with -et NO_ET. Please see http://gatkforums.broadinstitute.org/discussion/1250/what-is-phone-home-and-how-does-it-affect-me#latest for details."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-fixMisencodedQuals",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-fixMisencodedQuals",
                        "sbg:category": "GATK General",
                        "label": "Fix Misencoded Quals",
                        "id": "#fix_misencoded_quals",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Fix mis-encoded base quality scores."
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "prefix": "--excludeIntervals",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-XL",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "TXT, BED, VCF",
                        "id": "#exclude_intervals",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Exclude Intervals",
                        "description": "One or more genomic intervals to exclude from processing. Can be an .intervals file or a rod file."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--entropyThreshold",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-entropy",
                        "sbg:category": "Indel Realigner",
                        "label": "Entropy Threshold",
                        "id": "#entropy_threshold",
                        "sbg:toolDefaultValue": "0.15",
                        "type": [
                            "null",
                            "float"
                        ],
                        "description": "Percentage of mismatches at a locus to be considered having high entropy."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--emit_original_quals",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-EOQ",
                        "sbg:category": "GATK General",
                        "label": "Emit Original Quals",
                        "id": "#emit_original_quals",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "If true, enables printing of the OQ tag with the original base qualities (with -BQSR)."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--downsampling_type",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-dt",
                        "sbg:category": "GATK General",
                        "label": "Downsampling Type",
                        "id": "#downsampling_type",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "NONE",
                                    "ALL_READS",
                                    "BY_SAMPLE"
                                ],
                                "name": "downsampling_type",
                                "type": "enum"
                            }
                        ],
                        "description": "Type of reads downsampling to employ at a given locus. Reads will be selected randomly to be removed from the pile based on the method described here."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--downsample_to_fraction",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-dfrac",
                        "sbg:category": "GATK General",
                        "label": "Downsample to Fraction",
                        "id": "#downsample_to_fraction",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            "float"
                        ],
                        "description": "Fraction [0.0-1.0] of reads to downsample to."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--downsample_to_coverage",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-dcov",
                        "sbg:category": "GATK General",
                        "label": "Downsample to Coverage",
                        "id": "#downsample_to_coverage",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Coverage to downsample to at any given locus; note that downsampled reads are randomly selected from all possible reads at a locus. For non-locus-based traversals (eg., ReadWalkers), this sets the maximum number of reads at each alignment start position."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--disableRandomization",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": null,
                        "sbg:category": "GATK General",
                        "label": "Disable Randomization",
                        "id": "#disable_radnomization",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Completely eliminates randomization from nondeterministic methods. To be used mostly in the testing framework where dynamic parallelism can result in differing numbers of calls to the generator."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--disable_indel_quals",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-DIQ",
                        "sbg:category": "GATK General",
                        "label": "Disable Indel Quals",
                        "id": "#disable_indel_quals",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "If 'true', disables printing of base insertion and base deletion tags (with -BQSR). Turns off printing of the base insertion and base deletion tags when using the -BQSR argument and only the base substitution qualities will be produced."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--defaultBaseQualities",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-DBQ",
                        "sbg:category": "GATK General",
                        "label": "Default Base Qualities",
                        "id": "#default_base_qualities",
                        "sbg:toolDefaultValue": "-1",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "If reads are missing some or all base quality scores, this value will be used for all base quality scores."
                    },
                    {
                        "sbg:altPrefix": null,
                        "sbg:category": "Execution",
                        "label": "CPU per job",
                        "id": "#cpu_per_job",
                        "sbg:toolDefaultValue": "1",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Number of CPUs per job."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--consensusDeterminationModel",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-model",
                        "sbg:category": "Indel Realigner",
                        "label": "Consensus Determination Model",
                        "id": "#consensus_determination_model",
                        "sbg:toolDefaultValue": "USE_READS",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "KNOWNS_ONLY",
                                    "USE_READS",
                                    "USE_SW"
                                ],
                                "name": "consensus_determination_model",
                                "type": "enum"
                            }
                        ],
                        "description": "Determines how to compute the possible alternate consenses."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--baqGapOpenPenalty",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-baqGOP",
                        "sbg:category": "GATK General",
                        "label": "BAQ Gap Open Penalty",
                        "id": "#baq_gap_open_penalty",
                        "sbg:toolDefaultValue": "40.0",
                        "type": [
                            "null",
                            "float"
                        ],
                        "description": "BAQ gap open penalty (Phred Scaled). Default value is 40. 30 is perhaps better for whole genome call sets."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--baq",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-baq",
                        "sbg:category": "GATK General",
                        "label": "BAQ Calculation Type",
                        "id": "#baq",
                        "sbg:toolDefaultValue": "OFF",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "OFF",
                                    "CALCULATE_AS_NECESSARY",
                                    "RECALCULATE"
                                ],
                                "name": "baq",
                                "type": "enum"
                            }
                        ],
                        "description": "Type of BAQ calculation to apply in the engine."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-allowPotentiallyMisencodedQuals",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "--allow_potentially_misencoded_quality_scores",
                        "sbg:category": "GATK General",
                        "label": "Allow Potentially Misencoded Quals",
                        "id": "#allow_potentailly_misencoded_quals",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Do not fail when encountered base qualities that are too high and seemingly indicate a problem with the base quality encoding of the BAM file."
                    }
                ],
                "sbg:createdOn": 1450911378,
                "sbg:links": [
                    {
                        "id": "https://www.broadinstitute.org/gatk/index.php",
                        "label": "Homepage"
                    },
                    {
                        "id": "https://github.com/broadgsa/gatk-protected",
                        "label": "Source code"
                    },
                    {
                        "id": "https://www.broadinstitute.org/gatk/guide/pdfdocs/GATK_GuideBook_2.3-9.pdf",
                        "label": "Wiki"
                    },
                    {
                        "id": "https://www.broadinstitute.org/gatk/download/auth?package=GATK-archive&version=2.3-9-ge5ebf34",
                        "label": "Download"
                    },
                    {
                        "id": "https://www.broadinstitute.org/gatk/about/#in-the-literature",
                        "label": "Publication"
                    },
                    {
                        "id": "https://www.broadinstitute.org/gatk/gatkdocs/org_broadinstitute_gatk_tools_walkers_indels_IndelRealigner.php",
                        "label": "Documentation"
                    }
                ],
                "x": 1341.9610304552052,
                "temporaryFailCodes": [],
                "successCodes": [],
                "sbg:project": "bix-demo/gatk-2-3-9-lite-demo",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1450911378,
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911378,
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911379,
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911380,
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911381,
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911382,
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1460993599,
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1472651971,
                        "sbg:revision": 7,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "Scatter metadata support."
                    },
                    {
                        "sbg:modifiedOn": 1472652361,
                        "sbg:revision": 8,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "metadata scatter 2"
                    },
                    {
                        "sbg:modifiedOn": 1472655804,
                        "sbg:revision": 9,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "scatter metadata 3"
                    },
                    {
                        "sbg:modifiedOn": 1472724542,
                        "sbg:revision": 10,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": ".bai as secondary."
                    },
                    {
                        "sbg:modifiedOn": 1472738930,
                        "sbg:revision": 11,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "output single file."
                    },
                    {
                        "sbg:modifiedOn": 1476371352,
                        "sbg:revision": 12,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "Added support for run without intervals"
                    },
                    {
                        "sbg:modifiedOn": 1478713467,
                        "sbg:revision": 13,
                        "sbg:modifiedBy": "bogdang",
                        "sbg:revisionNotes": "Output name based on reads filename"
                    }
                ],
                "sbg:job": {
                    "inputs": {
                        "memory_per_job": null,
                        "memory_overhead_per_job": 1000,
                        "intervals": "",
                        "target_intervals": {
                            "secondaryFiles": [],
                            "class": "File",
                            "path": "intervalListFromRTC.intervals",
                            "size": 0,
                            "metadata": {
                                "intervals_file": "treterfgsdfsd.4444"
                            }
                        },
                        "reference": {
                            "path": "/folder/reference.fasta"
                        },
                        "reads": [
                            {
                                "path": "/folder/input.bam"
                            }
                        ],
                        "known_alleles": [
                            {
                                "path": "/folder/indels.vcf"
                            }
                        ],
                        "intervals_file": [
                            {
                                "class": "File",
                                "path": "/path/to/intervals_file-1.ext",
                                "size": 0,
                                "secondaryFiles": []
                            },
                            {
                                "class": "File",
                                "path": "/path/to/intervals_file-2.ext",
                                "size": 0,
                                "secondaryFiles": []
                            }
                        ]
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 3048
                    }
                },
                "arguments": [
                    {
                        "prefix": "--out",
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\n  read_name = [].concat($job.inputs.reads)[0].path.replace(/^.*[\\\\\\/]/, '').split('.')\n  read_namebase = read_name.slice(0, read_name.length-1).join('.')\n  return read_namebase + '.realigned.bam'\n}",
                            "engine": "#cwl-js-engine"
                        }
                    }
                ],
                "sbg:toolAuthor": "Broad Institute",
                "sbg:license": "MIT License"
            }
        },
        {
            "inputs": [
                {
                    "id": "#GATK_RealignerTargetCreator.window_size"
                },
                {
                    "id": "#GATK_RealignerTargetCreator.validation_strictness"
                },
                {
                    "id": "#GATK_RealignerTargetCreator.use_original_qualities"
                },
                {
                    "id": "#GATK_RealignerTargetCreator.use_legacy_downsampler"
                },
                {
                    "id": "#GATK_RealignerTargetCreator.unsafe"
                },
                {
                    "id": "#GATK_RealignerTargetCreator.threads_per_job",
                    "default": 7
                },
                {
                    "id": "#GATK_RealignerTargetCreator.tag"
                },
                {
                    "id": "#GATK_RealignerTargetCreator.remove_program_records"
                },
                {
                    "id": "#GATK_RealignerTargetCreator.reference",
                    "source": [
                        "#SBG_FASTA_Indices.fasta_reference"
                    ]
                },
                {
                    "id": "#GATK_RealignerTargetCreator.reads",
                    "source": [
                        "#BWA_MEM_Bundle_0_7_13.aligned_reads"
                    ]
                },
                {
                    "id": "#GATK_RealignerTargetCreator.read_group_black_list"
                },
                {
                    "id": "#GATK_RealignerTargetCreator.read_filter"
                },
                {
                    "id": "#GATK_RealignerTargetCreator.preserve_qscores_less_than"
                },
                {
                    "id": "#GATK_RealignerTargetCreator.phone_home"
                },
                {
                    "id": "#GATK_RealignerTargetCreator.pedigree_validation_type"
                },
                {
                    "id": "#GATK_RealignerTargetCreator.pedigree_string"
                },
                {
                    "id": "#GATK_RealignerTargetCreator.non_deterministic_random_seed"
                },
                {
                    "id": "#GATK_RealignerTargetCreator.mismatch_fraction"
                },
                {
                    "id": "#GATK_RealignerTargetCreator.min_reads_at_locus"
                },
                {
                    "id": "#GATK_RealignerTargetCreator.memory_per_job",
                    "default": 14000
                },
                {
                    "id": "#GATK_RealignerTargetCreator.memory_overhead_per_job"
                },
                {
                    "id": "#GATK_RealignerTargetCreator.max_runtime_units"
                },
                {
                    "id": "#GATK_RealignerTargetCreator.max_runtime"
                },
                {
                    "id": "#GATK_RealignerTargetCreator.max_interval_size"
                },
                {
                    "id": "#GATK_RealignerTargetCreator.known",
                    "source": [
                        "#Known_Indels"
                    ]
                },
                {
                    "id": "#GATK_RealignerTargetCreator.keep_program_records"
                },
                {
                    "id": "#GATK_RealignerTargetCreator.intervals_file",
                    "source": [
                        "#Target_BED"
                    ]
                },
                {
                    "id": "#GATK_RealignerTargetCreator.intervals"
                },
                {
                    "id": "#GATK_RealignerTargetCreator.interval_set_rule"
                },
                {
                    "id": "#GATK_RealignerTargetCreator.interval_padding"
                },
                {
                    "id": "#GATK_RealignerTargetCreator.interval_merging"
                },
                {
                    "id": "#GATK_RealignerTargetCreator.gatk_key"
                },
                {
                    "id": "#GATK_RealignerTargetCreator.fix_misencoded_quals"
                },
                {
                    "id": "#GATK_RealignerTargetCreator.exclude_intervals"
                },
                {
                    "id": "#GATK_RealignerTargetCreator.emit_original_quals"
                },
                {
                    "id": "#GATK_RealignerTargetCreator.downsampling_type"
                },
                {
                    "id": "#GATK_RealignerTargetCreator.downsample_to_fraction"
                },
                {
                    "id": "#GATK_RealignerTargetCreator.downsample_to_coverage"
                },
                {
                    "id": "#GATK_RealignerTargetCreator.disable_radnomization"
                },
                {
                    "id": "#GATK_RealignerTargetCreator.disable_indel_quals"
                },
                {
                    "id": "#GATK_RealignerTargetCreator.default_base_qualities"
                },
                {
                    "id": "#GATK_RealignerTargetCreator.cpu_per_job",
                    "default": 7
                },
                {
                    "id": "#GATK_RealignerTargetCreator.baq_gap_open_penalty"
                },
                {
                    "id": "#GATK_RealignerTargetCreator.baq"
                },
                {
                    "id": "#GATK_RealignerTargetCreator.allow_potentailly_misencoded_quals"
                }
            ],
            "sbg:y": 379.6078515426782,
            "id": "#GATK_RealignerTargetCreator",
            "outputs": [
                {
                    "id": "#GATK_RealignerTargetCreator.indel_realigner_intervals_file"
                }
            ],
            "sbg:x": 1078.2355152859484,
            "run": {
                "sbg:revisionNotes": "BAMs are not required input",
                "outputs": [
                    {
                        "sbg:fileTypes": "INTERVALS",
                        "id": "#indel_realigner_intervals_file",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Intervals",
                        "outputBinding": {
                            "glob": "*.intervals",
                            "sbg:metadata": {
                                "intervals_file": {
                                    "class": "Expression",
                                    "script": "{\n  if ($job.inputs.intervals_file)\n    if($job.inputs.intervals_file.metadata)\n      if($job.inputs.intervals_file.metadata.sbg_scatter)\n        return $job.inputs.intervals_file.path.split('/').pop()\n  return 'NO_INTERVALS'\n}",
                                    "engine": "#cwl-js-engine"
                                }
                            },
                            "sbg:inheritMetadataFrom": "#reads"
                        },
                        "description": "An output file created by the walker."
                    }
                ],
                "sbg:toolkitVersion": "2.3.9 Lite",
                "sbg:validationErrors": [],
                "sbg:contributors": [
                    "vladimirk",
                    "bix-demo"
                ],
                "sbg:sbgMaintained": false,
                "hints": [
                    {
                        "dockerPull": "images.sbgenomics.com/stefanristeski/gatk2-lite:2.3-9",
                        "class": "DockerRequirement",
                        "dockerImageId": "47510cb2da55"
                    },
                    {
                        "class": "sbg:CPURequirement",
                        "value": {
                            "class": "Expression",
                            "script": "{\n  if($job.inputs.cpu_per_job){\n  \treturn $job.inputs.cpu_per_job\n  }\n  return 1\n}",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "class": "sbg:MemRequirement",
                        "value": {
                            "class": "Expression",
                            "script": "{\n  if($job.inputs.memory_per_job){\n    if($job.inputs.memory_overhead_per_job){\n    \treturn $job.inputs.memory_per_job + $job.inputs.memory_overhead_per_job\n    }\n    else\n  \t\treturn $job.inputs.memory_per_job\n  }\n  else if(!$job.inputs.memory_per_job && $job.inputs.memory_overhead_per_job){\n\t\treturn 2048 + $job.inputs.memory_overhead_per_job  \n  }\n  else\n  \treturn 2048\n}",
                            "engine": "#cwl-js-engine"
                        }
                    }
                ],
                "sbg:modifiedBy": "vladimirk",
                "baseCommand": [
                    "java",
                    {
                        "class": "Expression",
                        "script": "{\n  if($job.inputs.memory_per_job){\n  \treturn '-Xmx'.concat($job.inputs.memory_per_job, 'M')\n  }\n  \treturn '-Xmx2048M'\n}",
                        "engine": "#cwl-js-engine"
                    },
                    "-jar",
                    "/opt/GenomeAnalysisTKLite.jar",
                    "--analysis_type",
                    "RealignerTargetCreator",
                    {
                        "class": "Expression",
                        "script": "{ \n  if(!$job.inputs.threads_per_job){\n    return '-nt '.concat(4)\n  }\n  else{\n  \treturn '-nt '.concat($job.inputs.threads_per_job)\n  }\n}",
                        "engine": "#cwl-js-engine"
                    }
                ],
                "sbg:latestRevision": 8,
                "sbg:cmdPreview": "java -Xmx1M -jar /opt/GenomeAnalysisTKLite.jar --analysis_type RealignerTargetCreator -nt 2 --reference_sequence /folder/reference.fasta --known /folder/indels.vcf --out input.intervals",
                "id": "bix-demo/gatk-2-3-9-lite-demo/gatk-2-3-9-lite-realignertargetcreator/8",
                "sbg:id": "admin/sbg-public-data/gatk-2-3-9-lite-realignertargetcreator/13",
                "sbg:toolkit": "GATK",
                "sbg:createdBy": "bix-demo",
                "requirements": [
                    {
                        "id": "#cwl-js-engine",
                        "class": "ExpressionEngineRequirement",
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ]
                    }
                ],
                "label": "GATK RealignerTargetCreator",
                "sbg:image_url": null,
                "class": "CommandLineTool",
                "y": 379.6078515426782,
                "stdout": "",
                "cwlVersion": "sbg:draft-2",
                "stdin": "",
                "sbg:revision": 8,
                "sbg:categories": [
                    "Analysis"
                ],
                "sbg:modifiedOn": 1475576477,
                "description": "Overview\n\nThe local realignment process is designed to consume one or more BAM files and to locally realign reads such that the number of mismatching bases is minimized across all the reads. In general, a large percent of regions requiring local realignment are due to the presence of an insertion or deletion (indels) in the individual's genome with respect to the reference genome. Such alignment artifacts result in many bases mismatching the reference near the misalignment, which are easily mistaken as SNPs. Moreover, since read mapping algorithms operate on each read independently, it is impossible to place reads on the reference genome such that mismatches are minimized across all reads. Consequently, even when some reads are correctly mapped with indels, reads covering the indel near just the start or end of the read are often incorrectly mapped with respect the true indel, also requiring realignment. Local realignment serves to transform regions with misalignments due to indels into clean reads containing a consensus indel suitable for standard variant discovery approaches. Unlike most mappers, this tool uses the full alignment context to determine whether an appropriate alternate reference (i.e. indel) exists.\n\nThere are 2 steps to the realignment process:\nDetermining (small) suspicious intervals which are likely in need of realignment (RealignerTargetCreator)\nRunning the realigner over those intervals (see the IndelRealigner tool)\nFor more details, see the indel realignment method documentation.\n\nInputs\nOne or more aligned BAM files and optionally, one or more lists of known indels.\n\nOutput\nA list of target intervals to pass to the IndelRealigner.\n\nUsage example:\n java -jar GenomeAnalysisTK.jar \\\n   -T RealignerTargetCreator \\\n   -R reference.fasta \\\n   -I input.bam \\\n   --known indels.vcf \\\n   -o forIndelRealigner.intervals\n \nNotes\n\nThe input BAM(s), reference, and known indel file(s) should be the same ones to be used for the IndelRealigner step.\nWhen multiple potential indels are found by the tool in the same general region, the tool will choose the most likely one for realignment to the exclusion of the others. This is a known limitation of the tool.\nBecause reads produced from the 454 technology inherently contain false indels, the realigner will not work with them (or with reads from similar technologies).\nThis tool also ignores MQ0 reads and reads with consecutive indel operators in the CIGAR string.\n\n(IMPORTANT) Reference \".fasta\" Secondary Files\n\nTools in GATK that require a fasta reference file also look for the reference file's corresponding .fai (fasta index) and .dict (fasta dictionary) files. The fasta index file allows random access to reference bases and the dictionary file is a dictionary of the contig names and sizes contained within the fasta reference. These two secondary files are essential for GATK to work properly. To append these two files to your fasta reference please use the 'SBG FASTA Indices' tool within your GATK based workflow before using any of the GATK tools.",
                "inputs": [
                    {
                        "inputBinding": {
                            "prefix": "--windowSize",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-window",
                        "sbg:category": "Realigner Target Creator",
                        "label": "Window size",
                        "id": "#window_size",
                        "sbg:toolDefaultValue": "10",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Window size for calculating entropy or SNP clusters. Any two SNP calls and/or high entropy positions are considered clustered when they occur no more than this many base pairs apart."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--validation_strictness",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-S",
                        "sbg:category": "GATK General",
                        "label": "Validation Strictness",
                        "id": "#validation_strictness",
                        "sbg:toolDefaultValue": "SILENT",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "SILENT",
                                    "LENIENT",
                                    "STRICT"
                                ],
                                "name": "validation_strictness",
                                "type": "enum"
                            }
                        ],
                        "description": "How strict should we be with validation."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--useOriginalQualities",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-OQ",
                        "sbg:category": "GATK General",
                        "label": "Use Original Qualities",
                        "id": "#use_original_qualities",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "If set, use the original base quality scores from the OQ tag when present instead of the standard scores."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--use_legacy_downsampler",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-use_legacy_downsampler",
                        "sbg:category": "GATK General",
                        "label": "Use Legacy Downsampler",
                        "id": "#use_legacy_downsampler",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Use the legacy downsampling implementation instead of the newer, less-tested implementation."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--unsafe",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-U",
                        "sbg:category": "GATK General",
                        "label": "Unsafe",
                        "id": "#unsafe",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "ALLOW_UNINDEXED_BAM",
                                    "ALLOW_UNSET_BAM_SORT_ORDER",
                                    "NO_READ_ORDER_VERIFICATION",
                                    "ALLOW_SEQ_DICT_INCOMPATIBILITY",
                                    "LENIENT_VCF_PROCESSING",
                                    "ALL"
                                ],
                                "name": "unsafe",
                                "type": "enum"
                            }
                        ],
                        "description": "If set, enables unsafe operations: nothing will be checked at runtime.  For expert users only who know what they are doing.  We do not support usage of this argument."
                    },
                    {
                        "sbg:altPrefix": null,
                        "sbg:category": "Execution",
                        "label": "Threads per job",
                        "id": "#threads_per_job",
                        "sbg:toolDefaultValue": "4",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "For tools which support multiprocessing, this value can be used to set the number of threads to be used."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--tag",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-tag",
                        "sbg:category": "GATK General",
                        "label": "Tag",
                        "id": "#tag",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "Arbitrary tag string to identify this GATK run as part of a group of runs, for later analysis."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--remove_program_records",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-rpr",
                        "sbg:category": "GATK General",
                        "label": "Remove Program Records",
                        "id": "#remove_program_records",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Should we override the Walker's default and remove program records from the SAM header."
                    },
                    {
                        "required": true,
                        "inputBinding": {
                            "prefix": "--reference_sequence",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-R",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "FASTA, FA",
                        "id": "#reference",
                        "type": [
                            "File"
                        ],
                        "label": "Reference Genome",
                        "description": "Reference Genome in FASTA format."
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "secondaryFiles": [
                                ".bai"
                            ],
                            "prefix": "--input_file",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-I",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "SAM, BAM",
                        "id": "#reads",
                        "type": [
                            "null",
                            {
                                "items": "File",
                                "type": "array",
                                "name": "reads"
                            }
                        ],
                        "label": "Read sequences",
                        "description": "Read sequences in BAM format."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--read_group_black_list",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-rgbl",
                        "sbg:category": "GATK General",
                        "label": "Read Group Black List",
                        "id": "#read_group_black_list",
                        "sbg:toolDefaultValue": "[]",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "description": "Filters out read groups matching : or a .txt file containing the filter strings one per line."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--read_filter",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-rf",
                        "sbg:category": "GATK General",
                        "label": "Read Filter",
                        "id": "#read_filter",
                        "sbg:toolDefaultValue": "[]",
                        "type": [
                            "null",
                            {
                                "items": {
                                    "symbols": [
                                        "BadCigarFilter",
                                        "BadMateFilter",
                                        "CountingFilteringIterator.CountingReadFilter",
                                        "DuplicateReadFilter",
                                        "FailsVendorQualityCheckFilter",
                                        "HCMappingQualityFilter",
                                        "LibraryReadFilter",
                                        "MalformedReadFilter",
                                        "MappingQualityFilter",
                                        "MappingQualityUnavailableFilter",
                                        "MappingQualityZeroFilter",
                                        "MateSameStrandFilter",
                                        "MaxInsertSizeFilter",
                                        "MissingReadGroupFilter",
                                        "NoOriginalQualityScoresFilter",
                                        "NotPrimaryAlignmentFilter",
                                        "OverclippedReadFilter",
                                        "Platform454Filter",
                                        "PlatformFilter",
                                        "PlatformUnitFilter",
                                        "ReadGroupBlackListFilter",
                                        "ReadLengthFilter",
                                        "ReadNameFilter",
                                        "ReadStrandFilter",
                                        "ReassignMappingQualityFilter",
                                        "ReassignOneMappingQualityFilter",
                                        "SampleFilter",
                                        "SingleReadGroupFilter",
                                        "UnmappedReadFilter"
                                    ],
                                    "name": "read_filter",
                                    "type": "enum"
                                },
                                "type": "array"
                            }
                        ],
                        "description": "Specify filtration criteria to apply to each read individually."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--preserve_qscores_less_than",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-preserveQ",
                        "sbg:category": "GATK General",
                        "label": "Preserve Qscores Less Than",
                        "id": "#preserve_qscores_less_than",
                        "sbg:toolDefaultValue": "6",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Bases with quality scores less than this threshold won't be recalibrated (with -BQSR)."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--phone_home",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-et",
                        "sbg:category": "GATK General",
                        "label": "Phone Home",
                        "id": "#phone_home",
                        "sbg:toolDefaultValue": "STANDARD",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "NO_ET",
                                    "STANDARD"
                                ],
                                "name": "phone_home",
                                "type": "enum"
                            }
                        ],
                        "description": "What kind of GATK run report should we generate? STANDARD is the default, can be NO_ET so nothing is posted to the run repository. Please see http://gatkforums.broadinstitute.org/discussion/1250/what-is-phone-home-and-how-does-it-affect-me#latest for details."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--pedigreeValidationType",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-pedValidationType",
                        "sbg:category": "GATK General",
                        "label": "Pedigree Validation Type",
                        "id": "#pedigree_validation_type",
                        "sbg:toolDefaultValue": "STRICT",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "STRICT",
                                    "SILENT"
                                ],
                                "name": "pedigree_validation_type",
                                "type": "enum"
                            }
                        ],
                        "description": "How strict should we be in validating the pedigree information?."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--pedigreeString",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-pedString",
                        "sbg:category": "GATK General",
                        "label": "Pedigree String",
                        "id": "#pedigree_string",
                        "sbg:toolDefaultValue": "[]",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "description": "Pedigree string for samples."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--nonDeterministicRandomSeed",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-ndrs",
                        "sbg:category": "GATK General",
                        "label": "Non Deterministic Random Seed",
                        "id": "#non_deterministic_random_seed",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Makes the GATK behave non deterministically, that is, the random numbers generated will be different in every run."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--mismatchFraction",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-mismatch",
                        "sbg:category": "Realigner Target Creator",
                        "label": "Mismatch fraction",
                        "id": "#mismatch_fraction",
                        "sbg:toolDefaultValue": "0.0",
                        "type": [
                            "null",
                            "float"
                        ],
                        "description": "Fraction of base qualities needing to mismatch for a position to have high entropy. To disable this behavior, set this value to <= 0 or > 1. This feature is really only necessary when using an ungapped aligner (e.g. MAQ in the case of single-end read data) and should be used in conjunction with USE_SW' option."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--minReadsAtLocus",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-minReads",
                        "sbg:category": "Realigner Target Creator",
                        "label": "Minimum reads at locus",
                        "id": "#min_reads_at_locus",
                        "sbg:toolDefaultValue": "4",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Minimum reads at a locus to enable using the entropy calculation."
                    },
                    {
                        "sbg:altPrefix": null,
                        "sbg:category": "Execution",
                        "label": "Memory per job",
                        "id": "#memory_per_job",
                        "sbg:toolDefaultValue": "2048",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Amount of RAM memory in MB to be used per job."
                    },
                    {
                        "sbg:category": "Execution",
                        "label": "Memory overhead per job",
                        "id": "#memory_overhead_per_job",
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Memory overhead per job. By default this parameter value is set to '0' (zero megabytes). This parameter value is added to the Memory per job parameter value. This results in the allocation of the sum total (Memory per job and Memory overhead per job) amount of memory per job. By default the memory per job parameter value is set to 2048 megabytes, unless specified otherwise."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--maxRuntimeUnits",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-maxRuntimeUnits",
                        "sbg:category": "GATK General",
                        "label": "Max Runtime Units",
                        "id": "#max_runtime_units",
                        "sbg:toolDefaultValue": "MINUTES",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "NANOSECONDS",
                                    "MICROSECONDS",
                                    "MILLISECONDS",
                                    "SECONDS",
                                    "MINUTES",
                                    "HOURS",
                                    "DAYS"
                                ],
                                "name": "max_runtime_units",
                                "type": "enum"
                            }
                        ],
                        "description": "The TimeUnit for maxRuntime."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--maxRuntime",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-maxRuntime",
                        "sbg:category": "GATK General",
                        "label": "Max Runtime",
                        "id": "#max_runtime",
                        "sbg:toolDefaultValue": "-1",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "If provided, that GATK will stop execution cleanly as soon after maxRuntime has been exceeded, truncating the run but not exiting with a failure.  By default the value is interpreted in minutes, but this can be changed by maxRuntimeUnits."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--maxIntervalSize",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-maxInterval",
                        "sbg:category": "Realigner Target Creator",
                        "label": "Maximum interval size",
                        "id": "#max_interval_size",
                        "sbg:toolDefaultValue": "500",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Maximum interval size. Because the realignment algorithm is N^2, allowing too large an interval might take too long to completely realign."
                    },
                    {
                        "required": true,
                        "inputBinding": {
                            "prefix": "--known",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "VCF",
                        "id": "#known",
                        "type": [
                            {
                                "items": "File",
                                "type": "array",
                                "name": "known"
                            }
                        ],
                        "label": "Known indels",
                        "description": "VCF file with known indels.",
                        "sbg:stageInput": "link"
                    },
                    {
                        "inputBinding": {
                            "prefix": "--keep_program_records",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-kpr",
                        "sbg:category": "GATK General",
                        "label": "Keep Program Records",
                        "id": "#keep_program_records",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Should we override the Walker's default and keep program records from the SAM header."
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "prefix": "--intervals",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-L",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "TXT, BED, VCF",
                        "id": "#intervals_file",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Intervals",
                        "description": "One or more genomic intervals over which to operate. Can be an specified in an .intervals file or a rod file."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-L",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": null,
                        "sbg:category": "GATK General",
                        "label": "Intervals",
                        "id": "#intervals",
                        "sbg:toolDefaultValue": "sample",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "One or more genomic intervals over which to operate."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--interval_set_rule",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-isr",
                        "sbg:category": "GATK General",
                        "label": "Interval Set Rule",
                        "id": "#interval_set_rule",
                        "sbg:toolDefaultValue": "UNION",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "UNION",
                                    "INTERSECTION"
                                ],
                                "name": "interval_set_rule",
                                "type": "enum"
                            }
                        ],
                        "description": "Indicates the set merging approach the interval parser should use to combine the various -L or -XL inputs."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--interval_padding",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-ip",
                        "sbg:category": "GATK General",
                        "label": "Interval Padding",
                        "id": "#interval_padding",
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Indicates how many basepairs of padding to include around each of the intervals specified with the -L/--intervals argument."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--interval_merging",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-im",
                        "sbg:category": "GATK General",
                        "label": "Interval Merging",
                        "id": "#interval_merging",
                        "sbg:toolDefaultValue": "ALL",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "ALL",
                                    "OVERLAPPING_ONLY"
                                ],
                                "name": "interval_merging",
                                "type": "enum"
                            }
                        ],
                        "description": "Indicates the interval merging rule we should use for abutting intervals."
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "prefix": "--gatk_key",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-K",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "KEY, LICENSE",
                        "id": "#gatk_key",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Gatk key",
                        "description": "GATK Key file. Required if running with -et NO_ET. Please see http://gatkforums.broadinstitute.org/discussion/1250/what-is-phone-home-and-how-does-it-affect-me#latest for details."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-fixMisencodedQuals",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-fixMisencodedQuals",
                        "sbg:category": "GATK General",
                        "label": "Fix Misencoded Quals",
                        "id": "#fix_misencoded_quals",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Fix mis-encoded base quality scores."
                    },
                    {
                        "required": false,
                        "inputBinding": {
                            "prefix": "--excludeIntervals",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-XL",
                        "sbg:category": "Input Files",
                        "sbg:fileTypes": "TXT, BED, VCF",
                        "id": "#exclude_intervals",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Exclude Intervals",
                        "description": "One or more genomic intervals to exclude from processing. Can be an .intervals file or a rod file."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--emit_original_quals",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-EOQ",
                        "sbg:category": "GATK General",
                        "label": "Emit Original Quals",
                        "id": "#emit_original_quals",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "If true, enables printing of the OQ tag with the original base qualities (with -BQSR)."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--downsampling_type",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-dt",
                        "sbg:category": "GATK General",
                        "label": "Downsampling Type",
                        "id": "#downsampling_type",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "NONE",
                                    "ALL_READS",
                                    "BY_SAMPLE"
                                ],
                                "name": "downsampling_type",
                                "type": "enum"
                            }
                        ],
                        "description": "Type of reads downsampling to employ at a given locus. Reads will be selected randomly to be removed from the pile based on the method described here."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--downsample_to_fraction",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-dfrac",
                        "sbg:category": "GATK General",
                        "label": "Downsample to Fraction",
                        "id": "#downsample_to_fraction",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            "float"
                        ],
                        "description": "Fraction [0.0-1.0] of reads to downsample to."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--downsample_to_coverage",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-dcov",
                        "sbg:category": "GATK General",
                        "label": "Downsample to Coverage",
                        "id": "#downsample_to_coverage",
                        "sbg:toolDefaultValue": "",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Coverage to downsample to at any given locus; note that downsampled reads are randomly selected from all possible reads at a locus. For non-locus-based traversals (eg., ReadWalkers), this sets the maximum number of reads at each alignment start position."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--disableRandomization",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": null,
                        "sbg:category": "GATK General",
                        "label": "Disable Randomization",
                        "id": "#disable_radnomization",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Completely eliminates randomization from nondeterministic methods. To be used mostly in the testing framework where dynamic parallelism can result in differing numbers of calls to the generator."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--disable_indel_quals",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-DIQ",
                        "sbg:category": "GATK General",
                        "label": "Disable Indel Quals",
                        "id": "#disable_indel_quals",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "If 'true', disables printing of base insertion and base deletion tags (with -BQSR). Turns off printing of the base insertion and base deletion tags when using the -BQSR argument and only the base substitution qualities will be produced."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--defaultBaseQualities",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-DBQ",
                        "sbg:category": "GATK General",
                        "label": "Default Base Qualities",
                        "id": "#default_base_qualities",
                        "sbg:toolDefaultValue": "-1",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "If reads are missing some or all base quality scores, this value will be used for all base quality scores."
                    },
                    {
                        "sbg:altPrefix": null,
                        "sbg:category": "Execution",
                        "label": "CPU per job",
                        "id": "#cpu_per_job",
                        "sbg:toolDefaultValue": "1",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Number of CPUs per job."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--baqGapOpenPenalty",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-baqGOP",
                        "sbg:category": "GATK General",
                        "label": "BAQ Gap Open Penalty",
                        "id": "#baq_gap_open_penalty",
                        "sbg:toolDefaultValue": "40.0",
                        "type": [
                            "null",
                            "float"
                        ],
                        "description": "BAQ gap open penalty (Phred Scaled). Default value is 40. 30 is perhaps better for whole genome call sets."
                    },
                    {
                        "inputBinding": {
                            "prefix": "--baq",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "-baq",
                        "sbg:category": "GATK General",
                        "label": "BAQ Calculation Type",
                        "id": "#baq",
                        "sbg:toolDefaultValue": "OFF",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "OFF",
                                    "CALCULATE_AS_NECESSARY",
                                    "RECALCULATE"
                                ],
                                "name": "baq",
                                "type": "enum"
                            }
                        ],
                        "description": "Type of BAQ calculation to apply in the engine."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-allowPotentiallyMisencodedQuals",
                            "separate": true,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:altPrefix": "--allow_potentially_misencoded_quality_scores",
                        "sbg:category": "GATK General",
                        "label": "Allow Potentially Misencoded Quals",
                        "id": "#allow_potentailly_misencoded_quals",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Do not fail when encountered base qualities that are too high and seemingly indicate a problem with the base quality encoding of the BAM file."
                    }
                ],
                "sbg:createdOn": 1450911384,
                "sbg:links": [
                    {
                        "id": "https://www.broadinstitute.org/gatk/index.php",
                        "label": "Homepage"
                    },
                    {
                        "id": "https://github.com/broadgsa/gatk-protected",
                        "label": "Source code"
                    },
                    {
                        "id": "https://www.broadinstitute.org/gatk/guide/pdfdocs/GATK_GuideBook_2.3-9.pdf",
                        "label": "Wiki"
                    },
                    {
                        "id": "ttps://www.broadinstitute.org/gatk/download/auth?package=GATK-archive&version=2.3-9-ge5ebf34",
                        "label": "Download"
                    },
                    {
                        "id": "https://www.broadinstitute.org/gatk/about/#in-the-literature",
                        "label": "Publication"
                    },
                    {
                        "id": "https://www.broadinstitute.org/gatk/gatkdocs/org_broadinstitute_gatk_tools_walkers_indels_RealignerTargetCreator.php",
                        "label": "Documentation"
                    }
                ],
                "x": 1078.2355152859484,
                "temporaryFailCodes": [],
                "successCodes": [],
                "sbg:project": "bix-demo/gatk-2-3-9-lite-demo",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1450911384,
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911384,
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911385,
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911386,
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911387,
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1471364087,
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "known link staged."
                    },
                    {
                        "sbg:modifiedOn": 1472650598,
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "Scatter metadata."
                    },
                    {
                        "sbg:modifiedOn": 1472724438,
                        "sbg:revision": 7,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": ".bai as secondary"
                    },
                    {
                        "sbg:modifiedOn": 1475576477,
                        "sbg:revision": 8,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "BAMs are not required input"
                    }
                ],
                "sbg:job": {
                    "inputs": {
                        "threads_per_job": 2,
                        "memory_per_job": 1,
                        "memory_overhead_per_job": 0,
                        "intervals": "",
                        "intervals_file": {
                            "path": "/path/to/file/rrrrrr.bed",
                            "metadata": {
                                "sbg_scatter": "true"
                            },
                            "secondaryFiles": []
                        },
                        "known": [
                            {
                                "path": "/folder/indels.vcf"
                            }
                        ],
                        "reads": [
                            {
                                "path": "input.bam"
                            }
                        ],
                        "cpu_per_job": 1,
                        "reference": {
                            "path": "/folder/reference.fasta"
                        }
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1
                    }
                },
                "arguments": [
                    {
                        "prefix": "--out",
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\n  if($job.inputs.reads){\n    read_name = [].concat($job.inputs.reads)[0].path.replace(/^.*[\\\\\\/]/, '').split('.')\n    read_namebase = read_name.slice(0, read_name.length-1).join('.')\n  } else read_namebase = 'known_only'\n  return read_namebase + '.intervals'\n}",
                            "engine": "#cwl-js-engine"
                        }
                    }
                ],
                "sbg:toolAuthor": "Broad Institute",
                "sbg:license": "MIT License"
            }
        },
        {
            "scatter": "#BWA_MEM_Bundle_0_7_13.input_reads",
            "inputs": [
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.verbose_level"
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.use_soft_clipping"
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.unpaired_read_penalty"
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.total_memory",
                    "default": 15
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.threads",
                    "default": 8
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.speficy_distribution_parameters"
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.sort_memory",
                    "default": 2
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.smart_pairing_in_input_fastq"
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.skip_seeds"
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.skip_pairing"
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.skip_mate_rescue"
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.select_seeds"
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.seed_occurrence_for_the_3rd_round"
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.score_for_a_sequence_match"
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.sambamba_threads"
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.rg_sample_id"
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.rg_platform_unit_id"
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.rg_platform"
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.rg_median_fragment_length"
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.rg_library_id"
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.rg_id"
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.rg_data_submitting_center"
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.reserved_threads"
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.reference_index_tar",
                    "source": [
                        "#BWA_INDEX.indexed_reference"
                    ]
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.read_type"
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.read_group_header"
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.output_name"
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.output_in_xa"
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.output_header"
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.output_format",
                    "default": "SortedBAM"
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.output_alignments"
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.mismatch_penalty"
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.minimum_seed_length"
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.minimum_output_score"
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.mate_rescue_rounds"
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.mark_shorter",
                    "default": true
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.insert_string_to_header"
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.input_reads",
                    "source": [
                        "#SBG_Pair_FASTQs_by_Metadata.tuple_list"
                    ]
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.ignore_alt_file"
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.gap_open_penalties"
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.gap_extension_penalties"
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.filter_out_secondary_alignments",
                    "default": true
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.dropoff"
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.drop_chains_fraction"
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.discard_exact_matches"
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.discard_chain_length"
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.deduplication",
                    "default": "MarkDuplicates"
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.clipping_penalty"
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.band_width"
                },
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.append_comment"
                }
            ],
            "sbg:y": 295.00004243850844,
            "id": "#BWA_MEM_Bundle_0_7_13",
            "outputs": [
                {
                    "id": "#BWA_MEM_Bundle_0_7_13.aligned_reads"
                }
            ],
            "sbg:x": 675.0001508792294,
            "run": {
                "sbg:revisionNotes": "default threads parameter set to 8",
                "outputs": [
                    {
                        "sbg:fileTypes": "SAM, BAM",
                        "id": "#aligned_reads",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Aligned SAM/BAM",
                        "outputBinding": {
                            "glob": "{*.sam,*.bam}",
                            "sbg:metadata": {
                                "reference_genome": {
                                    "class": "Expression",
                                    "script": "{\n  reference_file = $job.inputs.reference_index_tar.path.split('/')[$job.inputs.reference_index_tar.path.split('/').length-1]\n  name = reference_file.slice(0, -4) // cut .tar extension \n  \n  name_list = name.split('.')\n  ext = name_list[name_list.length-1]\n\n  if (ext == 'gz' || ext == 'GZ'){\n    a = name_list.pop() // strip fasta.gz\n    a = name_list.pop()\n  } else\n    a = name_list.pop() //strip only fasta/fa\n  \n  return name_list.join('.')\n  \n}",
                                    "engine": "#cwl-js-engine"
                                }
                            },
                            "sbg:inheritMetadataFrom": "#input_reads",
                            "secondaryFiles": [
                                ".bai",
                                "^.bai"
                            ]
                        },
                        "description": "Aligned reads."
                    }
                ],
                "sbg:toolkitVersion": "0.7.13",
                "sbg:validationErrors": [],
                "sbg:contributors": [
                    "bogdang",
                    "vladimirk",
                    "bix-demo"
                ],
                "sbg:sbgMaintained": false,
                "hints": [
                    {
                        "dockerPull": "images.sbgenomics.com/vladimirk/bwa:0.7.13",
                        "class": "DockerRequirement",
                        "dockerImageId": ""
                    },
                    {
                        "class": "sbg:CPURequirement",
                        "value": {
                            "class": "Expression",
                            "script": "{  \n  // Calculate suggested number of CPUs depending of the input reads size\n  if ($job.inputs.input_reads.constructor == Array){\n    if ($job.inputs.input_reads[1]){\n      reads_size = $job.inputs.input_reads[0].size + $job.inputs.input_reads[1].size\n    } else{\n      reads_size = $job.inputs.input_reads[0].size\n    }\n  }\n  else{\n    reads_size = $job.inputs.input_reads.size\n  }\n  if(!reads_size) { reads_size = 0 }\n\n\n  GB_1 = 1024*1024*1024\n  if(reads_size < GB_1){ suggested_cpus = 1 }\n  else if(reads_size < 10 * GB_1){ suggested_cpus = 8 }\n  else { suggested_cpus = 31 }\n  \n  if($job.inputs.reserved_threads){ return $job.inputs.reserved_threads }\n  else if($job.inputs.threads){ return $job.inputs.threads } \n  else if($job.inputs.sambamba_threads) { return $job.inputs.sambamba_threads }\n  else{    return suggested_cpus  }\n}",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "class": "sbg:MemRequirement",
                        "value": {
                            "class": "Expression",
                            "script": "{  \n\n  // Calculate suggested number of CPUs depending of the input reads size\n  if ($job.inputs.input_reads.constructor == Array){\n    if ($job.inputs.input_reads[1]){\n      reads_size = $job.inputs.input_reads[0].size + $job.inputs.input_reads[1].size\n    } else{\n      reads_size = $job.inputs.input_reads[0].size\n    }\n  }\n  else{\n    reads_size = $job.inputs.input_reads.size\n  }\n  if(!reads_size) { reads_size = 0 }\n \n  GB_1 = 1024*1024*1024\n  if(reads_size < GB_1){ suggested_memory = 4 }\n  else if(reads_size < 10 * GB_1){ suggested_memory = 15 }\n  else { suggested_memory = 58 }\n  \n  if($job.inputs.total_memory){  \t\n    return  $job.inputs.total_memory* 1024  \n  } \n  else if($job.inputs.sort_memory){\n    return  $job.inputs.sort_memory* 1024\n  }\n  else{  \t\n    return suggested_memory * 1024  \n  }\n}",
                            "engine": "#cwl-js-engine"
                        }
                    }
                ],
                "sbg:modifiedBy": "bogdang",
                "baseCommand": [
                    {
                        "class": "Expression",
                        "script": "{\n  cmd = \"/bin/bash -c \\\"\"\n  return cmd\n}",
                        "engine": "#cwl-js-engine"
                    },
                    {
                        "class": "Expression",
                        "script": "{\n  reference_file = $job.inputs.reference_index_tar.path.split('/')[$job.inputs.reference_index_tar.path.split('/').length-1]\n  return 'tar -xf ' + reference_file + ' ; '\n  \n}",
                        "engine": "#cwl-js-engine"
                    },
                    "/opt/bwa-0.7.13/bwa",
                    "mem"
                ],
                "sbg:latestRevision": 39,
                "sbg:cmdPreview": "/bin/bash -c \" tar -xf reference.b37.fasta.gz.tar ;  /opt/bwa-0.7.13/bwa mem  -R '@RG\\tID:rg_id-string-value\\tPL:Illumina\\tSM:dnk_sample' -t 8  reference.b37.fasta.gz  /path/to/LP6005524-DNA_C01_lane_7.sorted.converted.filtered.pe_2.gz /path/to/LP6005524-DNA_C01_lane_7.sorted.converted.filtered.pe_1.gz  | /opt/samblaster/samblaster -i /dev/stdin -o /dev/stdout | /opt/sambamba_v0.6.0 view -t 8 -f bam -l 0 -S /dev/stdin | /opt/sambamba_v0.6.0 sort -t 8 -m 5GiB --tmpdir ./ -o LP6005524-DNA_C01_lane_7.sorted.converted.filtered.bam -l 5 /dev/stdin  ;declare -i pipe_statuses=(\\${PIPESTATUS[*]});len=\\${#pipe_statuses[@]};declare -i tot=0;echo \\${pipe_statuses[*]};for (( i=0; i<\\${len}; i++ ));do if [ \\${pipe_statuses[\\$i]} -ne 0 ];then tot=\\${pipe_statuses[\\$i]}; fi;done;if [ \\$tot -ne 0 ]; then >&2 echo Error in piping. Pipe statuses: \\${pipe_statuses[*]};fi; if [ \\$tot -ne 0 ]; then false;fi\"",
                "id": "vladimirk/bwa-mem-bundle-0-7-13-demo/bwa-mem-bundle-0-7-13/39",
                "sbg:id": "admin/sbg-public-data/bwa-mem-bundle-0-7-13/61",
                "sbg:toolkit": "BWA",
                "sbg:createdBy": "vladimirk",
                "requirements": [
                    {
                        "id": "#cwl-js-engine",
                        "class": "ExpressionEngineRequirement",
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ]
                    }
                ],
                "label": "BWA-MEM Bundle 0.7.13",
                "sbg:image_url": null,
                "class": "CommandLineTool",
                "y": 295.00004243850844,
                "stdout": "",
                "cwlVersion": "sbg:draft-2",
                "stdin": "",
                "sbg:revision": 39,
                "sbg:categories": [
                    "Alignment",
                    "FASTQ-Processing"
                ],
                "sbg:modifiedOn": 1484235220,
                "description": "**BWA MEM** is an algorithm designed for aligning sequence reads onto a large reference genome. BWA MEM is implemented as a component of BWA. The algorithm can automatically choose between performing end-to-end and local alignments. BWA MEM is capable of outputting multiple alignments, and finding chimeric reads. It can be applied to a wide range of read lengths, from 70 bp to several megabases. \n\nIn order to obtain possibilities for additional fast processing of aligned reads, two tools are embedded together into the same package with BWA MEM (0.7.13): Samblaster. (0.1.22) and Sambamba (v0.6.0). \nIf deduplication of alignments is needed, it can be done by setting the parameter 'Duplication'. **Samblaster** will be used internally to perform this action.\nBesides the standard BWA MEM SAM output file, BWA MEM package has been extended to support two additional output options: a BAM file obtained by piping through **Sambamba view** while filtering out the secondary alignments, as well as a Coordinate Sorted BAM option that additionally pipes the output through **Sambamba sort**, along with an accompanying .bai file produced by **Sambamba sort** as side effect. Sorted BAM is the default output of BWA MEM. Parameters responsible for these additional features are 'Filter out secondary alignments' and 'Output format'. Passing data from BWA MEM to Samblaster and Sambamba tools has been done through the pipes which saves processing times of two read and write of aligned reads into the hard drive. \n\nFor input reads fastq files of total size less than 10 GB we suggest using the default setting for parameter 'total memory' of 15GB, for larger files we suggest using 58 GB of memory and 32 CPU cores.\n\n**Important:**\nIn order to work BWA MEM Bundle requires fasta reference file accompanied with **bwa fasta indices** in TAR file.\nThere is the **known issue** with samblaster. It does not support processing when number of sequences in fasta is larger than 32768. If this is the case do not use deduplication option because the output BAM will be corrupted.",
                "inputs": [
                    {
                        "inputBinding": {
                            "prefix": "-v",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "BWA Input/output options",
                        "label": "Verbose level",
                        "id": "#verbose_level",
                        "sbg:toolDefaultValue": "3",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "1",
                                    "2",
                                    "3",
                                    "4"
                                ],
                                "name": "verbose_level",
                                "type": "enum"
                            }
                        ],
                        "description": "Verbose level: 1=error, 2=warning, 3=message, 4+=debugging."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-Y",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "BWA Input/output options",
                        "label": "Use soft clipping",
                        "id": "#use_soft_clipping",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Use soft clipping for supplementary alignments."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-U",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "BWA Scoring options",
                        "label": "Unpaired read penalty",
                        "id": "#unpaired_read_penalty",
                        "sbg:toolDefaultValue": "17",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Penalty for an unpaired read pair."
                    },
                    {
                        "sbg:category": "Execution",
                        "label": "Total memory",
                        "id": "#total_memory",
                        "sbg:toolDefaultValue": "15",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Total memory to be used by the tool in GB. It's sum of BWA, Sambamba Sort and Samblaster. For fastq files of total size less than 10GB, we suggest using the default setting of 15GB, for larger files we suggest using 58GB of memory (and 32CPU cores).",
                        "sbg:stageInput": null
                    },
                    {
                        "sbg:category": "Execution",
                        "label": "Threads",
                        "id": "#threads",
                        "sbg:toolDefaultValue": "8",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Number of threads for BWA, Samblaster and Sambamba sort process."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-I",
                            "separate": false,
                            "itemSeparator": null,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "BWA Input/output options",
                        "label": "Specify distribution parameters",
                        "id": "#speficy_distribution_parameters",
                        "type": [
                            "null",
                            {
                                "items": "float",
                                "type": "array",
                                "name": "speficy_distribution_parameters"
                            }
                        ],
                        "description": "Specify the mean, standard deviation (10% of the mean if absent), max (4 sigma from the mean if absent) and min of the insert size distribution.FR orientation only. This array can have maximum four values, where first two should be specified as FLOAT and last two as INT."
                    },
                    {
                        "id": "#sort_memory",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Execution",
                        "description": "Amount of RAM [Gb] to give to the sorting algorithm (if not provided will be set to one third of the total memory).",
                        "label": "Memory for BAM sorting"
                    },
                    {
                        "inputBinding": {
                            "prefix": "-p",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "BWA Input/output options",
                        "label": "Smart pairing in input FASTQ file",
                        "id": "#smart_pairing_in_input_fastq",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Smart pairing in input FASTQ file (ignoring in2.fq)."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-c",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "BWA Algorithm options",
                        "label": "Skip seeds with more than INT occurrences",
                        "id": "#skip_seeds",
                        "sbg:toolDefaultValue": "500",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Skip seeds with more than INT occurrences."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-P",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "BWA Algorithm options",
                        "label": "Skip pairing",
                        "id": "#skip_pairing",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Skip pairing; mate rescue performed unless -S also in use."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-S",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "BWA Algorithm options",
                        "label": "Skip mate rescue",
                        "id": "#skip_mate_rescue",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Skip mate rescue."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-r",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "BWA Algorithm options",
                        "label": "Select seeds",
                        "id": "#select_seeds",
                        "sbg:toolDefaultValue": "1.5",
                        "type": [
                            "null",
                            "float"
                        ],
                        "description": "Look for internal seeds inside a seed longer than {-k} * FLOAT."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-y",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "BWA Algorithm options",
                        "label": "Seed occurrence for the 3rd round",
                        "id": "#seed_occurrence_for_the_3rd_round",
                        "sbg:toolDefaultValue": "20",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Seed occurrence for the 3rd round seeding."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-A",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "BWA Scoring options",
                        "label": "Score for a sequence match",
                        "id": "#score_for_a_sequence_match",
                        "sbg:toolDefaultValue": "1",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Score for a sequence match, which scales options -TdBOELU unless overridden."
                    },
                    {
                        "id": "#sambamba_threads",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Execution",
                        "description": "Number of threads to pass to Sambamba sort, if used.",
                        "label": "Sambamba Sort threads"
                    },
                    {
                        "sbg:category": "BWA Read Group Options",
                        "label": "Sample ID",
                        "id": "#rg_sample_id",
                        "sbg:toolDefaultValue": "Inferred from metadata",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "Specify the sample ID for RG line - A human readable identifier for a sample or specimen, which could contain some metadata information. A sample or specimen is material taken from a biological entity for testing, diagnosis, propagation, treatment, or research purposes, including but not limited to tissues, body fluids, cells, organs, embryos, body excretory products, etc."
                    },
                    {
                        "sbg:category": "BWA Read Group Options",
                        "label": "Platform unit ID",
                        "id": "#rg_platform_unit_id",
                        "sbg:toolDefaultValue": "Inferred from metadata",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "Specify the platform unit (lane/slide) for RG line - An identifier for lanes (Illumina), or for slides (SOLiD) in the case that a library was split and ran over multiple lanes on the flow cell or slides."
                    },
                    {
                        "sbg:category": "BWA Read Group Options",
                        "label": "Platform",
                        "id": "#rg_platform",
                        "sbg:toolDefaultValue": "Inferred from metadata",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "454",
                                    "Helicos",
                                    "Illumina",
                                    "Solid",
                                    "IonTorrent"
                                ],
                                "name": "rg_platform",
                                "type": "enum"
                            }
                        ],
                        "description": "Specify the version of the technology that was used for sequencing, which will be placed in RG line."
                    },
                    {
                        "id": "#rg_median_fragment_length",
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:category": "BWA Read Group Options",
                        "description": "Specify the median fragment length for RG line.",
                        "label": "Median fragment length"
                    },
                    {
                        "sbg:category": "BWA Read Group Options",
                        "label": "Library ID",
                        "id": "#rg_library_id",
                        "sbg:toolDefaultValue": "Inferred from metadata",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "Specify the identifier for the sequencing library preparation, which will be placed in RG line."
                    },
                    {
                        "sbg:category": "Configuration",
                        "label": "Read group ID",
                        "id": "#rg_id",
                        "sbg:toolDefaultValue": "1",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "Read group ID"
                    },
                    {
                        "id": "#rg_data_submitting_center",
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:category": "BWA Read Group Options",
                        "description": "Specify the data submitting center for RG line.",
                        "label": "Data submitting center"
                    },
                    {
                        "sbg:category": "Configuration",
                        "label": "Reserved number of threads on the instance",
                        "id": "#reserved_threads",
                        "sbg:toolDefaultValue": "1",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Reserved number of threads on the instance used by scheduler.",
                        "sbg:stageInput": null
                    },
                    {
                        "required": true,
                        "sbg:category": "Input files",
                        "sbg:fileTypes": "TAR",
                        "id": "#reference_index_tar",
                        "type": [
                            "File"
                        ],
                        "label": "Reference Index TAR",
                        "description": "Reference fasta file with BWA index files packed in TAR.",
                        "sbg:stageInput": "link"
                    },
                    {
                        "inputBinding": {
                            "prefix": "-x",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "BWA Scoring options",
                        "label": "Sequencing technology-specific settings",
                        "id": "#read_type",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "pacbio",
                                    "ont2d",
                                    "intractg"
                                ],
                                "name": "read_type",
                                "type": "enum"
                            }
                        ],
                        "description": "Sequencing technology-specific settings; Setting -x changes multiple parameters unless overriden. pacbio: -k17 -W40 -r10 -A1 -B1 -O1 -E1 -L0  (PacBio reads to ref). ont2d: -k14 -W20 -r10 -A1 -B1 -O1 -E1 -L0  (Oxford Nanopore 2D-reads to ref). intractg: -B9 -O16 -L5  (intra-species contigs to ref)."
                    },
                    {
                        "sbg:category": "BWA Read Group Options",
                        "label": "Read group header",
                        "id": "#read_group_header",
                        "sbg:toolDefaultValue": "Constructed from per-attribute parameters or inferred from metadata.",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "Read group header line such as '@RG\\tID:foo\\tSM:bar'.  This value takes precedence over per-attribute parameters."
                    },
                    {
                        "id": "#output_name",
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:category": "Configuration",
                        "description": "Name of the output BAM file.",
                        "label": "Output SAM/BAM file name"
                    },
                    {
                        "inputBinding": {
                            "prefix": "-h",
                            "separate": false,
                            "itemSeparator": ",",
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "BWA Input/output options",
                        "label": "Output in XA",
                        "id": "#output_in_xa",
                        "sbg:toolDefaultValue": "[5, 200]",
                        "type": [
                            "null",
                            {
                                "items": "int",
                                "type": "array"
                            }
                        ],
                        "description": "If there are <INT hits with score >80% of the max score, output all in XA. This array should have no more than two values."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-V",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "BWA Input/output options",
                        "label": "Output header",
                        "id": "#output_header",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Output the reference FASTA header in the XR tag."
                    },
                    {
                        "sbg:category": "Execution",
                        "label": "Output format",
                        "id": "#output_format",
                        "sbg:toolDefaultValue": "SortedBAM",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "SAM",
                                    "BAM",
                                    "SortedBAM"
                                ],
                                "name": "output_format",
                                "type": "enum"
                            }
                        ],
                        "description": "Specify output format (Sorted BAM option will output coordinate sorted BAM)."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-a",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "BWA Input/output options",
                        "label": "Output alignments",
                        "id": "#output_alignments",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Output all alignments for SE or unpaired PE."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-B",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "BWA Scoring options",
                        "label": "Mismatch penalty",
                        "id": "#mismatch_penalty",
                        "sbg:toolDefaultValue": "4",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Penalty for a mismatch."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-k",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "BWA Algorithm options",
                        "label": "Minimum seed length",
                        "id": "#minimum_seed_length",
                        "sbg:toolDefaultValue": "19",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Minimum seed length for BWA MEM."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-T",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "BWA Input/output options",
                        "label": "Minimum alignment score for a read to be output in SAM/BAM",
                        "id": "#minimum_output_score",
                        "sbg:toolDefaultValue": "30",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Minimum alignment score for a read to be output in SAM/BAM."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-m",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "BWA Algorithm options",
                        "label": "Mate rescue rounds",
                        "id": "#mate_rescue_rounds",
                        "sbg:toolDefaultValue": "50",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "Perform at most INT rounds of mate rescues for each read."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-M",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "BWA Input/output options",
                        "label": "Mark shorter",
                        "id": "#mark_shorter",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Mark shorter split hits as secondary."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-H",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "BWA Input/output options",
                        "label": "Insert string to output SAM or BAM header",
                        "id": "#insert_string_to_header",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "Insert STR to header if it starts with @; or insert lines in FILE."
                    },
                    {
                        "required": true,
                        "sbg:category": "Input files",
                        "sbg:fileTypes": "FASTQ, FASTQ.GZ, FQ, FQ.GZ",
                        "id": "#input_reads",
                        "type": [
                            {
                                "items": "File",
                                "type": "array",
                                "name": "input_reads"
                            }
                        ],
                        "label": "Input reads",
                        "description": "Input sequence reads."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-j",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "BWA Input/output options",
                        "label": "Ignore ALT file",
                        "id": "#ignore_alt_file",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Treat ALT contigs as part of the primary assembly (i.e. ignore <idxbase>.alt file)."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-O",
                            "separate": false,
                            "itemSeparator": ",",
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "BWA Scoring options",
                        "label": "Gap open penalties",
                        "id": "#gap_open_penalties",
                        "sbg:toolDefaultValue": "[6,6]",
                        "type": [
                            "null",
                            {
                                "items": "int",
                                "type": "array"
                            }
                        ],
                        "description": "Gap open penalties for deletions and insertions. This array can't have more than two values."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-E",
                            "separate": false,
                            "itemSeparator": ",",
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "BWA Scoring options",
                        "label": "Gap extension",
                        "id": "#gap_extension_penalties",
                        "sbg:toolDefaultValue": "[1,1]",
                        "type": [
                            "null",
                            {
                                "items": "int",
                                "type": "array"
                            }
                        ],
                        "description": "Gap extension penalty; a gap of size k cost '{-O} + {-E}*k'. This array can't have more than two values."
                    },
                    {
                        "sbg:category": "Execution",
                        "label": "Filter out secondary alignments",
                        "id": "#filter_out_secondary_alignments",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Filter out secondary alignments. Sambamba view tool will be used to perform this internally.",
                        "sbg:stageInput": null
                    },
                    {
                        "inputBinding": {
                            "prefix": "-d",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "BWA Algorithm options",
                        "label": "Dropoff",
                        "id": "#dropoff",
                        "sbg:toolDefaultValue": "100",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Off-diagonal X-dropoff."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-D",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "BWA Algorithm options",
                        "label": "Drop chains fraction",
                        "id": "#drop_chains_fraction",
                        "sbg:toolDefaultValue": "0.50",
                        "type": [
                            "null",
                            "float"
                        ],
                        "description": "Drop chains shorter than FLOAT fraction of the longest overlapping chain."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-e",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "BWA Algorithm options",
                        "label": "Discard exact matches",
                        "id": "#discard_exact_matches",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Discard full-length exact matches."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-W",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "BWA Algorithm options",
                        "label": "Discard chain length",
                        "id": "#discard_chain_length",
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Discard a chain if seeded bases shorter than INT."
                    },
                    {
                        "sbg:category": "Samblaster parameters",
                        "label": "PCR duplicate detection",
                        "id": "#deduplication",
                        "sbg:toolDefaultValue": "MarkDuplicates",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "None",
                                    "MarkDuplicates",
                                    "RemoveDuplicates"
                                ],
                                "name": "deduplication",
                                "type": "enum"
                            }
                        ],
                        "description": "Use Samblaster for finding duplicates on sequence reads."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-L",
                            "separate": false,
                            "itemSeparator": ",",
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "BWA Scoring options",
                        "label": "Clipping penalty",
                        "id": "#clipping_penalty",
                        "sbg:toolDefaultValue": "[5,5]",
                        "type": [
                            "null",
                            {
                                "items": "int",
                                "type": "array"
                            }
                        ],
                        "description": "Penalty for 5'- and 3'-end clipping."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-w",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "BWA Algorithm options",
                        "label": "Band width",
                        "id": "#band_width",
                        "sbg:toolDefaultValue": "100",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Band width for banded alignment."
                    },
                    {
                        "inputBinding": {
                            "prefix": "-C",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "BWA Input/output options",
                        "label": "Append comment",
                        "id": "#append_comment",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Append FASTA/FASTQ comment to SAM output."
                    }
                ],
                "sbg:createdOn": 1458653351,
                "sbg:links": [
                    {
                        "id": "http://bio-bwa.sourceforge.net/",
                        "label": "Homepage"
                    },
                    {
                        "id": "https://github.com/lh3/bwa",
                        "label": "Source code"
                    },
                    {
                        "id": "http://bio-bwa.sourceforge.net/bwa.shtml",
                        "label": "Wiki"
                    },
                    {
                        "id": "http://sourceforge.net/projects/bio-bwa/",
                        "label": "Download"
                    },
                    {
                        "id": "http://arxiv.org/abs/1303.3997",
                        "label": "Publication"
                    },
                    {
                        "id": "http://www.ncbi.nlm.nih.gov/pubmed/19451168",
                        "label": "Publication BWA Algorithm"
                    }
                ],
                "x": 675.0001508792294,
                "temporaryFailCodes": [],
                "successCodes": [],
                "sbg:project": "vladimirk/bwa-mem-bundle-0-7-13-demo",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1458653351,
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1458653365,
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1458653397,
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1458653457,
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1458735076,
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1458744323,
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1460644019,
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1461676796,
                        "sbg:revision": 7,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1461677982,
                        "sbg:revision": 8,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1461691955,
                        "sbg:revision": 9,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1462799414,
                        "sbg:revision": 10,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1462800334,
                        "sbg:revision": 11,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1465226602,
                        "sbg:revision": 12,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1465997760,
                        "sbg:revision": 13,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1465999303,
                        "sbg:revision": 14,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1466161520,
                        "sbg:revision": 15,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1468500423,
                        "sbg:revision": 16,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "Change red port type - FIX."
                    },
                    {
                        "sbg:modifiedOn": 1469448834,
                        "sbg:revision": 17,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "port renamed to reference index tar"
                    },
                    {
                        "sbg:modifiedOn": 1469449249,
                        "sbg:revision": 18,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "reference_index_tar renamed in other expressions."
                    },
                    {
                        "sbg:modifiedOn": 1470746327,
                        "sbg:revision": 19,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1470747524,
                        "sbg:revision": 20,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "SortedBAM is default output type."
                    },
                    {
                        "sbg:modifiedOn": 1471860342,
                        "sbg:revision": 21,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "Fix for single-ended reads."
                    },
                    {
                        "sbg:modifiedOn": 1471864768,
                        "sbg:revision": 22,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "instanceof fix for common filename"
                    },
                    {
                        "sbg:modifiedOn": 1471866804,
                        "sbg:revision": 23,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "[]concat(input_reads)"
                    },
                    {
                        "sbg:modifiedOn": 1471868494,
                        "sbg:revision": 24,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "SortedBAM default - returned revision."
                    },
                    {
                        "sbg:modifiedOn": 1471879715,
                        "sbg:revision": 25,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "Fix for same common sub-strings."
                    },
                    {
                        "sbg:modifiedOn": 1471880959,
                        "sbg:revision": 26,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "Fix to support single FASTQ input."
                    },
                    {
                        "sbg:modifiedOn": 1472054931,
                        "sbg:revision": 27,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "reads_size for sorter made more robust."
                    },
                    {
                        "sbg:modifiedOn": 1472056751,
                        "sbg:revision": 28,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "FASTQs size use for memory and CPU estimation removed!"
                    },
                    {
                        "sbg:modifiedOn": 1472057639,
                        "sbg:revision": 29,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "reads size removed from estimating number of CPUs"
                    },
                    {
                        "sbg:modifiedOn": 1472122448,
                        "sbg:revision": 30,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "Added reference_genome metadata field to SAM/BAM."
                    },
                    {
                        "sbg:modifiedOn": 1472126991,
                        "sbg:revision": 31,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "BAM/SAM metadata, reference_genome in the same format as in drop down menu."
                    },
                    {
                        "sbg:modifiedOn": 1476202723,
                        "sbg:revision": 32,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "Added reserved number of threads as an input."
                    },
                    {
                        "sbg:modifiedOn": 1477616482,
                        "sbg:revision": 33,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "added piping command status check"
                    },
                    {
                        "sbg:modifiedOn": 1479314087,
                        "sbg:revision": 34,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "BAM index output port removed"
                    },
                    {
                        "sbg:modifiedOn": 1479483637,
                        "sbg:revision": 35,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revisionNotes": "Support for files with \"HiSeq X Ten\" in platform metadata field"
                    },
                    {
                        "sbg:modifiedOn": 1479492159,
                        "sbg:revision": 36,
                        "sbg:modifiedBy": "bogdang",
                        "sbg:revisionNotes": "fix platform"
                    },
                    {
                        "sbg:modifiedOn": 1480437238,
                        "sbg:revision": 37,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "Added RG ID as optional input parameter"
                    },
                    {
                        "sbg:modifiedOn": 1482241039,
                        "sbg:revision": 38,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "Description - SortedBAM is default."
                    },
                    {
                        "sbg:modifiedOn": 1484235220,
                        "sbg:revision": 39,
                        "sbg:modifiedBy": "bogdang",
                        "sbg:revisionNotes": "default threads parameter set to 8"
                    }
                ],
                "sbg:job": {
                    "inputs": {
                        "output_name": "",
                        "rg_id": "rg_id-string-value",
                        "rg_platform_unit_id": "",
                        "output_format": null,
                        "reference_index_tar": {
                            "class": "File",
                            "path": "/path/to/reference.b37.fasta.gz.tar",
                            "size": 0,
                            "secondaryFiles": [
                                {
                                    "path": ".amb"
                                },
                                {
                                    "path": ".ann"
                                },
                                {
                                    "path": ".bwt"
                                },
                                {
                                    "path": ".pac"
                                },
                                {
                                    "path": ".sa"
                                }
                            ]
                        },
                        "rg_sample_id": "",
                        "threads": null,
                        "sambamba_threads": null,
                        "skip_seeds": null,
                        "sort_memory": 0,
                        "band_width": null,
                        "read_group_header": "",
                        "filter_out_secondary_alignments": false,
                        "rg_median_fragment_length": "",
                        "rg_data_submitting_center": "",
                        "deduplication": "MarkDuplicates",
                        "reserved_threads": 3,
                        "total_memory": null,
                        "input_reads": [
                            {
                                "secondaryFiles": [],
                                "class": "File",
                                "path": "/path/to/LP6005524-DNA_C01_lane_7.sorted.converted.filtered.pe_1.gz",
                                "size": 30000000000,
                                "metadata": {
                                    "platform": "HiSeq X Ten",
                                    "sample_id": "dnk_sample",
                                    "paired_end": "2"
                                }
                            },
                            {
                                "path": "/path/to/LP6005524-DNA_C01_lane_7.sorted.converted.filtered.pe_2.gz"
                            }
                        ],
                        "rg_library_id": "",
                        "rg_platform": null
                    },
                    "allocatedResources": {
                        "cpu": 3,
                        "mem": 4096
                    }
                },
                "arguments": [
                    {
                        "prefix": "",
                        "position": 111,
                        "separate": false,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{ \n     ///////////////////////////////////////////\n    ///  SAMBAMBA VIEW   //////////////////////\n   ///////////////////////////////////////////\nfunction common_substring(a,b) {\n  var i = 0;\n  \n  while(a[i] === b[i] && i < a.length)\n  {\n    i = i + 1;\n  }\n\n  return a.slice(0, i);\n}\n  \n   // Set output file name\n  if($job.inputs.input_reads[0] instanceof Array){\n    input_1 = $job.inputs.input_reads[0][0] // scatter mode\n    input_2 = $job.inputs.input_reads[0][1]\n  } else if($job.inputs.input_reads instanceof Array){\n    input_1 = $job.inputs.input_reads[0]\n    input_2 = $job.inputs.input_reads[1]\n  }else {\n    input_1 = [].concat($job.inputs.input_reads)[0]\n    input_2 = input_1\n  }\n  full_name = input_1.path.split('/')[input_1.path.split('/').length-1] \n\n  if($job.inputs.output_name){name = $job.inputs.output_name }\n  else if ($job.inputs.input_reads.length == 1){ \n    name = full_name\n\n    if(name.slice(-3, name.length) === '.gz' || name.slice(-3, name.length) === '.GZ')\n      name = name.slice(0, -3)   \n    if(name.slice(-3, name.length) === '.fq' || name.slice(-3, name.length) === '.FQ')\n      name = name.slice(0, -3)\n    if(name.slice(-6, name.length) === '.fastq' || name.slice(-6, name.length) === '.FASTQ')\n      name = name.slice(0, -6)\n       \n  }else{\n    full_name2 = input_2.path.split('/')[input_2.path.split('/').length-1] \n    name = common_substring(full_name, full_name2)\n    \n    if(name.slice(-1, name.length) === '_' || name.slice(-1, name.length) === '.')\n      name = name.slice(0, -1)\n    if(name.slice(-2, name.length) === 'p_' || name.slice(-1, name.length) === 'p.')\n      name = name.slice(0, -2)\n    if(name.slice(-2, name.length) === 'P_' || name.slice(-1, name.length) === 'P.')\n      name = name.slice(0, -2)\n    if(name.slice(-3, name.length) === '_p_' || name.slice(-3, name.length) === '.p.')\n      name = name.slice(0, -3)\n    if(name.slice(-3, name.length) === '_pe' || name.slice(-3, name.length) === '.pe')\n      name = name.slice(0, -3)\n  }\n  \n  // Read number of threads if defined\n  if ($job.inputs.sambamba_threads){\n    threads = $job.inputs.sambamba_threads\n  }\n  else if ($job.inputs.threads){\n    threads = $job.inputs.threads\n  }\n  else { threads = 8 }\n  \n  if ($job.inputs.filter_out_secondary_alignments){\n    filt_sec = ' --filter \\'not secondary_alignment\\' '\n  }\n  else {filt_sec=' '}\n   \n  // Set output command\n  sambamba_path = '/opt/sambamba_v0.6.0'\n  if ($job.inputs.output_format == 'BAM') {\n    return \"| \" + sambamba_path + \" view -t \"+ threads + filt_sec + \"-f bam -S /dev/stdin -o \"+ name + \".bam\"\n  }\n  else if ($job.inputs.output_format == 'SAM'){ // SAM\n    return \"> \" + name + \".sam\"\n  }\n  else { // SortedBAM is considered default\n    return \"| \" + sambamba_path + \" view -t \"+ threads + filt_sec + \"-f bam -l 0 -S /dev/stdin\"\n  }\n\n}",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "position": 112,
                        "separate": false,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\n  ///////////////////////////////////////////\n ///  SAMBAMBA SORT   //////////////////////\n///////////////////////////////////////////\n  \nfunction common_substring(a,b) {\n  var i = 0;\n  while(a[i] === b[i] && i < a.length)\n  {\n    i = i + 1;\n  }\n\n  return a.slice(0, i);\n}\n\n   // Set output file name\n  if($job.inputs.input_reads[0] instanceof Array){\n    input_1 = $job.inputs.input_reads[0][0] // scatter mode\n    input_2 = $job.inputs.input_reads[0][1]\n  } else if($job.inputs.input_reads instanceof Array){\n    input_1 = $job.inputs.input_reads[0]\n    input_2 = $job.inputs.input_reads[1]\n  }else {\n    input_1 = [].concat($job.inputs.input_reads)[0]\n    input_2 = input_1\n  }\n  full_name = input_1.path.split('/')[input_1.path.split('/').length-1] \n  \n  if($job.inputs.output_name){name = $job.inputs.output_name }\n  else if ($job.inputs.input_reads.length == 1){\n    name = full_name\n    if(name.slice(-3, name.length) === '.gz' || name.slice(-3, name.length) === '.GZ')\n      name = name.slice(0, -3)   \n    if(name.slice(-3, name.length) === '.fq' || name.slice(-3, name.length) === '.FQ')\n      name = name.slice(0, -3)\n    if(name.slice(-6, name.length) === '.fastq' || name.slice(-6, name.length) === '.FASTQ')\n      name = name.slice(0, -6)\n       \n  }else{\n    full_name2 = input_2.path.split('/')[input_2.path.split('/').length-1] \n    name = common_substring(full_name, full_name2)\n    \n    if(name.slice(-1, name.length) === '_' || name.slice(-1, name.length) === '.')\n      name = name.slice(0, -1)\n    if(name.slice(-2, name.length) === 'p_' || name.slice(-1, name.length) === 'p.')\n      name = name.slice(0, -2)\n    if(name.slice(-2, name.length) === 'P_' || name.slice(-1, name.length) === 'P.')\n      name = name.slice(0, -2)\n    if(name.slice(-3, name.length) === '_p_' || name.slice(-3, name.length) === '.p.')\n      name = name.slice(0, -3)\n    if(name.slice(-3, name.length) === '_pe' || name.slice(-3, name.length) === '.pe')\n      name = name.slice(0, -3)\n  }\n\n  //////////////////////////\n  // Set sort memory size\n  \n  reads_size = 0 // Not used because of situations when size does not exist!\n  GB_1 = 1024*1024*1024\n  if(reads_size < GB_1){ \n    suggested_memory = 4\n    suggested_cpus = 1\n  }\n  else if(reads_size < 10 * GB_1){ \n    suggested_memory = 15\n    suggested_cpus = 8\n  }\n  else { \n    suggested_memory = 58 \n    suggested_cpus = 31\n  }\n  \n  \n  if(!$job.inputs.total_memory){ total_memory = suggested_memory }\n  else{ total_memory = $job.inputs.total_memory }\n\n  // TODO:Rough estimation, should be fine-tuned!\n  if(total_memory > 16){ sorter_memory = parseInt(total_memory / 3) }\n  else{ sorter_memory = 5 }\n          \n  if ($job.inputs.sort_memory){\n    sorter_memory_string = $job.inputs.sort_memory +'GiB'\n  }\n  else sorter_memory_string = sorter_memory + 'GiB' \n  \n  // Read number of threads if defined  \n  suggested_cpus = 8\n  if ($job.inputs.sambamba_threads){\n    threads = $job.inputs.sambamba_threads\n  }\n  else if ($job.inputs.threads){\n    threads = $job.inputs.threads\n  }\n  else threads = suggested_cpus\n  \n  sambamba_path = '/opt/sambamba_v0.6.0'\n  \n  // SortedBAM is considered default\n  if (!(($job.inputs.output_format == 'BAM') || ($job.inputs.output_format == 'SAM'))){\n    cmd = \"| \" + sambamba_path + \" sort -t \" + threads\n    return cmd + \" -m \"+sorter_memory_string+\" --tmpdir ./ -o \"+ name +\".bam -l 5 /dev/stdin\"\n  }\n  else return \"\"\n}\n  \n",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "position": 110,
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\n    ///////////////////////////////////////////\n    ///  SAMBLASTER      //////////////////////\n   ///////////////////////////////////////////\n  if ($job.inputs.deduplication == \"MarkDuplicates\"){\n    return \"| /opt/samblaster/samblaster -i /dev/stdin -o /dev/stdout\"\n  }\n  else if ($job.inputs.deduplication == \"RemoveDuplicates\"){\n    return \"| /opt/samblaster/samblaster -r -i /dev/stdin -o /dev/stdout\"\n  }\n  else{\n   return \"\" \n  }\n}",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "position": 1,
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\n  \n  if($job.inputs.read_group_header){\n  \treturn '-R ' + $job.inputs.read_group_header\n  }\n    \n  function add_param(key, val){\n    if(!val){\n      return\n\t}\n    param_list.push(key + ':' + val)\n  }\n\n  param_list = []\n\n  // Set output file name\n  if($job.inputs.input_reads[0] instanceof Array){\n    input_1 = $job.inputs.input_reads[0][0] // scatter mode\n  } else if($job.inputs.input_reads instanceof Array){\n    input_1 = $job.inputs.input_reads[0]\n  }else {\n    input_1 = [].concat($job.inputs.input_reads)[0]\n  }\n  \n  //Read metadata for input reads\n  read_metadata = input_1.metadata\n  if(!read_metadata) read_metadata = []\n\n  if($job.inputs.rg_id){\n    add_param('ID', $job.inputs.rg_id)\n  }\n  else {\n    add_param('ID', '1')\n  } \n   \n  \n  if($job.inputs.rg_data_submitting_center){\n  \tadd_param('CN', $job.inputs.rg_data_submitting_center)\n  }\n  else if('data_submitting_center' in  read_metadata){\n  \tadd_param('CN', read_metadata.data_submitting_center)\n  }\n  \n  if($job.inputs.rg_library_id){\n  \tadd_param('LB', $job.inputs.rg_library_id)\n  }\n  else if('library_id' in read_metadata){\n  \tadd_param('LB', read_metadata.library_id)\n  }\n  \n  if($job.inputs.rg_median_fragment_length){\n  \tadd_param('PI', $job.inputs.rg_median_fragment_length)\n  }\n\n  \n  if($job.inputs.rg_platform){\n  \tadd_param('PL', $job.inputs.rg_platform)\n  }\n  else if('platform' in read_metadata){\n    if(read_metadata.platform == 'HiSeq X Ten'){\n      rg_platform = 'Illumina'\n    }\n    else{\n      rg_platform = read_metadata.platform\n    }\n  \tadd_param('PL', rg_platform)\n  }\n  \n  if($job.inputs.rg_platform_unit_id){\n  \tadd_param('PU', $job.inputs.rg_platform_unit_id)\n  }\n  else if('platform_unit_id' in read_metadata){\n  \tadd_param('PU', read_metadata.platform_unit_id)\n  }\n  \n  if($job.inputs.rg_sample_id){\n  \tadd_param('SM', $job.inputs.rg_sample_id)\n  }\n  else if('sample_id' in  read_metadata){\n  \tadd_param('SM', read_metadata.sample_id)\n  }\n    \n  return \"-R '@RG\\\\t\" + param_list.join('\\\\t') + \"'\"\n  \n}",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "position": 101,
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\n  /////// Set input reads in the correct order depending of the paired end from metadata\n    \n     // Set output file name\n  if($job.inputs.input_reads[0] instanceof Array){\n    input_reads = $job.inputs.input_reads[0] // scatter mode\n  } else {\n    input_reads = $job.inputs.input_reads = [].concat($job.inputs.input_reads)\n  }\n  \n  \n  //Read metadata for input reads\n  read_metadata = input_reads[0].metadata\n  if(!read_metadata) read_metadata = []\n  \n  order = 0 // Consider this as normal order given at input: pe1 pe2\n  \n  // Check if paired end 1 corresponds to the first given read\n  if(read_metadata == []){ order = 0 }\n  else if('paired_end' in  read_metadata){ \n    pe1 = read_metadata.paired_end\n    if(pe1 != 1) order = 1 // change order\n  }\n\n  // Return reads in the correct order\n  if (input_reads.length == 1){\n    return input_reads[0].path // Only one read present\n  }\n  else if (input_reads.length == 2){\n    if (order == 0) return input_reads[0].path + ' ' + input_reads[1].path\n    else return input_reads[1].path + ' ' + input_reads[0].path\n  }\n\n}",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "prefix": "-t",
                        "position": 2,
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\n  \n  /*reads_size = 0 \n\n  GB_1 = 1024*1024*1024\n  if(reads_size < GB_1){ suggested_threads = 1 }\n  else if(reads_size < 10 * GB_1){ suggested_threads = 8 }\n  else { suggested_threads = 31 }\n  */\n  suggested_threads = 8\n  \n  if(!$job.inputs.threads){  \treturn suggested_threads  }  \n  else{    return $job.inputs.threads  }\n}",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "position": 10,
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\n  reference_file = $job.inputs.reference_index_tar.path.split('/')[$job.inputs.reference_index_tar.path.split('/').length-1]\n  name = reference_file.slice(0, -4) // cut .tar extension \n  \n  return name\n  \n}",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "position": 10000,
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\n  cmd = \";declare -i pipe_statuses=(\\\\${PIPESTATUS[*]});len=\\\\${#pipe_statuses[@]};declare -i tot=0;echo \\\\${pipe_statuses[*]};for (( i=0; i<\\\\${len}; i++ ));do if [ \\\\${pipe_statuses[\\\\$i]} -ne 0 ];then tot=\\\\${pipe_statuses[\\\\$i]}; fi;done;if [ \\\\$tot -ne 0 ]; then >&2 echo Error in piping. Pipe statuses: \\\\${pipe_statuses[*]};fi; if [ \\\\$tot -ne 0 ]; then false;fi\\\"\"\n  return cmd\n}",
                            "engine": "#cwl-js-engine"
                        }
                    }
                ],
                "sbg:toolAuthor": "Heng Li",
                "sbg:license": "BWA: GNU Affero General Public License v3.0, MIT License. Sambamba: GNU GENERAL PUBLIC LICENSE. Samblaster: The MIT License (MIT)"
            }
        },
        {
            "scatter": "#SBG_FASTQ_Quality_Adjuster.fastq",
            "inputs": [
                {
                    "id": "#SBG_FASTQ_Quality_Adjuster.used_quality_scale"
                },
                {
                    "id": "#SBG_FASTQ_Quality_Adjuster.total_memory"
                },
                {
                    "id": "#SBG_FASTQ_Quality_Adjuster.fastq",
                    "source": [
                        "#FASTQ"
                    ]
                }
            ],
            "sbg:y": 398.3333393202886,
            "id": "#SBG_FASTQ_Quality_Adjuster",
            "outputs": [
                {
                    "id": "#SBG_FASTQ_Quality_Adjuster.result"
                }
            ],
            "sbg:x": 90.00000109937451,
            "run": {
                "sbg:revisionNotes": "fix",
                "sbg:validationErrors": [],
                "sbg:contributors": [
                    "bogdang",
                    "vladimirk"
                ],
                "sbg:sbgMaintained": false,
                "hints": [
                    {
                        "class": "sbg:CPURequirement",
                        "value": 1
                    },
                    {
                        "class": "sbg:MemRequirement",
                        "value": {
                            "class": "Expression",
                            "script": "{\n  if($job.inputs.total_memory){\n    return $job.inputs.total_memory * 1024\n  } else {\n    return 1000\n  }\n}",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "dockerPull": "images.sbgenomics.com/bogdang/sbg_quality_scale_adjuster:1.0",
                        "class": "DockerRequirement",
                        "dockerImageId": ""
                    }
                ],
                "sbg:modifiedBy": "bogdang",
                "baseCommand": [
                    {
                        "class": "Expression",
                        "script": "{\n  qscale = \"to be detected\"\n  \n  if ($job.inputs.fastq.metadata)\n      if ($job.inputs.fastq.metadata[\"quality_scale\"])\n      qscale = $job.inputs.fastq.metadata[\"quality_scale\"]  \n  \n  if ($job.inputs.used_quality_scale)\n    if ($job.inputs.used_quality_scale != null) \n      qscale = $job.inputs.used_quality_scale\n  \n  \n  if (qscale == \"sanger\" || qscale == \"illumina18\" ) \n  {// no conversion\n\treturn \"echo No conversion\"\n  }\n  else\n  {\n    return \"python sbg_fastq_quality_scale_adjuster.py\"\n  }\n}",
                        "engine": "#cwl-js-engine"
                    }
                ],
                "sbg:latestRevision": 11,
                "sbg:cmdPreview": "python sbg_fastq_quality_scale_adjuster.py  --fastq /path/to/test.1.fastq",
                "id": "bix-demo/sbgtools-demo/sbg-fastq-quality-adjuster/11",
                "sbg:id": "admin/sbg-public-data/sbg-fastq-quality-adjuster/11",
                "sbg:toolkit": "SBGTools",
                "sbg:createdBy": "vladimirk",
                "requirements": [
                    {
                        "class": "CreateFileRequirement",
                        "fileDef": [
                            {
                                "fileContent": "\"\"\"\nUsage:\n    sbg_fastq_quality_scale_adjuster.py --fastq FILE\n\nOptions:\n    -h, --help          Show this message.\n\n    -f, --fastq FILE    Input FASTQ file.\n\n\"\"\"\n\nfrom docopt import docopt\nimport os\nimport gzip\nimport itertools as it\nimport shutil\nimport sys\nfrom math import log10\nfrom subprocess import Popen\n\n\n\nargs = docopt(__doc__, version='1.0')\n\ninput_file = args['--fastq'] \n\nbase_name = input_file[input_file.rfind('/')+1:input_file.rfind('.') if input_file.rfind('.') != -1 else None]\nr_ext = input_file[input_file.rfind('.')+1:] if input_file.rfind('.') else \"\"\nl_ext = base_name.split('.')[-1].lower()\nif l_ext == 'fastq' or l_ext == 'fq':\n    if not r_ext == 'fastq' and not r_ext == 'fq':\n        base_name = base_name[:base_name.rfind('.')]\noutput_file = base_name + '.std.fastq'\n\n\n\"\"\"input and output names defined above\"\"\"\n\nclass myGzipFile(gzip.GzipFile):\n    def __enter__(self, *args, **kwargs):\n        if self.fileobj is None:\n            raise ValueError(\"I/O operation on closed GzipFile object\")\n        return self\n\n    def __exit__(self, *args, **kwargs):\n        self.close()\n\n\ndef extremes(a, b):\n    if a is False:\n        return b, b\n    return min(a[0], b), max(a[1], b)\n\n\ndef walk_qualities(f, sample_size=1000):\n    for i in xrange(sample_size * 4):\n        try:\n            line = f.next()\n        except StopIteration:\n            return\n        if i % 4 == 3:\n            yield line.rstrip(\"\\n\\r\")\n\n\ndef sniff(path):\n    with open(path, 'rb') as f:\n        gz = f.read(2) == '\\x1f\\x8b'\n    opn = myGzipFile if gz else open\n    with opn(path) as f:\n        return get_scale(*map(ord, reduce(extremes, it.chain(*walk_qualities(f)), False)))\n\n\ndef get_scale(ord_min, ord_max):\n    options = {\n        'illumina13': (64, 105),\n        'illumina15': (66, 105),\n        'sanger': (33, 126),\n        'solexa': (59, 105),\n    }\n    fits = [(k, v) for k, v in options.iteritems() if v[0] <= ord_min and v[1] >= ord_max]\n    if not fits:\n        message = 'Quality scale for range (%s, %s) not found.' % (ord_min, ord_max)\n        raise Exception(message)\n        # Return narrowest range\n    return reduce(lambda a, b: a if a[1][1] - a[1][0] < b[1][1] - b[1][0] else b, fits)[0]\n\ndef qsolexa(x):\n    return chr(int(round(10 * log10(10.0**((ord(x)-64)/10.0)+1))) + 33)\n\n\ndef qillumina13(x):\n    return chr(ord(x) - 31)\n\n\ndef qillumina15(x):\n    return chr(ord(x) - 31) if ord(x)-64 > 2 else chr(33)\n\n\ndef qillumina18(x):\n    return x\n\n\n\"\"\"detect quality scale format\"\"\"\n\nmeta_qual = sniff(input_file)\n\n\n\"\"\"adjust quality scale if needed\"\"\"\n\nif meta_qual == 'illumina13':\n    proc = qillumina13\nelif meta_qual == 'illumina15':\n    proc = qillumina15\nelif meta_qual == 'solexa':\n    proc = qsolexa\nelse:\n    proc = None\n\nif proc == qsolexa: \n    with open(input_file, 'rb') as f:\n        gz = f.read(2) == '\\x1f\\x8b'\n    open_gz = myGzipFile if gz else open\n    with open(output_file, 'w') as out:\n        for i, line in enumerate(open_gz(input_file)):\n            if i % 4 == 3:\n                line = line.strip()\n                converted = ''.join(map(proc, line))\n                out.write(converted + '\\n')\n            else:\n                out.write(line)\n    contents = \"Original fastq quality scale format was \" + meta_qual + \", and is converted to illumina18.\\n\"\nelif proc is not None: #seqtk converter from illumina13-15\n    with open(input_file, 'rb') as f:\n        gz = f.read(2) == '\\x1f\\x8b'\n    f.close()\n    if gz:#gunzip file to temp.fastq\n        temp_file = 'temp.fastq'\n        \n        inF = gzip.GzipFile(input_file, 'rb')\n        outF = file(temp_file, 'wb')\n        \n        newline = ''\n        for lines in inF:\n            outF.write(newline + lines.rstrip('\\n'))\n            newline = '\\n'\n            \n        inF.close()\n        outF.close()\n\n    else:\n        temp_file = input_file\n\n    cmd = ['seqtk','seq','-Q64','-V',temp_file,'>',output_file]\n    with open(output_file, 'w') as out:\n        p = Popen(cmd, stdout = out)\n        p.communicate()\n    contents = \"Original fastq quality scale format was \" + meta_qual + \", and is converted to illumina18.\\n\"\nelse:\n    if input_file.rfind(\".gz\") == len(input_file) - 3:\n        output_file = output_file + \".gz\"\n    #shutil.copyfile(input_file, output_file)\n    #os.symlink(input_file, output_file)\n    os.rename(input_file, output_file)\n    contents = \"Original fastq quality scale format was illumina18. No conversion performed.\\n\"\n\nsys.stderr.write(contents) #Write conversion to error log",
                                "filename": "sbg_fastq_quality_scale_adjuster.py"
                            }
                        ]
                    },
                    {
                        "id": "#cwl-js-engine",
                        "class": "ExpressionEngineRequirement",
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ]
                    }
                ],
                "label": "SBG FASTQ Quality Adjuster",
                "sbg:image_url": null,
                "outputs": [
                    {
                        "sbg:fileTypes": "FASTQ",
                        "id": "#result",
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Result",
                        "outputBinding": {
                            "glob": {
                                "class": "Expression",
                                "script": "{\n\n  qscale = \"to be detected\"\n  \n  if ($job.inputs.fastq.metadata)\n      if ($job.inputs.fastq.metadata[\"quality_scale\"])\n      qscale = $job.inputs.fastq.metadata[\"quality_scale\"]  \n  \n  if ($job.inputs.used_quality_scale)\n    if ($job.inputs.used_quality_scale != null) \n      qscale = $job.inputs.used_quality_scale\n  \n      \n  if (qscale == \"sanger\" || qscale == \"illumina18\" ) \n  {\n    return $job.inputs.fastq.path.replace(/^.*[\\\\\\/]/, '')\n  }\n  else\n  {\n\tfile = $job.inputs.fastq.path\n\tfile_split = file.split('.')\n\tbasename = file_split\n  \tif (basename.length > 1)\n    {\n      l_ext = basename.splice(basename.length-1)\n      if (l_ext == 'gz')\n      {\n        basename = basename.slice(0, basename.length-1)\n      }\n    }\n \tretval = basename.concat('std.fastq')\n\treturn retval.join('.').replace(/^.*[\\\\\\/]/, '') + \"*\"\n  }\n}",
                                "engine": "#cwl-js-engine"
                            },
                            "sbg:metadata": {
                                "Quality scale": "sanger"
                            },
                            "sbg:inheritMetadataFrom": "#fastq"
                        },
                        "description": "Resulting file in FASTQ format."
                    }
                ],
                "y": 398.3333393202886,
                "stdout": "",
                "cwlVersion": "sbg:draft-2",
                "stdin": "",
                "sbg:job": {
                    "inputs": {
                        "fastq": {
                            "secondaryFiles": [],
                            "class": "File",
                            "path": "/path/to/test.1.fastq",
                            "size": 0,
                            "metadata": {
                                "Quality scale": "sanger"
                            }
                        },
                        "used_quality_scale": null,
                        "total_memory": 9
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 9216
                    }
                },
                "sbg:categories": [
                    "Converters",
                    "FASTQ-Processing"
                ],
                "class": "CommandLineTool",
                "sbg:modifiedOn": 1481448894,
                "description": "This app detects quality score format used in input FASTQ file. FASTQ quality score is then converted to standard Sanger quality score if conversion is required. It is basically a compact merged version of \"SBG Fastq Quality Detector\" and \"SBG Fastq Quality Converter\", created to speed up the execution of pipelines. Supported source formats are: Solexa, Illumina 1.3, Illumina 1.5 and Illumina 1.8.",
                "inputs": [
                    {
                        "id": "#used_quality_scale",
                        "type": [
                            "null",
                            {
                                "symbols": [
                                    "sanger",
                                    "illumina18",
                                    "illumina13",
                                    "illumina15",
                                    "solexa"
                                ],
                                "name": "used_quality_scale",
                                "type": "enum"
                            }
                        ],
                        "sbg:category": "Input",
                        "description": "Used quality scale of FASTQ reads.",
                        "label": "Used quality scale"
                    },
                    {
                        "sbg:category": "Execution",
                        "label": "Total memory [GB]",
                        "id": "#total_memory",
                        "sbg:toolDefaultValue": "1",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Total memory in GB.",
                        "sbg:stageInput": null
                    },
                    {
                        "required": true,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "position": 1,
                            "separate": true,
                            "valueFrom": {
                                "class": "Expression",
                                "script": "{\n  qscale = \"to be detected\"\n  \n  if ($job.inputs.fastq.metadata)\n      if ($job.inputs.fastq.metadata[\"quality_scale\"])\n      qscale = $job.inputs.fastq.metadata[\"quality_scale\"]  \n  \n  if ($job.inputs.used_quality_scale)\n    if ($job.inputs.used_quality_scale != null) \n      qscale = $job.inputs.used_quality_scale\n  \n      \n  if (qscale == \"sanger\" || qscale == \"illumina18\" )   {\n    return \"\"\n  }\n  else\n  {\n    return \"--fastq \" + $job.inputs.fastq.path\n  }\n}",
                                "engine": "#cwl-js-engine"
                            }
                        },
                        "sbg:category": "Input",
                        "sbg:fileTypes": "FASTQ,FASTQ.GZ,FQ,FQ.GZ",
                        "id": "#fastq",
                        "type": [
                            "File"
                        ],
                        "label": "Fastq file",
                        "description": "Input FASTQ file.",
                        "sbg:stageInput": "link"
                    }
                ],
                "sbg:createdOn": 1470927070,
                "x": 90.00000109937451,
                "temporaryFailCodes": [],
                "successCodes": [],
                "sbg:project": "bix-demo/sbgtools-demo",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1470927070,
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "Copy of bogdang/fastq-quality-converter/sbg-fastq-quality-adjuster/23"
                    },
                    {
                        "sbg:modifiedOn": 1472559664,
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "Copy of bogdang/fastq-quality-converter/sbg-fastq-quality-adjuster/24"
                    },
                    {
                        "sbg:modifiedOn": 1474546255,
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "bogdang",
                        "sbg:revisionNotes": "Copy of bogdang/fastq-quality-converter/sbg-fastq-quality-adjuster/25"
                    },
                    {
                        "sbg:modifiedOn": 1475084132,
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revisionNotes": "'sanger': (33, 74) instead 'sanger': (33, 126)"
                    },
                    {
                        "sbg:modifiedOn": 1475231421,
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "bogdang",
                        "sbg:revisionNotes": "sanger 33:92"
                    },
                    {
                        "sbg:modifiedOn": 1475234050,
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "bogdang",
                        "sbg:revisionNotes": "seqtk for converting from illumina13-15"
                    },
                    {
                        "sbg:modifiedOn": 1478274820,
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "bogdang",
                        "sbg:revisionNotes": "fix for seqtk conversion from .gz files"
                    },
                    {
                        "sbg:modifiedOn": 1478277013,
                        "sbg:revision": 7,
                        "sbg:modifiedBy": "bogdang",
                        "sbg:revisionNotes": "Without seqtk"
                    },
                    {
                        "sbg:modifiedOn": 1478300733,
                        "sbg:revision": 8,
                        "sbg:modifiedBy": "bogdang",
                        "sbg:revisionNotes": "fix seqtk for .gz files"
                    },
                    {
                        "sbg:modifiedOn": 1481123041,
                        "sbg:revision": 9,
                        "sbg:modifiedBy": "bogdang",
                        "sbg:revisionNotes": "Support for files named filename.fq.fastq"
                    },
                    {
                        "sbg:modifiedOn": 1481290093,
                        "sbg:revision": 10,
                        "sbg:modifiedBy": "bogdang",
                        "sbg:revisionNotes": "No conversion if sanger or illumina18 quality scale set in metadata"
                    },
                    {
                        "sbg:modifiedOn": 1481448894,
                        "sbg:revision": 11,
                        "sbg:modifiedBy": "bogdang",
                        "sbg:revisionNotes": "fix"
                    }
                ],
                "sbg:revision": 11,
                "arguments": [],
                "sbg:toolAuthor": "Seven Bridges Genomics",
                "sbg:license": "Apache License 2.0"
            }
        }
    ],
    "sbg:canvas_y": 228,
    "sbg:toolAuthor": "Seven Bridges",
    "sbg:license": "Apache License 2.0"
}
