{
    "sbg:image_url": "https://brood.sbgenomics.com/static/bixqa/qa-load-2017-07-31-18/rna-seq-alignment-star-for-tcga-pe-tar/18.png",
    "class": "Workflow",
    "sbg:project": "bixqa/qa-load-2017-07-31-18",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:id": "bixqa/qa-load-2017-07-31-18/rna-seq-alignment-star-for-tcga-pe-tar/18",
    "sbg:projectName": "qa-load-2017-07-31-18",
    "hints": [

    ],
    "id": "https://api.sbgenomics.com/v2/apps/bixqa/qa-load-2017-07-31-18/rna-seq-alignment-star-for-tcga-pe-tar/18/raw/",
    "sbg:canvas_y": 1,
    "inputs": [
        {
            "id": "#input_archive_file",
            "label": "Input Read Files",
            "sbg:x": 57.6470513525304,
            "sbg:y": 323.52939750248936,
            "sbg:fileTypes": "TAR, TAR.GZ, TGZ, TAR.BZ2, TBZ2,  GZ, BZ2, ZIP",
            "type": [
                "File"
            ]
        },
        {
            "id": "#reference_or_index",
            "label": "reference_or_index",
            "sbg:fileTypes": "FASTA, FA, FNA, TAR",
            "sbg:x": 151.969687721946,
            "sbg:y": 469.0909645774147,
            "sbg:suggestedValue": {
                "class": "File",
                "name": "human_g1k_v37_decoy.phiX174_Homo_sapiens.GRCh37.75_star-2.4.2a.tar",
                "path": "57bd5d15507c17b56d99b0d6"
            },
            "type": [
                "File"
            ]
        },
        {
            "id": "#sjdbGTFfile",
            "label": "sjdbGTFfile",
            "sbg:fileTypes": "GTF, GFF, GFF2, GFF3, TXT",
            "sbg:x": 139.09088134765625,
            "sbg:y": 176.36363636363635,
            "sbg:suggestedValue": [
                {
                    "class": "File",
                    "name": "Homo_sapiens.GRCh37.75.gtf",
                    "path": "5772b6c4507c1752674486cd"
                }
            ],
            "type": [
                "null",
                {
                    "items": "File",
                    "type": "array",
                    "name": "sjdbGTFfile"
                }
            ]
        }
    ],
    "sbg:latestRevision": 18,
    "sbg:copyOf": "admin/sbg-public-data/rna-seq-alignment-star-for-tcga-pe-tar/18",
    "sbg:license": "Apache License 2.0",
    "description": "*** DISCLAIMER ***\n\n**The newest version of this workflow on the Seven Bridges platform uses STAR 2.5.1b instead of STAR 2.4.2a which is present in this version. Hence, Seven Bridges will no longer provide support for this version of the workflow, which will become unpublished after July 2017 (if you have copied this workflow to your project, it will still remain there and you will be able to use it even after the unpublishing process ).**\n\nThis pipeline performs the first step of RNA-Seq analysis - alignment to a reference genome and transcriptome. STAR, an ultrafast RNA-seq aligner is used in this pipeline. STAR is capable of mapping full length RNA sequences and detecting de novo canonical junctions, non-canonical splices, and chimeric (fusion) transcripts. It is optimized for mammalian sequence reads, but fine tuning of its parameters enables customization to satisfy unique needs.\n###Required inputs\nThis workflow has two **required** inputs:\n\n1.Input read files (ID: *input_archive_file*) - STAR accepts one file per sample (TCGA tarball file containing both paired-ends).  \n\n2. Reference/Index files (ID: *reference_or_index*) - reference sequence to which to align the reads, or a TAR bundle of already generated index files.\n###Optional input:\nSplice junction annotations (ID: *sjdbGTFfile*) - this input can optionally be collected from splice junction databases. \n###Outputs\nThis workflow generates **nine** output files:\n\n1. Unmapped reads (ID: *unmapped_reads*) - unmapped reads are reported in FASTQ format.\n\n2. Transcriptome alignments (ID: *transcriptome_aligned_reads*) - alignments translated into transcript coordinates.  \n\n3. Splice junctions (Outputs ID: *splice_junctions*) - high confidence collapsed splice junctions in tab-delimited format. Only junctions supported by uniquely mapping reads are reported.\n\n4. Reads per gene (ID: *reads_per_gene*) - file with number of reads per gene. A read is counted if it overlaps (1nt or more) one and only one gene.\n\n5. Log files (ID: *log_files*) - a set of log files produced during alignment\n\n6. Intermediate genome files (ID: *intermediate_genome*) - archive with genome files produced when annotations are included on the fly (in the mapping step).\n\n7. Chimeric junctions (ID: *chimeric_junctions*) \n\n8. Chimeric alignments (ID: *chimeric_alignments*) \n\n9. Sorted bam file (ID: *sorted_bam*) - output aligned sequence, bam sorted\n\nSTAR can detect chimeric transcripts, but parameter \"Min segment length\" (ID: *chimSegmentMin*) in \"Chimeric Alignments\" category must be adjusted to a desired minimum chimeric segment length.\n\nIf you want to use STAR results as an input to an RNA-seq differential expression analysis(using the cufflinks app), please also set the parameter \"utSAMstrandField\" to \"intronMotif\". \n\n###Common issues###\n1. For paired-end alignments it is crucial to set the metadata 'paired-end' field as 1 and 2 respectively for the two input fastq files, otherwise the task will fail.\n\n2. If you already have a TAR bundle of generated index files (obtained from STAR Genome Generate), you can provide the TAR bundle instead of a FASTA reference file to skip the indexing and reduce the overall workflow execution time.",
    "sbg:validationErrors": [],
    "sbg:modifiedBy": "bixqa",
    "requirements": [],
    "sbg:revisionNotes": "Update STAR Genome Generate.",
    "sbg:contributors": [
        "bixqa"
    ],
    "sbg:createdOn": 1501518664,
    "sbg:toolAuthor": "Seven Bridges Genomics",
    "sbg:toolkitVersion": "2.4.2a",
    "sbg:categories": [
        "Alignment",
        "RNA"
    ],
    "sbg:canvas_x": -5,
    "sbg:toolkit": "STAR",
    "sbg:canvas_zoom": 0.8499999999999999,
    "sbg:createdBy": "bixqa",
    "label": "RNA-seq Alignment - STAR for TCGA PE tar",
    "sbg:sbgMaintained": false,
    "sbg:revisionsInfo": [
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1501518664,
            "sbg:modifiedBy": "bixqa",
            "sbg:revision": 0
        },
        {
            "sbg:revisionNotes": "SBG Unpack FASTQs replaced with the same app, but from SBG Demo Project.",
            "sbg:modifiedOn": 1501518664,
            "sbg:modifiedBy": "bixqa",
            "sbg:revision": 1
        },
        {
            "sbg:revisionNotes": "Update STAR to accept multiple read files.",
            "sbg:modifiedOn": 1501518664,
            "sbg:modifiedBy": "bixqa",
            "sbg:revision": 2
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1501518664,
            "sbg:modifiedBy": "bixqa",
            "sbg:revision": 3
        },
        {
            "sbg:revisionNotes": null,
            "sbg:modifiedOn": 1501518664,
            "sbg:modifiedBy": "bixqa",
            "sbg:revision": 4
        },
        {
            "sbg:revisionNotes": "Rename \"GenomeFastaFiles\" input to \"reference_or_index\"",
            "sbg:modifiedOn": 1501518664,
            "sbg:modifiedBy": "bixqa",
            "sbg:revision": 5
        },
        {
            "sbg:revisionNotes": "Update STAR to accept multi-FASTQ files.",
            "sbg:modifiedOn": 1501518664,
            "sbg:modifiedBy": "bixqa",
            "sbg:revision": 6
        },
        {
            "sbg:revisionNotes": "set reference_or_index suggested files",
            "sbg:modifiedOn": 1501518664,
            "sbg:modifiedBy": "bixqa",
            "sbg:revision": 7
        },
        {
            "sbg:revisionNotes": "Updated description to clarify how to use STAR output for differential expression.",
            "sbg:modifiedOn": 1501518664,
            "sbg:modifiedBy": "bixqa",
            "sbg:revision": 8
        },
        {
            "sbg:revisionNotes": "Update STAR so that unmapped reads extensions matched the input reads extension.",
            "sbg:modifiedOn": 1501518664,
            "sbg:modifiedBy": "bixqa",
            "sbg:revision": 9
        },
        {
            "sbg:revisionNotes": "Fixed an encoding bug that could manifest in JSON parsing under Windows platform.",
            "sbg:modifiedOn": 1501518664,
            "sbg:modifiedBy": "bixqa",
            "sbg:revision": 10
        },
        {
            "sbg:revisionNotes": "Update STAR to add a couple of small features.",
            "sbg:modifiedOn": 1501518664,
            "sbg:modifiedBy": "bixqa",
            "sbg:revision": 11
        },
        {
            "sbg:revisionNotes": "Update STAR to add option to sort unmapped reads.",
            "sbg:modifiedOn": 1501518664,
            "sbg:modifiedBy": "bixqa",
            "sbg:revision": 12
        },
        {
            "sbg:revisionNotes": "Update STAR to make sorting unmapped reads the default behavior.",
            "sbg:modifiedOn": 1501518664,
            "sbg:modifiedBy": "bixqa",
            "sbg:revision": 13
        },
        {
            "sbg:revisionNotes": "STAR update.",
            "sbg:modifiedOn": 1501518664,
            "sbg:modifiedBy": "bixqa",
            "sbg:revision": 14
        },
        {
            "sbg:revisionNotes": "Add Google platform instance hint.",
            "sbg:modifiedOn": 1501518664,
            "sbg:modifiedBy": "bixqa",
            "sbg:revision": 15
        },
        {
            "sbg:revisionNotes": "Update Google instance hint.",
            "sbg:modifiedOn": 1501518664,
            "sbg:modifiedBy": "bixqa",
            "sbg:revision": 16
        },
        {
            "sbg:revisionNotes": "Add disclaimer about unpublishing in the tool description.",
            "sbg:modifiedOn": 1501518664,
            "sbg:modifiedBy": "bixqa",
            "sbg:revision": 17
        },
        {
            "sbg:revisionNotes": "Update STAR Genome Generate.",
            "sbg:modifiedOn": 1501518664,
            "sbg:modifiedBy": "bixqa",
            "sbg:revision": 18
        }
    ],
    "sbg:modifiedOn": 1501518664,
    "cwlVersion": "sbg:draft-2",
    "steps": [
        {
            "id": "#SBG_Unpack_FASTQs",
            "inputs": [
                {
                    "id": "#SBG_Unpack_FASTQs.input_archive_file",
                    "source": [
                        "#input_archive_file"
                    ]
                }
            ],
            "sbg:x": 203.33336763911876,
            "sbg:y": 323.3333868715514,
            "outputs": [
                {
                    "id": "#SBG_Unpack_FASTQs.output_fastq_files"
                }
            ],
            "run": {
                "sbg:homepage": "https://igor.sbgenomics.com/",
                "class": "CommandLineTool",
                "sbg:project": "bix-demo/sbgtools-demo",
                "successCodes": [],
                "sbg:job": {
                    "inputs": {
                        "input_archive_file": {
                            "class": "File",
                            "size": 0,
                            "secondaryFiles": [],
                            "path": "input_file.tar"
                        }
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1000
                    }
                },
                "hints": [
                    {
                        "class": "DockerRequirement",
                        "dockerPull": "images.sbgenomics.com/markop/sbg-unpack-fastqs:1.0",
                        "dockerImageId": "df9e1c169beb"
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
                "sbg:contributors": [
                    "bix-demo",
                    "markop"
                ],
                "sbg:modifiedBy": "markop",
                "sbg:cmdPreview": "/opt/sbg_unpack_fastqs.py --input_archive_file input_file.tar > out.txt",
                "id": "bix-demo/sbgtools-demo/sbg-unpack-fastqs-1-0/4",
                "inputs": [
                    {
                        "id": "#input_archive_file",
                        "label": "Input archive file",
                        "inputBinding": {
                            "prefix": "--input_archive_file",
                            "separate": true,
                            "position": 0,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "",
                        "description": "The input archive file, containing FASTQ files, to be unpacked.",
                        "sbg:fileTypes": "TAR, TAR.GZ, TGZ, TAR.BZ2, TBZ2,  GZ, BZ2, ZIP",
                        "type": [
                            "File"
                        ],
                        "required": true
                    }
                ],
                "sbg:latestRevision": 4,
                "sbg:license": "Apache License 2.0",
                "description": "**SBG Unpack FASTQs** performs the extraction of the input archive, containing FASTQ files. \nThis tool also sets the \"paired_end\" metadata field. It assumes that FASTQ file names are formatted in this manner:\nfirst pair reads FASTQ file        -  *1.fastq\nsecond pair reads FASTQ file  -  * 2.fastq. \nwhere * represents any string.\n**This tool is designed to be used for paired-end metadata with above mentioned name formatting only.**\nSupported formats are:\n1. TAR\n2. TAR.GZ (TGZ)\n3. TAR.BZ2 (TBZ2)\n4. GZ\n5. BZ2\n6. ZIP",
                "x": 203.33336763911876,
                "sbg:validationErrors": [],
                "temporaryFailCodes": [],
                "requirements": [
                    {
                        "requirements": [
                            {
                                "class": "DockerRequirement",
                                "dockerPull": "rabix/js-engine"
                            }
                        ],
                        "id": "#cwl-js-engine",
                        "class": "ExpressionEngineRequirement"
                    }
                ],
                "baseCommand": [
                    "/opt/sbg_unpack_fastqs.py"
                ],
                "y": 323.3333868715514,
                "sbg:createdOn": 1450911291,
                "arguments": [],
                "sbg:toolAuthor": "Marko Petkovic, Seven Bridges Genomics",
                "sbg:createdBy": "bix-demo",
                "sbg:categories": [
                    "Other"
                ],
                "outputs": [
                    {
                        "id": "#output_fastq_files",
                        "label": "Output FASTQ files",
                        "description": "Output FASTQ files.",
                        "sbg:fileTypes": "FASTQ",
                        "type": [
                            {
                                "items": "File",
                                "type": "array",
                                "name": "output_fastq_files"
                            }
                        ],
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#input_archive_file",
                            "glob": "decompressed_files/*.fastq",
                            "sbg:metadata": {
                                "paired_end": {
                                    "class": "Expression",
                                    "script": "{\n  filepath = $self.path\n  filename = filepath.split(\"/\").pop();\n  if (filename.lastIndexOf(\".fastq\") !== 0)\n  \tp = filename[filename.lastIndexOf(\".fastq\") - 1 ]\n  if ((p == 1) || (p == 2))\n    return p\n  else\n    return \"\"\n}",
                                    "engine": "#cwl-js-engine"
                                }
                            }
                        }
                    }
                ],
                "stdout": "out.txt",
                "stdin": "",
                "label": "SBG Unpack FASTQs",
                "sbg:revisionNotes": "Changed paired-end metadata for single end reads.",
                "sbg:id": "admin/sbg-public-data/sbg-unpack-fastqs-1-0/4",
                "sbg:toolkit": "SBGTools",
                "sbg:sbgMaintained": false,
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1450911291,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revision": 0
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1450911292,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revision": 1
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1450911292,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revision": 2
                    },
                    {
                        "sbg:revisionNotes": "Changed description.",
                        "sbg:modifiedOn": 1468593347,
                        "sbg:modifiedBy": "markop",
                        "sbg:revision": 3
                    },
                    {
                        "sbg:revisionNotes": "Changed paired-end metadata for single end reads.",
                        "sbg:modifiedOn": 1468593614,
                        "sbg:modifiedBy": "markop",
                        "sbg:revision": 4
                    }
                ],
                "sbg:modifiedOn": 1468593614,
                "cwlVersion": "sbg:draft-2",
                "sbg:toolkitVersion": "v1.0",
                "sbg:image_url": null,
                "sbg:revision": 4
            }
        },
        {
            "id": "#SBG_FASTQ_Quality_Detector",
            "inputs": [
                {
                    "id": "#SBG_FASTQ_Quality_Detector.fastq",
                    "source": [
                        "#SBG_Unpack_FASTQs.output_fastq_files"
                    ]
                }
            ],
            "sbg:x": 375.33330743963063,
            "sbg:y": 322.6742276278409,
            "outputs": [
                {
                    "id": "#SBG_FASTQ_Quality_Detector.result"
                }
            ],
            "scatter": "#SBG_FASTQ_Quality_Detector.fastq",
            "run": {
                "x": 375.33330743963063,
                "class": "CommandLineTool",
                "sbg:project": "bix-demo/sbgtools-demo",
                "successCodes": [],
                "sbg:job": {
                    "inputs": {
                        "fastq": {
                            "class": "File",
                            "size": 0,
                            "secondaryFiles": [],
                            "path": "/path/to/fastq.ext"
                        }
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1000
                    }
                },
                "hints": [
                    {
                        "class": "DockerRequirement",
                        "dockerPull": "images.sbgenomics.com/tziotas/sbg_fastq_quality_scale_detector:1.0",
                        "dockerImageId": ""
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
                "sbg:contributors": [
                    "vladimirk",
                    "milan.domazet.sudo",
                    "bix-demo"
                ],
                "sbg:modifiedBy": "milan.domazet.sudo",
                "baseCommand": [
                    "python",
                    "sbg_fastq_quality_scale_detector.py"
                ],
                "id": "bix-demo/sbgtools-demo/sbg-fastq-quality-detector/8",
                "inputs": [
                    {
                        "id": "#fastq",
                        "label": "Fastq",
                        "inputBinding": {
                            "prefix": "--fastq",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Input",
                        "description": "FASTQ file.",
                        "sbg:fileTypes": "FASTQ,FQ",
                        "type": [
                            "File"
                        ],
                        "required": true
                    }
                ],
                "sbg:latestRevision": 8,
                "sbg:license": "Apache License 2.0",
                "description": "FASTQ Quality Scale Detector detects which quality encoding scheme was used in your reads and automatically enters the proper value in the \"Quality Scale\" metadata field.",
                "sbg:validationErrors": [],
                "temporaryFailCodes": [],
                "requirements": [
                    {
                        "class": "CreateFileRequirement",
                        "fileDef": [
                            {
                                "filename": "sbg_fastq_quality_scale_detector.py",
                                "fileContent": "\"\"\"\nUsage:\n    sbg_fastq_sniff.py --fastq FILE\n\nOptions:\n    -h, --help          Show this message.\n\n    -f, --fastq FILE    Input FASTQ file.\n\n\"\"\"\n\nfrom docopt import docopt\nimport os\nimport gzip\nimport itertools as it\nimport shutil\n\nfrom sdkcwl import *\n\nargs = docopt(__doc__, version='1.0')\n\n\nclass myGzipFile(gzip.GzipFile):\n    def __enter__(self, *args, **kwargs):\n        if self.fileobj is None:\n            raise Exception(\"I/O operation on closed GzipFile object\")\n        return self\n\n    def __exit__(self, *args, **kwargs):\n        self.close()\n\n\ndef extremes(a, b):\n    if a is False:\n        return b, b\n    return min(a[0], b), max(a[1], b)\n\n\ndef walk_qualities(f, sample_size=1000):\n    for i in xrange(sample_size * 4):\n        try:\n            line = f.next()\n        except StopIteration:\n            return\n        if i % 4 == 3:\n            yield line.rstrip(\"\\n\\r\")\n\n\ndef sniff(path):\n    with open(path, 'rb') as f:\n        gz = f.read(2) == '\\x1f\\x8b'\n    opn = myGzipFile if gz else open\n    with opn(path) as f:\n        return get_scale(*map(ord, reduce(extremes, it.chain(*walk_qualities(f)), False)))\n\n\ndef get_scale(ord_min, ord_max):\n    options = {\n        'illumina13': (64, 105),\n        'illumina15': (66, 105),\n        'sanger': (33, 126),\n        'solexa': (59, 105),\n    }\n    fits = [(k, v) for k, v in options.iteritems() if v[0] <= ord_min and v[1] >= ord_max]\n    if not fits:\n        message = 'Quality scale for range (%s, %s) not found.' % (ord_min, ord_max)\n        raise Exception(message)\n        # Return narrowest range\n    return reduce(lambda a, b: a if a[1][1] - a[1][0] < b[1][1] - b[1][0] else b, fits)[0]\n\ncwl_input(args, '--fastq', 'fastq')\ncwl_output('result')\n\nfq = self.inputs.fastq\n\nquality_scale = sniff(fq)\n\noutput_file = fq[fq.rfind('/')+1:]\nshutil.copyfile(fq, output_file)\n\nself.outputs.result = output_file\nself.outputs.result.meta = fq.make_metadata(quality_scale=quality_scale)\n\ncwl_finish()"
                            },
                            {
                                "filename": "sdkcwl.py",
                                "fileContent": "import json\nimport os\n\ndef _get_meta(fpath, reload_job=False):\n    def get_files(o):\n        if isinstance(o, dict) and o.get('class') == 'File':\n            return [o]\n        if isinstance(o, dict):\n            return sum(map(get_files, o.itervalues()), [])\n        if isinstance(o, list):\n            return sum(map(get_files, o), [])\n        return []\n\n    files = getattr(_get_meta, '_files', None)\n    if reload_job or files is None:\n        with open('job.json') as fp:\n            job = json.load(fp)\n        files = {f['path']: f for f in get_files(job['inputs'])}\n    return files[fpath].get('metadata', {})\n\n\nclass _DotDict(dict):\n    def _map(self, attr):\n        key_map = {\n            \"file_type\": \"file_extension\",\n            \"seq_tech\": \"platform\",\n            \"sample\": \"sample_id\",\n            \"library\": \"library_id\",\n            \"platform_unit\": \"platform_unit_id\",\n            \"chunk\": \"file_segment_number\",\n            \"qual_scale\": \"quality_scale\"\n        }\n        if attr in key_map:\n            attr = key_map[attr]\n        return attr\n\n    def __init__(self, *args, **kwargs):\n        super(_DotDict, self).__init__(*args, **kwargs)\n        for arg in args:\n            if isinstance(arg, dict) or isinstance(arg, _DotDict):\n                for k, v in arg.iteritems():\n                    nk = self._map(k)\n                    if k != nk and k in self:\n                        self.pop(k)\n                    self[nk] = v\n        if kwargs:\n            for k, v in kwargs.iteritems():\n                self[self._map(k)] = v\n\n    def __getattr__(self, attr):\n        return self.get(self._map(attr))\n\n    def __setattr__(self, key, value):\n        self.__setitem__(self._map(key), value)\n\n    def __setitem__(self, key, value):\n        super(_DotDict, self).__setitem__(self._map(key), value)\n        self.__dict__.update({self._map(key): value})\n\n    def __delattr__(self, item):\n        self.__delitem__(self._map(item))\n\n    def __delitem__(self, key):\n        super(_DotDict, self).__delitem__(self._map(key))\n        del self.__dict__[self._map(key)]\n\nclass _OldInput(str):\n\n    _meta = None\n\n    @property\n    def meta(self):\n        if self._meta is None:\n            self._meta = _DotDict(_get_meta(self))\n        return self._meta\n    \n    def make_metadata(self, **kwargs):\n        new_meta = _DotDict(self.meta)\n        if kwargs is not None:\n            for key, value in kwargs.iteritems():\n                new_meta[key] = value\n        return new_meta\n\n\nclass _OldOutputBucket(_DotDict):\n    \n    def __setitem__(self, key, value):\n        if isinstance(value, list):\n            super(_OldOutputBucket, self).__setitem__(key, _OldOutputList(value))\n        else:\n            super(_DotDict, self).__setitem__(key, _OldOutput(value))\n\nclass _OldOutput(str):\n\n    _meta = None\n\n    @property\n    def meta(self):\n        if self._meta is None:\n            self._meta = _DotDict()\n        return self._meta\n\n    @meta.setter\n    def meta(self, value):\n        self._meta = _DotDict(value)\n\n\nclass _OldOutputList(list):\n\n    def add_file(self, name):\n        new_file = _OldOutput(name)\n        self.append(new_file)\n        return new_file\ndef cwl_input(_args, _new, _old, list=False):\n    _new = _args[_new]\n    if isinstance(_new, str):\n        _new = [_new]\n    if list==False and len(_new) > 1:\n        raise Exception('Number of items provided to a non-list type input.')\n    if len(_new) == 1 and list == False:\n        self.inputs[_old] =  _OldInput(_new[0])\n    else:\n        self.inputs[_old] = map(_OldInput, _new)\n\ndef cwl_param(_args, _new, _old):\n    self.params[_old] = _args[_new]\n\ndef cwl_output(_old, list=False):\n    if list is False:\n        self.outputs[_old] = _OldOutput()\n    else:\n        self.outputs[_old] = _OldOutputList()\n\n\ndef cwl_finish():\n    if not self['outputs']:\n        return\n    if 'cwl_secondary' not in self:\n        self['cwl_secondary'] = {}\n    data = {}\n    for output in self['outputs']:\n        o = self['outputs'][output]\n        sf = self['cwl_secondary'].get(output, None)\n        if isinstance(o, _OldOutputList):\n            file_data = []\n            for f in o:\n                f_dict = {'name': os.path.split(f)[1], \\\n                          'class': 'File', \\\n                          'metadata': f.meta, \\\n                          'path': os.path.join(os.getcwd(), f)}\n                if sf:\n                    f_dict['secondaryFiles'] = [{'path': os.path.join(os.getcwd(), x), \"class\": \"File\"} for x in sf]\n                file_data.append(f_dict)\n        else:\n            file_data = {\n                'name': os.path.split(o)[1],\n                'class': 'File',\n                'metadata': o.meta,\n                'path': os.path.join(os.getcwd(), o)\n            }\n            if sf:\n                file_data['secondaryFiles'] = [{'path': os.path.join(os.getcwd(), x), \"class\": \"File\"} for x in sf]\n        data[output] = file_data\n    with open('cwl.output.json', 'w') as w:\n        json.dump(data, w)\n\ndef cwl_set_secondary(output, secondary_files):\n    if 'cwl_secondary' not in self:\n        self['cwl_secondary'] = {}\n    if not isinstance(secondary_files, list):\n        secondary_files = [secondary_files]\n    self['cwl_secondary'][output] = secondary_files\n\n################################################################################\n\nglobal self\nself = _DotDict(globals())\nif 'inputs' not in self:\n    self['inputs'] = _DotDict()\nif 'outputs' not in self:\n    self['outputs'] =  _OldOutputBucket()\nif 'params' not in self:\n    self['params'] = _DotDict()"
                            }
                        ]
                    }
                ],
                "sbg:cmdPreview": "python sbg_fastq_quality_scale_detector.py --fastq /path/to/fastq.ext",
                "y": 322.6742276278409,
                "sbg:createdOn": 1450911312,
                "arguments": [],
                "sbg:toolAuthor": "Seven Bridges Genomics",
                "sbg:createdBy": "bix-demo",
                "sbg:categories": [
                    "FASTQ-Processing"
                ],
                "outputs": [
                    {
                        "id": "#result",
                        "label": "Result",
                        "description": "Source FASTQ file with updated metadata.",
                        "sbg:fileTypes": "FASTQ",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#fastq",
                            "glob": "*.fastq"
                        }
                    }
                ],
                "stdout": "",
                "stdin": "",
                "label": "SBG FASTQ Quality Detector",
                "sbg:revisionNotes": "Reverted Sanger scale to (33,126), until we find a better range.",
                "sbg:id": "admin/sbg-public-data/sbg-fastq-quality-detector/12",
                "sbg:toolkit": "SBGTools",
                "sbg:sbgMaintained": false,
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1450911312,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revision": 0
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1450911313,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revision": 1
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1450911313,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revision": 2
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1450911314,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revision": 3
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1472045214,
                        "sbg:modifiedBy": "milan.domazet.sudo",
                        "sbg:revision": 4
                    },
                    {
                        "sbg:revisionNotes": "Changed input type to FASTQ and FQ.",
                        "sbg:modifiedOn": 1473774177,
                        "sbg:modifiedBy": "milan.domazet.sudo",
                        "sbg:revision": 5
                    },
                    {
                        "sbg:revisionNotes": "Added Category.",
                        "sbg:modifiedOn": 1473775728,
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revision": 6
                    },
                    {
                        "sbg:revisionNotes": "Fixed Sanger range and moved script to crate files.",
                        "sbg:modifiedOn": 1475083591,
                        "sbg:modifiedBy": "milan.domazet.sudo",
                        "sbg:revision": 7
                    },
                    {
                        "sbg:revisionNotes": "Reverted Sanger scale to (33,126), until we find a better range.",
                        "sbg:modifiedOn": 1475246089,
                        "sbg:modifiedBy": "milan.domazet.sudo",
                        "sbg:revision": 8
                    }
                ],
                "sbg:modifiedOn": 1475246089,
                "cwlVersion": "sbg:draft-2",
                "sbg:image_url": null,
                "sbg:revision": 8
            }
        },
        {
            "id": "#Picard_SortSam",
            "inputs": [
                {
                    "id": "#Picard_SortSam.validation_stringency",
                    "default": "SILENT"
                },
                {
                    "id": "#Picard_SortSam.sort_order",
                    "default": "Coordinate"
                },
                {
                    "id": "#Picard_SortSam.quiet"
                },
                {
                    "id": "#Picard_SortSam.output_type"
                },
                {
                    "id": "#Picard_SortSam.memory_per_job"
                },
                {
                    "id": "#Picard_SortSam.max_records_in_ram"
                },
                {
                    "id": "#Picard_SortSam.input_bam",
                    "source": [
                        "#STAR.aligned_reads"
                    ]
                },
                {
                    "id": "#Picard_SortSam.create_index",
                    "default": "True"
                },
                {
                    "id": "#Picard_SortSam.compression_level"
                }
            ],
            "sbg:x": 773.083180715633,
            "sbg:y": 470.91659385958945,
            "outputs": [
                {
                    "id": "#Picard_SortSam.sorted_bam"
                }
            ],
            "run": {
                "x": 773.083180715633,
                "class": "CommandLineTool",
                "sbg:project": "bix-demo/picard-1-140-demo",
                "successCodes": [],
                "sbg:job": {
                    "inputs": {
                        "memory_per_job": 2048,
                        "input_bam": {
                            "path": "/root/dir/example.tested.bam"
                        },
                        "create_index": null,
                        "sort_order": "Coordinate",
                        "output_type": null
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 2048
                    }
                },
                "hints": [
                    {
                        "class": "DockerRequirement",
                        "dockerPull": "images.sbgenomics.com/mladenlsbg/picard:1.140",
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
                "sbg:contributors": [
                    "bix-demo",
                    "mladenlSBG"
                ],
                "sbg:modifiedBy": "mladenlSBG",
                "baseCommand": [
                    "java",
                    {
                        "class": "Expression",
                        "script": "{   \n  if($job.inputs.memory_per_job){\n    return '-Xmx'.concat($job.inputs.memory_per_job, 'M')\n  }   \n  \treturn '-Xmx2048M'\n}",
                        "engine": "#cwl-js-engine"
                    },
                    "-jar",
                    "/opt/picard-tools-1.140/picard.jar",
                    "SortSam"
                ],
                "id": "bix-demo/picard-1-140-demo/picard-sortsam-1-140/3",
                "inputs": [
                    {
                        "id": "#validation_stringency",
                        "label": "Validation stringency",
                        "inputBinding": {
                            "prefix": "VALIDATION_STRINGENCY=",
                            "separate": false,
                            "valueFrom": {
                                "class": "Expression",
                                "script": "{\n  if ($job.inputs.validation_stringency)\n  {\n    return $job.inputs.validation_stringency\n  }\n  else\n  {\n    return \"SILENT\"\n  }\n}",
                                "engine": "#cwl-js-engine"
                            },
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Other input types",
                        "description": "Validation stringency for all SAM files read by this program. Setting stringency to SILENT can improve performance when processing a BAM file in which variable-length data (read, qualities, tags) do not otherwise need to be decoded. This option can be set to 'null' to clear the default value. Possible values: {STRICT, LENIENT, SILENT}.",
                        "sbg:toolDefaultValue": "SILENT",
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
                        ]
                    },
                    {
                        "id": "#sort_order",
                        "label": "Sort order",
                        "inputBinding": {
                            "prefix": "SORT_ORDER=",
                            "separate": false,
                            "valueFrom": {
                                "class": "Expression",
                                "script": "{\n  p = $job.inputs.sort_order.toLowerCase()\n  return p\n}",
                                "engine": "#cwl-js-engine"
                            },
                            "position": 3,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Other input types",
                        "description": "Sort order of the output file. Possible values: {unsorted, queryname, coordinate}.",
                        "sbg:altPrefix": "SO",
                        "type": [
                            {
                                "name": "sort_order",
                                "symbols": [
                                    "Unsorted",
                                    "Queryname",
                                    "Coordinate"
                                ],
                                "type": "enum"
                            }
                        ]
                    },
                    {
                        "id": "#quiet",
                        "label": "Quiet",
                        "inputBinding": {
                            "prefix": "QUIET=",
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Other input types",
                        "description": "This parameter indicates whether to suppress job-summary info on System.err. This option can be set to 'null' to clear the default value. Possible values: {true, false}.",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            {
                                "name": "quiet",
                                "symbols": [
                                    "True",
                                    "False"
                                ],
                                "type": "enum"
                            }
                        ]
                    },
                    {
                        "id": "#output_type",
                        "label": "Output format",
                        "sbg:category": "Other input types",
                        "description": "Since Picard tools can output both SAM and BAM files, user can choose the format of the output file.",
                        "sbg:toolDefaultValue": "SAME AS INPUT",
                        "type": [
                            "null",
                            {
                                "name": "output_type",
                                "symbols": [
                                    "BAM",
                                    "SAM",
                                    "SAME AS INPUT"
                                ],
                                "type": "enum"
                            }
                        ]
                    },
                    {
                        "id": "#memory_per_job",
                        "label": "Memory per job",
                        "sbg:toolDefaultValue": "2048",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Amount of RAM memory to be used per job. Defaults to 2048 MB for single threaded jobs."
                    },
                    {
                        "id": "#max_records_in_ram",
                        "label": "Max records in RAM",
                        "inputBinding": {
                            "prefix": "MAX_RECORDS_IN_RAM=",
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Other input types",
                        "description": "When writing SAM files that need to be sorted, this parameter will specify the number of records stored in RAM before spilling to disk. Increasing this number reduces the number of file handles needed to sort a SAM file, and increases the amount of RAM needed. This option can be set to 'null' to clear the default value.",
                        "sbg:toolDefaultValue": "500000",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#input_bam",
                        "label": "Input BAM",
                        "inputBinding": {
                            "prefix": "INPUT=",
                            "separate": false,
                            "position": 1,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "File inputs",
                        "description": "The BAM or SAM file to sort.",
                        "sbg:fileTypes": "BAM, SAM",
                        "type": [
                            "File"
                        ],
                        "sbg:altPrefix": "I",
                        "required": true
                    },
                    {
                        "id": "#create_index",
                        "label": "Create index",
                        "inputBinding": {
                            "prefix": "CREATE_INDEX=",
                            "separate": false,
                            "position": 5,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Other input types",
                        "description": "This parameter indicates whether to create a BAM index when writing a coordinate-sorted BAM file. This option can be set to 'null' to clear the default value. Possible values: {true, false}.",
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            {
                                "name": "create_index",
                                "symbols": [
                                    "True",
                                    "False"
                                ],
                                "type": "enum"
                            }
                        ]
                    },
                    {
                        "id": "#compression_level",
                        "label": "Compression level",
                        "inputBinding": {
                            "prefix": "COMPRESSION_LEVEL=",
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Other input types",
                        "description": "Compression level for all compressed files created (e.g. BAM and GELI). This option can be set to 'null' to clear the default value.",
                        "sbg:toolDefaultValue": "5",
                        "type": [
                            "null",
                            "int"
                        ]
                    }
                ],
                "sbg:latestRevision": 3,
                "sbg:license": "MIT License, Apache 2.0 Licence",
                "description": "Picard SortSam sorts the input SAM or BAM. Input and output formats are determined by the file extension.",
                "sbg:validationErrors": [],
                "temporaryFailCodes": [],
                "requirements": [
                    {
                        "requirements": [
                            {
                                "class": "DockerRequirement",
                                "dockerPull": "rabix/js-engine"
                            }
                        ],
                        "id": "#cwl-js-engine",
                        "class": "ExpressionEngineRequirement",
                        "engineCommand": "cwl-engine.js"
                    }
                ],
                "sbg:cmdPreview": "java -Xmx2048M -jar /opt/picard-tools-1.140/picard.jar SortSam OUTPUT=example.tested.sorted.bam INPUT=/root/dir/example.tested.bam SORT_ORDER=coordinate",
                "y": 470.91659385958945,
                "sbg:createdOn": 1450911168,
                "arguments": [
                    {
                        "prefix": "OUTPUT=",
                        "separate": false,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\n  filename = $job.inputs.input_bam.path\n  ext = $job.inputs.output_type\n\nif (ext === \"BAM\")\n{\n    return filename.split('.').slice(0, -1).concat(\"sorted.bam\").join(\".\").replace(/^.*[\\\\\\/]/, '')\n    }\n\nelse if (ext === \"SAM\")\n{\n    return filename.split('.').slice(0, -1).concat(\"sorted.sam\").join('.').replace(/^.*[\\\\\\/]/, '')\n}\n\nelse \n{\n\treturn filename.split('.').slice(0, -1).concat(\"sorted.\"+filename.split('.').slice(-1)[0]).join(\".\").replace(/^.*[\\\\\\/]/, '')\n}\n}",
                            "engine": "#cwl-js-engine"
                        },
                        "position": 0
                    },
                    {
                        "separate": true,
                        "position": 1000,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\n  filename = $job.inputs.input_bam.path\n  \n  /* figuring out output file type */\n  ext = $job.inputs.output_type\n  if (ext === \"BAM\")\n  {\n    out_extension = \"BAM\"\n  }\n  else if (ext === \"SAM\")\n  {\n    out_extension = \"SAM\"\n  }\n  else \n  {\n\tout_extension = filename.split('.').slice(-1)[0].toUpperCase()\n  }  \n  \n  /* if exist moving .bai in bam.bai */\n  if ($job.inputs.create_index === 'True' && $job.inputs.sort_order === 'Coordinate' && out_extension == \"BAM\")\n  {\n    \n    old_name = filename.split('.').slice(0, -1).concat('sorted.bai').join('.').replace(/^.*[\\\\\\/]/, '')\n    new_name = filename.split('.').slice(0, -1).concat('sorted.bam.bai').join('.').replace(/^.*[\\\\\\/]/, '')\n    return \"; mv \" + \" \" + old_name + \" \" + new_name\n  }\n\n}",
                            "engine": "#cwl-js-engine"
                        }
                    }
                ],
                "sbg:toolAuthor": "Broad Institute",
                "sbg:createdBy": "bix-demo",
                "sbg:categories": [
                    "SAM/BAM-Processing"
                ],
                "outputs": [
                    {
                        "id": "#sorted_bam",
                        "label": "Sorted BAM/SAM",
                        "description": "Sorted BAM or SAM file.",
                        "sbg:fileTypes": "BAM, SAM",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#input_bam",
                            "glob": "*.sorted.?am",
                            "sbg:metadata": {
                                "__inherit__": "input_bam"
                            },
                            "secondaryFiles": [
                                "^.bai",
                                ".bai"
                            ]
                        }
                    }
                ],
                "stdout": "",
                "stdin": "",
                "label": "Picard SortSam",
                "sbg:revisionNotes": "Modified \"sort_order\" default value.",
                "sbg:id": "admin/sbg-public-data/picard-sortsam-1-140/3",
                "sbg:toolkit": "Picard",
                "sbg:sbgMaintained": false,
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1450911168,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revision": 0
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1450911169,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revision": 1
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1450911170,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revision": 2
                    },
                    {
                        "sbg:revisionNotes": "Modified \"sort_order\" default value.",
                        "sbg:modifiedOn": 1476869720,
                        "sbg:modifiedBy": "mladenlSBG",
                        "sbg:revision": 3
                    }
                ],
                "sbg:modifiedOn": 1476869720,
                "cwlVersion": "sbg:draft-2",
                "sbg:toolkitVersion": "1.140",
                "sbg:image_url": null,
                "sbg:links": [
                    {
                        "id": "http://broadinstitute.github.io/picard/index.html",
                        "label": "Homepage"
                    },
                    {
                        "id": "https://github.com/broadinstitute/picard/releases/tag/1.138",
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
                "sbg:revision": 3
            }
        },
        {
            "id": "#STAR",
            "inputs": [
                {
                    "id": "#STAR.winFlankNbins"
                },
                {
                    "id": "#STAR.winBinNbits"
                },
                {
                    "id": "#STAR.winAnchorMultimapNmax"
                },
                {
                    "id": "#STAR.winAnchorDistNbins"
                },
                {
                    "id": "#STAR.unmappedOutputName"
                },
                {
                    "id": "#STAR.twopassMode"
                },
                {
                    "id": "#STAR.twopass1readsN"
                },
                {
                    "id": "#STAR.sortUnmappedReads"
                },
                {
                    "id": "#STAR.sjdbScore"
                },
                {
                    "id": "#STAR.sjdbOverhang",
                    "default": 100
                },
                {
                    "id": "#STAR.sjdbInsertSave"
                },
                {
                    "id": "#STAR.sjdbGTFtagExonParentTranscript"
                },
                {
                    "id": "#STAR.sjdbGTFtagExonParentGene"
                },
                {
                    "id": "#STAR.sjdbGTFfile",
                    "source": [
                        "#sjdbGTFfile"
                    ]
                },
                {
                    "id": "#STAR.sjdbGTFfeatureExon"
                },
                {
                    "id": "#STAR.sjdbGTFchrPrefix"
                },
                {
                    "id": "#STAR.seedSearchStartLmaxOverLread"
                },
                {
                    "id": "#STAR.seedSearchStartLmax"
                },
                {
                    "id": "#STAR.seedSearchLmax"
                },
                {
                    "id": "#STAR.seedPerWindowNmax"
                },
                {
                    "id": "#STAR.seedPerReadNmax"
                },
                {
                    "id": "#STAR.seedNoneLociPerWindow"
                },
                {
                    "id": "#STAR.seedMultimapNmax"
                },
                {
                    "id": "#STAR.scoreStitchSJshift"
                },
                {
                    "id": "#STAR.scoreInsOpen"
                },
                {
                    "id": "#STAR.scoreInsBase"
                },
                {
                    "id": "#STAR.scoreGenomicLengthLog2scale"
                },
                {
                    "id": "#STAR.scoreGapNoncan"
                },
                {
                    "id": "#STAR.scoreGapGCAG"
                },
                {
                    "id": "#STAR.scoreGapATAC"
                },
                {
                    "id": "#STAR.scoreGap"
                },
                {
                    "id": "#STAR.scoreDelOpen"
                },
                {
                    "id": "#STAR.scoreDelBase"
                },
                {
                    "id": "#STAR.rg_seq_center"
                },
                {
                    "id": "#STAR.rg_sample_id"
                },
                {
                    "id": "#STAR.rg_platform_unit_id"
                },
                {
                    "id": "#STAR.rg_platform"
                },
                {
                    "id": "#STAR.rg_mfl"
                },
                {
                    "id": "#STAR.rg_library_id"
                },
                {
                    "id": "#STAR.reads",
                    "source": [
                        "#SBG_FASTQ_Quality_Detector.result"
                    ]
                },
                {
                    "id": "#STAR.readMatesLengthsIn"
                },
                {
                    "id": "#STAR.readMapNumber"
                },
                {
                    "id": "#STAR.quantTranscriptomeBan"
                },
                {
                    "id": "#STAR.quantMode",
                    "default": "TranscriptomeSAM"
                },
                {
                    "id": "#STAR.outSortingType"
                },
                {
                    "id": "#STAR.outSJfilterReads"
                },
                {
                    "id": "#STAR.outSJfilterOverhangMin"
                },
                {
                    "id": "#STAR.outSJfilterIntronMaxVsReadN"
                },
                {
                    "id": "#STAR.outSJfilterDistToOtherSJmin"
                },
                {
                    "id": "#STAR.outSJfilterCountUniqueMin"
                },
                {
                    "id": "#STAR.outSJfilterCountTotalMin"
                },
                {
                    "id": "#STAR.outSAMunmapped"
                },
                {
                    "id": "#STAR.outSAMtype",
                    "default": "BAM"
                },
                {
                    "id": "#STAR.outSAMstrandField"
                },
                {
                    "id": "#STAR.outSAMreadID"
                },
                {
                    "id": "#STAR.outSAMprimaryFlag"
                },
                {
                    "id": "#STAR.outSAMorder"
                },
                {
                    "id": "#STAR.outSAMmode"
                },
                {
                    "id": "#STAR.outSAMmapqUnique"
                },
                {
                    "id": "#STAR.outSAMheaderPG"
                },
                {
                    "id": "#STAR.outSAMheaderHD"
                },
                {
                    "id": "#STAR.outSAMflagOR"
                },
                {
                    "id": "#STAR.outSAMflagAND"
                },
                {
                    "id": "#STAR.outSAMattributes"
                },
                {
                    "id": "#STAR.outReadsUnmapped",
                    "default": "Fastx"
                },
                {
                    "id": "#STAR.outQSconversionAdd"
                },
                {
                    "id": "#STAR.outFilterType"
                },
                {
                    "id": "#STAR.outFilterScoreMinOverLread"
                },
                {
                    "id": "#STAR.outFilterScoreMin"
                },
                {
                    "id": "#STAR.outFilterMultimapScoreRange"
                },
                {
                    "id": "#STAR.outFilterMultimapNmax"
                },
                {
                    "id": "#STAR.outFilterMismatchNoverReadLmax"
                },
                {
                    "id": "#STAR.outFilterMismatchNoverLmax"
                },
                {
                    "id": "#STAR.outFilterMismatchNmax"
                },
                {
                    "id": "#STAR.outFilterMatchNminOverLread"
                },
                {
                    "id": "#STAR.outFilterMatchNmin"
                },
                {
                    "id": "#STAR.outFilterIntronMotifs"
                },
                {
                    "id": "#STAR.no_read_groups"
                },
                {
                    "id": "#STAR.limitSjdbInsertNsj"
                },
                {
                    "id": "#STAR.limitOutSJoneRead"
                },
                {
                    "id": "#STAR.limitOutSJcollapsed"
                },
                {
                    "id": "#STAR.limitBAMsortRAM",
                    "default": 50000000000
                },
                {
                    "id": "#STAR.genomeDirName"
                },
                {
                    "id": "#STAR.genome",
                    "source": [
                        "#STAR_Genome_Generate.genome"
                    ]
                },
                {
                    "id": "#STAR.clip5pNbases"
                },
                {
                    "id": "#STAR.clip3pNbases"
                },
                {
                    "id": "#STAR.clip3pAfterAdapterNbases"
                },
                {
                    "id": "#STAR.clip3pAdapterSeq"
                },
                {
                    "id": "#STAR.clip3pAdapterMMp"
                },
                {
                    "id": "#STAR.chimSegmentMin"
                },
                {
                    "id": "#STAR.chimScoreSeparation"
                },
                {
                    "id": "#STAR.chimScoreMin"
                },
                {
                    "id": "#STAR.chimScoreJunctionNonGTAG"
                },
                {
                    "id": "#STAR.chimScoreDropMax"
                },
                {
                    "id": "#STAR.chimOutType"
                },
                {
                    "id": "#STAR.chimJunctionOverhangMin"
                },
                {
                    "id": "#STAR.alignWindowsPerReadNmax"
                },
                {
                    "id": "#STAR.alignTranscriptsPerWindowNmax"
                },
                {
                    "id": "#STAR.alignTranscriptsPerReadNmax"
                },
                {
                    "id": "#STAR.alignSplicedMateMapLminOverLmate"
                },
                {
                    "id": "#STAR.alignSplicedMateMapLmin"
                },
                {
                    "id": "#STAR.alignSoftClipAtReferenceEnds"
                },
                {
                    "id": "#STAR.alignSJoverhangMin"
                },
                {
                    "id": "#STAR.alignSJDBoverhangMin"
                },
                {
                    "id": "#STAR.alignMatesGapMax"
                },
                {
                    "id": "#STAR.alignIntronMin"
                },
                {
                    "id": "#STAR.alignIntronMax"
                },
                {
                    "id": "#STAR.alignEndsType"
                }
            ],
            "sbg:x": 624.0000221946024,
            "sbg:y": 322.0909257368607,
            "outputs": [
                {
                    "id": "#STAR.unmapped_reads"
                },
                {
                    "id": "#STAR.transcriptome_aligned_reads"
                },
                {
                    "id": "#STAR.splice_junctions"
                },
                {
                    "id": "#STAR.reads_per_gene"
                },
                {
                    "id": "#STAR.log_files"
                },
                {
                    "id": "#STAR.intermediate_genome"
                },
                {
                    "id": "#STAR.chimeric_junctions"
                },
                {
                    "id": "#STAR.chimeric_alignments"
                },
                {
                    "id": "#STAR.aligned_reads"
                }
            ],
            "run": {
                "x": 624.0000221946024,
                "class": "CommandLineTool",
                "sbg:project": "bix-demo/star-2-4-2a-demo",
                "successCodes": [],
                "sbg:job": {
                    "inputs": {
                        "clip5pNbases": [
                            0
                        ],
                        "scoreGapGCAG": 0,
                        "scoreGapNoncan": 0,
                        "scoreInsOpen": 0,
                        "genome": {
                            "class": "File",
                            "size": 0,
                            "secondaryFiles": [],
                            "path": "genome.ext"
                        },
                        "outSAMattributes": "Standard",
                        "chimScoreSeparation": 0,
                        "seedSearchStartLmax": 0,
                        "outSAMorder": "Paired",
                        "quantTranscriptomeBan": "IndelSoftclipSingleend",
                        "outFilterMultimapScoreRange": 0,
                        "clip3pAdapterSeq": [
                            "clip3pAdapterSeq"
                        ],
                        "alignSplicedMateMapLmin": 0,
                        "outSAMunmapped": "None",
                        "sjdbGTFtagExonParentTranscript": "",
                        "sjdbGTFchrPrefix": "chrPrefix",
                        "chimScoreDropMax": 0,
                        "winFlankNbins": 0,
                        "outSAMmapqUnique": 0,
                        "outFilterScoreMin": 0,
                        "rg_library_id": "",
                        "sjdbScore": null,
                        "winBinNbits": 0,
                        "scoreGap": 0,
                        "outFilterIntronMotifs": "None",
                        "outFilterMismatchNoverReadLmax": 0,
                        "outSJfilterIntronMaxVsReadN": [
                            0
                        ],
                        "seedSearchStartLmaxOverLread": 0,
                        "seedPerReadNmax": 0,
                        "readMatesLengthsIn": "NotEqual",
                        "outSAMstrandField": "None",
                        "seedMultimapNmax": 0,
                        "limitOutSJcollapsed": 0,
                        "twopass1readsN": 0,
                        "rg_mfl": "rg_mfl",
                        "alignSoftClipAtReferenceEnds": "Yes",
                        "outSAMflagOR": 0,
                        "alignEndsType": "Local",
                        "sjdbGTFtagExonParentGene": "",
                        "clip3pAdapterMMp": [
                            0
                        ],
                        "outSAMflagAND": 0,
                        "limitBAMsortRAM": 0,
                        "seedSearchLmax": 0,
                        "clip3pNbases": [
                            0,
                            3
                        ],
                        "scoreDelBase": 0,
                        "alignIntronMax": 0,
                        "outSAMheaderPG": "outSAMheaderPG",
                        "outSJfilterOverhangMin": [
                            30,
                            12,
                            12,
                            12
                        ],
                        "seedNoneLociPerWindow": 0,
                        "readMapNumber": 0,
                        "limitOutSJoneRead": 0,
                        "rg_platform": "Ion Torrent PGM",
                        "outFilterMismatchNmax": 0,
                        "outSJfilterCountTotalMin": [
                            3,
                            1,
                            1,
                            1
                        ],
                        "outFilterMatchNmin": 0,
                        "outSJfilterReads": "All",
                        "alignSJoverhangMin": 0,
                        "alignIntronMin": 0,
                        "chimScoreMin": 0,
                        "chimOutType": "Within",
                        "sjdbOverhang": null,
                        "outSJfilterDistToOtherSJmin": [
                            0
                        ],
                        "alignSplicedMateMapLminOverLmate": 0,
                        "scoreGenomicLengthLog2scale": 0,
                        "scoreDelOpen": 0,
                        "scoreGapATAC": 0,
                        "outFilterMismatchNoverLmax": 0,
                        "outSAMmode": "Full",
                        "alignTranscriptsPerReadNmax": 0,
                        "GENOME_DIR_NAME": "",
                        "seedPerWindowNmax": 0,
                        "outReadsUnmapped": "Fastx",
                        "sjdbGTFfeatureExon": "",
                        "clip3pAfterAdapterNbases": [
                            0
                        ],
                        "limitSjdbInsertNsj": 0,
                        "sjdbInsertSave": "Basic",
                        "rg_sample_id": "rg_sample",
                        "outSortingType": "Unsorted",
                        "outSJfilterCountUniqueMin": [
                            3,
                            1,
                            1,
                            1
                        ],
                        "winAnchorMultimapNmax": 0,
                        "alignSJDBoverhangMin": 0,
                        "quantMode": "TranscriptomeSAM",
                        "twopassMode": "Basic",
                        "outFilterMultimapNmax": 0,
                        "rg_seq_center": "",
                        "chimSegmentMin": 0,
                        "alignTranscriptsPerWindowNmax": 0,
                        "scoreStitchSJshift": 0,
                        "alignMatesGapMax": 0,
                        "reads": [
                            {
                                "class": "File",
                                "metadata": {
                                    "format": "fastq",
                                    "seq_center": "illumina",
                                    "paired_end": "1",
                                    "sample_id": "a"
                                },
                                "size": 0,
                                "secondaryFiles": [],
                                "path": "/test-data/read_A_1.fastq"
                            },
                            {
                                "class": "File",
                                "metadata": {
                                    "paired_end": "2",
                                    "sample_id": "a"
                                },
                                "size": 0,
                                "secondaryFiles": [],
                                "path": "/test-data/read_A_2.fastq"
                            },
                            {
                                "class": "File",
                                "metadata": {
                                    "paired_end": "2",
                                    "sample_id": "b"
                                },
                                "size": 0,
                                "secondaryFiles": [],
                                "path": "/test-data/read_B_2.fastq"
                            },
                            {
                                "class": "File",
                                "metadata": {
                                    "paired_end": "1",
                                    "sample_id": "b"
                                },
                                "size": 0,
                                "secondaryFiles": [],
                                "path": "/test-data/read_B_1.fastq"
                            }
                        ],
                        "sjdbGTFfile": [
                            {
                                "path": "/demo/test-data/chr20.gtf"
                            }
                        ],
                        "chimScoreJunctionNonGTAG": 0,
                        "rg_platform_unit_id": "rg_platform_unit",
                        "chimJunctionOverhangMin": 0,
                        "outSAMtype": "BAM",
                        "no_read_groups": false,
                        "outFilterType": "Normal",
                        "outSAMheaderHD": "outSAMheaderHD",
                        "outFilterScoreMinOverLread": 0,
                        "unmappedOutputName": "",
                        "sortUnmappedReads": true,
                        "winAnchorDistNbins": 0,
                        "outSAMprimaryFlag": "OneBestScore",
                        "outFilterMatchNminOverLread": 0,
                        "alignWindowsPerReadNmax": 0,
                        "outSAMreadID": "Standard",
                        "scoreInsBase": 0,
                        "outQSconversionAdd": 0
                    },
                    "allocatedResources": {
                        "cpu": 32,
                        "mem": 60000
                    }
                },
                "hints": [
                    {
                        "class": "DockerRequirement",
                        "dockerPull": "images.sbgenomics.com/ana_d/star:2.4.2a",
                        "dockerImageId": "a4b0ad2c3cae"
                    },
                    {
                        "class": "sbg:MemRequirement",
                        "value": 60000
                    },
                    {
                        "class": "sbg:CPURequirement",
                        "value": 32
                    }
                ],
                "sbg:contributors": [
                    "ana_d",
                    "uros_sipetic",
                    "bix-demo",
                    "jexnaex"
                ],
                "sbg:modifiedBy": "uros_sipetic",
                "baseCommand": [
                    "tar",
                    "-xvf",
                    {
                        "class": "Expression",
                        "script": "$job.inputs.genome.path",
                        "engine": "#cwl-js-engine"
                    },
                    "&&",
                    "/opt/STAR",
                    "--runThreadN",
                    {
                        "class": "Expression",
                        "script": "{\n  return $job.allocatedResources.cpu\n}",
                        "engine": "#cwl-js-engine"
                    }
                ],
                "id": "bix-demo/star-2-4-2a-demo/star/26",
                "inputs": [
                    {
                        "id": "#winFlankNbins",
                        "label": "Flanking regions size",
                        "inputBinding": {
                            "prefix": "--winFlankNbins",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Windows, Anchors, Binning",
                        "description": "=log2(winFlank), where win Flank is the size of the left and right flanking regions for each window (int>0).",
                        "sbg:toolDefaultValue": "4",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#winBinNbits",
                        "label": "Bin size",
                        "inputBinding": {
                            "prefix": "--winBinNbits",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Windows, Anchors, Binning",
                        "description": "=log2(winBin), where winBin is the size of the bin for the windows/clustering, each window will occupy an integer number of bins (int>0).",
                        "sbg:toolDefaultValue": "16",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#winAnchorMultimapNmax",
                        "label": "Max loci anchors",
                        "inputBinding": {
                            "prefix": "--winAnchorMultimapNmax",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Windows, Anchors, Binning",
                        "description": "Max number of loci anchors are allowed to map to (int>0).",
                        "sbg:toolDefaultValue": "50",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#winAnchorDistNbins",
                        "label": "Max bins between anchors",
                        "inputBinding": {
                            "prefix": "--winAnchorDistNbins",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Windows, Anchors, Binning",
                        "description": "Max number of bins between two anchors that allows aggregation of anchors into one window (int>0).",
                        "sbg:toolDefaultValue": "9",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#unmappedOutputName",
                        "label": "Unmapped output file names",
                        "sbg:category": "Output",
                        "description": "Names of the unmapped output files.",
                        "sbg:toolDefaultValue": "\"Unmapped.out\"",
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "id": "#twopassMode",
                        "label": "Two-pass mode",
                        "inputBinding": {
                            "prefix": "--twopassMode",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "2-pass mapping",
                        "description": "2-pass mapping mode. None: 1-pass mapping; Basic: basic 2-pass mapping, with all 1st pass junctions inserted into the genome indices on the fly.",
                        "sbg:toolDefaultValue": "None",
                        "type": [
                            "null",
                            {
                                "name": "twopassMode",
                                "symbols": [
                                    "None",
                                    "Basic"
                                ],
                                "type": "enum"
                            }
                        ]
                    },
                    {
                        "id": "#twopass1readsN",
                        "label": "Reads to process in 1st step",
                        "sbg:category": "2-pass mapping",
                        "description": "Number of reads to process for the 1st step. 0: 1-step only, no 2nd pass; use very large number to map all reads in the first step (int>0).",
                        "sbg:toolDefaultValue": "-1",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#sortUnmappedReads",
                        "label": "Sort unmapped reads",
                        "sbg:category": "Output",
                        "description": "Unmapped reads are, by default, unsorted. If you want to sort them by read ID, please specify this option, though keep in mind that this can increase STAR run time.",
                        "sbg:toolDefaultValue": "Off",
                        "type": [
                            "null",
                            "boolean"
                        ]
                    },
                    {
                        "id": "#sjdbScore",
                        "label": "Extra alignment score",
                        "sbg:category": "Splice junctions database",
                        "description": "Extra alignment score for alignments that cross database junctions.",
                        "sbg:toolDefaultValue": "2",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#sjdbOverhang",
                        "label": "\"Overhang\" length",
                        "sbg:category": "Splice junctions database",
                        "description": "Length of the donor/acceptor sequence on each side of the junctions, ideally = (mate_length - 1) (int >= 0), if int = 0, splice junction database is not used.",
                        "sbg:toolDefaultValue": "100",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#sjdbInsertSave",
                        "label": "Save junction files",
                        "sbg:category": "Splice junctions database",
                        "description": "Which files to save when sjdb junctions are inserted on the fly at the mapping step. None: not saving files at all; Basic: only small junction/transcript files; All: all files including big Genome, SA and SAindex. These files are output as archive.",
                        "sbg:toolDefaultValue": "None",
                        "type": [
                            "null",
                            {
                                "name": "sjdbInsertSave",
                                "symbols": [
                                    "Basic",
                                    "All",
                                    "None"
                                ],
                                "type": "enum"
                            }
                        ]
                    },
                    {
                        "id": "#sjdbGTFtagExonParentTranscript",
                        "label": "Exons' parents name",
                        "sbg:category": "Splice junctions database",
                        "description": "Tag name to be used as exons transcript-parents.",
                        "sbg:toolDefaultValue": "transcript_id",
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "id": "#sjdbGTFtagExonParentGene",
                        "label": "Gene name",
                        "sbg:category": "Splice junctions database",
                        "description": "Tag name to be used as exons gene-parents.",
                        "sbg:toolDefaultValue": "gene_id",
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "id": "#sjdbGTFfile",
                        "label": "Splice junction file",
                        "sbg:category": "Basic",
                        "description": "Gene model annotations and/or known transcripts. No need to include this input, except in case of using \"on the fly\" annotations. If you are providing a GFF3 file and wish to use STAR results for further downstream analysis, a good idea would be to set the \"Exons' parents name\" (id: sjdbGTFtagExonParentTranscript) option to \"Parent\".",
                        "sbg:fileTypes": "GTF, GFF, GFF2, GFF3, TXT",
                        "type": [
                            "null",
                            {
                                "items": "File",
                                "type": "array",
                                "name": "sjdbGTFfile"
                            }
                        ],
                        "required": false
                    },
                    {
                        "id": "#sjdbGTFfeatureExon",
                        "label": "Set exons feature",
                        "sbg:category": "Splice junctions database",
                        "description": "Feature type in GTF file to be used as exons for building transcripts.",
                        "sbg:toolDefaultValue": "exon",
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "id": "#sjdbGTFchrPrefix",
                        "label": "Chromosome names",
                        "sbg:category": "Splice junctions database",
                        "description": "Prefix for chromosome names in a GTF file (e.g. 'chr' for using ENSMEBL annotations with UCSC geneomes).",
                        "sbg:toolDefaultValue": "-",
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "id": "#seedSearchStartLmaxOverLread",
                        "label": "Search start point normalized",
                        "inputBinding": {
                            "prefix": "--seedSearchStartLmaxOverLread",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Alignments and Seeding",
                        "description": "SeedSearchStartLmax normalized to read length (sum of mates' lengths for paired-end reads).",
                        "sbg:toolDefaultValue": "1.0",
                        "type": [
                            "null",
                            "float"
                        ]
                    },
                    {
                        "id": "#seedSearchStartLmax",
                        "label": "Search start point",
                        "inputBinding": {
                            "prefix": "--seedSearchStartLmax",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Alignments and Seeding",
                        "description": "Defines the search start point through the read - the read is split into pieces no longer than this value (int>0).",
                        "sbg:toolDefaultValue": "50",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#seedSearchLmax",
                        "label": "Max seed length",
                        "inputBinding": {
                            "prefix": "--seedSearchLmax",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Alignments and Seeding",
                        "description": "Defines the maximum length of the seeds, if =0 max seed length is infinite (int>=0).",
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#seedPerWindowNmax",
                        "label": "Max seeds per window",
                        "inputBinding": {
                            "prefix": "--seedPerWindowNmax",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Alignments and Seeding",
                        "description": "Max number of seeds per window (int>=0).",
                        "sbg:toolDefaultValue": "50",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#seedPerReadNmax",
                        "label": "Max seeds per read",
                        "inputBinding": {
                            "prefix": "--seedPerReadNmax",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Alignments and Seeding",
                        "description": "Max number of seeds per read (int>=0).",
                        "sbg:toolDefaultValue": "1000",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#seedNoneLociPerWindow",
                        "label": "Max one-seed loci per window",
                        "inputBinding": {
                            "prefix": "--seedNoneLociPerWindow",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Alignments and Seeding",
                        "description": "Max number of one seed loci per window (int>=0).",
                        "sbg:toolDefaultValue": "10",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#seedMultimapNmax",
                        "label": "Filter pieces for stitching",
                        "inputBinding": {
                            "prefix": "--seedMultimapNmax",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Alignments and Seeding",
                        "description": "Only pieces that map fewer than this value are utilized in the stitching procedure (int>=0).",
                        "sbg:toolDefaultValue": "10000",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#scoreStitchSJshift",
                        "label": "Max score reduction",
                        "inputBinding": {
                            "prefix": "--scoreStitchSJshift",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Scoring",
                        "description": "Maximum score reduction while searching for SJ boundaries in the stitching step.",
                        "sbg:toolDefaultValue": "1",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#scoreInsOpen",
                        "label": "Insertion Open Penalty",
                        "inputBinding": {
                            "prefix": "--scoreInsOpen",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Scoring",
                        "description": "Insertion open penalty.",
                        "sbg:toolDefaultValue": "-2",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#scoreInsBase",
                        "label": "Insertion extension penalty",
                        "inputBinding": {
                            "prefix": "--scoreInsBase",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Scoring",
                        "description": "Insertion extension penalty per base (in addition to --scoreInsOpen).",
                        "sbg:toolDefaultValue": "-2",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#scoreGenomicLengthLog2scale",
                        "label": "Log scaled score",
                        "inputBinding": {
                            "prefix": "--scoreGenomicLengthLog2scale",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Scoring",
                        "description": "Extra score logarithmically scaled with genomic length of the alignment: <int>*log2(genomicLength).",
                        "sbg:toolDefaultValue": "-0.25",
                        "type": [
                            "null",
                            "float"
                        ]
                    },
                    {
                        "id": "#scoreGapNoncan",
                        "label": "Non-canonical gap open",
                        "inputBinding": {
                            "prefix": "--scoreGapNoncan",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Scoring",
                        "description": "Non-canonical gap open penalty (in addition to --scoreGap).",
                        "sbg:toolDefaultValue": "-8",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#scoreGapGCAG",
                        "label": "GC/AG and CT/GC gap open",
                        "inputBinding": {
                            "prefix": "--scoreGapGCAG",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Scoring",
                        "description": "GC/AG and CT/GC gap open penalty (in addition to --scoreGap).",
                        "sbg:toolDefaultValue": "-4",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#scoreGapATAC",
                        "label": "AT/AC and GT/AT gap open",
                        "inputBinding": {
                            "prefix": "--scoreGapATAC",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Scoring",
                        "description": "AT/AC and GT/AT gap open penalty (in addition to --scoreGap).",
                        "sbg:toolDefaultValue": "-8",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#scoreGap",
                        "label": "Gap open penalty",
                        "inputBinding": {
                            "prefix": "--scoreGap",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Scoring",
                        "description": "Gap open penalty.",
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#scoreDelOpen",
                        "label": "Deletion open penalty",
                        "inputBinding": {
                            "prefix": "--scoreDelOpen",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Scoring",
                        "description": "Deletion open penalty.",
                        "sbg:toolDefaultValue": "-2",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#scoreDelBase",
                        "label": "Deletion extension penalty",
                        "inputBinding": {
                            "prefix": "--scoreDelBase",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Scoring",
                        "description": "Deletion extension penalty per base (in addition to --scoreDelOpen).",
                        "sbg:toolDefaultValue": "-2",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#rg_seq_center",
                        "label": "Sequencing center",
                        "sbg:category": "Read group",
                        "description": "Specify the sequencing center for RG line.",
                        "sbg:toolDefaultValue": "Inferred from metadata",
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "id": "#rg_sample_id",
                        "label": "Sample ID",
                        "sbg:category": "Read group",
                        "description": "Specify the sample ID for RG line.",
                        "sbg:toolDefaultValue": "Inferred from metadata",
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "id": "#rg_platform_unit_id",
                        "label": "Platform unit ID",
                        "sbg:category": "Read group",
                        "description": "Specify the platform unit ID for RG line.",
                        "sbg:toolDefaultValue": "Inferred from metadata",
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "id": "#rg_platform",
                        "label": "Platform",
                        "sbg:category": "Read group",
                        "description": "Specify the version of the technology that was used for sequencing or assaying.",
                        "sbg:toolDefaultValue": "Inferred from metadata",
                        "type": [
                            "null",
                            {
                                "name": "rg_platform",
                                "symbols": [
                                    "LS 454",
                                    "Helicos",
                                    "Illumina",
                                    "ABI SOLiD",
                                    "Ion Torrent PGM",
                                    "PacBio"
                                ],
                                "type": "enum"
                            }
                        ]
                    },
                    {
                        "id": "#rg_mfl",
                        "label": "Median fragment length",
                        "sbg:category": "Read group",
                        "description": "Specify the median fragment length for RG line.",
                        "sbg:toolDefaultValue": "Inferred from metadata",
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "id": "#rg_library_id",
                        "label": "Library ID",
                        "sbg:category": "Read group",
                        "description": "Specify the library ID for RG line.",
                        "sbg:toolDefaultValue": "Inferred from metadata",
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "id": "#reads",
                        "label": "Read sequence",
                        "inputBinding": {
                            "separate": true,
                            "position": 10,
                            "itemSeparator": " ",
                            "valueFrom": {
                                "class": "Expression",
                                "script": "{\n  var list = [].concat($job.inputs.reads)\n  var all_samples = []\n  \n  getUnique = function(arr){\n    var u = {}, a = [];\n    for(var i = 0, l = arr.length; i < l; ++i){\n      if(u.hasOwnProperty(arr[i])) {\n        continue;\n      }\n      a.push(arr[i]);\n      u[arr[i]] = 1;\n    }\n    return a;\n  }\n    \n  for (index = 0; index < list.length; ++index) {\n    if (list[index].metadata != null){\n      all_samples.push(list[index].metadata.sample_id)\n    }\n  }\n  samples = getUnique(all_samples)\n  \n  var samples_given = all_samples.length == list.length\n  \n  for (index = 0; index < list.length; ++index) {\n    if (list[index].metadata != null){\n      all_samples.push(list[index].metadata.sample_id)\n    }\n  }\n  samples = getUnique(all_samples)\n  var resp = []\n  \n  if (list.length == 1){\n    resp.push(list[0].path)\n    \n  }else if (list.length == 2){    \n    \n    left = \"\"\n    right = \"\"\n      \n    for (index = 0; index < list.length; ++index) {\n      \n      if (list[index].metadata != null){\n        if (list[index].metadata.paired_end == 1){\n          left = list[index].path\n        }else if (list[index].metadata.paired_end == 2){\n          right = list[index].path\n        }\n      }\n    }\n    \n    if (left != \"\" && right != \"\"){      \n      resp.push(left)\n      resp.push(right)\n    }\n  }\n  else if (list.length > 2){\n    left = []\n    right = []\n    if (samples_given){\n      for (sample_ind = 0; sample_ind < samples.length; ++sample_ind){\n        for (read_ind = 0; read_ind < list.length; ++read_ind){\n          if (list[read_ind].metadata != null){\n            if (list[read_ind].metadata.paired_end == 1 && list[read_ind].metadata.sample_id == samples[sample_ind]){\n              left.push(list[read_ind].path)\n            }else if (list[read_ind].metadata.paired_end == 2 && list[read_ind].metadata.sample_id == samples[sample_ind]){\n              right.push(list[read_ind].path)}\n          }\n        }\n      }\n    } else {\n        for (index = 0; index < list.length; ++index) {\n\n          if (list[index].metadata != null){\n            if (list[index].metadata.paired_end == 1){\n              left.push(list[index].path)\n            }else if (list[index].metadata.paired_end == 2){\n              right.push(list[index].path)\n            }\n          }\n        }\n    }\n\n\n    left_join = left.join()\n    right_join = right.join()\n    if (left != [] && right != []){      \n      resp.push(left_join)\n      resp.push(right_join)\n    }\n    }\n  \n  if(resp.length > 0){    \n    return \"--readFilesIn \".concat(resp.join(\" \"))\n  }\n}",
                                "engine": "#cwl-js-engine"
                            },
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Basic",
                        "description": "Read sequence. In case of paired-end alignment it is crucial to set metadata 'paired-end' field to 1/2.",
                        "sbg:fileTypes": "FASTA, FASTQ, FA, FQ, FASTQ.GZ, FQ.GZ, FASTQ.BZ2, FQ.BZ2",
                        "type": [
                            {
                                "items": "File",
                                "type": "array",
                                "name": "reads"
                            }
                        ],
                        "required": true
                    },
                    {
                        "id": "#readMatesLengthsIn",
                        "label": "Reads lengths",
                        "inputBinding": {
                            "prefix": "--readMatesLengthsIn",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Read parameters",
                        "description": "Equal/Not equal - lengths of names, sequences, qualities for both mates are the same/not the same. \"Not equal\" is safe in all situations.",
                        "sbg:toolDefaultValue": "NotEqual",
                        "type": [
                            "null",
                            {
                                "name": "readMatesLengthsIn",
                                "symbols": [
                                    "NotEqual",
                                    "Equal"
                                ],
                                "type": "enum"
                            }
                        ]
                    },
                    {
                        "id": "#readMapNumber",
                        "label": "Reads to map",
                        "inputBinding": {
                            "prefix": "--readMapNumber",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Read parameters",
                        "description": "Number of reads to map from the beginning of the file.",
                        "sbg:toolDefaultValue": "-1",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#quantTranscriptomeBan",
                        "label": "Prohibit alignment type",
                        "inputBinding": {
                            "prefix": "--quantTranscriptomeBan",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Quantification of Annotations",
                        "description": "Prohibit various alignment type. IndelSoftclipSingleend: prohibit indels, soft clipping and single-end alignments - compatible with RSEM; Singleend: prohibit single-end alignments.",
                        "sbg:toolDefaultValue": "IndelSoftclipSingleend",
                        "type": [
                            "null",
                            {
                                "name": "quantTranscriptomeBan",
                                "symbols": [
                                    "IndelSoftclipSingleend",
                                    "Singleend"
                                ],
                                "type": "enum"
                            }
                        ]
                    },
                    {
                        "id": "#quantMode",
                        "label": "Quantification mode",
                        "sbg:category": "Quantification of Annotations",
                        "description": "Types of quantification requested. 'TranscriptomeSAM' option outputs SAM/BAM alignments to transcriptome into a separate file. With 'GeneCounts' option, STAR will count number of reads per gene while mapping.",
                        "sbg:toolDefaultValue": "-",
                        "type": [
                            "null",
                            {
                                "name": "quantMode",
                                "symbols": [
                                    "TranscriptomeSAM",
                                    "GeneCounts",
                                    "TranscriptomeSAM GeneCounts"
                                ],
                                "type": "enum"
                            }
                        ]
                    },
                    {
                        "id": "#outSortingType",
                        "label": "Output sorting type",
                        "sbg:category": "Output",
                        "description": "Type of output sorting.",
                        "sbg:toolDefaultValue": "Unsorted",
                        "type": [
                            "null",
                            {
                                "name": "outSortingType",
                                "symbols": [
                                    "Unsorted",
                                    "SortedByCoordinate"
                                ],
                                "type": "enum"
                            }
                        ]
                    },
                    {
                        "id": "#outSJfilterReads",
                        "label": "Collapsed junctions reads",
                        "inputBinding": {
                            "prefix": "--outSJfilterReads",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Output filtering: splice junctions",
                        "description": "Which reads to consider for collapsed splice junctions output. All: all reads, unique- and multi-mappers; Unique: uniquely mapping reads only.",
                        "sbg:toolDefaultValue": "All",
                        "type": [
                            "null",
                            {
                                "name": "outSJfilterReads",
                                "symbols": [
                                    "All",
                                    "Unique"
                                ],
                                "type": "enum"
                            }
                        ]
                    },
                    {
                        "id": "#outSJfilterOverhangMin",
                        "label": "Min overhang SJ",
                        "inputBinding": {
                            "prefix": "--outSJfilterOverhangMin",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Output filtering: splice junctions",
                        "description": "Minimum overhang length for splice junctions on both sides for each of the motifs. To set no output for desired motif, assign -1 to the corresponding field. Does not apply to annotated junctions.",
                        "sbg:toolDefaultValue": "30 12 12 12",
                        "type": [
                            "null",
                            {
                                "items": "int",
                                "type": "array"
                            }
                        ]
                    },
                    {
                        "id": "#outSJfilterIntronMaxVsReadN",
                        "label": "Max gap allowed",
                        "inputBinding": {
                            "prefix": "--outSJfilterIntronMaxVsReadN",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Output filtering: splice junctions",
                        "description": "Maximum gap allowed for junctions supported by 1,2,3...N reads (int >= 0) i.e. by default junctions supported by 1 read can have gaps <=50000b, by 2 reads: <=100000b, by 3 reads: <=200000. By 4 or more reads: any gap <=alignIntronMax. Does not apply to annotated junctions.",
                        "sbg:toolDefaultValue": "50000 100000 200000",
                        "type": [
                            "null",
                            {
                                "items": "int",
                                "type": "array"
                            }
                        ]
                    },
                    {
                        "id": "#outSJfilterDistToOtherSJmin",
                        "label": "Min distance to other donor/acceptor",
                        "inputBinding": {
                            "prefix": "--outSJfilterDistToOtherSJmin",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Output filtering: splice junctions",
                        "description": "Minimum allowed distance to other junctions' donor/acceptor for each of the motifs (int >= 0). Does not apply to annotated junctions.",
                        "sbg:toolDefaultValue": "10 0 5 10",
                        "type": [
                            "null",
                            {
                                "items": "int",
                                "type": "array"
                            }
                        ]
                    },
                    {
                        "id": "#outSJfilterCountUniqueMin",
                        "label": "Min unique count",
                        "inputBinding": {
                            "prefix": "--outSJfilterCountUniqueMin",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Output filtering: splice junctions",
                        "description": "Minimum uniquely mapping read count per junction for each of the motifs. To set no output for desired motif, assign -1 to the corresponding field. Junctions are output if one of --outSJfilterCountUniqueMin OR --outSJfilterCountTotalMin conditions are satisfied. Does not apply to annotated junctions.",
                        "sbg:toolDefaultValue": "3 1 1 1",
                        "type": [
                            "null",
                            {
                                "items": "int",
                                "type": "array"
                            }
                        ]
                    },
                    {
                        "id": "#outSJfilterCountTotalMin",
                        "label": "Min total count",
                        "inputBinding": {
                            "prefix": "--outSJfilterCountTotalMin",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Output filtering: splice junctions",
                        "description": "Minimum total (multi-mapping+unique) read count per junction for each of the motifs. To set no output for desired motif, assign -1 to the corresponding field. Junctions are output if one of --outSJfilterCountUniqueMin OR --outSJfilterCountTotalMin conditions are satisfied. Does not apply to annotated junctions.",
                        "sbg:toolDefaultValue": "3 1 1 1",
                        "type": [
                            "null",
                            {
                                "items": "int",
                                "type": "array"
                            }
                        ]
                    },
                    {
                        "id": "#outSAMunmapped",
                        "label": "Write unmapped in SAM",
                        "inputBinding": {
                            "prefix": "--outSAMunmapped",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Output",
                        "description": "Output of unmapped reads in the SAM format. None: no output Within: output unmapped reads within the main SAM file (i.e. Aligned.out.sam).",
                        "sbg:toolDefaultValue": "None",
                        "type": [
                            "null",
                            {
                                "name": "outSAMunmapped",
                                "symbols": [
                                    "None",
                                    "Within"
                                ],
                                "type": "enum"
                            }
                        ]
                    },
                    {
                        "id": "#outSAMtype",
                        "label": "Output format",
                        "inputBinding": {
                            "separate": true,
                            "valueFrom": {
                                "class": "Expression",
                                "script": "{\n  SAM_type = $job.inputs.outSAMtype\n  SORT_type = $job.inputs.outSortingType\n  if (SAM_type && SORT_type) {\n    return \"--outSAMtype \".concat(SAM_type, \" \", SORT_type)\n  } else if (SAM_type && SORT_type == null) {\n    return \"--outSAMtype \".concat(SAM_type, \" Unsorted\")\n  }\n}",
                                "engine": "#cwl-js-engine"
                            },
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Output",
                        "description": "Format of output alignments.",
                        "sbg:toolDefaultValue": "SAM",
                        "type": [
                            "null",
                            {
                                "name": "outSAMtype",
                                "symbols": [
                                    "SAM",
                                    "BAM"
                                ],
                                "type": "enum"
                            }
                        ]
                    },
                    {
                        "id": "#outSAMstrandField",
                        "label": "Strand field flag",
                        "inputBinding": {
                            "prefix": "--outSAMstrandField",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Output",
                        "description": "Cufflinks-like strand field flag. None: not used; intronMotif: strand derived from the intron motif. Reads with inconsistent and/or non-canonical introns are filtered out.",
                        "sbg:toolDefaultValue": "None",
                        "type": [
                            "null",
                            {
                                "name": "outSAMstrandField",
                                "symbols": [
                                    "None",
                                    "intronMotif"
                                ],
                                "type": "enum"
                            }
                        ]
                    },
                    {
                        "id": "#outSAMreadID",
                        "label": "Read ID",
                        "inputBinding": {
                            "prefix": "--outSAMreadID",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Output",
                        "description": "Read ID record type. Standard: first word (until space) from the FASTx read ID line, removing /1,/2 from the end; Number: read number (index) in the FASTx file.",
                        "sbg:toolDefaultValue": "Standard",
                        "type": [
                            "null",
                            {
                                "name": "outSAMreadID",
                                "symbols": [
                                    "Standard",
                                    "Number"
                                ],
                                "type": "enum"
                            }
                        ]
                    },
                    {
                        "id": "#outSAMprimaryFlag",
                        "label": "Primary alignments",
                        "inputBinding": {
                            "prefix": "--outSAMprimaryFlag",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Output",
                        "description": "Which alignments are considered primary - all others will be marked with 0x100 bit in the FLAG. OneBestScore: only one alignment with the best score is primary; AllBestScore: all alignments with the best score are primary.",
                        "sbg:toolDefaultValue": "OneBestScore",
                        "type": [
                            "null",
                            {
                                "name": "outSAMprimaryFlag",
                                "symbols": [
                                    "OneBestScore",
                                    "AllBestScore"
                                ],
                                "type": "enum"
                            }
                        ]
                    },
                    {
                        "id": "#outSAMorder",
                        "label": "Sorting in SAM",
                        "inputBinding": {
                            "prefix": "--outSAMorder",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Output",
                        "description": "Type of sorting for the SAM output. Paired: one mate after the other for all paired alignments; PairedKeepInputOrder: one mate after the other for all paired alignments, the order is kept the same as in the input FASTQ files.",
                        "sbg:toolDefaultValue": "Paired",
                        "type": [
                            "null",
                            {
                                "name": "outSAMorder",
                                "symbols": [
                                    "Paired",
                                    "PairedKeepInputOrder"
                                ],
                                "type": "enum"
                            }
                        ]
                    },
                    {
                        "id": "#outSAMmode",
                        "label": "SAM mode",
                        "inputBinding": {
                            "prefix": "--outSAMmode",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Output",
                        "description": "Mode of SAM output. Full: full SAM output; NoQS: full SAM but without quality scores.",
                        "sbg:toolDefaultValue": "Full",
                        "type": [
                            "null",
                            {
                                "name": "outSAMmode",
                                "symbols": [
                                    "Full",
                                    "NoQS"
                                ],
                                "type": "enum"
                            }
                        ]
                    },
                    {
                        "id": "#outSAMmapqUnique",
                        "label": "MAPQ value",
                        "inputBinding": {
                            "prefix": "--outSAMmapqUnique",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Output",
                        "description": "MAPQ value for unique mappers (0 to 255).",
                        "sbg:toolDefaultValue": "255",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#outSAMheaderPG",
                        "label": "SAM header @PG",
                        "inputBinding": {
                            "prefix": "--outSAMheaderPG",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Output",
                        "description": "Extra @PG (software) line of the SAM header (in addition to STAR).",
                        "sbg:toolDefaultValue": "-",
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "id": "#outSAMheaderHD",
                        "label": "SAM header @HD",
                        "inputBinding": {
                            "prefix": "--outSAMheaderHD",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Output",
                        "description": "@HD (header) line of the SAM header.",
                        "sbg:toolDefaultValue": "-",
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "id": "#outSAMflagOR",
                        "label": "OR SAM flag",
                        "inputBinding": {
                            "prefix": "--outSAMflagOR",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Output",
                        "description": "Set specific bits of the SAM FLAG.",
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#outSAMflagAND",
                        "label": "AND SAM flag",
                        "inputBinding": {
                            "prefix": "--outSAMflagAND",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Output",
                        "description": "Set specific bits of the SAM FLAG.",
                        "sbg:toolDefaultValue": "65535",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#outSAMattributes",
                        "label": "SAM attributes",
                        "inputBinding": {
                            "prefix": "--outSAMattributes",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Output",
                        "description": "Desired SAM attributes, in the order desired for the output SAM. NH: any combination in any order; Standard: NH HI AS nM; All: NH HI AS nM NM MD jM jI; None: no attributes.",
                        "sbg:toolDefaultValue": "Standard",
                        "type": [
                            "null",
                            {
                                "name": "outSAMattributes",
                                "symbols": [
                                    "Standard",
                                    "NH",
                                    "All",
                                    "None"
                                ],
                                "type": "enum"
                            }
                        ]
                    },
                    {
                        "id": "#outReadsUnmapped",
                        "label": "Output unmapped reads",
                        "inputBinding": {
                            "prefix": "--outReadsUnmapped",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Output",
                        "description": "Output of unmapped reads (besides SAM). None: no output; Fastx: output in separate fasta/fastq files, Unmapped.out.mate1/2.",
                        "sbg:toolDefaultValue": "None",
                        "type": [
                            "null",
                            {
                                "name": "outReadsUnmapped",
                                "symbols": [
                                    "None",
                                    "Fastx"
                                ],
                                "type": "enum"
                            }
                        ]
                    },
                    {
                        "id": "#outQSconversionAdd",
                        "label": "Quality conversion",
                        "inputBinding": {
                            "prefix": "--outQSconversionAdd",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Output",
                        "description": "Add this number to the quality score (e.g. to convert from Illumina to Sanger, use -31).",
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#outFilterType",
                        "label": "Filtering type",
                        "inputBinding": {
                            "prefix": "--outFilterType",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Output filtering",
                        "description": "Type of filtering. Normal: standard filtering using only current alignment; BySJout: keep only those reads that contain junctions that passed filtering into SJ.out.tab.",
                        "sbg:toolDefaultValue": "Normal",
                        "type": [
                            "null",
                            {
                                "name": "outFilterType",
                                "symbols": [
                                    "Normal",
                                    "BySJout"
                                ],
                                "type": "enum"
                            }
                        ]
                    },
                    {
                        "id": "#outFilterScoreMinOverLread",
                        "label": "Min score normalized",
                        "inputBinding": {
                            "prefix": "--outFilterScoreMinOverLread",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Output filtering",
                        "description": "'Minimum score' normalized to read length (sum of mates' lengths for paired-end reads).",
                        "sbg:toolDefaultValue": "0.66",
                        "type": [
                            "null",
                            "float"
                        ]
                    },
                    {
                        "id": "#outFilterScoreMin",
                        "label": "Min score",
                        "inputBinding": {
                            "prefix": "--outFilterScoreMin",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Output filtering",
                        "description": "Alignment will be output only if its score is higher than this value.",
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#outFilterMultimapScoreRange",
                        "label": "Multimapping score range",
                        "inputBinding": {
                            "prefix": "--outFilterMultimapScoreRange",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Output filtering",
                        "description": "The score range below the maximum score for multimapping alignments.",
                        "sbg:toolDefaultValue": "1",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#outFilterMultimapNmax",
                        "label": "Max number of mappings",
                        "inputBinding": {
                            "prefix": "--outFilterMultimapNmax",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Output filtering",
                        "description": "Read alignments will be output only if the read maps fewer than this value, otherwise no alignments will be output.",
                        "sbg:toolDefaultValue": "10",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#outFilterMismatchNoverReadLmax",
                        "label": "Mismatches to *read* length",
                        "inputBinding": {
                            "prefix": "--outFilterMismatchNoverReadLmax",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Output filtering",
                        "description": "Alignment will be output only if its ratio of mismatches to *read* length is less than this value.",
                        "sbg:toolDefaultValue": "1",
                        "type": [
                            "null",
                            "float"
                        ]
                    },
                    {
                        "id": "#outFilterMismatchNoverLmax",
                        "label": "Mismatches to *mapped* length",
                        "inputBinding": {
                            "prefix": "--outFilterMismatchNoverLmax",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Output filtering",
                        "description": "Alignment will be output only if its ratio of mismatches to *mapped* length is less than this value.",
                        "sbg:toolDefaultValue": "0.3",
                        "type": [
                            "null",
                            "float"
                        ]
                    },
                    {
                        "id": "#outFilterMismatchNmax",
                        "label": "Max number of mismatches",
                        "inputBinding": {
                            "prefix": "--outFilterMismatchNmax",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Output filtering",
                        "description": "Alignment will be output only if it has fewer mismatches than this value.",
                        "sbg:toolDefaultValue": "10",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#outFilterMatchNminOverLread",
                        "label": "Min matched bases normalized",
                        "inputBinding": {
                            "prefix": "--outFilterMatchNminOverLread",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Output filtering",
                        "description": "'Minimum matched bases' normalized to read length (sum of mates lengths for paired-end reads).",
                        "sbg:toolDefaultValue": "0.66",
                        "type": [
                            "null",
                            "float"
                        ]
                    },
                    {
                        "id": "#outFilterMatchNmin",
                        "label": "Min matched bases",
                        "inputBinding": {
                            "prefix": "--outFilterMatchNmin",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Output filtering",
                        "description": "Alignment will be output only if the number of matched bases is higher than this value.",
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#outFilterIntronMotifs",
                        "label": "Motifs filtering",
                        "inputBinding": {
                            "prefix": "--outFilterIntronMotifs",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Output filtering",
                        "description": "Filter alignment using their motifs. None: no filtering; RemoveNoncanonical: filter out alignments that contain non-canonical junctions; RemoveNoncanonicalUnannotated: filter out alignments that contain non-canonical unannotated junctions when using annotated splice junctions database. The annotated non-canonical junctions will be kept.",
                        "sbg:toolDefaultValue": "None",
                        "type": [
                            "null",
                            {
                                "name": "outFilterIntronMotifs",
                                "symbols": [
                                    "None",
                                    "RemoveNoncanonical",
                                    "RemoveNoncanonicalUnannotated"
                                ],
                                "type": "enum"
                            }
                        ]
                    },
                    {
                        "id": "#no_read_groups",
                        "label": "No read groups",
                        "sbg:category": "Read group",
                        "description": "If this boolean argument is specified, no read groups will be set in the resulting BAM header.",
                        "sbg:toolDefaultValue": "Off",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "sbg:stageInput": null
                    },
                    {
                        "id": "#limitSjdbInsertNsj",
                        "label": "Max insert junctions",
                        "inputBinding": {
                            "prefix": "--limitSjdbInsertNsj",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Limits",
                        "description": "Maximum number of junction to be inserted to the genome on the fly at the mapping stage, including those from annotations and those detected in the 1st step of the 2-pass run.",
                        "sbg:toolDefaultValue": "1000000",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#limitOutSJoneRead",
                        "label": "Junctions max number",
                        "inputBinding": {
                            "prefix": "--limitOutSJoneRead",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Limits",
                        "description": "Max number of junctions for one read (including all multi-mappers).",
                        "sbg:toolDefaultValue": "1000",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#limitOutSJcollapsed",
                        "label": "Collapsed junctions max number",
                        "inputBinding": {
                            "prefix": "--limitOutSJcollapsed",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Limits",
                        "description": "Max number of collapsed junctions.",
                        "sbg:toolDefaultValue": "1000000",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#limitBAMsortRAM",
                        "label": "Limit BAM sorting memory",
                        "inputBinding": {
                            "prefix": "--limitBAMsortRAM",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Limits",
                        "description": "Maximum available RAM for sorting BAM. If set to 0, it will be set to the genome index size.",
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#genomeDirName",
                        "label": "Genome dir name",
                        "inputBinding": {
                            "prefix": "--genomeDir",
                            "separate": true,
                            "valueFrom": {
                                "class": "Expression",
                                "script": "$job.inputs.genomeDirName || \"genomeDir\"",
                                "engine": "#cwl-js-engine"
                            },
                            "position": 0,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Basic",
                        "description": "Name of the directory which contains genome files (when genome.tar is uncompressed).",
                        "sbg:toolDefaultValue": "genomeDir",
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "id": "#genome",
                        "label": "Genome files",
                        "sbg:category": "Basic",
                        "description": "Genome files created using STAR Genome Generate.",
                        "sbg:fileTypes": "TAR",
                        "type": [
                            "File"
                        ],
                        "required": true
                    },
                    {
                        "id": "#clip5pNbases",
                        "label": "Clip 5p bases",
                        "inputBinding": {
                            "prefix": "--clip5pNbases",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Read parameters",
                        "description": "Number of bases to clip from 5p of each mate. In case only one value is given, it will be assumed the same for both mates.",
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            {
                                "items": "int",
                                "type": "array"
                            }
                        ]
                    },
                    {
                        "id": "#clip3pNbases",
                        "label": "Clip 3p bases",
                        "inputBinding": {
                            "prefix": "--clip3pNbases",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Read parameters",
                        "description": "Number of bases to clip from 3p of each mate. In case only one value is given, it will be assumed the same for both mates.",
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            {
                                "items": "int",
                                "type": "array"
                            }
                        ]
                    },
                    {
                        "id": "#clip3pAfterAdapterNbases",
                        "label": "Clip 3p after adapter seq",
                        "inputBinding": {
                            "prefix": "--clip3pAfterAdapterNbases",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Read parameters",
                        "description": "Number of bases to clip from 3p of each mate after the adapter clipping. In case only one value is given, it will be assumed the same for both mates.",
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            {
                                "items": "int",
                                "type": "array",
                                "name": "clip3pAfterAdapterNbases"
                            }
                        ]
                    },
                    {
                        "id": "#clip3pAdapterSeq",
                        "label": "Clip 3p adapter sequence",
                        "inputBinding": {
                            "prefix": "--clip3pAdapterSeq",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Read parameters",
                        "description": "Adapter sequence to clip from 3p of each mate. In case only one value is given, it will be assumed the same for both mates.",
                        "sbg:toolDefaultValue": "-",
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ]
                    },
                    {
                        "id": "#clip3pAdapterMMp",
                        "label": "Max mismatches proportions",
                        "inputBinding": {
                            "prefix": "--clip3pAdapterMMp",
                            "separate": true,
                            "itemSeparator": " ",
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Read parameters",
                        "description": "Max proportion of mismatches for 3p adapter clipping for each mate. In case only one value is given, it will be assumed the same for both mates.",
                        "sbg:toolDefaultValue": "0.1",
                        "type": [
                            "null",
                            {
                                "items": "float",
                                "type": "array"
                            }
                        ]
                    },
                    {
                        "id": "#chimSegmentMin",
                        "label": "Min segment length",
                        "inputBinding": {
                            "prefix": "--chimSegmentMin",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Chimeric Alignments",
                        "description": "Minimum length of chimeric segment length, if =0, no chimeric output (int>=0).",
                        "sbg:toolDefaultValue": "15",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#chimScoreSeparation",
                        "label": "Min separation score",
                        "inputBinding": {
                            "prefix": "--chimScoreSeparation",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Chimeric Alignments",
                        "description": "Minimum difference (separation) between the best chimeric score and the next one (int>=0).",
                        "sbg:toolDefaultValue": "10",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#chimScoreMin",
                        "label": "Min total score",
                        "inputBinding": {
                            "prefix": "--chimScoreMin",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Chimeric Alignments",
                        "description": "Minimum total (summed) score of the chimeric segments (int>=0).",
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#chimScoreJunctionNonGTAG",
                        "label": "Non-GT/AG penalty",
                        "inputBinding": {
                            "prefix": "--chimScoreJunctionNonGTAG",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Chimeric Alignments",
                        "description": "Penalty for a non-GT/AG chimeric junction.",
                        "sbg:toolDefaultValue": "-1",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#chimScoreDropMax",
                        "label": "Max drop score",
                        "inputBinding": {
                            "prefix": "--chimScoreDropMax",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Chimeric Alignments",
                        "description": "Max drop (difference) of chimeric score (the sum of scores of all chimeric segements) from the read length (int>=0).",
                        "sbg:toolDefaultValue": "20",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#chimOutType",
                        "label": "Chimeric output type",
                        "sbg:category": "Chimeric Alignments",
                        "description": "Type of chimeric output. SeparateSAMold: output old SAM into separate Chimeric.out.sam file; Within: output into main aligned SAM/BAM files.",
                        "sbg:toolDefaultValue": "SeparateSAMold",
                        "type": [
                            "null",
                            {
                                "name": "chimOutType",
                                "symbols": [
                                    "SeparateSAMold",
                                    "Within"
                                ],
                                "type": "enum"
                            }
                        ]
                    },
                    {
                        "id": "#chimJunctionOverhangMin",
                        "label": "Min junction overhang",
                        "inputBinding": {
                            "prefix": "--chimJunctionOverhangMin",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Chimeric Alignments",
                        "description": "Minimum overhang for a chimeric junction (int>=0).",
                        "sbg:toolDefaultValue": "20",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#alignWindowsPerReadNmax",
                        "label": "Max windows per read",
                        "inputBinding": {
                            "prefix": "--alignWindowsPerReadNmax",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Alignments and Seeding",
                        "description": "Max number of windows per read (int>0).",
                        "sbg:toolDefaultValue": "10000",
                        "type": [
                            "null",
                            "float"
                        ]
                    },
                    {
                        "id": "#alignTranscriptsPerWindowNmax",
                        "label": "Max transcripts per window",
                        "inputBinding": {
                            "prefix": "--alignTranscriptsPerWindowNmax",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Alignments and Seeding",
                        "description": "Max number of transcripts per window (int>0).",
                        "sbg:toolDefaultValue": "100",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#alignTranscriptsPerReadNmax",
                        "label": "Max transcripts per read",
                        "inputBinding": {
                            "prefix": "--alignTranscriptsPerReadNmax",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Alignments and Seeding",
                        "description": "Max number of different alignments per read to consider (int>0).",
                        "sbg:toolDefaultValue": "10000",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#alignSplicedMateMapLminOverLmate",
                        "label": "Min mapped length normalized",
                        "inputBinding": {
                            "prefix": "--alignSplicedMateMapLminOverLmate",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Alignments and Seeding",
                        "description": "AlignSplicedMateMapLmin normalized to mate length (float>0).",
                        "sbg:toolDefaultValue": "0.66",
                        "type": [
                            "null",
                            "float"
                        ]
                    },
                    {
                        "id": "#alignSplicedMateMapLmin",
                        "label": "Min mapped length",
                        "inputBinding": {
                            "prefix": "--alignSplicedMateMapLmin",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Alignments and Seeding",
                        "description": "Minimum mapped length for a read mate that is spliced (int>0).",
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#alignSoftClipAtReferenceEnds",
                        "label": "Soft clipping",
                        "inputBinding": {
                            "prefix": "--alignSoftClipAtReferenceEnds",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Alignments and Seeding",
                        "description": "Option which allows soft clipping of alignments at the reference (chromosome) ends. Can be disabled for compatibility with Cufflinks/Cuffmerge. Yes: Enables soft clipping; No: Disables soft clipping.",
                        "sbg:toolDefaultValue": "Yes",
                        "type": [
                            "null",
                            {
                                "name": "alignSoftClipAtReferenceEnds",
                                "symbols": [
                                    "Yes",
                                    "No"
                                ],
                                "type": "enum"
                            }
                        ]
                    },
                    {
                        "id": "#alignSJoverhangMin",
                        "label": "Min overhang",
                        "inputBinding": {
                            "prefix": "--alignSJoverhangMin",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Alignments and Seeding",
                        "description": "Minimum overhang (i.e. block size) for spliced alignments (int>0).",
                        "sbg:toolDefaultValue": "5",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#alignSJDBoverhangMin",
                        "label": "Min overhang: annotated",
                        "inputBinding": {
                            "prefix": "--alignSJDBoverhangMin",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Alignments and Seeding",
                        "description": "Minimum overhang (i.e. block size) for annotated (sjdb) spliced alignments (int>0).",
                        "sbg:toolDefaultValue": "3",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#alignMatesGapMax",
                        "label": "Max mates gap",
                        "inputBinding": {
                            "prefix": "--alignMatesGapMax",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Alignments and Seeding",
                        "description": "Maximum gap between two mates, if 0, max intron gap will be determined by (2^winBinNbits)*winAnchorDistNbins.",
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#alignIntronMin",
                        "label": "Min intron size",
                        "inputBinding": {
                            "prefix": "--alignIntronMin",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Alignments and Seeding",
                        "description": "Minimum intron size: genomic gap is considered intron if its length >= alignIntronMin, otherwise it is considered Deletion (int>=0).",
                        "sbg:toolDefaultValue": "21",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#alignIntronMax",
                        "label": "Max intron size",
                        "inputBinding": {
                            "prefix": "--alignIntronMax",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Alignments and Seeding",
                        "description": "Maximum intron size, if 0, max intron size will be determined by (2^winBinNbits)*winAnchorDistNbins.",
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#alignEndsType",
                        "label": "Alignment type",
                        "inputBinding": {
                            "prefix": "--alignEndsType",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Alignments and Seeding",
                        "description": "Type of read ends alignment. Local: standard local alignment with soft-clipping allowed. EndToEnd: force end to end read alignment, do not soft-clip.",
                        "sbg:toolDefaultValue": "Local",
                        "type": [
                            "null",
                            {
                                "name": "alignEndsType",
                                "symbols": [
                                    "Local",
                                    "EndToEnd",
                                    "Extend5pOfRead1"
                                ],
                                "type": "enum"
                            }
                        ]
                    }
                ],
                "sbg:latestRevision": 26,
                "sbg:license": "GNU General Public License v3.0 only",
                "description": "STAR is an ultrafast universal RNA-seq aligner. It has very high mapping speed, accurate alignment of contiguous and spliced reads, detection of polyA-tails, non-canonical splices and chimeric (fusion) junctions. It works with reads starting from lengths ~15 bases up to ~300 bases. In case of having longer reads, use of STAR Long is recommended.\n\n###Common issues###\n1. In case of paired-end alignment it is crucial to set metadata 'paired-end' field to 1/2.\n2. Files in multi-FASTQ format are currently not supported, i.e. if you have single-end reads that span multiple FASTQ files, or paired-end reads that span more than 2 files, please use a tool like SBG Merge FASTQs before providing your files to the STAR aligner.\n3. If you are providing a GFF3 file and wish to use STAR results for further downstream analysis, a good idea would be to set the \"Exons' parents name\" (id: sjdbGTFtagExonParentTranscript) option to \"Parent\".\n4. Unmapped reads are, by default, unsorted. If you want to sort them by read ID, please specify the \"Sort unmapped reads\" option, though keep in mind that this can increase STAR run time.",
                "sbg:validationErrors": [],
                "temporaryFailCodes": [],
                "requirements": [
                    {
                        "requirements": [
                            {
                                "class": "DockerRequirement",
                                "dockerPull": "rabix/js-engine"
                            }
                        ],
                        "id": "#cwl-js-engine",
                        "class": "ExpressionEngineRequirement"
                    }
                ],
                "sbg:cmdPreview": "tar -xvf genome.ext && /opt/STAR --runThreadN 32    --sjdbGTFfile /demo/test-data/chr20.gtf  --sjdbGTFchrPrefix chrPrefix --sjdbInsertSave Basic  --twopass1readsN -1  --chimOutType WithinBAM  --outSAMattrRGline ID:a CN:illumina PI:rg_mfl PL:Ion_Torrent_PGM PU:rg_platform_unit SM:rg_sample , ID:b PI:rg_mfl PL:Ion_Torrent_PGM PU:rg_platform_unit SM:rg_sample  --quantMode TranscriptomeSAM --outFileNamePrefix ./read.  --readFilesIn /test-data/read_A_1.fastq,/test-data/read_B_1.fastq /test-data/read_A_2.fastq,/test-data/read_B_2.fastq  && tar -vcf read._STARgenome.tar ./read._STARgenome   && cat read.Unmapped.out.mate2 | sed 's/\\t.*//' | paste - - - - | sort -k1,1 -S 10G | tr '\\t' '\\n' > read.Unmapped.out.mate2.fastq && rm read.Unmapped.out.mate2 && cat read.Unmapped.out.mate1 | sed 's/\\t.*//' | paste - - - - | sort -k1,1 -S 10G | tr '\\t' '\\n' > read.Unmapped.out.mate1.fastq && rm read.Unmapped.out.mate1",
                "y": 322.0909257368607,
                "sbg:createdOn": 1450911471,
                "arguments": [
                    {
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\n  file = [].concat($job.inputs.reads)[0].path\n  extension = /(?:\\.([^.]+))?$/.exec(file)[1]\n  if (extension == \"gz\") {\n    return \"--readFilesCommand zcat\"\n  } else if (extension == \"bz2\") {\n    return \"--readFilesCommand bzcat\"\n  }\n}",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\t\n  var sjFormat = \"False\"\n  var gtfgffFormat = \"False\"\n  var list = $job.inputs.sjdbGTFfile\n  var paths_list = []\n  var joined_paths = \"\"\n  \n  if (list) {\n    list.forEach(function(f){return paths_list.push(f.path)})\n    joined_paths = paths_list.join(\" \")\n\n\n    paths_list.forEach(function(f){\n      ext = f.replace(/^.*\\./, '')\n      if (ext == \"gff\" || ext == \"gtf\") {\n        gtfgffFormat = \"True\"\n        return gtfgffFormat\n      }\n      if (ext == \"txt\") {\n        sjFormat = \"True\"\n        return sjFormat\n      }\n    })\n\n    if ($job.inputs.sjdbGTFfile && $job.inputs.sjdbInsertSave != \"None\") {\n      if (sjFormat == \"True\") {\n        return \"--sjdbFileChrStartEnd \".concat(joined_paths)\n      }\n      else if (gtfgffFormat == \"True\") {\n        return \"--sjdbGTFfile \".concat(joined_paths)\n      }\n    }\n  }\n}",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\n  a = b = c = d = e = f = g = []\n  if ($job.inputs.sjdbGTFchrPrefix) {\n    a = [\"--sjdbGTFchrPrefix\", $job.inputs.sjdbGTFchrPrefix]\n  }\n  if ($job.inputs.sjdbGTFfeatureExon) {\n    b = [\"--sjdbGTFfeatureExon\", $job.inputs.sjdbGTFfeatureExon]\n  }\n  if ($job.inputs.sjdbGTFtagExonParentTranscript) {\n    c = [\"--sjdbGTFtagExonParentTranscript\", $job.inputs.sjdbGTFtagExonParentTranscript]\n  }\n  if ($job.inputs.sjdbGTFtagExonParentGene) {\n    d = [\"--sjdbGTFtagExonParentGene\", $job.inputs.sjdbGTFtagExonParentGene]\n  }\n  if ($job.inputs.sjdbOverhang) {\n    e = [\"--sjdbOverhang\", $job.inputs.sjdbOverhang]\n  }\n  if ($job.inputs.sjdbScore) {\n    f = [\"--sjdbScore\", $job.inputs.sjdbScore]\n  }\n  if ($job.inputs.sjdbInsertSave) {\n    g = [\"--sjdbInsertSave\", $job.inputs.sjdbInsertSave]\n  }\n  \n  \n  \n  if ($job.inputs.sjdbInsertSave != \"None\" && $job.inputs.sjdbGTFfile) {\n    new_list = a.concat(b, c, d, e, f, g)\n    return new_list.join(\" \")\n  }\n}",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\n  if ($job.inputs.twopassMode == \"Basic\") {\n    if ($job.inputs.twopass1readsN) {\n      return \"--twopass1readsN \".concat($job.inputs.twopass1readsN) \n    } else {\n      return \"--twopass1readsN -1\"\n    }\n  }\n}",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\n  if ($job.inputs.chimOutType == \"Within\") {\n    return \"--chimOutType \".concat(\"Within\", $job.inputs.outSAMtype)\n  }\n  else {\n    return \"--chimOutType SeparateSAMold\"\n  }\n}",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\n  if ($job.inputs.no_read_groups) {\n  return \"\" }\n  else {\n  var param_list = []\n  var all_samples = []\n  var list = [].concat($job.inputs.reads)\n  getUnique = function(arr){\n    var u = {}, a = [];\n    for(var i = 0, l = arr.length; i < l; ++i){\n      if(u.hasOwnProperty(arr[i])) {\n        continue;\n      }\n      a.push(arr[i]);\n      u[arr[i]] = 1;\n    }\n    return a;\n  }\n  \n  function add_param(key, value){\n    if (value == \"\") {\n      return\n    }\n    else {\n      return param_list.push(key.concat(\":\", value))\n    }\n  }\n  for (index = 0; index < list.length; ++index) {\n    if (list[index].metadata != null){\n    \tif (list[index].metadata.sample_id != null){\n      \t\tall_samples.push(list[index].metadata.sample_id)\n      }\n    }\n  }\n  \n  samples = getUnique(all_samples)\n  var samples_given = all_samples.length == list.length\n  var all_rg = []\n  if (samples_given){\n    for (sample_ind = 0; sample_ind < samples.length; ++sample_ind){\n    \tfor (read_ind = 0; read_ind < list.length; ++read_ind) {\n        var param_list = []\n        if (list[read_ind].metadata && list[read_ind].metadata.sample_id == samples[sample_ind] && list[read_ind].metadata.paired_end != \"2\") {\n        \tadd_param('ID', samples[sample_ind])\n          if ($job.inputs.rg_seq_center) {\n            add_param('CN', $job.inputs.rg_seq_center)\n          } else if (list[read_ind].metadata && list[read_ind].metadata.seq_center) {\n            add_param('CN', list[read_ind].metadata.seq_center)\n          }\n          if ($job.inputs.rg_library_id) {\n            add_param('LB', $job.inputs.rg_library_id)\n          } else if (list[read_ind].metadata && list[read_ind].metadata.library_id) {\n            add_param('LB', list[read_ind].metadata.library_id)\n          }\n          if ($job.inputs.rg_mfl) {\n            add_param('PI', $job.inputs.rg_mfl)\n          } else if (list[read_ind].metadata && list[read_ind].metadata.median_fragment_length) {\n            add_param('PI', list[read_ind].metadata.median_fragment_length)\n          }\n          if ($job.inputs.rg_platform) {\n            add_param('PL', $job.inputs.rg_platform.replace(/ /g,\"_\"))\n          } else if (list[read_ind].metadata && list[read_ind].metadata.platform) {\n            add_param('PL', list[read_ind].metadata.platform.replace(/ /g,\"_\"))\n          }\n          if ($job.inputs.rg_platform_unit_id) {\n            add_param('PU', $job.inputs.rg_platform_unit_id)\n          } else if (list[read_ind].metadata && list[read_ind].metadata.platform_unit_id) {\n            add_param('PU', list[read_ind].metadata.platform_unit_id)\n          }\n          if ($job.inputs.rg_sample_id) {\n            add_param('SM', $job.inputs.rg_sample_id)\n          } else if (list[read_ind].metadata && list[read_ind].metadata.sample_id) {\n            add_param('SM', list[read_ind].metadata.sample_id)\n          }\n          all_rg.push(param_list.join(\" \"))\n       }\n\n    }\n   }\n  } else {\n  \tvar param_list = []\n    add_param('ID', \"1\")\n    if ($job.inputs.rg_seq_center) {\n      add_param('CN', $job.inputs.rg_seq_center)\n    } else if ([].concat($job.inputs.reads)[0].metadata && [].concat($job.inputs.reads)[0].metadata.seq_center) {\n      add_param('CN', [].concat($job.inputs.reads)[0].metadata.seq_center)\n    }\n    if ($job.inputs.rg_library_id) {\n      add_param('LB', $job.inputs.rg_library_id)\n    } else if ([].concat($job.inputs.reads)[0].metadata && [].concat($job.inputs.reads)[0].metadata.library_id) {\n      add_param('LB', [].concat($job.inputs.reads)[0].metadata.library_id)\n    }\n    if ($job.inputs.rg_mfl) {\n      add_param('PI', $job.inputs.rg_mfl)\n    } else if ([].concat($job.inputs.reads)[0].metadata && [].concat($job.inputs.reads)[0].metadata.median_fragment_length) {\n      add_param('PI', [].concat($job.inputs.reads)[0].metadata.median_fragment_length)\n    }\n    if ($job.inputs.rg_platform) {\n      add_param('PL', $job.inputs.rg_platform.replace(/ /g,\"_\"))\n    } else if ([].concat($job.inputs.reads)[0].metadata && [].concat($job.inputs.reads)[0].metadata.platform) {\n      add_param('PL', [].concat($job.inputs.reads)[0].metadata.platform.replace(/ /g,\"_\"))\n    }\n    if ($job.inputs.rg_platform_unit_id) {\n      add_param('PU', $job.inputs.rg_platform_unit_id)\n    } else if ([].concat($job.inputs.reads)[0].metadata && [].concat($job.inputs.reads)[0].metadata.platform_unit_id) {\n      add_param('PU', [].concat($job.inputs.reads)[0].metadata.platform_unit_id)\n    }\n    if ($job.inputs.rg_sample_id) {\n      add_param('SM', $job.inputs.rg_sample_id)\n    } else if ([].concat($job.inputs.reads)[0].metadata && [].concat($job.inputs.reads)[0].metadata.sample_id) {\n      add_param('SM', [].concat($job.inputs.reads)[0].metadata.sample_id)\n    }\n    return \"--outSAMattrRGline \".concat(param_list.join(\" \"))\n  }\n  return \"--outSAMattrRGline \".concat(all_rg.join(\" , \"))\n  }\n}",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\n  if ($job.inputs.sjdbGTFfile && $job.inputs.quantMode) {\n    return \"--quantMode \".concat($job.inputs.quantMode)\n  }\n}",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "separate": true,
                        "position": 100,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\n  function sharedStart(array){\n  var A= array.concat().sort(), \n      a1= A[0], a2= A[A.length-1], L= a1.length, i= 0;\n  while(i<L && a1.charAt(i)=== a2.charAt(i)) i++;\n  return a1.substring(0, i);\n  }\n  path_list = []\n  arr = [].concat($job.inputs.reads)\n  arr.forEach(function(f){return path_list.push(f.path.replace(/\\\\/g,'/').replace( /.*\\//, '' ))})\n  common_prefix = sharedStart(path_list)\n  intermediate = common_prefix.replace( /\\-$|\\_$|\\.$/, '' ).concat(\"._STARgenome\")\n  source = \"./\".concat(intermediate)\n  destination = intermediate.concat(\".tar\")\n  if ($job.inputs.sjdbGTFfile && $job.inputs.sjdbInsertSave && $job.inputs.sjdbInsertSave != \"None\") {\n    return \"&& tar -vcf \".concat(destination, \" \", source)\n  }\n}",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "prefix": "--outFileNamePrefix",
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\n  function sharedStart(array){\n  var A= array.concat().sort(), \n      a1= A[0], a2= A[A.length-1], L= a1.length, i= 0;\n  while(i<L && a1.charAt(i)=== a2.charAt(i)) i++;\n  return a1.substring(0, i);\n  }\n  path_list = []\n  arr = [].concat($job.inputs.reads)\n  arr.forEach(function(f){return path_list.push(f.path.replace(/\\\\/g,'/').replace( /.*\\//, '' ))})\n  common_prefix = sharedStart(path_list)\n  if (common_prefix == \"\" || common_prefix == \"_\"){\n    common_prefix = \"All\"\n  }\n  return \"./\".concat(common_prefix.replace( /\\-$|\\_$|\\.$/, '' ), \".\")\n}",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "separate": true,
                        "position": 101,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\n  function sharedStart(array){\n  var A= array.concat().sort(), \n      a1= A[0], a2= A[A.length-1], L= a1.length, i= 0;\n  while(i<L && a1.charAt(i)=== a2.charAt(i)) i++;\n  return a1.substring(0, i);\n  }\n  path_list = []\n  arr = [].concat($job.inputs.reads)\n  arr.forEach(function(f){return path_list.push(f.path.replace(/\\\\/g,'/').replace( /.*\\//, '' ))})\n  common_prefix = sharedStart(path_list)\n  mate1 = common_prefix.replace( /\\-$|\\_$|\\.$/, '' ).concat(\".Unmapped.out.mate1\")\n  mate2 = common_prefix.replace( /\\-$|\\_$|\\.$/, '' ).concat(\".Unmapped.out.mate2\")\n  var x = arr[0].path.split('/').pop()\n  var y = x.toLowerCase()\n  \n  if ($job.inputs.unmappedOutputName) {\n  \tvar output_name = \".\" + $job.inputs.unmappedOutputName + \".\"\n  } else {\n    var output_name = \".Unmapped.out.\"\n  }\n  \n  mate1_1 = common_prefix.replace( /\\-$|\\_$|\\.$/, '' ).concat(output_name + \"mate1\")\n  mate2_1 = common_prefix.replace( /\\-$|\\_$|\\.$/, '' ).concat(output_name + \"mate2\")\n  \n  \n  if (y.endsWith('fastq') || y.endsWith('fq') || y.endsWith('fastq.gz') || y.endsWith('fastq.bz2') || y.endsWith('fq.gz') || y.endsWith('fq.bz2')) { \n    mate1fq = mate1_1.concat(\".fastq\")\n    mate2fq = mate2_1.concat(\".fastq\")\n  } else if (y.endsWith('fasta') || y.endsWith('fa') || y.endsWith('fasta.gz') || y.endsWith('fasta.bz2') || y.endsWith('fa.gz') || y.endsWith('fa.bz2')) {\n    mate1fq = mate1_1.concat(\".fasta\")\n    mate2fq = mate2_1.concat(\".fasta\")\n  }\n\n\n  if ($job.inputs.sortUnmappedReads) {\n    \n  var cmd = \"\"\n  var sort_cmd = \" | sed 's/\\\\t.*//' | paste - - - - | sort -k1,1 -S 10G | tr '\\\\t' '\\\\n' > \"\n  if ($job.inputs.outReadsUnmapped == \"Fastx\" && arr.length > 1) {\n    cmd = cmd.concat(\" && cat \", mate2, sort_cmd, mate2fq, \" && rm \", mate2)\n  }\n  if ($job.inputs.outReadsUnmapped == \"Fastx\") {\n    cmd = cmd.concat(\" && cat \", mate1, sort_cmd, mate1fq, \" && rm \", mate1)\n  }\n  return cmd\n  \n  } else {\n\n  if ($job.inputs.outReadsUnmapped == \"Fastx\" && arr.length > 1) {\n    return \"&& mv \".concat(mate1, \" \", mate1fq, \" && mv \", mate2, \" \", mate2fq)\n  }\n  else if ($job.inputs.outReadsUnmapped == \"Fastx\" && arr.length == 1) {\n    return \"&& mv \".concat(mate1, \" \", mate1fq)\n  }\n\n  }\n}",
                            "engine": "#cwl-js-engine"
                        }
                    }
                ],
                "sbg:toolAuthor": "Alexander Dobin/CSHL",
                "sbg:createdBy": "bix-demo",
                "sbg:categories": [
                    "Alignment"
                ],
                "outputs": [
                    {
                        "id": "#unmapped_reads",
                        "label": "Unmapped reads",
                        "description": "Output of unmapped reads.",
                        "sbg:fileTypes": "FASTQ",
                        "type": [
                            "null",
                            {
                                "items": "File",
                                "type": "array"
                            }
                        ],
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#reads",
                            "glob": {
                                "class": "Expression",
                                "script": "{\n  if ($job.inputs.unmappedOutputName) {\n    return \"*\" + $job.inputs.unmappedOutputName + \"*\"\n  } else {\n    return \"*Unmapped.out*\"\n  }\n  \n}",
                                "engine": "#cwl-js-engine"
                            },
                            "sbg:metadata": {
                                "paired_end": {
                                    "class": "Expression",
                                    "script": "{\n  filename = $self.path.split(\"/\").pop();\n  if (filename.lastIndexOf(\".fastq\") !== 0){\n    return filename[filename.lastIndexOf(\".fastq\") - 1 ]\n  } else {\n    return \"\"\n  } \n}",
                                    "engine": "#cwl-js-engine"
                                },
                                "sample_id": {
                                    "class": "Expression",
                                    "script": "{\n \nif([].concat($job.inputs.reads)[0].metadata.sample_id)\n   {\n    return [].concat($job.inputs.reads)[0].metadata.sample_id\n   }\n   else\n   {\n    filename = $self.path.split(\"/\").pop();\n    return filename.split(\".\").shift()\n   }\n}",
                                    "engine": "#cwl-js-engine"
                                }
                            }
                        }
                    },
                    {
                        "id": "#transcriptome_aligned_reads",
                        "label": "Transcriptome alignments",
                        "description": "Alignments translated into transcript coordinates.",
                        "sbg:fileTypes": "BAM",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#reads",
                            "glob": "*Transcriptome*",
                            "sbg:metadata": {
                                "reference_genome": {
                                    "class": "Expression",
                                    "script": "{\n  if ($job.inputs.genome.metadata) {\n    if ($job.inputs.genome.metadata.reference_genome) {\n      return $job.inputs.genome.metadata.reference_genome\n    } else {\n      return \"\"\n    }\n  } else {\n  return \"\"\n  }\n}",
                                    "engine": "#cwl-js-engine"
                                }
                            }
                        }
                    },
                    {
                        "id": "#splice_junctions",
                        "label": "Splice junctions",
                        "description": "High confidence collapsed splice junctions in tab-delimited format. Only junctions supported by uniquely mapping reads are reported.",
                        "sbg:fileTypes": "TAB",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#reads",
                            "glob": "*SJ.out.tab",
                            "sbg:metadata": {}
                        }
                    },
                    {
                        "id": "#reads_per_gene",
                        "label": "Reads per gene",
                        "description": "File with number of reads per gene. A read is counted if it overlaps (1nt or more) one and only one gene.",
                        "sbg:fileTypes": "TAB",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#reads",
                            "glob": "*ReadsPerGene*",
                            "sbg:metadata": {}
                        }
                    },
                    {
                        "id": "#log_files",
                        "label": "Log files",
                        "description": "Log files produced during alignment.",
                        "sbg:fileTypes": "OUT",
                        "type": [
                            "null",
                            {
                                "items": "File",
                                "type": "array"
                            }
                        ],
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#reads",
                            "glob": "*Log*.out",
                            "sbg:metadata": {}
                        }
                    },
                    {
                        "id": "#intermediate_genome",
                        "label": "Intermediate genome files",
                        "description": "Archive with genome files produced when annotations are included on the fly (in the mapping step).",
                        "sbg:fileTypes": "TAR",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#reads",
                            "glob": "*_STARgenome.tar",
                            "sbg:metadata": {}
                        }
                    },
                    {
                        "id": "#chimeric_junctions",
                        "label": "Chimeric junctions",
                        "description": "If chimSegmentMin in 'Chimeric Alignments' section is set to 0, 'Chimeric Junctions' won't be output.",
                        "sbg:fileTypes": "JUNCTION",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#reads",
                            "glob": "*Chimeric.out.junction",
                            "sbg:metadata": {}
                        }
                    },
                    {
                        "id": "#chimeric_alignments",
                        "label": "Chimeric alignments",
                        "description": "Aligned Chimeric sequences SAM - if chimSegmentMin = 0, no Chimeric Alignment SAM and Chimeric Junctions outputs.",
                        "sbg:fileTypes": "SAM",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#reads",
                            "glob": "*.Chimeric.out.sam",
                            "sbg:metadata": {
                                "reference_genome": {
                                    "class": "Expression",
                                    "script": "{\n  if ($job.inputs.genome.metadata) {\n    if ($job.inputs.genome.metadata.reference_genome) {\n      return $job.inputs.genome.metadata.reference_genome\n    } else {\n      return \"\"\n    }\n  } else {\n  return \"\"\n  }\n}",
                                    "engine": "#cwl-js-engine"
                                }
                            }
                        }
                    },
                    {
                        "id": "#aligned_reads",
                        "label": "Aligned SAM/BAM",
                        "description": "Aligned sequence in SAM/BAM format.",
                        "sbg:fileTypes": "SAM, BAM",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#reads",
                            "glob": {
                                "class": "Expression",
                                "script": "{\n  if ($job.inputs.outSortingType == 'SortedByCoordinate') {\n    sort_name = '.sortedByCoord'\n  }\n  else {\n    sort_name = ''\n  }\n  if ($job.inputs.outSAMtype == 'BAM') {\n    sam_name = \"*.Aligned\".concat( sort_name, '.out.bam')\n  }\n  else {\n    sam_name = \"*.Aligned.out.sam\"\n  }\n  return sam_name\n}",
                                "engine": "#cwl-js-engine"
                            },
                            "sbg:metadata": {
                                "reference_genome": {
                                    "class": "Expression",
                                    "script": "{\n  if ($job.inputs.genome.metadata) {\n    if ($job.inputs.genome.metadata.reference_genome) {\n      return $job.inputs.genome.metadata.reference_genome\n    } else {\n      return \"\"\n    }\n  } else {\n  return \"\"\n  }\n}",
                                    "engine": "#cwl-js-engine"
                                },
                                "sample_id": {
                                    "class": "Expression",
                                    "script": "{\n \nif([].concat($job.inputs.reads)[0].metadata.sample_id)\n   {\n    return [].concat($job.inputs.reads)[0].metadata.sample_id\n   }\n   else\n   {\n    filename = $self.path.split(\"/\").pop();\n    return filename.split(\".\").shift()\n   }\n}",
                                    "engine": "#cwl-js-engine"
                                }
                            }
                        }
                    }
                ],
                "stdout": "",
                "stdin": "",
                "label": "STAR",
                "sbg:revisionNotes": "Update read group expression to handle cases with files without any metadata.",
                "sbg:id": "admin/sbg-public-data/star/26",
                "sbg:toolkit": "STAR",
                "sbg:sbgMaintained": false,
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1450911471,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revision": 0
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1450911473,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revision": 1
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1450911475,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revision": 2
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1462878528,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 3
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1462889222,
                        "sbg:modifiedBy": "ana_d",
                        "sbg:revision": 4
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1464956638,
                        "sbg:modifiedBy": "jexnaex",
                        "sbg:revision": 5
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1464956988,
                        "sbg:modifiedBy": "jexnaex",
                        "sbg:revision": 6
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1467305434,
                        "sbg:modifiedBy": "ana_d",
                        "sbg:revision": 7
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1470661539,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 8
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1470668183,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 9
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1470672304,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 10
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1470672593,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 11
                    },
                    {
                        "sbg:revisionNotes": "Added proper 'paired_end' metadata to 'unmapped_reads' output.",
                        "sbg:modifiedOn": 1471865774,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 12
                    },
                    {
                        "sbg:revisionNotes": "Updated description.",
                        "sbg:modifiedOn": 1471871298,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 13
                    },
                    {
                        "sbg:revisionNotes": "Add proper 'Reference Genome' metadata to BAM/SAM outputs.",
                        "sbg:modifiedOn": 1472206891,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 14
                    },
                    {
                        "sbg:revisionNotes": "Fixed description typos.",
                        "sbg:modifiedOn": 1473068488,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 15
                    },
                    {
                        "sbg:revisionNotes": "Changed number of cores from 15 to 32.",
                        "sbg:modifiedOn": 1473070488,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 16
                    },
                    {
                        "sbg:revisionNotes": "Multiple read pairs can be included in the command line now. In order to have the same order of the pairs, \"Sample ID\" metadata has to be set. Otherwise, pairs will be ordered randomly.",
                        "sbg:modifiedOn": 1475169313,
                        "sbg:modifiedBy": "ana_d",
                        "sbg:revision": 17
                    },
                    {
                        "sbg:revisionNotes": "Expression fixed for reads input.",
                        "sbg:modifiedOn": 1475749337,
                        "sbg:modifiedBy": "ana_d",
                        "sbg:revision": 18
                    },
                    {
                        "sbg:revisionNotes": "Update some expressions to accpet multiple fastq files.",
                        "sbg:modifiedOn": 1476893173,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 19
                    },
                    {
                        "sbg:revisionNotes": "Unmapped reads output extension is now the same as the input read files extensions.",
                        "sbg:modifiedOn": 1477488616,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 20
                    },
                    {
                        "sbg:revisionNotes": "Fixed an encoding bug that could manifest in downstream analysis under Windows platform.",
                        "sbg:modifiedOn": 1479131281,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 21
                    },
                    {
                        "sbg:revisionNotes": "Add couple of small features.",
                        "sbg:modifiedOn": 1480523653,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 22
                    },
                    {
                        "sbg:revisionNotes": "Add option to sort unmapped reads by ID.",
                        "sbg:modifiedOn": 1481205093,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 23
                    },
                    {
                        "sbg:revisionNotes": "Make sorting unmapped reads by read ID the default behaviour.",
                        "sbg:modifiedOn": 1481225957,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 24
                    },
                    {
                        "sbg:revisionNotes": "Add option to sort unmapped reads by read ID (default is OFF).",
                        "sbg:modifiedOn": 1481283140,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 25
                    },
                    {
                        "sbg:revisionNotes": "Update read group expression to handle cases with files without any metadata.",
                        "sbg:modifiedOn": 1485434288,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 26
                    }
                ],
                "sbg:modifiedOn": 1485434288,
                "cwlVersion": "sbg:draft-2",
                "sbg:toolkitVersion": "2.4.2a",
                "sbg:image_url": null,
                "sbg:links": [
                    {
                        "id": "https://github.com/alexdobin/STAR",
                        "label": "Homepage"
                    },
                    {
                        "id": "https://github.com/alexdobin/STAR/releases",
                        "label": "Releases"
                    },
                    {
                        "id": "https://github.com/alexdobin/STAR/blob/master/doc/STARmanual.pdf",
                        "label": "Manual"
                    },
                    {
                        "id": "https://groups.google.com/forum/#!forum/rna-star",
                        "label": "Support"
                    },
                    {
                        "id": "http://www.ncbi.nlm.nih.gov/pubmed/23104886",
                        "label": "Publication"
                    }
                ],
                "sbg:revision": 26
            }
        },
        {
            "id": "#STAR_Genome_Generate",
            "inputs": [
                {
                    "id": "#STAR_Genome_Generate.reference_or_index",
                    "source": [
                        "#reference_or_index"
                    ]
                },
                {
                    "id": "#STAR_Genome_Generate.genomeChrBinNbits"
                },
                {
                    "id": "#STAR_Genome_Generate.genomeSAindexNbases"
                },
                {
                    "id": "#STAR_Genome_Generate.genomeSAsparseD"
                },
                {
                    "id": "#STAR_Genome_Generate.sjdbGTFfile",
                    "source": [
                        "#sjdbGTFfile"
                    ]
                },
                {
                    "id": "#STAR_Genome_Generate.sjdbGTFfeatureExon"
                },
                {
                    "id": "#STAR_Genome_Generate.sjdbGTFtagExonParentTranscript"
                },
                {
                    "id": "#STAR_Genome_Generate.sjdbGTFtagExonParentGene"
                },
                {
                    "id": "#STAR_Genome_Generate.sjdbOverhang"
                },
                {
                    "id": "#STAR_Genome_Generate.sjdbScore"
                },
                {
                    "id": "#STAR_Genome_Generate.sjdbGTFchrPrefix"
                }
            ],
            "sbg:x": 383.17416104403407,
            "sbg:y": 445.59082031249994,
            "outputs": [
                {
                    "id": "#STAR_Genome_Generate.genome"
                }
            ],
            "run": {
                "sbg:image_url": null,
                "class": "CommandLineTool",
                "sbg:project": "bix-demo/star-2-4-2a-demo",
                "successCodes": [],
                "sbg:job": {
                    "inputs": {
                        "sjdbGTFtagExonParentGene": "sjdbGTFtagExonParentGene",
                        "genomeChrBinNbits": "genomeChrBinNbits",
                        "sjdbGTFtagExonParentTranscript": "sjdbGTFtagExonParentTranscript",
                        "sjdbGTFchrPrefix": "sjdbGTFchrPrefix",
                        "sjdbScore": 0,
                        "genomeSAindexNbases": 0,
                        "genomeSAsparseD": 0,
                        "sjdbGTFfile": [
                            {
                                "class": "File",
                                "size": 0,
                                "secondaryFiles": [],
                                "path": "/sbgenomics/test-data/chr20.gtf"
                            }
                        ],
                        "sjdbGTFfeatureExon": "sjdbGTFfeatureExon",
                        "reference_or_index": {
                            "class": "File",
                            "size": 0,
                            "secondaryFiles": [],
                            "path": "/sbgenomics/test-data/chr20.fa"
                        },
                        "sjdbOverhang": 0
                    },
                    "allocatedResources": {
                        "cpu": 32,
                        "mem": 60000
                    }
                },
                "hints": [
                    {
                        "class": "DockerRequirement",
                        "dockerPull": "images.sbgenomics.com/ana_d/star:2.4.2a",
                        "dockerImageId": "a4b0ad2c3cae"
                    },
                    {
                        "class": "sbg:CPURequirement",
                        "value": 32
                    },
                    {
                        "class": "sbg:MemRequirement",
                        "value": 60000
                    }
                ],
                "sbg:cmdPreview": "mkdir genomeDir && /opt/STAR --runMode genomeGenerate --genomeDir ./genomeDir --runThreadN 32 --genomeFastaFiles /sbgenomics/test-data/chr20.fa  --sjdbGTFfile /sbgenomics/test-data/chr20.gtf  && tar -vcf chr20_chr20_star-2.4.2a-index-archive.tar ./genomeDir",
                "id": "https://api.sbgenomics.com/v2/apps/bix-demo/star-2-4-2a-demo/star-genome-generate/20/raw/",
                "inputs": [
                    {
                        "id": "#reference_or_index",
                        "label": "Reference/Index files",
                        "inputBinding": {
                            "prefix": "--genomeFastaFiles",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Basic",
                        "description": "Reference sequence to which to align the reads, or a TAR bundle containg already generated indices.",
                        "sbg:fileTypes": "FASTA, FA, FNA, TAR",
                        "type": [
                            "File"
                        ],
                        "sbg:stageInput": "link"
                    },
                    {
                        "id": "#genomeChrBinNbits",
                        "label": "Bins size",
                        "inputBinding": {
                            "prefix": "--genomeChrBinNbits",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Genome generation parameters",
                        "description": "Set log2(chrBin), where chrBin is the size (bits) of the bins for genome storage: each chromosome will occupy an integer number of bins. If you are using a genome with a large (>5,000) number of chrosomes/scaffolds, you may need to reduce this number to reduce RAM consumption. The following scaling is recomended: genomeChrBinNbits = min(18, log2(GenomeLength/NumberOfReferences)). For example, for 3 gigaBase genome with 100,000 chromosomes/scaffolds, this is equal to 15.",
                        "sbg:toolDefaultValue": "18",
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "id": "#genomeSAindexNbases",
                        "label": "Pre-indexing string length",
                        "inputBinding": {
                            "prefix": "--genomeSAindexNbases",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Genome generation parameters",
                        "description": "Length (bases) of the SA pre-indexing string. Typically between 10 and 15. Longer strings will use much more memory, but allow faster searches. For small genomes, this number needs to be scaled down, with a typical value of min(14, log2(GenomeLength)/2 - 1). For example, for 1 megaBase genome, this is equal to 9, for 100 kiloBase genome, this is equal to 7.",
                        "sbg:toolDefaultValue": "14",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#genomeSAsparseD",
                        "label": "Suffux array sparsity",
                        "inputBinding": {
                            "prefix": "--genomeSAsparseD",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Genome generation parameters",
                        "description": "Distance between indices: use bigger numbers to decrease needed RAM at the cost of mapping speed reduction (int>0).",
                        "sbg:toolDefaultValue": "1",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#sjdbGTFfile",
                        "label": "Splice junction file",
                        "sbg:category": "Basic",
                        "description": "Gene model annotations and/or known transcripts. If you are providing a GFF3 file and wish to use STAR results for further downstream analysis, a good idea would be to set the \"Exons' parents name\" (id: sjdbGTFtagExonParentTranscript) option to \"Parent\".",
                        "sbg:fileTypes": "GTF, GFF, GFF2, GFF3, TXT",
                        "type": [
                            "null",
                            {
                                "items": "File",
                                "type": "array",
                                "name": "sjdbGTFfile"
                            }
                        ],
                        "sbg:stageInput": "link"
                    },
                    {
                        "id": "#sjdbGTFfeatureExon",
                        "label": "Set exons feature",
                        "inputBinding": {
                            "prefix": "--sjdbGTFfeatureExon",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Splice junctions db parameters",
                        "description": "Feature type in GTF file to be used as exons for building transcripts.",
                        "sbg:toolDefaultValue": "exon",
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "id": "#sjdbGTFtagExonParentTranscript",
                        "label": "Exons' parents name",
                        "inputBinding": {
                            "prefix": "--sjdbGTFtagExonParentTranscript",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Splice junctions db parameters",
                        "description": "Tag name to be used as exons transcript-parents.",
                        "sbg:toolDefaultValue": "transcript_id",
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "id": "#sjdbGTFtagExonParentGene",
                        "label": "Gene name",
                        "inputBinding": {
                            "prefix": "--sjdbGTFtagExonParentGene",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Splice junctions db parameters",
                        "description": "Tag name to be used as exons gene-parents.",
                        "sbg:toolDefaultValue": "gene_id",
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "id": "#sjdbOverhang",
                        "label": "\"Overhang\" length",
                        "inputBinding": {
                            "prefix": "--sjdbOverhang",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Splice junctions db parameters",
                        "description": "Length of the donor/acceptor sequence on each side of the junctions, ideally = (mate_length - 1) (int >= 0), if int = 0, splice junction database is not used.",
                        "sbg:toolDefaultValue": "100",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#sjdbScore",
                        "label": "Extra alignment score",
                        "inputBinding": {
                            "prefix": "--sjdbScore",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Splice junctions db parameters",
                        "description": "Extra alignment score for alignments that cross database junctions.",
                        "sbg:toolDefaultValue": "2",
                        "type": [
                            "null",
                            "int"
                        ]
                    },
                    {
                        "id": "#sjdbGTFchrPrefix",
                        "label": "Chromosome names",
                        "inputBinding": {
                            "prefix": "--sjdbGTFchrPrefix",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Splice junctions db parameters",
                        "description": "Prefix for chromosome names in a GTF file (e.g. 'chr' for using ENSMEBL annotations with UCSC geneomes).",
                        "sbg:toolDefaultValue": "-",
                        "type": [
                            "null",
                            "string"
                        ]
                    }
                ],
                "sbg:latestRevision": 20,
                "sbg:license": "GNU General Public License v3.0 only",
                "description": "STAR Genome Generate is a tool that generates genome index files. One set of files should be generated per each genome/annotation combination. Once produced, these files could be used as long as genome/annotation combination stays the same. Also, STAR Genome Generate which produced these files and STAR aligner using them must be the same toolkit version.\n\n###Common issues###\n1. If the indexes for a desired fasta/gtf pair have already been generated, make sure to supply the resulting TAR bundle to the tool input if you are using this tool in a workflow in order to skip unnecessary indexing and speed up the whole workflow process.\n2. If you are providing a GFF3 file and wish to use STAR results for further downstream analysis, a good idea would be to set the \"Exons' parents name\" (id: sjdbGTFtagExonParentTranscript) option to \"Parent\".",
                "sbg:validationErrors": [],
                "sbg:modifiedBy": "uros_sipetic",
                "requirements": [
                    {
                        "requirements": [
                            {
                                "class": "DockerRequirement",
                                "dockerPull": "rabix/js-engine"
                            }
                        ],
                        "id": "#cwl-js-engine",
                        "class": "ExpressionEngineRequirement"
                    }
                ],
                "baseCommand": [
                    {
                        "class": "Expression",
                        "script": "{\n  var x = $job.inputs.reference_or_index.path.split('/').pop()\n  var y = x.split('.').pop()\n  var z = $job.allocatedResources.cpu\n  if (y == 'fa' || y == 'fasta' || y == 'FA' || y == \"FASTA\") {\n    return \"mkdir genomeDir && /opt/STAR --runMode genomeGenerate --genomeDir ./genomeDir --runThreadN \" + z\n  } else if (y == 'tar' || y == 'TAR') {\n    return \"echo 'Tar bundle provided, skipping indexing.' \"\n  }\n}\n",
                        "engine": "#cwl-js-engine"
                    }
                ],
                "sbg:contributors": [
                    "bix-demo",
                    "uros_sipetic"
                ],
                "sbg:createdOn": 1450911469,
                "arguments": [
                    {
                        "separate": true,
                        "position": 99,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\n  var tmp1 = [].concat($job.inputs.reference_or_index)[0].path.split('/').pop()\n  if ($job.inputs.sjdbGTFfile) {\n    var tmp2 = [].concat($job.inputs.sjdbGTFfile)[0].path.split('/').pop()\n  } else {\n    var tmp2 = \"\"\n  }\n  \n  var str1 = tmp1.split('.')\n  var x1 = \"\"\n  for (i=0; i<str1.length-1; i++) {\n    if (i<str1.length-2) { \n    x1 = x1 + str1[i] + \".\"\n    }\n    else {\n      x1 = x1 + str1[i]\n    }\n  }\n  \n  var str2 = tmp2.split('.')\n  var x2 = \"\"\n  for (i=0; i<str2.length-1; i++) {\n    if (i<str2.length-2) { \n    x2 = x2 + str2[i] + \".\"\n    }\n    else {\n      x2 = x2 + str2[i] + \"_\"\n    }\n  }\n  var tmp3 = $job.inputs.reference_or_index.path.split('/').pop()\n  var tmp4 = tmp3.split('.').pop()\n  if (tmp4 == 'tar' || tmp4 == 'TAR') {\n    return \"\"\n  } else {\n    return \"&& tar -vcf \" + x1 + \"_\" + x2 + \"star-2.4.2a-index-archive.tar ./genomeDir \"\n  }\n}",
                            "engine": "#cwl-js-engine"
                        }
                    },
                    {
                        "separate": true,
                        "valueFrom": {
                            "class": "Expression",
                            "script": "{\t\n  var sjFormat = \"False\"\n  var gtfgffFormat = \"False\"\n  var list = $job.inputs.sjdbGTFfile\n  var paths_list = []\n  var joined_paths = \"\"\n  \n  if (list) {\n    list.forEach(function(f){return paths_list.push(f.path)})\n    joined_paths = paths_list.join(\" \")\n\n\n    paths_list.forEach(function(f){\n      ext = f.replace(/^.*\\./, '')\n      ext2 = ext.toLowerCase()\n      if (ext2 == \"gff\" || ext2 == \"gtf\" || ext2 == \"gff2\" || ext2 == \"gff3\" || ext2 == \"txt\") {\n        gtfgffFormat = \"True\"\n        return gtfgffFormat\n      }\n      if (ext == \"txt\") {\n        sjFormat = \"True\"\n        return sjFormat\n      }\n    })\n\n    if ($job.inputs.sjdbGTFfile && $job.inputs.sjdbInsertSave != \"None\") {\n      if (sjFormat == \"True\") {\n        return \"--sjdbFileChrStartEnd \".concat(joined_paths)\n      }\n      else if (gtfgffFormat == \"True\") {\n        return \"--sjdbGTFfile \".concat(joined_paths)\n      }\n    }\n  }\n}",
                            "engine": "#cwl-js-engine"
                        }
                    }
                ],
                "sbg:toolAuthor": "Alexander Dobin/CSHL",
                "sbg:createdBy": "bix-demo",
                "sbg:categories": [
                    "Alignment"
                ],
                "outputs": [
                    {
                        "id": "#genome",
                        "label": "Genome Files",
                        "description": "Genome files comprise binary genome sequence, suffix arrays, text chromosome names/lengths, splice junctions coordinates, and transcripts/genes information.",
                        "sbg:fileTypes": "TAR",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#reference_or_index",
                            "glob": "*.tar",
                            "sbg:metadata": {
                                "reference_genome": {
                                    "class": "Expression",
                                    "script": "{\n  var str1 = [].concat($job.inputs.reference_or_index)[0].path.split('/')\n  var str2 = str1[str1.length-1]\n  var str3 = str2.split('.')\n  var str4 = \"\"\n  for (i=0; i<str3.length-1; i++) {\n    if (i<str3.length-2) { \n    str4 = str4 + str3[i] + \".\"\n    }\n    else {\n      str4 = str4 + str3[i]\n    }\n  }\n  var tmp = str3.pop()\n  if (tmp.toLowerCase()=='fa' || tmp.toLowerCase()=='fasta') {\n    return str4\n  } else if (tmp.toLowerCase()=='tar') {\n    return [].concat($job.inputs.reference_or_index)[0].metadata.reference_genome\n  }\n}\n",
                                    "engine": "#cwl-js-engine"
                                }
                            }
                        }
                    }
                ],
                "stdout": "",
                "stdin": "",
                "label": "STAR Genome Generate",
                "sbg:revisionNotes": "Update GTF expression to properly accept files with uppercase extensions.",
                "sbg:id": "admin/sbg-public-data/star-genome-generate/20",
                "sbg:toolkit": "STAR",
                "sbg:sbgMaintained": false,
                "sbg:revisionsInfo": [
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1450911469,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revision": 0
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1450911470,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revision": 1
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1470664221,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 2
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1470664283,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 3
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1470664360,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 4
                    },
                    {
                        "sbg:revisionNotes": "Redesigned the indexer",
                        "sbg:modifiedOn": 1471007754,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 5
                    },
                    {
                        "sbg:revisionNotes": "Redesigned the indexer.",
                        "sbg:modifiedOn": 1471008158,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 6
                    },
                    {
                        "sbg:revisionNotes": "Redesigned the indexer",
                        "sbg:modifiedOn": 1471010224,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 7
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1471013061,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 8
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1471277621,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 9
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1471435382,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 10
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1471435812,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 11
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1471439825,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 12
                    },
                    {
                        "sbg:revisionNotes": "Updates description.",
                        "sbg:modifiedOn": 1471871809,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 13
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1472136360,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 14
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1472223236,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 15
                    },
                    {
                        "sbg:revisionNotes": "Changed number of cores from 15 to 32.",
                        "sbg:modifiedOn": 1473070729,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 16
                    },
                    {
                        "sbg:revisionNotes": null,
                        "sbg:modifiedOn": 1475755058,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 17
                    },
                    {
                        "sbg:revisionNotes": "Add info about GFF3 file use.",
                        "sbg:modifiedOn": 1477489169,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 18
                    },
                    {
                        "sbg:revisionNotes": "Fixed an encoding bug that could manifest in downstream analysis under Windows platform.",
                        "sbg:modifiedOn": 1479131285,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 19
                    },
                    {
                        "sbg:revisionNotes": "Update GTF expression to properly accept files with uppercase extensions.",
                        "sbg:modifiedOn": 1486635990,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 20
                    }
                ],
                "sbg:modifiedOn": 1486635990,
                "cwlVersion": "sbg:draft-2",
                "sbg:toolkitVersion": "2.4.2a",
                "temporaryFailCodes": [],
                "sbg:links": [
                    {
                        "id": "https://github.com/alexdobin/STAR",
                        "label": "Homepage"
                    },
                    {
                        "id": "https://github.com/alexdobin/STAR/releases",
                        "label": "Releases"
                    },
                    {
                        "id": "https://github.com/alexdobin/STAR/blob/master/doc/STARmanual.pdf",
                        "label": "Manual"
                    },
                    {
                        "id": "https://groups.google.com/forum/#!forum/rna-star",
                        "label": "Support"
                    },
                    {
                        "id": "http://www.ncbi.nlm.nih.gov/pubmed/23104886",
                        "label": "Publication"
                    }
                ],
                "sbg:revision": 20
            }
        }
    ],
    "outputs": [
        {
            "id": "#unmapped_reads",
            "label": "unmapped_reads",
            "source": [
                "#STAR.unmapped_reads"
            ],
            "sbg:x": 766.2497863074045,
            "sbg:y": 159.58330912391222,
            "sbg:fileTypes": "FASTQ",
            "type": [
                "null",
                {
                    "items": "File",
                    "type": "array"
                }
            ],
            "sbg:includeInPorts": true,
            "required": false
        },
        {
            "id": "#transcriptome_aligned_reads",
            "label": "transcriptome_aligned_reads",
            "source": [
                "#STAR.transcriptome_aligned_reads"
            ],
            "sbg:x": 1118.9998003244302,
            "sbg:y": 86.58332158128358,
            "sbg:fileTypes": "BAM",
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "required": false
        },
        {
            "id": "#splice_junctions",
            "label": "splice_junctions",
            "source": [
                "#STAR.splice_junctions"
            ],
            "sbg:x": 1282.3330177465928,
            "sbg:y": 167.49997603893155,
            "sbg:fileTypes": "TAB",
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "required": false
        },
        {
            "id": "#reads_per_gene",
            "label": "reads_per_gene",
            "source": [
                "#STAR.reads_per_gene"
            ],
            "sbg:x": 1394.416355699286,
            "sbg:y": 245.74996398885858,
            "sbg:fileTypes": "TAB",
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "required": false
        },
        {
            "id": "#log_files",
            "label": "log_files",
            "source": [
                "#STAR.log_files"
            ],
            "sbg:x": 1505.0830268959055,
            "sbg:y": 322.9999517997081,
            "sbg:fileTypes": "OUT",
            "type": [
                "null",
                {
                    "items": "File",
                    "type": "array"
                }
            ],
            "sbg:includeInPorts": true,
            "required": false
        },
        {
            "id": "#chimeric_junctions",
            "label": "chimeric_junctions",
            "source": [
                "#STAR.chimeric_junctions"
            ],
            "sbg:x": 1278.7498061756194,
            "sbg:y": 446.7499567170913,
            "sbg:fileTypes": "JUNCTION",
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "required": false
        },
        {
            "id": "#intermediate_genome",
            "label": "intermediate_genome",
            "source": [
                "#STAR.intermediate_genome"
            ],
            "sbg:x": 1408.9164783457816,
            "sbg:y": 386.0832876066342,
            "sbg:fileTypes": "TAR",
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "required": false
        },
        {
            "id": "#chimeric_alignments",
            "label": "chimeric_alignments",
            "source": [
                "#STAR.chimeric_alignments"
            ],
            "sbg:x": 1147.5831347604494,
            "sbg:y": 503.2499285439613,
            "sbg:fileTypes": "SAM",
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "required": false
        },
        {
            "id": "#sorted_bam",
            "label": "sorted_bam",
            "source": [
                "#Picard_SortSam.sorted_bam"
            ],
            "sbg:x": 934.2498227655963,
            "sbg:y": 557.2498435974195,
            "sbg:fileTypes": "BAM, SAM",
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "required": false
        }
    ],
    "sbg:links": [
        {
            "id": "https://github.com/alexdobin/STAR",
            "label": "Homepage"
        },
        {
            "id": "https://github.com/alexdobin/STAR/releases",
            "label": "Releases"
        },
        {
            "id": "https://github.com/alexdobin/STAR/blob/master/doc/STARmanual.pdf",
            "label": "Manual"
        },
        {
            "id": "https://groups.google.com/forum/#!forum/rna-star",
            "label": "Support"
        },
        {
            "id": "http://www.ncbi.nlm.nih.gov/pubmed/23104886",
            "label": "Publication"
        }
    ],
    "sbg:revision": 18
}
