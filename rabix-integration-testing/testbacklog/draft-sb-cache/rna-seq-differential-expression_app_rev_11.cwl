{
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "requirements": [],
    "outputs": [
        {
            "sbg:y": 242,
            "required": false,
            "source": [
                "#Cuffdiff.zipped"
            ],
            "id": "#zipped",
            "sbg:includeInPorts": true,
            "sbg:fileTypes": "ZIP",
            "sbg:x": 1108,
            "label": "zipped",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:y": 313,
            "required": false,
            "source": [
                "#CummeRbundQC.html"
            ],
            "id": "#html",
            "sbg:includeInPorts": true,
            "sbg:fileTypes": "B64HTML",
            "sbg:x": 1242,
            "label": "html",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:y": 439,
            "required": false,
            "source": [
                "#CummeRbundQC.archive"
            ],
            "id": "#archive",
            "sbg:includeInPorts": true,
            "sbg:fileTypes": "ZIP",
            "sbg:x": 1247,
            "label": "archive",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "sbg:toolkit": "Cufflinks",
    "sbg:latestRevision": 11,
    "sbg:toolAuthor": "Seven Bridges Genomics",
    "sbg:modifiedOn": 1501518687,
    "hints": [
    
    ],
    "sbg:toolkitVersion": "2.2.1",
    "sbg:copyOf": "admin/sbg-public-data/rna-seq-differential-expression/11",
    "sbg:revisionNotes": "Changed Google instance type.",
    "sbg:canvas_x": -75,
    "inputs": [
        {
            "sbg:y": 396,
            "sbg:x": 501,
            "sbg:includeInPorts": true,
            "id": "#Reference",
            "sbg:fileTypes": "FASTA, FA",
            "label": "#Reference",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "sbg:y": 450,
            "sbg:x": 609,
            "id": "#Annotations",
            "sbg:includeInPorts": true,
            "sbg:fileTypes": "GTF, GFF",
            "type": [
                "File"
            ],
            "label": "#Annotations",
            "sbg:suggestedValue": {
                "name": "Homo_sapiens.GRCh37.75.gtf",
                "class": "File",
                "path": "5772b6c4507c1752674486cd"
            }
        },
        {
            "sbg:y": 343,
            "sbg:x": 179,
            "sbg:includeInPorts": true,
            "id": "#BAM_Group_B",
            "sbg:fileTypes": "SAM,BAM",
            "label": "#BAM_Group_B",
            "type": [
                {
                    "items": "File",
                    "type": "array"
                }
            ]
        },
        {
            "sbg:y": 196,
            "sbg:x": 179,
            "sbg:includeInPorts": true,
            "id": "#BAM_Group_A",
            "sbg:fileTypes": "SAM,BAM",
            "label": "#BAM_Group_A",
            "type": [
                {
                    "items": "File",
                    "type": "array"
                }
            ]
        },
        {
            "description": "Specify the name of the group.",
            "sbg:toolDefaultValue": "-",
            "id": "#group_name",
            "sbg:category": "Basic Options",
            "type": [
                "string"
            ],
            "label": "Group name",
            "sbg:suggestedValue": "Group_A"
        },
        {
            "description": "Specify the name of the group.",
            "sbg:toolDefaultValue": "-",
            "id": "#group_name_1",
            "sbg:category": "Basic Options",
            "type": [
                "string"
            ],
            "label": "Group name",
            "sbg:suggestedValue": "Group_B"
        }
    ],
    "sbg:id": "bixqa/qa-load-2017-07-31-18/rna-seq-differential-expression/11",
    "sbg:license": "Apache License 2.0",
    "sbg:projectName": "qa-load-2017-07-31-18",
    "sbg:sbgMaintained": false,
    "description": "The pipeline described here can be used to perform differential gene expression analysis between two groups/conditions. The first step in the pipeline performs gene/transcript quantification using Cuffquant tool. The output of Cuffquant is then fed into Cuffdiff tool. Cuffdiff finds significant differences in gene/transcripts expression between groups of samples. The Cuffdiff algorithm incorporates both biological and technical variability in order to identify differentially expressed genes and transcripts. Thus, the ability to detect true significant changes (and limit false positive detections) is determined by the number of replicates included in an experiment and the inter-replicate variability.\n\nThis pipeline also performs basic quality control analysis of your differential expression experiment powered by CummeRbundQC.\n\nOn the Seven Bridges Platform, you can use this pipeline in combination with the RNA-Seq Alignment \u2013 TopHat Public Pipeline to take you all the way from raw sequencing reads to visualization and a list of differentially expressed genes and transcripts.\n\n###Required Inputs\n\nThe pipeline has **three** required inputs:\n\n1. BAM group \"A\" (ID: \"BAM_Group_A\") - One or more BAM/SAM files for condition-1. Refer to the **NOTE** section below for more information.\n\n2. BAM group \"B\" (ID: \"BAM_Group_B\") - One or more BAM/SAM files for condition-2. Refer to the **NOTE** section below for more information.\n\n3. Gene annotation file (ID: \"Annotations\") - Known transcript annotation in GTF format. GTF file needs to be augmented with tss_id and p_id attributes in order to look for changes in primary transcript expression, splicing, coding output, and promoter use. For Human samples we recommend Ensembl gene annotations \"Homo_sapiens.GRCh37.75.gtf\".\n\n###Optional Input\n\n1. Reference FASTA file (ID: \"Reference\") - FASTA file containing reference genome for sequence bias correction.\n\n###Optional Parameters\n\n1. Group names (IDs: \"group_name\" and \"group_name_1\") - The group names defined here will be used in the final report.\n\n###Outputs\n\n1. Cuffdiff output (ID: \"zipped\") - Zipped directory containing the output of Cuffdiff.\n\n2. HTML output (ID: \"html\") - The final report in the b64 html format that can be viewed on the platform.\n\n3. CummeRbund QC output (ID: \"archive\") - Zipped directory containing the html output.\n\n###NOTE:\n\n1. For example if you have three replicates (A, B, & C) of an experimental condition (X), set the \"Group name\" parameter in \"SBG Group Input\" app to X and add BAM files A, B, & C to the group. The number of replicates doesn\u2019t need to be the same in each experimental condition. If you use fewer than 3 replicates per condition, by default Cuffdiff will not test for significant alterations in splicing, tss, or cds usage.\n\n2. If there are more than two groups, modify the pipeline by adding more \"SBG Group Input\" apps and connecting these to the \"SBG Flatten\" input.\n\n###Common Issues\n\n1. Make sure that the BAM files used in the workflow, are mapped to the same reference as the one used here as an input.\n2. Compatibility with STAR aligner: for unstranded RNA-seq data, Cuffinks/Cuffdiff require spliced alignments with XS strand attribute, which STAR will generate with `--outSAMstrandField intronMotif` option. As required, the XS strand attribute will be generated for all alignments that contain splice junctions. The spliced alignments that have undefined strand (i.e. containing only non-canonical unannotated junctions) will be suppressed.",
    "id": "https://api.sbgenomics.com/v2/apps/bixqa/qa-load-2017-07-31-18/rna-seq-differential-expression/11/raw/",
    "sbg:revision": 11,
    "sbg:image_url": "https://brood.sbgenomics.com/static/bixqa/qa-load-2017-07-31-18/rna-seq-differential-expression/11.png",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1501518687,
            "sbg:modifiedBy": "bixqa",
            "sbg:revision": 0,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1501518687,
            "sbg:modifiedBy": "bixqa",
            "sbg:revision": 1,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1501518687,
            "sbg:modifiedBy": "bixqa",
            "sbg:revision": 2,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1501518687,
            "sbg:modifiedBy": "bixqa",
            "sbg:revision": 3,
            "sbg:revisionNotes": "SBG Group Input updated to newest revision (revision 2)."
        },
        {
            "sbg:modifiedOn": 1501518687,
            "sbg:modifiedBy": "bixqa",
            "sbg:revision": 4,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1501518687,
            "sbg:modifiedBy": "bixqa",
            "sbg:revision": 5,
            "sbg:revisionNotes": "SBG Group Input parameters exposed, SBG Flatten updated."
        },
        {
            "sbg:modifiedOn": 1501518687,
            "sbg:modifiedBy": "bixqa",
            "sbg:revision": 6,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1501518687,
            "sbg:modifiedBy": "bixqa",
            "sbg:revision": 7,
            "sbg:revisionNotes": "Changed the input ids of BAM_Group_A and BAM_Group_B to match the labels. Reference gtf updated in the description."
        },
        {
            "sbg:modifiedOn": 1501518687,
            "sbg:modifiedBy": "bixqa",
            "sbg:revision": 8,
            "sbg:revisionNotes": "Updated description."
        },
        {
            "sbg:modifiedOn": 1501518687,
            "sbg:modifiedBy": "bixqa",
            "sbg:revision": 9,
            "sbg:revisionNotes": "google instance type hint added."
        },
        {
            "sbg:modifiedOn": 1501518687,
            "sbg:modifiedBy": "bixqa",
            "sbg:revision": 10,
            "sbg:revisionNotes": null
        },
        {
            "sbg:modifiedOn": 1501518687,
            "sbg:modifiedBy": "bixqa",
            "sbg:revision": 11,
            "sbg:revisionNotes": "Changed Google instance type."
        }
    ],
    "class": "Workflow",
    "sbg:contributors": [
        "bixqa"
    ],
    "label": "RNA-seq Differential Expression",
    "sbg:canvas_y": -92,
    "sbg:modifiedBy": "bixqa",
    "sbg:canvas_zoom": 0.7499999999999998,
    "sbg:project": "bixqa/qa-load-2017-07-31-18",
    "sbg:categories": [
        "Differential-Expression",
        "RNA"
    ],
    "cwlVersion": "sbg:draft-2",
    "steps": [
        {
            "sbg:y": 378,
            "outputs": [
                {
                    "id": "#CummeRbundQC.html"
                },
                {
                    "id": "#CummeRbundQC.archive"
                }
            ],
            "sbg:x": 1106,
            "id": "#CummeRbundQC",
            "inputs": [
                {
                    "id": "#CummeRbundQC.thresholds_off"
                },
                {
                    "id": "#CummeRbundQC.dispersion_threshold"
                },
                {
                    "id": "#CummeRbundQC.density_threshold"
                },
                {
                    "source": [
                        "#Cuffdiff.zipped"
                    ],
                    "id": "#CummeRbundQC.cuffdiff_zip"
                }
            ],
            "run": {
                "requirements": [],
                "outputs": [
                    {
                        "description": "Base64 encoded HTML report prepared for easy viewing.",
                        "outputBinding": {
                            "glob": "*.b64html",
                            "sbg:inheritMetadataFrom": "#cuffdiff_zip",
                            "sbg:metadata": {}
                        },
                        "id": "#html",
                        "sbg:fileTypes": "B64HTML",
                        "label": "Report",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "description": "Downloadable zipped report.",
                        "outputBinding": {
                            "glob": "*.zip",
                            "sbg:inheritMetadataFrom": "#cuffdiff_zip",
                            "sbg:metadata": {}
                        },
                        "id": "#archive",
                        "sbg:fileTypes": "ZIP",
                        "label": "Report archive",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "arguments": [],
                "successCodes": [],
                "sbg:toolkit": "CummeRbund",
                "sbg:latestRevision": 1,
                "sbg:toolAuthor": "Cole Trapnell/University of Washington",
                "sbg:project": "bix-demo/cummerbundqc-2-8-2-demo",
                "sbg:toolkitVersion": "2.8.2",
                "sbg:categories": [
                    "Differential-Expression",
                    "Plotting-and-Rendering"
                ],
                "temporaryFailCodes": [],
                "inputs": [
                    {
                        "description": "Set this parameter in case you don't want to eliminate lower expressed genes on dispersion and density plots. Be aware that this would cause plots to be stretched in order to show these low values for dispersion and FPKM.",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "prefix": "--thresholdsoff"
                        },
                        "id": "#thresholds_off",
                        "sbg:category": "Basic Options",
                        "sbg:toolDefaultValue": "False",
                        "label": "Turn off thresholds",
                        "type": [
                            "null",
                            "boolean"
                        ]
                    },
                    {
                        "description": "Changing this parameter sets threshold for the genes that are displayed on dispersion plot, namely it removes from the plot all genes that have dispersion lower than this value.",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "prefix": "--dispthreshold"
                        },
                        "id": "#dispersion_threshold",
                        "sbg:category": "Basic Options",
                        "sbg:toolDefaultValue": "0.01",
                        "label": "Dispersion plot threshold",
                        "type": [
                            "null",
                            "float"
                        ]
                    },
                    {
                        "description": "Changing this parameter sets threshold for the genes that are displayed on both density plots. It removes from the plots all genes that have FPKM value lower than this value.",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "prefix": "--densthreshold"
                        },
                        "id": "#density_threshold",
                        "sbg:category": "Basic Options",
                        "sbg:toolDefaultValue": "0.0001",
                        "label": "Density plot threshold",
                        "type": [
                            "null",
                            "float"
                        ]
                    },
                    {
                        "sbg:category": "Input files",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "prefix": "--cuffzip"
                        },
                        "description": "Zipped list of output tracking, tab delimited and INFO files.",
                        "id": "#cuffdiff_zip",
                        "required": true,
                        "sbg:fileTypes": "ZIP",
                        "label": "Archive of Cuffdiff output files",
                        "type": [
                            "File"
                        ]
                    }
                ],
                "sbg:id": "admin/sbg-public-data/cummerbundqc/2",
                "sbg:cmdPreview": "python /opt/cummerbund-qc.py --cuffzip cuffdiff_zip.ext --dispthreshold 0 --densthreshold 0 --thresholdsoff  cuffdiff_zip.ext",
                "y": 378,
                "sbg:sbgMaintained": false,
                "stdin": "",
                "sbg:license": "Artistic License 2.0",
                "id": "bix-demo/cummerbundqc-2-8-2-demo/cummerbundqc/1",
                "sbg:revision": 1,
                "hints": [
                    {
                        "dockerPull": "images.sbgenomics.com/ana_d/cummerbund-qc:2.8.2--1.0",
                        "class": "DockerRequirement",
                        "dockerImageId": "0c4541b52eb7"
                    },
                    {
                        "value": 8,
                        "class": "sbg:CPURequirement"
                    },
                    {
                        "value": 6000,
                        "class": "sbg:MemRequirement"
                    }
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1450911523,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revision": 0
                    },
                    {
                        "sbg:modifiedOn": 1450911523,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revision": 1
                    }
                ],
                "class": "CommandLineTool",
                "sbg:contributors": [
                    "bix-demo"
                ],
                "baseCommand": [
                    "python",
                    "/opt/cummerbund-qc.py"
                ],
                "stdout": "",
                "label": "CummeRbundQC",
                "sbg:modifiedOn": 1450911523,
                "sbg:modifiedBy": "bix-demo",
                "x": 1106,
                "sbg:links": [
                    {
                        "label": "Homepage",
                        "id": "http://bioconductor.org/packages/release/bioc/html/cummeRbund.html"
                    },
                    {
                        "label": "Manual",
                        "id": "http://bioconductor.org/packages/release/bioc/vignettes/cummeRbund/inst/doc/cummeRbund-manual.pdf"
                    },
                    {
                        "label": "Publication",
                        "id": "http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3334321/"
                    }
                ],
                "description": "CummeRbundQC assesses the quality of a differential expression analysis performed with Cuffdiff. It accepts differential expression results in the form of a cuffdiff.zip folder as input and produces a report with charts that can be viewed on Seven Bridges platform or downloaded to your local drive. \n\nCummeRbundQC is built on top of CummeRbund v. 2.8.2. CummeRbundQC incorporates the \"Global Statistics and Quality Control\" graphs described in the CummeRbund manual. These visualizations provide an overview of the relationships among the replicates and help in detecting over-dispersion in samples.",
                "cwlVersion": "sbg:draft-2",
                "sbg:job": {
                    "inputs": {
                        "thresholds_off": true,
                        "density_threshold": 0,
                        "cuffdiff_zip": {
                            "size": 0,
                            "class": "File",
                            "path": "cuffdiff_zip.ext",
                            "secondaryFiles": []
                        },
                        "dispersion_threshold": 0
                    },
                    "allocatedResources": {
                        "cpu": 8,
                        "mem": 6000
                    }
                },
                "sbg:createdBy": "bix-demo",
                "sbg:createdOn": 1450911523,
                "sbg:validationErrors": []
            }
        },
        {
            "sbg:y": 196,
            "outputs": [
                {
                    "id": "#SBG_Group_Input.grouped_files"
                }
            ],
            "sbg:x": 349,
            "id": "#SBG_Group_Input",
            "inputs": [
                {
                    "source": [
                        "#BAM_Group_A"
                    ],
                    "id": "#SBG_Group_Input.input_files"
                },
                {
                    "source": [
                        "#group_name"
                    ],
                    "default": "Group_A",
                    "id": "#SBG_Group_Input.group_name"
                }
            ],
            "run": {
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
                "outputs": [
                    {
                        "description": "Processed (grouped) files with metadata field indicating the same group.",
                        "outputBinding": {
                            "glob": "group_out/*",
                            "sbg:inheritMetadataFrom": "#input_files",
                            "sbg:metadata": {
                                "sample_group": {
                                    "script": "$job.inputs.group_name",
                                    "class": "Expression",
                                    "engine": "#cwl-js-engine"
                                }
                            }
                        },
                        "label": "Grouped Files",
                        "id": "#grouped_files",
                        "type": [
                            "null",
                            {
                                "items": "File",
                                "name": "grouped_files",
                                "type": "array"
                            }
                        ]
                    }
                ],
                "arguments": [
                    {
                        "separate": true,
                        "position": 3,
                        "valueFrom": "./group_out",
                        "prefix": "--dest"
                    }
                ],
                "successCodes": [],
                "sbg:toolkit": "SBGTools",
                "sbg:latestRevision": 2,
                "sbg:toolAuthor": "Ana Damljanovic/ Seven Bridges Genomics",
                "sbg:project": "bix-demo/sbgtools-demo",
                "sbg:toolkitVersion": "1.0",
                "sbg:categories": [
                    "Other"
                ],
                "hints": [
                    {
                        "dockerPull": "images.sbgenomics.com/ana_d/sbg-groupcp:1.0",
                        "class": "DockerRequirement",
                        "dockerImageId": "d89b97cad221"
                    },
                    {
                        "value": 1,
                        "class": "sbg:CPURequirement"
                    },
                    {
                        "value": 1000,
                        "class": "sbg:MemRequirement"
                    }
                ],
                "temporaryFailCodes": [],
                "inputs": [
                    {
                        "description": "Provide files which belong to one group.",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 2,
                            "itemSeparator": ",",
                            "prefix": "--group"
                        },
                        "id": "#input_files",
                        "required": true,
                        "sbg:category": "Input files",
                        "label": "Input files",
                        "type": [
                            {
                                "items": "File",
                                "type": "array"
                            }
                        ]
                    },
                    {
                        "description": "Specify the name of the group.",
                        "sbg:toolDefaultValue": "-",
                        "id": "#group_name",
                        "sbg:category": "Basic Options",
                        "label": "Group name",
                        "type": [
                            "string"
                        ]
                    }
                ],
                "sbg:id": "admin/sbg-public-data/sbg-group-input/2",
                "sbg:cmdPreview": "python /opt/sbg-groupcp.py --group /test-data/input_files.ext.ext2,/test-data/input_files2.ext.ext2,/test-data/input_files3.ext.ext2 --dest ./group_out",
                "y": 196,
                "sbg:sbgMaintained": false,
                "stdin": "",
                "sbg:license": "Apache License 2.0",
                "id": "bix-demo/sbgtools-demo/sbg-group-input/2",
                "sbg:revision": 2,
                "sbg:image_url": null,
                "sbg:modifiedBy": "ana_d",
                "class": "CommandLineTool",
                "sbg:contributors": [
                    "bix-demo",
                    "ana_d"
                ],
                "baseCommand": [
                    "python",
                    "/opt/sbg-groupcp.py"
                ],
                "stdout": "",
                "label": "SBG Group Input",
                "sbg:modifiedOn": 1461757667,
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1450911284,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911284,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1461757667,
                        "sbg:modifiedBy": "ana_d",
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null
                    }
                ],
                "x": 349,
                "description": "SBG Group Input accepts list of files that need to be grouped and sets the metadata field that indicates these files belong to the same group. This app should be included in the pipeline once for each group and used together with SBG Flatten. Each SBG Group Input output should be passed to SBG Flatten \"Nested\" input.",
                "cwlVersion": "sbg:draft-2",
                "sbg:job": {
                    "inputs": {
                        "group_name": "group_name",
                        "input_files": [
                            {
                                "path": "/test-data/input_files.ext.ext2"
                            },
                            {
                                "path": "/test-data/input_files2.ext.ext2"
                            },
                            {
                                "path": "/test-data/input_files3.ext.ext2"
                            }
                        ]
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1000
                    }
                },
                "sbg:createdBy": "bix-demo",
                "sbg:createdOn": 1450911284,
                "sbg:validationErrors": []
            }
        },
        {
            "sbg:y": 343,
            "outputs": [
                {
                    "id": "#SBG_Group_Input_1.grouped_files"
                }
            ],
            "sbg:x": 348,
            "id": "#SBG_Group_Input_1",
            "inputs": [
                {
                    "source": [
                        "#BAM_Group_B"
                    ],
                    "id": "#SBG_Group_Input_1.input_files"
                },
                {
                    "source": [
                        "#group_name_1"
                    ],
                    "default": "Group_B",
                    "id": "#SBG_Group_Input_1.group_name"
                }
            ],
            "run": {
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
                "outputs": [
                    {
                        "description": "Processed (grouped) files with metadata field indicating the same group.",
                        "outputBinding": {
                            "glob": "group_out/*",
                            "sbg:inheritMetadataFrom": "#input_files",
                            "sbg:metadata": {
                                "sample_group": {
                                    "script": "$job.inputs.group_name",
                                    "class": "Expression",
                                    "engine": "#cwl-js-engine"
                                }
                            }
                        },
                        "label": "Grouped Files",
                        "id": "#grouped_files",
                        "type": [
                            "null",
                            {
                                "items": "File",
                                "name": "grouped_files",
                                "type": "array"
                            }
                        ]
                    }
                ],
                "arguments": [
                    {
                        "separate": true,
                        "position": 3,
                        "valueFrom": "./group_out",
                        "prefix": "--dest"
                    }
                ],
                "successCodes": [],
                "sbg:toolkit": "SBGTools",
                "sbg:latestRevision": 2,
                "sbg:toolAuthor": "Ana Damljanovic/ Seven Bridges Genomics",
                "sbg:project": "bix-demo/sbgtools-demo",
                "sbg:toolkitVersion": "1.0",
                "sbg:categories": [
                    "Other"
                ],
                "hints": [
                    {
                        "dockerPull": "images.sbgenomics.com/ana_d/sbg-groupcp:1.0",
                        "class": "DockerRequirement",
                        "dockerImageId": "d89b97cad221"
                    },
                    {
                        "value": 1,
                        "class": "sbg:CPURequirement"
                    },
                    {
                        "value": 1000,
                        "class": "sbg:MemRequirement"
                    }
                ],
                "temporaryFailCodes": [],
                "inputs": [
                    {
                        "description": "Provide files which belong to one group.",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 2,
                            "itemSeparator": ",",
                            "prefix": "--group"
                        },
                        "id": "#input_files",
                        "required": true,
                        "sbg:category": "Input files",
                        "label": "Input files",
                        "type": [
                            {
                                "items": "File",
                                "type": "array"
                            }
                        ]
                    },
                    {
                        "description": "Specify the name of the group.",
                        "sbg:toolDefaultValue": "-",
                        "id": "#group_name",
                        "sbg:category": "Basic Options",
                        "label": "Group name",
                        "type": [
                            "string"
                        ]
                    }
                ],
                "sbg:id": "admin/sbg-public-data/sbg-group-input/2",
                "sbg:cmdPreview": "python /opt/sbg-groupcp.py --group /test-data/input_files.ext.ext2,/test-data/input_files2.ext.ext2,/test-data/input_files3.ext.ext2 --dest ./group_out",
                "y": 343,
                "sbg:sbgMaintained": false,
                "stdin": "",
                "sbg:license": "Apache License 2.0",
                "id": "bix-demo/sbgtools-demo/sbg-group-input/2",
                "sbg:revision": 2,
                "sbg:image_url": null,
                "sbg:modifiedBy": "ana_d",
                "class": "CommandLineTool",
                "sbg:contributors": [
                    "bix-demo",
                    "ana_d"
                ],
                "baseCommand": [
                    "python",
                    "/opt/sbg-groupcp.py"
                ],
                "stdout": "",
                "label": "SBG Group Input",
                "sbg:modifiedOn": 1461757667,
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1450911284,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911284,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1461757667,
                        "sbg:modifiedBy": "ana_d",
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null
                    }
                ],
                "x": 348,
                "description": "SBG Group Input accepts list of files that need to be grouped and sets the metadata field that indicates these files belong to the same group. This app should be included in the pipeline once for each group and used together with SBG Flatten. Each SBG Group Input output should be passed to SBG Flatten \"Nested\" input.",
                "cwlVersion": "sbg:draft-2",
                "sbg:job": {
                    "inputs": {
                        "group_name": "group_name",
                        "input_files": [
                            {
                                "path": "/test-data/input_files.ext.ext2"
                            },
                            {
                                "path": "/test-data/input_files2.ext.ext2"
                            },
                            {
                                "path": "/test-data/input_files3.ext.ext2"
                            }
                        ]
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1000
                    }
                },
                "sbg:createdBy": "bix-demo",
                "sbg:createdOn": 1450911284,
                "sbg:validationErrors": []
            }
        },
        {
            "sbg:y": 268,
            "outputs": [
                {
                    "id": "#SBG_Flatten.flat"
                }
            ],
            "sbg:x": 529,
            "id": "#SBG_Flatten",
            "inputs": [
                {
                    "source": [
                        "#SBG_Group_Input_1.grouped_files",
                        "#SBG_Group_Input.grouped_files"
                    ],
                    "id": "#SBG_Flatten.nested"
                }
            ],
            "run": {
                "requirements": [],
                "outputs": [
                    {
                        "description": "All grouped files as one list.",
                        "outputBinding": {
                            "sbg:metadata": {}
                        },
                        "label": "All grouped files",
                        "id": "#flat",
                        "type": [
                            "null",
                            {
                                "items": "File",
                                "type": "array"
                            }
                        ]
                    }
                ],
                "arguments": [],
                "successCodes": [],
                "sbg:toolkit": "SBGTools",
                "sbg:latestRevision": 2,
                "sbg:toolAuthor": "Ana Damljanovic/ Seven Bridges Genomics",
                "sbg:project": "bix-demo/sbgtools-demo",
                "sbg:toolkitVersion": "1.0",
                "sbg:categories": [
                    "Other"
                ],
                "sbg:revisionNotes": "Changed to be able to flatten irregular list of lists.",
                "temporaryFailCodes": [],
                "inputs": [
                    {
                        "description": "Files from all SBG Group Input outputs should be provided.",
                        "id": "#nested",
                        "required": true,
                        "sbg:category": "Input files",
                        "label": "Nested",
                        "type": [
                            {
                                "items": "File",
                                "type": "array"
                            }
                        ]
                    }
                ],
                "sbg:id": "admin/sbg-public-data/sbg-flatten/2",
                "sbg:cmdPreview": "python /opt/sbg-flatten.py",
                "hints": [
                    {
                        "dockerPull": "images.sbgenomics.com/ana_d/sbg-flatten:2.0",
                        "class": "DockerRequirement",
                        "dockerImageId": "c0e1d93b3d76"
                    },
                    {
                        "value": 1,
                        "class": "sbg:CPURequirement"
                    },
                    {
                        "value": 1000,
                        "class": "sbg:MemRequirement"
                    }
                ],
                "y": 268,
                "sbg:sbgMaintained": false,
                "stdin": "",
                "sbg:license": "Apache License 2.0",
                "id": "bix-demo/sbgtools-demo/sbg-flatten/2",
                "sbg:revision": 2,
                "sbg:image_url": null,
                "sbg:modifiedBy": "ana_d",
                "class": "CommandLineTool",
                "sbg:contributors": [
                    "bix-demo",
                    "ana_d"
                ],
                "baseCommand": [
                    "python",
                    "/opt/sbg-flatten.py"
                ],
                "stdout": "",
                "label": "SBG Flatten",
                "sbg:modifiedOn": 1471438679,
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1450911285,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911285,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1471438679,
                        "sbg:modifiedBy": "ana_d",
                        "sbg:revision": 2,
                        "sbg:revisionNotes": "Changed to be able to flatten irregular list of lists."
                    }
                ],
                "x": 529,
                "description": "SBG Flatten is used only with SBG Group Input app for purposes of providing grouped inputs. All SBG Group Input outputs should be passed to the \"Nested\" SBG Flatten input in order to produce the output with all grouped files as one list.",
                "cwlVersion": "sbg:draft-2",
                "sbg:job": {
                    "inputs": {
                        "nested": "nested"
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1000
                    }
                },
                "sbg:createdBy": "bix-demo",
                "sbg:createdOn": 1450911285,
                "sbg:validationErrors": []
            }
        },
        {
            "scatter": "#Cuffquant.aligned_reads",
            "sbg:y": 235,
            "outputs": [
                {
                    "id": "#Cuffquant.abundances"
                }
            ],
            "sbg:x": 747.0000000000001,
            "id": "#Cuffquant",
            "inputs": [
                {
                    "id": "#Cuffquant.no_length_correction"
                },
                {
                    "id": "#Cuffquant.no_effective_length_correction"
                },
                {
                    "id": "#Cuffquant.multi_read_correct"
                },
                {
                    "id": "#Cuffquant.min_alignment_count"
                },
                {
                    "id": "#Cuffquant.max_mle_iterations"
                },
                {
                    "id": "#Cuffquant.max_frag_multihits"
                },
                {
                    "id": "#Cuffquant.max_bundle_frags"
                },
                {
                    "id": "#Cuffquant.mask_file"
                },
                {
                    "id": "#Cuffquant.library_type"
                },
                {
                    "id": "#Cuffquant.frag_len_std_dev"
                },
                {
                    "id": "#Cuffquant.frag_len_mean"
                },
                {
                    "source": [
                        "#Reference"
                    ],
                    "id": "#Cuffquant.frag_bias_correct"
                },
                {
                    "source": [
                        "#Annotations"
                    ],
                    "id": "#Cuffquant.annotations"
                },
                {
                    "source": [
                        "#SBG_Flatten.flat"
                    ],
                    "id": "#Cuffquant.aligned_reads"
                }
            ],
            "run": {
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
                "outputs": [
                    {
                        "description": "This file contains estimated transcript abundances for each sample. It can be used as an input for Cuffdiff and Cuffnorm tools.",
                        "outputBinding": {
                            "glob": {
                                "script": "$job.inputs.aligned_reads.path.split('.').slice(0, $job.inputs.aligned_reads.path.split('.').length-1).join('.').replace(/^.*[\\\\\\/]/, '').concat(\"_\", \"abundances.cxb\")",
                                "class": "Expression",
                                "engine": "#cwl-js-engine"
                            },
                            "sbg:inheritMetadataFrom": "#aligned_reads"
                        },
                        "id": "#abundances",
                        "sbg:fileTypes": "CXB",
                        "label": "Abundances",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "arguments": [
                    {
                        "separate": true,
                        "position": 50,
                        "valueFrom": {
                            "script": "{\n  read_path = $job.inputs.aligned_reads.path\n  read_name = read_path.split('.').slice(0, read_path.split('.').length-1).join('.').replace(/^.*[\\\\\\/]/, '')\n  source_name = \"abundances.cxb\"\n  return \"&& mv \".concat(source_name, \" \", read_name, \"_abundances.cxb\")\n}",
                            "class": "Expression",
                            "engine": "#cwl-js-engine"
                        }
                    }
                ],
                "successCodes": [],
                "sbg:toolkit": "Cufflinks",
                "sbg:latestRevision": 2,
                "sbg:toolAuthor": "Cole Trapnell/University of Washington",
                "sbg:project": "bix-demo/cufflinks-2-2-1-demo",
                "sbg:toolkitVersion": "2.2.1",
                "sbg:categories": [
                    "Differential-Expression",
                    "SAM/BAM-Processing"
                ],
                "hints": [
                    {
                        "dockerPull": "images.sbgenomics.com/ana_d/cufflinks:2.2.1",
                        "class": "DockerRequirement",
                        "dockerImageId": "191aecc448a8"
                    },
                    {
                        "value": 8,
                        "class": "sbg:CPURequirement"
                    },
                    {
                        "value": 6000,
                        "class": "sbg:MemRequirement"
                    }
                ],
                "temporaryFailCodes": [],
                "inputs": [
                    {
                        "description": "Cuffquant will not normalize fragment counts by transcript length at all. Use this option when fragment count is independent of the size of the features being quantified (e.g. for small RNA libraries, where no fragmentation takes place, or 3 prime end sequencing, where sampled RNA fragments are all essentially the same length). Experimental option, use with caution.",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 12,
                            "prefix": "--no-length-correction"
                        },
                        "id": "#no_length_correction",
                        "sbg:category": "Advanced Options",
                        "sbg:toolDefaultValue": "False",
                        "label": "No length correction",
                        "type": [
                            "null",
                            "boolean"
                        ]
                    },
                    {
                        "description": "Cuffquant will not employ its \"effective\" length normalization to transcript FPKM.",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 9,
                            "prefix": "--no-effective-length-correction"
                        },
                        "id": "#no_effective_length_correction",
                        "sbg:category": "Advanced Options",
                        "sbg:toolDefaultValue": "False",
                        "label": "No effective length correction",
                        "type": [
                            "null",
                            "boolean"
                        ]
                    },
                    {
                        "description": "Tells Cuffquant to do an initial estimation procedure to more accurately weight reads mapping to multiple locations in the genome.",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 3,
                            "prefix": "--multi-read-correct"
                        },
                        "id": "#multi_read_correct",
                        "sbg:category": "Basic Options",
                        "sbg:altPrefix": "-u",
                        "sbg:toolDefaultValue": "False",
                        "label": "Correct for reads mapped to multiple loci",
                        "type": [
                            "null",
                            "boolean"
                        ]
                    },
                    {
                        "description": "Minimum number of alignments in a locus for testing.",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 10,
                            "prefix": "--min-alignment-count"
                        },
                        "id": "#min_alignment_count",
                        "sbg:category": "Advanced Options",
                        "sbg:altPrefix": "-c",
                        "sbg:toolDefaultValue": "10",
                        "label": "Minimum number of alignments",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "description": "Sets the number of iterations allowed during maximum likelihood estimation of abundances.",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 7,
                            "prefix": "--max-mle-iterations"
                        },
                        "id": "#max_mle_iterations",
                        "sbg:category": "Advanced Options",
                        "sbg:toolDefaultValue": "5000",
                        "label": "Maximum MLE number of iterations",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "description": "Maximum number of alignments allowed per fragment.",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 11,
                            "prefix": "--max-frag-multihits"
                        },
                        "id": "#max_frag_multihits",
                        "sbg:category": "Advanced Options",
                        "sbg:toolDefaultValue": "unlimited",
                        "label": "Maximum alignments per fragment",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "description": "Sets the maximum number of fragments a locus may have before being skipped.",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 8,
                            "prefix": "--max-bundle-frags"
                        },
                        "id": "#max_bundle_frags",
                        "sbg:category": "Advanced Options",
                        "sbg:toolDefaultValue": "1000000",
                        "label": "Maximum bundle fragments",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "sbg:category": "Input files",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 18,
                            "prefix": "--mask-file"
                        },
                        "description": "Ignore all alignments within transcripts in this file. Tells Cuffquant to ignore all reads that could have come from transcripts in this GTF/GFF file. Toolkit aothors recommend including any annotated rRNA, mitochondrial and other abundant transcripts you wish to ignore in your analysis in this file. Due to variable efficiency of mRNA enrichment methods and rRNA depletion kits, masking these transcripts often improves the overall robustness of transcript abundance estimates.",
                        "id": "#mask_file",
                        "required": false,
                        "sbg:fileTypes": "GTF, GFF",
                        "sbg:altPrefix": "-M",
                        "label": "Mask file",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "description": "In cases where Cuffquant cannot determine the platform and protocol used to generate input reads, you can supply this information manually, which will allow Cuffquant to infer source strand information with certain protocols.",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 4,
                            "prefix": "--library-type"
                        },
                        "id": "#library_type",
                        "sbg:category": "Basic Options",
                        "sbg:toolDefaultValue": "fr-unstranded",
                        "label": "Library type",
                        "type": [
                            "null",
                            {
                                "name": "library_type",
                                "symbols": [
                                    "fr-unstranded",
                                    "ff-firststrand",
                                    "ff-secondstrand",
                                    "ff-unstranded",
                                    "fr-firststrand",
                                    "fr-secondstrand",
                                    "transfrags"
                                ],
                                "type": "enum"
                            }
                        ]
                    },
                    {
                        "description": "The standard deviation for the distribution on fragment lengths. Cuffquant learns the fragment lengths' standard deviation for each SAM/BAM file so this option is not recommended with paired-end reads.",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 6,
                            "prefix": "--frag-len-std-dev"
                        },
                        "id": "#frag_len_std_dev",
                        "sbg:category": "Advanced Options",
                        "sbg:altPrefix": "-s",
                        "sbg:toolDefaultValue": "80",
                        "label": "Fragment lengths' standard deviation",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "description": "This is the expected (mean) fragment length. Cuffquant learns the fragment length mean for each SAM/BAM file so this option is not recommended with paired-end reads.",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 5,
                            "prefix": "--frag-len-mean"
                        },
                        "id": "#frag_len_mean",
                        "sbg:category": "Advanced Options",
                        "sbg:altPrefix": "-m",
                        "sbg:toolDefaultValue": "200",
                        "label": "Mean fragment length",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "sbg:category": "Input files",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 19,
                            "prefix": "--frag-bias-correct"
                        },
                        "description": "Providing Cuffquant with a multifasta file via this option instructs it to run bias detection and correction algorithm which can significantly improve accuracy of transcript abundance estimates.",
                        "id": "#frag_bias_correct",
                        "required": false,
                        "sbg:fileTypes": "FASTA, FA",
                        "sbg:altPrefix": "-b",
                        "label": "Fragment bias correct",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "sbg:category": "Input files",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 20
                        },
                        "description": "Tells Cuffquant to use the supplied reference annotation in GTF/GFF format to estimate isoform expression. The program will ignore alignments not structurally compatible with any reference transcript.",
                        "id": "#annotations",
                        "required": true,
                        "sbg:fileTypes": "GTF, GFF",
                        "label": "Annotations",
                        "type": [
                            "File"
                        ]
                    },
                    {
                        "sbg:category": "Input files",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 21
                        },
                        "description": "RNA-Seq read alignments in SAM/BAM format. The SAM/BAM is a standard short read alignment format, that allows aligners to attach custom tags to individual alignments, and Cuffquant requires that the alignments you supply have some of these tags.",
                        "id": "#aligned_reads",
                        "required": true,
                        "sbg:fileTypes": "SAM, BAM",
                        "label": "Aligned reads",
                        "type": [
                            "File"
                        ]
                    }
                ],
                "sbg:id": "admin/sbg-public-data/cuffquant/2",
                "sbg:cmdPreview": "/opt/cuffquant --verbose --no-update-check  annotations.ext  /test-data/aligned_reads.ext  && mv abundances.cxb aligned_reads_abundances.cxb",
                "y": 235,
                "sbg:sbgMaintained": false,
                "stdin": "",
                "sbg:license": "Boost Software License 1.0",
                "id": "bix-demo/cufflinks-2-2-1-demo/cuffquant/2",
                "sbg:revision": 2,
                "sbg:image_url": null,
                "sbg:modifiedBy": "marko_zecevic",
                "class": "CommandLineTool",
                "sbg:contributors": [
                    "marko_zecevic",
                    "bix-demo"
                ],
                "baseCommand": [
                    "/opt/cuffquant",
                    "--verbose",
                    "--no-update-check"
                ],
                "stdout": "",
                "label": "Cuffquant",
                "sbg:modifiedOn": 1466077366,
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1450911492,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911493,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1466077366,
                        "sbg:modifiedBy": "marko_zecevic",
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null
                    }
                ],
                "x": 747.0000000000001,
                "sbg:links": [
                    {
                        "label": "Homepage",
                        "id": "http://cole-trapnell-lab.github.io/cufflinks/"
                    },
                    {
                        "label": "Manual",
                        "id": "http://cole-trapnell-lab.github.io/cufflinks/cuffquant/index.html"
                    },
                    {
                        "label": "Source code",
                        "id": "http://cole-trapnell-lab.github.io/cufflinks/assets/downloads/cufflinks-2.2.1.tar.gz"
                    },
                    {
                        "label": "Publication",
                        "id": "http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3146043/"
                    }
                ],
                "description": "Cuffquant performs preparations on SAM/BAM files for differential expression analysis of RNA-seq data. It computes the gene and transcript expression profiles of various samples, which can be fed into Cuffnorm or Cuffdiff. \n\nNote: It is recommended to use Cuffquant for analyses involving more than a handful of libraries.",
                "cwlVersion": "sbg:draft-2",
                "sbg:job": {
                    "inputs": {
                        "library_type": "fr-unstranded",
                        "max_frag_multihits": 0,
                        "no_length_correction": true,
                        "max_mle_iterations": 0,
                        "annotations": {
                            "size": 0,
                            "class": "File",
                            "path": "annotations.ext",
                            "secondaryFiles": []
                        },
                        "no_effective_length_correction": true,
                        "min_alignment_count": 0,
                        "frag_bias_correct": {
                            "size": 0,
                            "class": "File",
                            "path": "frag_bias_correct.ext",
                            "secondaryFiles": []
                        },
                        "mask_file": {
                            "size": 0,
                            "class": "File",
                            "path": "mask_file.ext",
                            "secondaryFiles": []
                        },
                        "max_bundle_frags": 0,
                        "frag_len_mean": 0,
                        "aligned_reads": {
                            "size": 0,
                            "class": "File",
                            "path": "/test-data/aligned_reads.ext",
                            "secondaryFiles": []
                        },
                        "multi_read_correct": true,
                        "frag_len_std_dev": 0
                    },
                    "allocatedResources": {
                        "cpu": 8,
                        "mem": 6000
                    }
                },
                "sbg:createdBy": "bix-demo",
                "sbg:createdOn": 1450911492,
                "sbg:validationErrors": []
            }
        },
        {
            "sbg:y": 377.00000000000006,
            "outputs": [
                {
                    "id": "#Cuffdiff.zipped"
                }
            ],
            "sbg:x": 948,
            "id": "#Cuffdiff",
            "inputs": [
                {
                    "source": [
                        "#Annotations"
                    ],
                    "id": "#Cuffdiff.transcripts"
                },
                {
                    "id": "#Cuffdiff.total_hits_norm"
                },
                {
                    "source": [
                        "#Cuffquant.abundances"
                    ],
                    "id": "#Cuffdiff.sample_files"
                },
                {
                    "id": "#Cuffdiff.num_frag_count_draws"
                },
                {
                    "id": "#Cuffdiff.num_frag_assign_draws"
                },
                {
                    "id": "#Cuffdiff.no_effective_length_correction"
                },
                {
                    "id": "#Cuffdiff.multi_read_correct"
                },
                {
                    "id": "#Cuffdiff.min_reps_for_js_test"
                },
                {
                    "id": "#Cuffdiff.min_alignment_count"
                },
                {
                    "id": "#Cuffdiff.max_mle_iterations"
                },
                {
                    "id": "#Cuffdiff.max_bundle_frags"
                },
                {
                    "id": "#Cuffdiff.mask_file"
                },
                {
                    "id": "#Cuffdiff.library_type"
                },
                {
                    "id": "#Cuffdiff.library_norm_method"
                },
                {
                    "id": "#Cuffdiff.frag_len_std_dev"
                },
                {
                    "id": "#Cuffdiff.frag_len_mean"
                },
                {
                    "source": [
                        "#Reference"
                    ],
                    "id": "#Cuffdiff.frag_bias_correct"
                },
                {
                    "id": "#Cuffdiff.dispersion_method"
                },
                {
                    "id": "#Cuffdiff.contrast_file"
                },
                {
                    "id": "#Cuffdiff.compatible_hits_norm"
                },
                {
                    "id": "#Cuffdiff.FDR"
                }
            ],
            "run": {
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
                "outputs": [
                    {
                        "description": "Zipped list of output tracking, tab delimited and INFO files.",
                        "outputBinding": {
                            "glob": "*cuffdiff.zip"
                        },
                        "id": "#zipped",
                        "sbg:fileTypes": "ZIP",
                        "label": "Archive of Cuffdiff output files",
                        "type": [
                            "null",
                            "File"
                        ]
                    }
                ],
                "arguments": [
                    {
                        "separate": true,
                        "position": 30,
                        "valueFrom": {
                            "script": "{\n  paths = []\n  cspaths = []\n  all_groups = []\n  labels = []\n  temp_group = []\n  $job.inputs.sample_files.forEach( function(file){\n    meta_key = file.metadata.sample_group\n    all_groups.push(meta_key)\n    basename = file.path.replace(/\\\\/g,'/').replace( /.*\\//, '' )\n    /*paths.push(basename);*/\n  });\n  function onlyUnique(value, index, self) { \n    return self.indexOf(value) === index;\n  }\n  labels = all_groups.filter(onlyUnique);\n  /*return paths.join(',');*/\n  labels.forEach( function(label){\n    paths = []\n    $job.inputs.sample_files.forEach( function(sample){\n      if (sample.metadata.sample_group === label){\n        paths.push(sample.path)\n      }\n    })\n    cspaths.push(paths.join(','))\n  })\n  return labels.join(',').concat(\" \", cspaths.join(' '));\n}",
                            "class": "Expression",
                            "engine": "#cwl-js-engine"
                        },
                        "prefix": "--labels"
                    },
                    {
                        "separate": true,
                        "position": 31,
                        "valueFrom": "&& zip -j"
                    },
                    {
                        "separate": true,
                        "position": 32,
                        "valueFrom": {
                            "script": "{\n  function sharedStart(array){\n    var A= array.concat().sort(), \n    a1= A[0], a2= A[A.length-1], L= a1.length, i= 0;\n    while(i<L && a1.charAt(i)=== a2.charAt(i)) i++;\n    return a1.substring(0, i);\n  }\n  path_list = []\n  $job.inputs.sample_files.forEach(function(f){return path_list.push(f.path.replace(/\\\\/g,'/').replace( /.*\\//, '' ))})\n  common_prefix = sharedStart(path_list)\n  if (common_prefix.length >0){\n    return common_prefix.concat(\".cuffdiff.zip\")\n  } else {\n    return \"cuffdiff.zip\"\n  }    \n}",
                            "class": "Expression",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "separate": true,
                        "position": 33,
                        "valueFrom": {
                            "script": "{\n  return \"cuffdiff_dir/*.fpkm_tracking cuffdiff_dir/*.count_tracking cuffdiff_dir/*.read_group_tracking cuffdiff_dir/*.diff cuffdiff_dir/*.info\"\n}",
                            "class": "Expression",
                            "engine": "#cwl-js-engine"
                        }
                    }
                ],
                "successCodes": [],
                "sbg:toolkit": "Cufflinks",
                "sbg:latestRevision": 6,
                "sbg:toolAuthor": "Cole Trapnell/University of Washington",
                "sbg:project": "bix-demo/cufflinks-2-2-1-demo",
                "sbg:toolkitVersion": "2.2.1",
                "sbg:categories": [
                    "Differential-Expression"
                ],
                "hints": [
                    {
                        "dockerPull": "images.sbgenomics.com/ana_d/cufflinks:2.2.1",
                        "class": "DockerRequirement",
                        "dockerImageId": "191aecc448a8"
                    },
                    {
                        "value": 30000,
                        "class": "sbg:MemRequirement"
                    },
                    {
                        "value": 15,
                        "class": "sbg:CPURequirement"
                    }
                ],
                "temporaryFailCodes": [],
                "inputs": [
                    {
                        "sbg:category": "Input files",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 29
                        },
                        "description": "A transcript annotation file in GTF/GFF format, produced by Cufflinks, Cuffcompare, or other source.",
                        "id": "#transcripts",
                        "required": true,
                        "sbg:fileTypes": "GTF, GFF",
                        "label": "Transcripts",
                        "type": [
                            "File"
                        ]
                    },
                    {
                        "description": "If you set this option, Cuffdiff counts all fragments, including those not compatible with any reference transcript, towards the number of mapped hits used in the FPKM denominator.",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "prefix": "--total-hits-norm"
                        },
                        "id": "#total_hits_norm",
                        "sbg:category": "Advanced Options",
                        "sbg:toolDefaultValue": "False",
                        "label": "Total hits normalization",
                        "type": [
                            "null",
                            "boolean"
                        ]
                    },
                    {
                        "sbg:category": "Input files",
                        "description": "Either SAM/BAM files of aligned RNA-Seq reads, or CXB files produced by Cuffquant. SAM/BAM files cannot be mixed with CXB files. If more than two groups are provided, Cuffdiff tests for differential expression and regulation between all pairs of sample groups, or between all samples if no sample groups are specified.",
                        "id": "#sample_files",
                        "required": true,
                        "sbg:fileTypes": "SAM, BAM, CXB",
                        "label": "Sample files",
                        "type": [
                            {
                                "items": "File",
                                "type": "array"
                            }
                        ]
                    },
                    {
                        "description": "Cuffdiff will make this many draws from each transcript's predicted negative binomial random number generator. Each draw is a number of fragments that will be probabilistically assigned to the transcripts in the transcriptome. Used to estimate the variance-covariance matrix on assigned fragment counts.",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "prefix": "--num-frag-count-draws"
                        },
                        "id": "#num_frag_count_draws",
                        "sbg:category": "Advanced Options",
                        "sbg:toolDefaultValue": "100",
                        "label": "Number of draws for counting fragments",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "description": "For each fragment drawn from a transcript, Cuffdiff will assign it this many times (probabilistically), thus estimating the assignment uncertainty for each transcript. Used to estimate the variance-covariance matrix on assigned fragment counts.",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "prefix": "--num-frag-assign-draws"
                        },
                        "id": "#num_frag_assign_draws",
                        "sbg:category": "Advanced Options",
                        "sbg:toolDefaultValue": "50",
                        "label": "Number of assignments for fragment draws",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "description": "Cuffdiff will not employ its \"effective\" length normalization to transcript FPKM.",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "prefix": "--no-effective-length-correction"
                        },
                        "id": "#no_effective_length_correction",
                        "sbg:category": "Advanced Options",
                        "sbg:toolDefaultValue": "False",
                        "label": "No effective length correction",
                        "type": [
                            "null",
                            "boolean"
                        ]
                    },
                    {
                        "description": "Tells Cuffdiff to do an initial estimation procedure to more accurately weight reads mapping to multiple locations in the genome.",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "prefix": "--multi-read-correct"
                        },
                        "id": "#multi_read_correct",
                        "sbg:category": "Basic Options",
                        "sbg:altPrefix": "-u",
                        "sbg:toolDefaultValue": "False",
                        "label": "Correct for reads mapped to multiple loci",
                        "type": [
                            "null",
                            "boolean"
                        ]
                    },
                    {
                        "description": "Number of replicates needed for relative isoform shift testing. Cuffdiff won't test genes for differential regulation unless the conditions in question have at least this many replicates.",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "prefix": "--min-reps-for-js-test"
                        },
                        "id": "#min_reps_for_js_test",
                        "sbg:category": "Advanced Options",
                        "sbg:toolDefaultValue": "3",
                        "label": "Minimum replicates required for Jensen-Shannon test",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "description": "The minimum number of alignments in a locus needed to conduct significance testing on changes in that locus observed between samples. If no testing is performed, changes in the locus are deemed not significant, and the locus' observed changes don't contribute to correction for multiple testing.",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "prefix": "--min-alignment-count"
                        },
                        "id": "#min_alignment_count",
                        "sbg:category": "Advanced Options",
                        "sbg:altPrefix": "-c",
                        "sbg:toolDefaultValue": "10",
                        "label": "Minimum alignment count",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "description": "Sets the number of iterations allowed during maximum likelihood estimation of abundances.",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "prefix": "--max-mle-iterations"
                        },
                        "id": "#max_mle_iterations",
                        "sbg:category": "Advanced Options",
                        "sbg:toolDefaultValue": "5000",
                        "label": "Maximum MLE number of iterations",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "description": "Sets the maximum number of fragments a locus may have before being skipped. Skipped loci are marked with status HIDATA.",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "prefix": "--max-bundle-frags"
                        },
                        "id": "#max_bundle_frags",
                        "sbg:category": "Advanced Options",
                        "sbg:toolDefaultValue": "500000",
                        "label": "Maximum bundle fragments",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "sbg:category": "Input files",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 28,
                            "prefix": "--mask-file"
                        },
                        "description": "Tells Cuffdiff to ignore all reads that could have come from transcripts in this GTF file. Toolkit authors recommend including any annotated rRNA, mitochondrial and other abundant transcripts you wish to ignore in your analysis in this file. Due to variable efficiency of mRNA enrichment methods and rRNA depletion kits, masking these transcripts often improves the overall robustness of transcript abundance estimates.",
                        "id": "#mask_file",
                        "required": false,
                        "sbg:fileTypes": "GTF, GFF",
                        "sbg:altPrefix": "-M",
                        "label": "Mask file",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "description": "In cases where Cuffdiff cannot determine the platform and protocol used to generate input reads, you can supply this information manually, which will allow Cufflinks to infer source strand information with certain protocols.",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "prefix": "--library-type"
                        },
                        "id": "#library_type",
                        "sbg:category": "Basic Options",
                        "sbg:toolDefaultValue": "fr-unstranded",
                        "label": "Library type",
                        "type": [
                            "null",
                            {
                                "name": "library_type",
                                "symbols": [
                                    "fr-unstranded",
                                    "ff-firststrand",
                                    "ff-secondstrand",
                                    "ff-unstranded",
                                    "fr-firststrand",
                                    "fr-secondstrand",
                                    "transfrags"
                                ],
                                "type": "enum"
                            }
                        ]
                    },
                    {
                        "description": "Value of this parameter controls how library sizes, i.e. sequencing depths, are normalized in Cuffdiff.",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "prefix": "--library-norm-method"
                        },
                        "id": "#library_norm_method",
                        "sbg:category": "Basic Options",
                        "sbg:toolDefaultValue": "geometric",
                        "label": "Library normalization method",
                        "type": [
                            "null",
                            {
                                "name": "library_norm_method",
                                "symbols": [
                                    "geometric",
                                    "classic-fpkm",
                                    "quartile"
                                ],
                                "type": "enum"
                            }
                        ]
                    },
                    {
                        "description": "The standard deviation for the distribution on fragment lengths. Cuffdiff learns the fragment lengths' standard deviation for each SAM/BAM file so this option is not recommended with paired-end reads.",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "prefix": "--frag-len-std-dev"
                        },
                        "id": "#frag_len_std_dev",
                        "sbg:category": "Advanced Options",
                        "sbg:altPrefix": "-s",
                        "sbg:toolDefaultValue": "80",
                        "label": "Fragment lengths' standard deviation",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "description": "This is the expected (mean) fragment length. Cuffdiff learns the fragment length mean for each SAM/BAM file so this option is not recommended with paired-end reads.",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "prefix": "--frag-len-mean"
                        },
                        "id": "#frag_len_mean",
                        "sbg:category": "Advanced Options",
                        "sbg:altPrefix": "-m",
                        "sbg:toolDefaultValue": "200",
                        "label": "Mean fragment length",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "sbg:category": "Input files",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 27,
                            "prefix": "--frag-bias-correct"
                        },
                        "description": "Providing Cuffdiff with the multifasta file your reads were mapped to via this option instructs it to run bias detection and correction algorithm which can significantly improve accuracy of transcript abundance estimates.",
                        "id": "#frag_bias_correct",
                        "required": false,
                        "sbg:fileTypes": "FASTA, FA",
                        "sbg:altPrefix": "-b",
                        "label": "Fragment bias correct",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "description": "Method used to estimate dispersion models.",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "prefix": "--dispersion-method"
                        },
                        "id": "#dispersion_method",
                        "sbg:category": "Basic Options",
                        "sbg:toolDefaultValue": "pooled",
                        "label": "Dispersion method",
                        "type": [
                            "null",
                            {
                                "name": "dispersion_method",
                                "symbols": [
                                    "pooled",
                                    "blind",
                                    "per-condition",
                                    "poisson"
                                ],
                                "type": "enum"
                            }
                        ]
                    },
                    {
                        "sbg:category": "Input files",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 26,
                            "prefix": "--contrast-file"
                        },
                        "description": "Cuffdiff performs the contrasts (differential expression analysis between two sample groups or between two samples) specified in this tab delimited text file.",
                        "id": "#contrast_file",
                        "required": false,
                        "sbg:fileTypes": "TXT",
                        "sbg:altPrefix": "-C",
                        "label": "Contrast file",
                        "type": [
                            "null",
                            "File"
                        ]
                    },
                    {
                        "description": "With this option, Cuffdiff counts only those fragments compatible with some reference transcript towards the number of mapped hits used in the FPKM denominator. Using this mode is generally recommended in Cuffdiff to reduce certain types of bias caused by different amounts of ribosomal reads which can create the impression of falsely differentially expressed genes.",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "prefix": "--compatible-hits-norm"
                        },
                        "id": "#compatible_hits_norm",
                        "sbg:category": "Advanced Options",
                        "sbg:toolDefaultValue": "True",
                        "label": "Compatible hits normalization",
                        "type": [
                            "null",
                            "boolean"
                        ]
                    },
                    {
                        "description": "The allowed false discovery rate.",
                        "inputBinding": {
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "prefix": "--FDR"
                        },
                        "id": "#FDR",
                        "sbg:category": "Basic Options",
                        "sbg:toolDefaultValue": "0.05",
                        "label": "False discovery rate",
                        "type": [
                            "null",
                            "float"
                        ]
                    }
                ],
                "sbg:id": "admin/sbg-public-data/cuffdiff/6",
                "sbg:cmdPreview": "/opt/cuffdiff --output-dir ./cuffdiff_dir --num-threads 15 --verbose --no-update-check  transcripts.ext --labels sample,D /test/rnaseq/SMA_D1_SCT.R.accepted_hits.abundances.cxb,/test/rnaseq/SMA_D2_SCT.R.accepted_hits.abundances.cxb /test/rnaseq/SMA_K1_SCT.R.accepted_hits.abundances.cxb,/test/rnaseq/SMA_K2_SCT.R.accepted_hits.abundances.cxb  && zip -j  SMA_.cuffdiff.zip  cuffdiff_dir/*.fpkm_tracking cuffdiff_dir/*.count_tracking cuffdiff_dir/*.read_group_tracking cuffdiff_dir/*.diff cuffdiff_dir/*.info",
                "y": 377.00000000000006,
                "sbg:sbgMaintained": false,
                "stdin": "",
                "sbg:license": "Boost Software License 1.0",
                "id": "bix-demo/cufflinks-2-2-1-demo/cuffdiff/6",
                "sbg:revision": 6,
                "sbg:image_url": null,
                "sbg:modifiedBy": "marko_zecevic",
                "class": "CommandLineTool",
                "sbg:contributors": [
                    "marko_zecevic",
                    "bix-demo"
                ],
                "baseCommand": [
                    "/opt/cuffdiff",
                    "--output-dir",
                    "./cuffdiff_dir",
                    "--num-threads",
                    {
                        "script": "{\n  return $job.allocatedResources.cpu\n}",
                        "class": "Expression",
                        "engine": "#cwl-js-engine"
                    },
                    "--verbose",
                    "--no-update-check"
                ],
                "stdout": "",
                "label": "Cuffdiff",
                "sbg:modifiedOn": 1469627736,
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1450911496,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revision": 0,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1450911496,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revision": 1,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1466075270,
                        "sbg:modifiedBy": "marko_zecevic",
                        "sbg:revision": 2,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1466075295,
                        "sbg:modifiedBy": "marko_zecevic",
                        "sbg:revision": 3,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1466076562,
                        "sbg:modifiedBy": "marko_zecevic",
                        "sbg:revision": 4,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1466076605,
                        "sbg:modifiedBy": "marko_zecevic",
                        "sbg:revision": 5,
                        "sbg:revisionNotes": null
                    },
                    {
                        "sbg:modifiedOn": 1469627736,
                        "sbg:modifiedBy": "marko_zecevic",
                        "sbg:revision": 6,
                        "sbg:revisionNotes": null
                    }
                ],
                "x": 948,
                "sbg:links": [
                    {
                        "label": "Homepage",
                        "id": "http://cole-trapnell-lab.github.io/cufflinks/"
                    },
                    {
                        "label": "Manual",
                        "id": "http://cole-trapnell-lab.github.io/cufflinks/cuffdiff/"
                    },
                    {
                        "label": "Source code",
                        "id": "http://cole-trapnell-lab.github.io/cufflinks/assets/downloads/cufflinks-2.2.1.tar.gz"
                    },
                    {
                        "label": "Publication",
                        "id": "http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3146043/"
                    }
                ],
                "description": "Cuffdiff is a highly accurate tool for performing differential expression analysis for RNA-seq experiments. It accepts read alignment files from two or more samples, calculates expression at the isoform and gene level, and tests for significant expression differences. Cuffdiff outputs a downloadable collection of files that can be explored as spreadsheets. A quality control analysis of Cuffdiff results can be performed using CummeRbundQC.\n\nCommon issues:\n\n1) To use Cuffdiff for differential expression estimation on our platform, we recommend you take a look at \"RNA-seq Differential Expression\" public workflow and it's description. There is a hidden metadata field \u201csample group\u201d that needs to be set for all sample files prior to the analysis. This is achieved using SBG Group Input tool.\n\n2) The number of replicates doesn\u2019t need to be the same in each experimental condition. However, if you use fewer than 3 replicates per condition, by default Cuffdiff will not test for significant alterations in splicing, tss, or cds usage (here 3 is the default value of \"min_reps_for_js_test\").",
                "cwlVersion": "sbg:draft-2",
                "sbg:job": {
                    "inputs": {
                        "library_type": "fr-unstranded",
                        "transcripts": {
                            "size": 0,
                            "class": "File",
                            "path": "transcripts.ext",
                            "secondaryFiles": []
                        },
                        "library_norm_method": "geometric",
                        "total_hits_norm": true,
                        "max_mle_iterations": 0,
                        "FDR": 0,
                        "compatible_hits_norm": true,
                        "min_reps_for_js_test": 0,
                        "min_alignment_count": 0,
                        "frag_bias_correct": {
                            "size": 0,
                            "class": "File",
                            "path": "frag_bias_correct.ext",
                            "secondaryFiles": []
                        },
                        "num_frag_assign_draws": 0,
                        "max_bundle_frags": 0,
                        "frag_len_mean": 0,
                        "no_effective_length_correction": true,
                        "mask_file": {
                            "size": 0,
                            "class": "File",
                            "path": "mask_file.ext",
                            "secondaryFiles": []
                        },
                        "num_frag_count_draws": 0,
                        "multi_read_correct": true,
                        "frag_len_std_dev": 0,
                        "contrast_file": {
                            "size": 0,
                            "class": "File",
                            "path": "contrast_file.ext",
                            "secondaryFiles": []
                        },
                        "dispersion_method": "pooled",
                        "sample_files": [
                            {
                                "size": 0,
                                "secondaryFiles": [],
                                "class": "File",
                                "path": "/test/rnaseq/SMA_D1_SCT.R.accepted_hits.abundances.cxb",
                                "metadata": {
                                    "sample_group": "sample"
                                }
                            },
                            {
                                "metadata": {
                                    "sample_group": "sample"
                                },
                                "path": "/test/rnaseq/SMA_D2_SCT.R.accepted_hits.abundances.cxb",
                                "secondaryFiles": []
                            },
                            {
                                "metadata": {
                                    "sample_group": "D"
                                },
                                "path": "/test/rnaseq/SMA_K1_SCT.R.accepted_hits.abundances.cxb",
                                "secondaryFiles": []
                            },
                            {
                                "metadata": {
                                    "sample_group": "D"
                                },
                                "path": "/test/rnaseq/SMA_K2_SCT.R.accepted_hits.abundances.cxb",
                                "secondaryFiles": []
                            }
                        ]
                    },
                    "allocatedResources": {
                        "cpu": 15,
                        "mem": 30000
                    }
                },
                "sbg:createdBy": "bix-demo",
                "sbg:createdOn": 1450911496,
                "sbg:validationErrors": []
            }
        }
    ],
    "sbg:createdBy": "bixqa",
    "sbg:createdOn": 1501518687,
    "sbg:validationErrors": []
}
