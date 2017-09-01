{
    "sbg:toolkit": "STAR",
    "outputs": [
        {
            "id": "#unmapped_reads",
            "sbg:x": 766.2497863074045,
            "required": false,
            "type": [
                "null",
                {
                    "items": "File",
                    "type": "array"
                }
            ],
            "source": [
                "#STAR_1.unmapped_reads"
            ],
            "sbg:fileTypes": "FASTQ",
            "label": "unmapped_reads",
            "sbg:includeInPorts": true,
            "sbg:y": 159.58330912391222
        },
        {
            "id": "#transcriptome_aligned_reads",
            "sbg:x": 1118.9998003244302,
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#STAR_1.transcriptome_aligned_reads"
            ],
            "sbg:fileTypes": "BAM",
            "label": "transcriptome_aligned_reads",
            "sbg:includeInPorts": true,
            "sbg:y": 86.58332158128358
        },
        {
            "id": "#splice_junctions",
            "sbg:x": 1282.3330177465928,
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#STAR_1.splice_junctions"
            ],
            "sbg:fileTypes": "TAB",
            "label": "splice_junctions",
            "sbg:includeInPorts": true,
            "sbg:y": 167.49997603893155
        },
        {
            "id": "#reads_per_gene",
            "sbg:x": 1394.416355699286,
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#STAR_1.reads_per_gene"
            ],
            "sbg:fileTypes": "TAB",
            "label": "reads_per_gene",
            "sbg:includeInPorts": true,
            "sbg:y": 245.74996398885858
        },
        {
            "id": "#log_files",
            "sbg:x": 1505.0830268959055,
            "required": false,
            "type": [
                "null",
                {
                    "items": "File",
                    "type": "array"
                }
            ],
            "source": [
                "#STAR_1.log_files"
            ],
            "sbg:fileTypes": "OUT",
            "label": "log_files",
            "sbg:includeInPorts": true,
            "sbg:y": 322.9999517997081
        },
        {
            "id": "#chimeric_junctions",
            "sbg:x": 1278.7498061756194,
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#STAR_1.chimeric_junctions"
            ],
            "sbg:fileTypes": "JUNCTION",
            "label": "chimeric_junctions",
            "sbg:includeInPorts": true,
            "sbg:y": 446.7499567170913
        },
        {
            "id": "#intermediate_genome",
            "sbg:x": 1408.9164783457816,
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#STAR_1.intermediate_genome"
            ],
            "sbg:fileTypes": "TAR",
            "label": "intermediate_genome",
            "sbg:includeInPorts": true,
            "sbg:y": 386.0832876066342
        },
        {
            "id": "#chimeric_alignments",
            "sbg:x": 1147.5831347604494,
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#STAR_1.chimeric_alignments"
            ],
            "sbg:fileTypes": "SAM",
            "label": "chimeric_alignments",
            "sbg:includeInPorts": true,
            "sbg:y": 503.2499285439613
        },
        {
            "id": "#sorted_bam",
            "sbg:x": 934.2498227655963,
            "required": false,
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#Picard_SortSam.sorted_bam"
            ],
            "sbg:fileTypes": "BAM, SAM",
            "label": "sorted_bam",
            "sbg:includeInPorts": true,
            "sbg:y": 557.2498435974195
        }
    ],
    "sbg:id": "bixqa/qa-load-2017-07-31-18/rna-seq-alignment-star-2-5-1b/2",
    "sbg:revision": 2,
    "sbg:contributors": [
        "bixqa"
    ],
    "sbg:project": "bixqa/qa-load-2017-07-31-18",
    "sbg:toolkitVersion": "2.5.1b",
    "sbg:modifiedBy": "bixqa",
    "sbg:toolAuthor": "Seven Bridges Genomics",
    "sbg:canvas_y": -18,
    "sbg:categories": [
        "Alignment",
        "RNA"
    ],
    "sbg:latestRevision": 2,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:update": "admin/sbg-public-data/rna-seq-alignment-star-2-5-1b/3",
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1501518662,
            "sbg:revisionNotes": "Copy of uros_sipetic/rna-seq-alignment-star-2-5-1b-demo/rna-seq-alignment-star/3",
            "sbg:modifiedBy": "bixqa",
            "sbg:revision": 0
        },
        {
            "sbg:modifiedOn": 1501518662,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "bixqa",
            "sbg:revision": 1
        },
        {
            "sbg:modifiedOn": 1501518662,
            "sbg:revisionNotes": "Update STAR Genome Generate.",
            "sbg:modifiedBy": "bixqa",
            "sbg:revision": 2
        }
    ],
    "sbg:updateRevisionNotes": "Update input read files supported extensions to included gzipped files.",
    "id": "https://api.sbgenomics.com/v2/apps/bixqa/qa-load-2017-07-31-18/rna-seq-alignment-star-2-5-1b/2/raw/",
    "sbg:modifiedOn": 1501518662,
    "inputs": [
        {
            "id": "#fastq",
            "sbg:x": 149.24997965494788,
            "type": [
                {
                    "items": "File",
                    "type": "array"
                }
            ],
            "sbg:fileTypes": "FASTQ,FQ",
            "label": "fastq",
            "sbg:includeInPorts": true,
            "sbg:y": 323.74994913736975
        },
        {
            "id": "#reference_or_index",
            "sbg:x": 154.16666766890762,
            "sbg:suggestedValue": {
                "name": "human_g1k_v37_decoy.phiX174_Homo_sapiens.GRCh37.75_star-2.5.1b.tar",
                "path": "57bd5d15507c17b56d99b0d5",
                "class": "File"
            },
            "type": [
                "File"
            ],
            "sbg:fileTypes": "FASTA, FA, FNA, TAR",
            "label": "reference_or_index",
            "sbg:y": 465.833514270954
        },
        {
            "id": "#sjdbGTFfile",
            "sbg:x": 143.33333333333331,
            "sbg:suggestedValue": [
                {
                    "name": "Homo_sapiens.GRCh37.75.gtf",
                    "path": "5772b6c4507c1752674486cd",
                    "class": "File"
                }
            ],
            "type": [
                "null",
                {
                    "name": "sjdbGTFfile",
                    "type": "array",
                    "items": "File"
                }
            ],
            "sbg:fileTypes": "GTF, GFF, GFF2, GFF3, TXT",
            "label": "sjdbGTFfile",
            "sbg:y": 189.16666666666663
        }
    ],
    "sbg:createdOn": 1501518662,
    "class": "Workflow",
    "description": "This pipeline performs the first step of RNA-Seq analysis - alignment to a reference genome and transcriptome. STAR, an ultrafast RNA-seq aligner is used in this pipeline. STAR is capable of mapping full length RNA sequences and detecting de novo canonical junctions, non-canonical splices, and chimeric (fusion) transcripts. It is optimized for mammalian sequence reads, but fine tuning of its parameters enables customization to satisfy unique needs.\n###Required inputs\nThis workflow has two **required** inputs:\n\n1. Input fastq reads (ID: *fastq*) - STAR accepts one fastq file per sample for single-end data, or two files per sample for paired-end data. **NOTE**:  For paired-end reads it is crucial to set the metadata 'paired-end' field as 1 for one input file, as 2 for the other input file.\n\n2. Reference/Index files (ID: *reference_or_index*) - reference sequence to which to align the reads, or a TAR bundle of already generated index files.\n###Optional input:\nSplice junction annotations (ID: *sjdbGTFfile*) - this input can optionally be collected from splice junction databases. \n###Outputs\nThis workflow generates **nine** output files:\n\n1. Unmapped reads (ID: *unmapped_reads*) - unmapped reads are reported in FASTQ format.\n\n2. Transcriptome alignments (ID: *transcriptome_aligned_reads*) - alignments translated into transcript coordinates.  \n\n3. Splice junctions (Outputs ID: *splice_junctions*) - high confidence collapsed splice junctions in tab-delimited format. Only junctions supported by uniquely mapping reads are reported.\n\n4. Reads per gene (ID: *reads_per_gene*) - file with number of reads per gene. A read is counted if it overlaps (1nt or more) one and only one gene.\n\n5. Log files (ID: *log_files*) - a set of log files produced during alignment\n\n6. Intermediate genome files (ID: *intermediate_genome*) - archive with genome files produced when annotations are included on the fly (in the mapping step).\n\n7. Chimeric junctions (ID: *chimeric_junctions*) \n\n8. Chimeric alignments (ID: *chimeric_alignments*) \n\n9. Sorted bam file (ID: *sorted_bam*) - output aligned sequence, bam sorted\n\nSTAR can detect chimeric transcripts, but parameter \"Min segment length\" (ID: *chimSegmentMin*) in \"Chimeric Alignments\" category must be adjusted to a desired minimum chimeric segment length.\n\nIf you want to use STAR results as an input to an RNA-seq differential expression analysis(using the cufflinks app), please also set the parameter \"utSAMstrandField\" to \"intronMotif\". \n\n###Common issues###\n1. For paired-end alignments it is crucial to set the metadata 'paired-end' field as 1 and 2 respectively for the two input fastq files, otherwise the task will fail.\n\n2. If you already have a TAR bundle of generated index files (obtained from STAR Genome Generate), you can provide the TAR bundle instead of a FASTA reference file to skip the indexing and reduce the overall workflow execution time.",
    "sbg:createdBy": "bixqa",
    "sbg:updateModifiedBy": "admin",
    "label": "RNA-seq Alignment - STAR 2.5.1b",
    "sbg:image_url": "https://brood.sbgenomics.com/static/bixqa/qa-load-2017-07-31-18/rna-seq-alignment-star-2-5-1b/2.png",
    "sbg:projectName": "qa-load-2017-07-31-18",
    "sbg:sbgMaintained": false,
    "sbg:canvas_x": -75,
    "steps": [
        {
            "id": "#SBG_FASTQ_Quality_Detector",
            "sbg:x": 375.33330281575513,
            "inputs": [
                {
                    "id": "#SBG_FASTQ_Quality_Detector.fastq",
                    "source": [
                        "#fastq"
                    ]
                }
            ],
            "scatter": "#SBG_FASTQ_Quality_Detector.fastq",
            "sbg:y": 323.58332316080725,
            "run": {
                "sbg:revision": 8,
                "sbg:id": "admin/sbg-public-data/sbg-fastq-quality-detector/12",
                "arguments": [],
                "sbg:contributors": [
                    "vladimirk",
                    "milan.domazet.sudo",
                    "bix-demo"
                ],
                "stdout": "",
                "sbg:project": "bix-demo/sbgtools-demo",
                "sbg:modifiedBy": "milan.domazet.sudo",
                "sbg:toolAuthor": "Seven Bridges Genomics",
                "sbg:latestRevision": 8,
                "x": 375.33330281575513,
                "sbg:job": {
                    "inputs": {
                        "fastq": {
                            "secondaryFiles": [],
                            "path": "/path/to/fastq.ext",
                            "size": 0,
                            "class": "File"
                        }
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1000
                    }
                },
                "temporaryFailCodes": [],
                "sbg:createdOn": 1450911312,
                "sbg:cmdPreview": "python sbg_fastq_quality_scale_detector.py --fastq /path/to/fastq.ext",
                "successCodes": [],
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1450911312,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revision": 0
                    },
                    {
                        "sbg:modifiedOn": 1450911313,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revision": 1
                    },
                    {
                        "sbg:modifiedOn": 1450911313,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revision": 2
                    },
                    {
                        "sbg:modifiedOn": 1450911314,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revision": 3
                    },
                    {
                        "sbg:modifiedOn": 1472045214,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "milan.domazet.sudo",
                        "sbg:revision": 4
                    },
                    {
                        "sbg:modifiedOn": 1473774177,
                        "sbg:revisionNotes": "Changed input type to FASTQ and FQ.",
                        "sbg:modifiedBy": "milan.domazet.sudo",
                        "sbg:revision": 5
                    },
                    {
                        "sbg:modifiedOn": 1473775728,
                        "sbg:revisionNotes": "Added Category.",
                        "sbg:modifiedBy": "vladimirk",
                        "sbg:revision": 6
                    },
                    {
                        "sbg:modifiedOn": 1475083591,
                        "sbg:revisionNotes": "Fixed Sanger range and moved script to crate files.",
                        "sbg:modifiedBy": "milan.domazet.sudo",
                        "sbg:revision": 7
                    },
                    {
                        "sbg:modifiedOn": 1475246089,
                        "sbg:revisionNotes": "Reverted Sanger scale to (33,126), until we find a better range.",
                        "sbg:modifiedBy": "milan.domazet.sudo",
                        "sbg:revision": 8
                    }
                ],
                "cwlVersion": "sbg:draft-2",
                "id": "bix-demo/sbgtools-demo/sbg-fastq-quality-detector/8",
                "sbg:sbgMaintained": false,
                "inputs": [
                    {
                        "id": "#fastq",
                        "description": "FASTQ file.",
                        "type": [
                            "File"
                        ],
                        "inputBinding": {
                            "prefix": "--fastq",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "sbg:category": "Input",
                        "label": "Fastq",
                        "required": true,
                        "sbg:fileTypes": "FASTQ,FQ"
                    }
                ],
                "class": "CommandLineTool",
                "description": "FASTQ Quality Scale Detector detects which quality encoding scheme was used in your reads and automatically enters the proper value in the \"Quality Scale\" metadata field.",
                "sbg:createdBy": "bix-demo",
                "baseCommand": [
                    "python",
                    "sbg_fastq_quality_scale_detector.py"
                ],
                "label": "SBG FASTQ Quality Detector",
                "sbg:image_url": null,
                "outputs": [
                    {
                        "id": "#result",
                        "description": "Source FASTQ file with updated metadata.",
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#fastq",
                            "glob": "*.fastq"
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Result",
                        "sbg:fileTypes": "FASTQ"
                    }
                ],
                "y": 323.58332316080725,
                "sbg:categories": [
                    "FASTQ-Processing"
                ],
                "requirements": [
                    {
                        "fileDef": [
                            {
                                "filename": "sbg_fastq_quality_scale_detector.py",
                                "fileContent": "\"\"\"\nUsage:\n    sbg_fastq_sniff.py --fastq FILE\n\nOptions:\n    -h, --help          Show this message.\n\n    -f, --fastq FILE    Input FASTQ file.\n\n\"\"\"\n\nfrom docopt import docopt\nimport os\nimport gzip\nimport itertools as it\nimport shutil\n\nfrom sdkcwl import *\n\nargs = docopt(__doc__, version='1.0')\n\n\nclass myGzipFile(gzip.GzipFile):\n    def __enter__(self, *args, **kwargs):\n        if self.fileobj is None:\n            raise Exception(\"I/O operation on closed GzipFile object\")\n        return self\n\n    def __exit__(self, *args, **kwargs):\n        self.close()\n\n\ndef extremes(a, b):\n    if a is False:\n        return b, b\n    return min(a[0], b), max(a[1], b)\n\n\ndef walk_qualities(f, sample_size=1000):\n    for i in xrange(sample_size * 4):\n        try:\n            line = f.next()\n        except StopIteration:\n            return\n        if i % 4 == 3:\n            yield line.rstrip(\"\\n\\r\")\n\n\ndef sniff(path):\n    with open(path, 'rb') as f:\n        gz = f.read(2) == '\\x1f\\x8b'\n    opn = myGzipFile if gz else open\n    with opn(path) as f:\n        return get_scale(*map(ord, reduce(extremes, it.chain(*walk_qualities(f)), False)))\n\n\ndef get_scale(ord_min, ord_max):\n    options = {\n        'illumina13': (64, 105),\n        'illumina15': (66, 105),\n        'sanger': (33, 126),\n        'solexa': (59, 105),\n    }\n    fits = [(k, v) for k, v in options.iteritems() if v[0] <= ord_min and v[1] >= ord_max]\n    if not fits:\n        message = 'Quality scale for range (%s, %s) not found.' % (ord_min, ord_max)\n        raise Exception(message)\n        # Return narrowest range\n    return reduce(lambda a, b: a if a[1][1] - a[1][0] < b[1][1] - b[1][0] else b, fits)[0]\n\ncwl_input(args, '--fastq', 'fastq')\ncwl_output('result')\n\nfq = self.inputs.fastq\n\nquality_scale = sniff(fq)\n\noutput_file = fq[fq.rfind('/')+1:]\nshutil.copyfile(fq, output_file)\n\nself.outputs.result = output_file\nself.outputs.result.meta = fq.make_metadata(quality_scale=quality_scale)\n\ncwl_finish()"
                            },
                            {
                                "filename": "sdkcwl.py",
                                "fileContent": "import json\nimport os\n\ndef _get_meta(fpath, reload_job=False):\n    def get_files(o):\n        if isinstance(o, dict) and o.get('class') == 'File':\n            return [o]\n        if isinstance(o, dict):\n            return sum(map(get_files, o.itervalues()), [])\n        if isinstance(o, list):\n            return sum(map(get_files, o), [])\n        return []\n\n    files = getattr(_get_meta, '_files', None)\n    if reload_job or files is None:\n        with open('job.json') as fp:\n            job = json.load(fp)\n        files = {f['path']: f for f in get_files(job['inputs'])}\n    return files[fpath].get('metadata', {})\n\n\nclass _DotDict(dict):\n    def _map(self, attr):\n        key_map = {\n            \"file_type\": \"file_extension\",\n            \"seq_tech\": \"platform\",\n            \"sample\": \"sample_id\",\n            \"library\": \"library_id\",\n            \"platform_unit\": \"platform_unit_id\",\n            \"chunk\": \"file_segment_number\",\n            \"qual_scale\": \"quality_scale\"\n        }\n        if attr in key_map:\n            attr = key_map[attr]\n        return attr\n\n    def __init__(self, *args, **kwargs):\n        super(_DotDict, self).__init__(*args, **kwargs)\n        for arg in args:\n            if isinstance(arg, dict) or isinstance(arg, _DotDict):\n                for k, v in arg.iteritems():\n                    nk = self._map(k)\n                    if k != nk and k in self:\n                        self.pop(k)\n                    self[nk] = v\n        if kwargs:\n            for k, v in kwargs.iteritems():\n                self[self._map(k)] = v\n\n    def __getattr__(self, attr):\n        return self.get(self._map(attr))\n\n    def __setattr__(self, key, value):\n        self.__setitem__(self._map(key), value)\n\n    def __setitem__(self, key, value):\n        super(_DotDict, self).__setitem__(self._map(key), value)\n        self.__dict__.update({self._map(key): value})\n\n    def __delattr__(self, item):\n        self.__delitem__(self._map(item))\n\n    def __delitem__(self, key):\n        super(_DotDict, self).__delitem__(self._map(key))\n        del self.__dict__[self._map(key)]\n\nclass _OldInput(str):\n\n    _meta = None\n\n    @property\n    def meta(self):\n        if self._meta is None:\n            self._meta = _DotDict(_get_meta(self))\n        return self._meta\n    \n    def make_metadata(self, **kwargs):\n        new_meta = _DotDict(self.meta)\n        if kwargs is not None:\n            for key, value in kwargs.iteritems():\n                new_meta[key] = value\n        return new_meta\n\n\nclass _OldOutputBucket(_DotDict):\n    \n    def __setitem__(self, key, value):\n        if isinstance(value, list):\n            super(_OldOutputBucket, self).__setitem__(key, _OldOutputList(value))\n        else:\n            super(_DotDict, self).__setitem__(key, _OldOutput(value))\n\nclass _OldOutput(str):\n\n    _meta = None\n\n    @property\n    def meta(self):\n        if self._meta is None:\n            self._meta = _DotDict()\n        return self._meta\n\n    @meta.setter\n    def meta(self, value):\n        self._meta = _DotDict(value)\n\n\nclass _OldOutputList(list):\n\n    def add_file(self, name):\n        new_file = _OldOutput(name)\n        self.append(new_file)\n        return new_file\ndef cwl_input(_args, _new, _old, list=False):\n    _new = _args[_new]\n    if isinstance(_new, str):\n        _new = [_new]\n    if list==False and len(_new) > 1:\n        raise Exception('Number of items provided to a non-list type input.')\n    if len(_new) == 1 and list == False:\n        self.inputs[_old] =  _OldInput(_new[0])\n    else:\n        self.inputs[_old] = map(_OldInput, _new)\n\ndef cwl_param(_args, _new, _old):\n    self.params[_old] = _args[_new]\n\ndef cwl_output(_old, list=False):\n    if list is False:\n        self.outputs[_old] = _OldOutput()\n    else:\n        self.outputs[_old] = _OldOutputList()\n\n\ndef cwl_finish():\n    if not self['outputs']:\n        return\n    if 'cwl_secondary' not in self:\n        self['cwl_secondary'] = {}\n    data = {}\n    for output in self['outputs']:\n        o = self['outputs'][output]\n        sf = self['cwl_secondary'].get(output, None)\n        if isinstance(o, _OldOutputList):\n            file_data = []\n            for f in o:\n                f_dict = {'name': os.path.split(f)[1], \\\n                          'class': 'File', \\\n                          'metadata': f.meta, \\\n                          'path': os.path.join(os.getcwd(), f)}\n                if sf:\n                    f_dict['secondaryFiles'] = [{'path': os.path.join(os.getcwd(), x), \"class\": \"File\"} for x in sf]\n                file_data.append(f_dict)\n        else:\n            file_data = {\n                'name': os.path.split(o)[1],\n                'class': 'File',\n                'metadata': o.meta,\n                'path': os.path.join(os.getcwd(), o)\n            }\n            if sf:\n                file_data['secondaryFiles'] = [{'path': os.path.join(os.getcwd(), x), \"class\": \"File\"} for x in sf]\n        data[output] = file_data\n    with open('cwl.output.json', 'w') as w:\n        json.dump(data, w)\n\ndef cwl_set_secondary(output, secondary_files):\n    if 'cwl_secondary' not in self:\n        self['cwl_secondary'] = {}\n    if not isinstance(secondary_files, list):\n        secondary_files = [secondary_files]\n    self['cwl_secondary'][output] = secondary_files\n\n################################################################################\n\nglobal self\nself = _DotDict(globals())\nif 'inputs' not in self:\n    self['inputs'] = _DotDict()\nif 'outputs' not in self:\n    self['outputs'] =  _OldOutputBucket()\nif 'params' not in self:\n    self['params'] = _DotDict()"
                            }
                        ],
                        "class": "CreateFileRequirement"
                    }
                ],
                "sbg:toolkit": "SBGTools",
                "sbg:revisionNotes": "Reverted Sanger scale to (33,126), until we find a better range.",
                "hints": [
                    {
                        "dockerImageId": "",
                        "class": "DockerRequirement",
                        "dockerPull": "images.sbgenomics.com/tziotas/sbg_fastq_quality_scale_detector:1.0"
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
                "sbg:modifiedOn": 1475246089,
                "stdin": "",
                "sbg:license": "Apache License 2.0",
                "sbg:validationErrors": []
            },
            "outputs": [
                {
                    "id": "#SBG_FASTQ_Quality_Detector.result"
                }
            ]
        },
        {
            "id": "#Picard_SortSam",
            "sbg:x": 773.083180715633,
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
                        "#STAR_1.aligned_reads"
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
            "outputs": [
                {
                    "id": "#Picard_SortSam.sorted_bam"
                }
            ],
            "run": {
                "sbg:revision": 3,
                "sbg:id": "admin/sbg-public-data/picard-sortsam-1-140/3",
                "arguments": [
                    {
                        "valueFrom": {
                            "engine": "#cwl-js-engine",
                            "script": "{\n  filename = $job.inputs.input_bam.path\n  ext = $job.inputs.output_type\n\nif (ext === \"BAM\")\n{\n    return filename.split('.').slice(0, -1).concat(\"sorted.bam\").join(\".\").replace(/^.*[\\\\\\/]/, '')\n    }\n\nelse if (ext === \"SAM\")\n{\n    return filename.split('.').slice(0, -1).concat(\"sorted.sam\").join('.').replace(/^.*[\\\\\\/]/, '')\n}\n\nelse \n{\n\treturn filename.split('.').slice(0, -1).concat(\"sorted.\"+filename.split('.').slice(-1)[0]).join(\".\").replace(/^.*[\\\\\\/]/, '')\n}\n}",
                            "class": "Expression"
                        },
                        "prefix": "OUTPUT=",
                        "separate": false,
                        "position": 0
                    },
                    {
                        "valueFrom": {
                            "engine": "#cwl-js-engine",
                            "script": "{\n  filename = $job.inputs.input_bam.path\n  \n  /* figuring out output file type */\n  ext = $job.inputs.output_type\n  if (ext === \"BAM\")\n  {\n    out_extension = \"BAM\"\n  }\n  else if (ext === \"SAM\")\n  {\n    out_extension = \"SAM\"\n  }\n  else \n  {\n\tout_extension = filename.split('.').slice(-1)[0].toUpperCase()\n  }  \n  \n  /* if exist moving .bai in bam.bai */\n  if ($job.inputs.create_index === 'True' && $job.inputs.sort_order === 'Coordinate' && out_extension == \"BAM\")\n  {\n    \n    old_name = filename.split('.').slice(0, -1).concat('sorted.bai').join('.').replace(/^.*[\\\\\\/]/, '')\n    new_name = filename.split('.').slice(0, -1).concat('sorted.bam.bai').join('.').replace(/^.*[\\\\\\/]/, '')\n    return \"; mv \" + \" \" + old_name + \" \" + new_name\n  }\n\n}",
                            "class": "Expression"
                        },
                        "separate": true,
                        "position": 1000
                    }
                ],
                "sbg:contributors": [
                    "bix-demo",
                    "mladenlSBG"
                ],
                "stdout": "",
                "sbg:project": "bix-demo/picard-1-140-demo",
                "sbg:toolkitVersion": "1.140",
                "sbg:modifiedOn": 1476869720,
                "sbg:toolAuthor": "Broad Institute",
                "sbg:latestRevision": 3,
                "x": 773.083180715633,
                "sbg:job": {
                    "inputs": {
                        "memory_per_job": 2048,
                        "sort_order": "Coordinate",
                        "create_index": null,
                        "input_bam": {
                            "path": "/root/dir/example.tested.bam"
                        },
                        "output_type": null
                    },
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 2048
                    }
                },
                "temporaryFailCodes": [],
                "sbg:createdOn": 1450911168,
                "sbg:cmdPreview": "java -Xmx2048M -jar /opt/picard-tools-1.140/picard.jar SortSam OUTPUT=example.tested.sorted.bam INPUT=/root/dir/example.tested.bam SORT_ORDER=coordinate",
                "successCodes": [],
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1450911168,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revision": 0
                    },
                    {
                        "sbg:modifiedOn": 1450911169,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revision": 1
                    },
                    {
                        "sbg:modifiedOn": 1450911170,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "bix-demo",
                        "sbg:revision": 2
                    },
                    {
                        "sbg:modifiedOn": 1476869720,
                        "sbg:revisionNotes": "Modified \"sort_order\" default value.",
                        "sbg:modifiedBy": "mladenlSBG",
                        "sbg:revision": 3
                    }
                ],
                "cwlVersion": "sbg:draft-2",
                "id": "bix-demo/picard-1-140-demo/picard-sortsam-1-140/3",
                "y": 470.91659385958945,
                "inputs": [
                    {
                        "id": "#validation_stringency",
                        "description": "Validation stringency for all SAM files read by this program. Setting stringency to SILENT can improve performance when processing a BAM file in which variable-length data (read, qualities, tags) do not otherwise need to be decoded. This option can be set to 'null' to clear the default value. Possible values: {STRICT, LENIENT, SILENT}.",
                        "inputBinding": {
                            "valueFrom": {
                                "engine": "#cwl-js-engine",
                                "script": "{\n  if ($job.inputs.validation_stringency)\n  {\n    return $job.inputs.validation_stringency\n  }\n  else\n  {\n    return \"SILENT\"\n  }\n}",
                                "class": "Expression"
                            },
                            "prefix": "VALIDATION_STRINGENCY=",
                            "sbg:cmdInclude": true,
                            "separate": false
                        },
                        "type": [
                            "null",
                            {
                                "name": "validation_stringency",
                                "type": "enum",
                                "symbols": [
                                    "STRICT",
                                    "LENIENT",
                                    "SILENT"
                                ]
                            }
                        ],
                        "sbg:category": "Other input types",
                        "sbg:toolDefaultValue": "SILENT",
                        "label": "Validation stringency"
                    },
                    {
                        "id": "#sort_order",
                        "description": "Sort order of the output file. Possible values: {unsorted, queryname, coordinate}.",
                        "type": [
                            {
                                "name": "sort_order",
                                "type": "enum",
                                "symbols": [
                                    "Unsorted",
                                    "Queryname",
                                    "Coordinate"
                                ]
                            }
                        ],
                        "sbg:altPrefix": "SO",
                        "inputBinding": {
                            "valueFrom": {
                                "engine": "#cwl-js-engine",
                                "script": "{\n  p = $job.inputs.sort_order.toLowerCase()\n  return p\n}",
                                "class": "Expression"
                            },
                            "prefix": "SORT_ORDER=",
                            "sbg:cmdInclude": true,
                            "position": 3,
                            "separate": false
                        },
                        "sbg:category": "Other input types",
                        "label": "Sort order"
                    },
                    {
                        "id": "#quiet",
                        "description": "This parameter indicates whether to suppress job-summary info on System.err. This option can be set to 'null' to clear the default value. Possible values: {true, false}.",
                        "inputBinding": {
                            "prefix": "QUIET=",
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            {
                                "name": "quiet",
                                "type": "enum",
                                "symbols": [
                                    "True",
                                    "False"
                                ]
                            }
                        ],
                        "sbg:category": "Other input types",
                        "sbg:toolDefaultValue": "False",
                        "label": "Quiet"
                    },
                    {
                        "id": "#output_type",
                        "description": "Since Picard tools can output both SAM and BAM files, user can choose the format of the output file.",
                        "type": [
                            "null",
                            {
                                "name": "output_type",
                                "type": "enum",
                                "symbols": [
                                    "BAM",
                                    "SAM",
                                    "SAME AS INPUT"
                                ]
                            }
                        ],
                        "sbg:category": "Other input types",
                        "sbg:toolDefaultValue": "SAME AS INPUT",
                        "label": "Output format"
                    },
                    {
                        "id": "#memory_per_job",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "2048",
                        "label": "Memory per job",
                        "description": "Amount of RAM memory to be used per job. Defaults to 2048 MB for single threaded jobs."
                    },
                    {
                        "id": "#max_records_in_ram",
                        "description": "When writing SAM files that need to be sorted, this parameter will specify the number of records stored in RAM before spilling to disk. Increasing this number reduces the number of file handles needed to sort a SAM file, and increases the amount of RAM needed. This option can be set to 'null' to clear the default value.",
                        "inputBinding": {
                            "prefix": "MAX_RECORDS_IN_RAM=",
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Other input types",
                        "sbg:toolDefaultValue": "500000",
                        "label": "Max records in RAM"
                    },
                    {
                        "id": "#input_bam",
                        "description": "The BAM or SAM file to sort.",
                        "type": [
                            "File"
                        ],
                        "sbg:altPrefix": "I",
                        "inputBinding": {
                            "prefix": "INPUT=",
                            "separate": false,
                            "sbg:cmdInclude": true,
                            "position": 1
                        },
                        "sbg:category": "File inputs",
                        "label": "Input BAM",
                        "required": true,
                        "sbg:fileTypes": "BAM, SAM"
                    },
                    {
                        "id": "#create_index",
                        "description": "This parameter indicates whether to create a BAM index when writing a coordinate-sorted BAM file. This option can be set to 'null' to clear the default value. Possible values: {true, false}.",
                        "inputBinding": {
                            "prefix": "CREATE_INDEX=",
                            "separate": false,
                            "sbg:cmdInclude": true,
                            "position": 5
                        },
                        "type": [
                            "null",
                            {
                                "name": "create_index",
                                "type": "enum",
                                "symbols": [
                                    "True",
                                    "False"
                                ]
                            }
                        ],
                        "sbg:category": "Other input types",
                        "sbg:toolDefaultValue": "False",
                        "label": "Create index"
                    },
                    {
                        "id": "#compression_level",
                        "description": "Compression level for all compressed files created (e.g. BAM and GELI). This option can be set to 'null' to clear the default value.",
                        "inputBinding": {
                            "prefix": "COMPRESSION_LEVEL=",
                            "separate": false,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Other input types",
                        "sbg:toolDefaultValue": "5",
                        "label": "Compression level"
                    }
                ],
                "class": "CommandLineTool",
                "description": "Picard SortSam sorts the input SAM or BAM. Input and output formats are determined by the file extension.",
                "sbg:createdBy": "bix-demo",
                "baseCommand": [
                    "java",
                    {
                        "engine": "#cwl-js-engine",
                        "script": "{   \n  if($job.inputs.memory_per_job){\n    return '-Xmx'.concat($job.inputs.memory_per_job, 'M')\n  }   \n  \treturn '-Xmx2048M'\n}",
                        "class": "Expression"
                    },
                    "-jar",
                    "/opt/picard-tools-1.140/picard.jar",
                    "SortSam"
                ],
                "label": "Picard SortSam",
                "sbg:image_url": null,
                "outputs": [
                    {
                        "id": "#sorted_bam",
                        "description": "Sorted BAM or SAM file.",
                        "outputBinding": {
                            "secondaryFiles": [
                                "^.bai",
                                ".bai"
                            ],
                            "sbg:inheritMetadataFrom": "#input_bam",
                            "sbg:metadata": {
                                "__inherit__": "input_bam"
                            },
                            "glob": "*.sorted.?am"
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Sorted BAM/SAM",
                        "sbg:fileTypes": "BAM, SAM"
                    }
                ],
                "sbg:sbgMaintained": false,
                "sbg:categories": [
                    "SAM/BAM-Processing"
                ],
                "requirements": [
                    {
                        "id": "#cwl-js-engine",
                        "requirements": [
                            {
                                "class": "DockerRequirement",
                                "dockerPull": "rabix/js-engine"
                            }
                        ],
                        "engineCommand": "cwl-engine.js",
                        "class": "ExpressionEngineRequirement"
                    }
                ],
                "sbg:toolkit": "Picard",
                "sbg:revisionNotes": "Modified \"sort_order\" default value.",
                "hints": [
                    {
                        "dockerImageId": "eab0e70b6629",
                        "class": "DockerRequirement",
                        "dockerPull": "images.sbgenomics.com/mladenlsbg/picard:1.140"
                    },
                    {
                        "value": 1,
                        "class": "sbg:CPURequirement"
                    },
                    {
                        "value": {
                            "engine": "#cwl-js-engine",
                            "script": "{\n  if($job.inputs.memory_per_job){\n  \treturn $job.inputs.memory_per_job\n  }\n  \treturn 2048\n}",
                            "class": "Expression"
                        },
                        "class": "sbg:MemRequirement"
                    }
                ],
                "stdin": "",
                "sbg:license": "MIT License, Apache 2.0 Licence",
                "sbg:validationErrors": [],
                "sbg:modifiedBy": "mladenlSBG",
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
                ]
            },
            "sbg:y": 470.91659385958945
        },
        {
            "id": "#STAR_1",
            "sbg:x": 596.6666101702949,
            "inputs": [
                {
                    "id": "#STAR_1.winFlankNbins"
                },
                {
                    "id": "#STAR_1.winBinNbits"
                },
                {
                    "id": "#STAR_1.winAnchorMultimapNmax"
                },
                {
                    "id": "#STAR_1.winAnchorDistNbins"
                },
                {
                    "id": "#STAR_1.unmappedOutputName"
                },
                {
                    "id": "#STAR_1.twopassMode"
                },
                {
                    "id": "#STAR_1.twopass1readsN"
                },
                {
                    "id": "#STAR_1.sortUnmappedReads"
                },
                {
                    "id": "#STAR_1.sjdbScore"
                },
                {
                    "id": "#STAR_1.sjdbOverhang",
                    "default": 100
                },
                {
                    "id": "#STAR_1.sjdbInsertSave"
                },
                {
                    "id": "#STAR_1.sjdbGTFtagExonParentTranscript"
                },
                {
                    "id": "#STAR_1.sjdbGTFtagExonParentGene"
                },
                {
                    "id": "#STAR_1.sjdbGTFfile",
                    "source": [
                        "#sjdbGTFfile"
                    ]
                },
                {
                    "id": "#STAR_1.sjdbGTFfeatureExon"
                },
                {
                    "id": "#STAR_1.sjdbGTFchrPrefix"
                },
                {
                    "id": "#STAR_1.seedSearchStartLmaxOverLread"
                },
                {
                    "id": "#STAR_1.seedSearchStartLmax"
                },
                {
                    "id": "#STAR_1.seedSearchLmax"
                },
                {
                    "id": "#STAR_1.seedPerWindowNmax"
                },
                {
                    "id": "#STAR_1.seedPerReadNmax"
                },
                {
                    "id": "#STAR_1.seedNoneLociPerWindow"
                },
                {
                    "id": "#STAR_1.seedMultimapNmax"
                },
                {
                    "id": "#STAR_1.scoreStitchSJshift"
                },
                {
                    "id": "#STAR_1.scoreInsOpen"
                },
                {
                    "id": "#STAR_1.scoreInsBase"
                },
                {
                    "id": "#STAR_1.scoreGenomicLengthLog2scale"
                },
                {
                    "id": "#STAR_1.scoreGapNoncan"
                },
                {
                    "id": "#STAR_1.scoreGapGCAG"
                },
                {
                    "id": "#STAR_1.scoreGapATAC"
                },
                {
                    "id": "#STAR_1.scoreGap"
                },
                {
                    "id": "#STAR_1.scoreDelOpen"
                },
                {
                    "id": "#STAR_1.scoreDelBase"
                },
                {
                    "id": "#STAR_1.rg_seq_center"
                },
                {
                    "id": "#STAR_1.rg_sample_id"
                },
                {
                    "id": "#STAR_1.rg_platform_unit_id"
                },
                {
                    "id": "#STAR_1.rg_platform"
                },
                {
                    "id": "#STAR_1.rg_mfl"
                },
                {
                    "id": "#STAR_1.rg_library_id"
                },
                {
                    "id": "#STAR_1.reads",
                    "source": [
                        "#SBG_FASTQ_Quality_Detector.result"
                    ]
                },
                {
                    "id": "#STAR_1.readMatesLengthsIn"
                },
                {
                    "id": "#STAR_1.readMapNumber"
                },
                {
                    "id": "#STAR_1.quantTranscriptomeBan"
                },
                {
                    "id": "#STAR_1.quantMode",
                    "default": "TranscriptomeSAM"
                },
                {
                    "id": "#STAR_1.outSortingType"
                },
                {
                    "id": "#STAR_1.outSJfilterReads"
                },
                {
                    "id": "#STAR_1.outSJfilterOverhangMin"
                },
                {
                    "id": "#STAR_1.outSJfilterIntronMaxVsReadN"
                },
                {
                    "id": "#STAR_1.outSJfilterDistToOtherSJmin"
                },
                {
                    "id": "#STAR_1.outSJfilterCountUniqueMin"
                },
                {
                    "id": "#STAR_1.outSJfilterCountTotalMin"
                },
                {
                    "id": "#STAR_1.outSAMunmapped"
                },
                {
                    "id": "#STAR_1.outSAMtype",
                    "default": "BAM"
                },
                {
                    "id": "#STAR_1.outSAMstrandField"
                },
                {
                    "id": "#STAR_1.outSAMreadID"
                },
                {
                    "id": "#STAR_1.outSAMprimaryFlag"
                },
                {
                    "id": "#STAR_1.outSAMorder"
                },
                {
                    "id": "#STAR_1.outSAMmultNmax"
                },
                {
                    "id": "#STAR_1.outSAMmode"
                },
                {
                    "id": "#STAR_1.outSAMmapqUnique"
                },
                {
                    "id": "#STAR_1.outSAMheaderPG"
                },
                {
                    "id": "#STAR_1.outSAMheaderHD"
                },
                {
                    "id": "#STAR_1.outSAMflagOR"
                },
                {
                    "id": "#STAR_1.outSAMflagAND"
                },
                {
                    "id": "#STAR_1.outSAMfilter"
                },
                {
                    "id": "#STAR_1.outSAMattributes"
                },
                {
                    "id": "#STAR_1.outSAMattrIHstart"
                },
                {
                    "id": "#STAR_1.outReadsUnmapped",
                    "default": "Fastx"
                },
                {
                    "id": "#STAR_1.outQSconversionAdd"
                },
                {
                    "id": "#STAR_1.outMultimapperOrder"
                },
                {
                    "id": "#STAR_1.outFilterType"
                },
                {
                    "id": "#STAR_1.outFilterScoreMinOverLread"
                },
                {
                    "id": "#STAR_1.outFilterScoreMin"
                },
                {
                    "id": "#STAR_1.outFilterMultimapScoreRange"
                },
                {
                    "id": "#STAR_1.outFilterMultimapNmax"
                },
                {
                    "id": "#STAR_1.outFilterMismatchNoverReadLmax"
                },
                {
                    "id": "#STAR_1.outFilterMismatchNoverLmax"
                },
                {
                    "id": "#STAR_1.outFilterMismatchNmax"
                },
                {
                    "id": "#STAR_1.outFilterMatchNminOverLread"
                },
                {
                    "id": "#STAR_1.outFilterMatchNmin"
                },
                {
                    "id": "#STAR_1.outFilterIntronMotifs"
                },
                {
                    "id": "#STAR_1.no_read_groups"
                },
                {
                    "id": "#STAR_1.limitSjdbInsertNsj"
                },
                {
                    "id": "#STAR_1.limitOutSJoneRead"
                },
                {
                    "id": "#STAR_1.limitOutSJcollapsed"
                },
                {
                    "id": "#STAR_1.limitBAMsortRAM"
                },
                {
                    "id": "#STAR_1.genomeDirName"
                },
                {
                    "id": "#STAR_1.genome",
                    "source": [
                        "#STAR_Genome_Generate.genome"
                    ]
                },
                {
                    "id": "#STAR_1.clip5pNbases"
                },
                {
                    "id": "#STAR_1.clip3pNbases"
                },
                {
                    "id": "#STAR_1.clip3pAfterAdapterNbases"
                },
                {
                    "id": "#STAR_1.clip3pAdapterSeq"
                },
                {
                    "id": "#STAR_1.clip3pAdapterMMp"
                },
                {
                    "id": "#STAR_1.chimSegmentReadGapMax"
                },
                {
                    "id": "#STAR_1.chimSegmentMin"
                },
                {
                    "id": "#STAR_1.chimScoreSeparation"
                },
                {
                    "id": "#STAR_1.chimScoreMin"
                },
                {
                    "id": "#STAR_1.chimScoreJunctionNonGTAG"
                },
                {
                    "id": "#STAR_1.chimScoreDropMax"
                },
                {
                    "id": "#STAR_1.chimOutType"
                },
                {
                    "id": "#STAR_1.chimJunctionOverhangMin"
                },
                {
                    "id": "#STAR_1.chimFilter"
                },
                {
                    "id": "#STAR_1.alignWindowsPerReadNmax"
                },
                {
                    "id": "#STAR_1.alignTranscriptsPerWindowNmax"
                },
                {
                    "id": "#STAR_1.alignTranscriptsPerReadNmax"
                },
                {
                    "id": "#STAR_1.alignSplicedMateMapLminOverLmate"
                },
                {
                    "id": "#STAR_1.alignSplicedMateMapLmin"
                },
                {
                    "id": "#STAR_1.alignSoftClipAtReferenceEnds"
                },
                {
                    "id": "#STAR_1.alignSJstitchMismatchNmax"
                },
                {
                    "id": "#STAR_1.alignSJoverhangMin"
                },
                {
                    "id": "#STAR_1.alignSJDBoverhangMin"
                },
                {
                    "id": "#STAR_1.alignMatesGapMax"
                },
                {
                    "id": "#STAR_1.alignIntronMin"
                },
                {
                    "id": "#STAR_1.alignIntronMax"
                },
                {
                    "id": "#STAR_1.alignEndsType"
                }
            ],
            "outputs": [
                {
                    "id": "#STAR_1.unmapped_reads"
                },
                {
                    "id": "#STAR_1.transcriptome_aligned_reads"
                },
                {
                    "id": "#STAR_1.splice_junctions"
                },
                {
                    "id": "#STAR_1.reads_per_gene"
                },
                {
                    "id": "#STAR_1.log_files"
                },
                {
                    "id": "#STAR_1.intermediate_genome"
                },
                {
                    "id": "#STAR_1.chimeric_junctions"
                },
                {
                    "id": "#STAR_1.chimeric_alignments"
                },
                {
                    "id": "#STAR_1.aligned_reads"
                }
            ],
            "run": {
                "sbg:revision": 41,
                "sbg:id": "admin/sbg-public-data/star-2-5-1-b/41",
                "arguments": [
                    {
                        "valueFrom": {
                            "engine": "#cwl-js-engine",
                            "script": "{\n  file = [].concat($job.inputs.reads)[0].path\n  extension = /(?:\\.([^.]+))?$/.exec(file)[1]\n  if (extension == \"gz\") {\n    return \"--readFilesCommand zcat\"\n  } else if (extension == \"bz2\") {\n    return \"--readFilesCommand bzcat\"\n  }\n}",
                            "class": "Expression"
                        },
                        "separate": true
                    },
                    {
                        "valueFrom": {
                            "engine": "#cwl-js-engine",
                            "script": "{\t\n  var sjFormat = \"False\"\n  var gtfgffFormat = \"False\"\n  var list = $job.inputs.sjdbGTFfile\n  var paths_list = []\n  var joined_paths = \"\"\n  \n  if (list) {\n    list.forEach(function(f){return paths_list.push(f.path)})\n    joined_paths = paths_list.join(\" \")\n\n\n    paths_list.forEach(function(f){\n      ext = f.replace(/^.*\\./, '')\n      if (ext == \"gff\" || ext == \"gtf\") {\n        gtfgffFormat = \"True\"\n        return gtfgffFormat\n      }\n      if (ext == \"txt\") {\n        sjFormat = \"True\"\n        return sjFormat\n      }\n    })\n\n    if ($job.inputs.sjdbGTFfile && $job.inputs.sjdbInsertSave != \"None\") {\n      if (sjFormat == \"True\") {\n        return \"--sjdbFileChrStartEnd \".concat(joined_paths)\n      }\n      else if (gtfgffFormat == \"True\") {\n        return \"--sjdbGTFfile \".concat(joined_paths)\n      }\n    }\n  }\n}",
                            "class": "Expression"
                        },
                        "separate": true
                    },
                    {
                        "valueFrom": {
                            "engine": "#cwl-js-engine",
                            "script": "{\n  a = b = c = d = e = f = g = []\n  if ($job.inputs.sjdbGTFchrPrefix) {\n    a = [\"--sjdbGTFchrPrefix\", $job.inputs.sjdbGTFchrPrefix]\n  }\n  if ($job.inputs.sjdbGTFfeatureExon) {\n    b = [\"--sjdbGTFfeatureExon\", $job.inputs.sjdbGTFfeatureExon]\n  }\n  if ($job.inputs.sjdbGTFtagExonParentTranscript) {\n    c = [\"--sjdbGTFtagExonParentTranscript\", $job.inputs.sjdbGTFtagExonParentTranscript]\n  }\n  if ($job.inputs.sjdbGTFtagExonParentGene) {\n    d = [\"--sjdbGTFtagExonParentGene\", $job.inputs.sjdbGTFtagExonParentGene]\n  }\n  if ($job.inputs.sjdbOverhang) {\n    e = [\"--sjdbOverhang\", $job.inputs.sjdbOverhang]\n  }\n  if ($job.inputs.sjdbScore) {\n    f = [\"--sjdbScore\", $job.inputs.sjdbScore]\n  }\n  if ($job.inputs.sjdbInsertSave) {\n    g = [\"--sjdbInsertSave\", $job.inputs.sjdbInsertSave]\n  }\n  \n  \n  \n  if ($job.inputs.sjdbInsertSave != \"None\" && $job.inputs.sjdbGTFfile) {\n    new_list = a.concat(b, c, d, e, f, g)\n    return new_list.join(\" \")\n  }\n}",
                            "class": "Expression"
                        },
                        "separate": true
                    },
                    {
                        "valueFrom": {
                            "engine": "#cwl-js-engine",
                            "script": "{\n  if ($job.inputs.twopassMode == \"Basic\") {\n    if ($job.inputs.twopass1readsN) {\n      return \"--twopass1readsN \".concat($job.inputs.twopass1readsN) \n    } else {\n      return \"--twopass1readsN -1\"\n    }\n  }\n}",
                            "class": "Expression"
                        },
                        "separate": true
                    },
                    {
                        "valueFrom": {
                            "engine": "#cwl-js-engine",
                            "script": "{\n  if ($job.inputs.chimOutType == \"Within\") {\n    return \"--chimOutType \".concat(\"Within\", $job.inputs.outSAMtype)\n  }\n  else {\n    return \"--chimOutType SeparateSAMold\"\n  }\n}",
                            "class": "Expression"
                        },
                        "separate": true
                    },
                    {
                        "valueFrom": {
                            "engine": "#cwl-js-engine",
                            "script": "{\n  if ($job.inputs.no_read_groups) {\n  return \"\" }\n  else {\n  var param_list = []\n  var all_samples = []\n  var list = [].concat($job.inputs.reads)\n  getUnique = function(arr){\n    var u = {}, a = [];\n    for(var i = 0, l = arr.length; i < l; ++i){\n      if(u.hasOwnProperty(arr[i])) {\n        continue;\n      }\n      a.push(arr[i]);\n      u[arr[i]] = 1;\n    }\n    return a;\n  }\n  \n  function add_param(key, value){\n    if (value == \"\") {\n      return\n    }\n    else {\n      return param_list.push(key.concat(\":\", value))\n    }\n  }\n  for (index = 0; index < list.length; ++index) {\n    if (list[index].metadata != null){\n    \tif (list[index].metadata.sample_id != null){\n      \t\tall_samples.push(list[index].metadata.sample_id)\n      }\n    }\n  }\n  \n  samples = getUnique(all_samples)\n  var samples_given = all_samples.length == list.length\n  var all_rg = []\n  if (samples_given){\n    for (sample_ind = 0; sample_ind < samples.length; ++sample_ind){\n    \tfor (read_ind = 0; read_ind < list.length; ++read_ind) {\n        var param_list = []\n        if (list[read_ind].metadata && list[read_ind].metadata.sample_id == samples[sample_ind] && list[read_ind].metadata.paired_end != \"2\") {\n        \tadd_param('ID', samples[sample_ind])\n          if ($job.inputs.rg_seq_center) {\n            add_param('CN', $job.inputs.rg_seq_center)\n          } else if (list[read_ind].metadata && list[read_ind].metadata.seq_center) {\n            add_param('CN', list[read_ind].metadata.seq_center)\n          }\n          if ($job.inputs.rg_library_id) {\n            add_param('LB', $job.inputs.rg_library_id)\n          } else if (list[read_ind].metadata && list[read_ind].metadata.library_id) {\n            add_param('LB', list[read_ind].metadata.library_id)\n          }\n          if ($job.inputs.rg_mfl) {\n            add_param('PI', $job.inputs.rg_mfl)\n          } else if (list[read_ind].metadata && list[read_ind].metadata.median_fragment_length) {\n            add_param('PI', list[read_ind].metadata.median_fragment_length)\n          }\n          if ($job.inputs.rg_platform) {\n            add_param('PL', $job.inputs.rg_platform.replace(/ /g,\"_\"))\n          } else if (list[read_ind].metadata && list[read_ind].metadata.platform) {\n            add_param('PL', list[read_ind].metadata.platform.replace(/ /g,\"_\"))\n          }\n          if ($job.inputs.rg_platform_unit_id) {\n            add_param('PU', $job.inputs.rg_platform_unit_id)\n          } else if (list[read_ind].metadata && list[read_ind].metadata.platform_unit_id) {\n            add_param('PU', list[read_ind].metadata.platform_unit_id)\n          }\n          if ($job.inputs.rg_sample_id) {\n            add_param('SM', $job.inputs.rg_sample_id)\n          } else if (list[read_ind].metadata && list[read_ind].metadata.sample_id) {\n            add_param('SM', list[read_ind].metadata.sample_id)\n          }\n          all_rg.push(param_list.join(\" \"))\n       }\n\n    }\n   }\n  } else {\n  \tvar param_list = []\n    add_param('ID', \"1\")\n    if ($job.inputs.rg_seq_center) {\n      add_param('CN', $job.inputs.rg_seq_center)\n    } else if ([].concat($job.inputs.reads)[0].metadata && [].concat($job.inputs.reads)[0].metadata.seq_center) {\n      add_param('CN', [].concat($job.inputs.reads)[0].metadata.seq_center)\n    }\n    if ($job.inputs.rg_library_id) {\n      add_param('LB', $job.inputs.rg_library_id)\n    } else if ([].concat($job.inputs.reads)[0].metadata && [].concat($job.inputs.reads)[0].metadata.library_id) {\n      add_param('LB', [].concat($job.inputs.reads)[0].metadata.library_id)\n    }\n    if ($job.inputs.rg_mfl) {\n      add_param('PI', $job.inputs.rg_mfl)\n    } else if ([].concat($job.inputs.reads)[0].metadata && [].concat($job.inputs.reads)[0].metadata.median_fragment_length) {\n      add_param('PI', [].concat($job.inputs.reads)[0].metadata.median_fragment_length)\n    }\n    if ($job.inputs.rg_platform) {\n      add_param('PL', $job.inputs.rg_platform.replace(/ /g,\"_\"))\n    } else if ([].concat($job.inputs.reads)[0].metadata && [].concat($job.inputs.reads)[0].metadata.platform) {\n      add_param('PL', [].concat($job.inputs.reads)[0].metadata.platform.replace(/ /g,\"_\"))\n    }\n    if ($job.inputs.rg_platform_unit_id) {\n      add_param('PU', $job.inputs.rg_platform_unit_id)\n    } else if ([].concat($job.inputs.reads)[0].metadata && [].concat($job.inputs.reads)[0].metadata.platform_unit_id) {\n      add_param('PU', [].concat($job.inputs.reads)[0].metadata.platform_unit_id)\n    }\n    if ($job.inputs.rg_sample_id) {\n      add_param('SM', $job.inputs.rg_sample_id)\n    } else if ([].concat($job.inputs.reads)[0].metadata && [].concat($job.inputs.reads)[0].metadata.sample_id) {\n      add_param('SM', [].concat($job.inputs.reads)[0].metadata.sample_id)\n    }\n    return \"--outSAMattrRGline \".concat(param_list.join(\" \"))\n  }\n  return \"--outSAMattrRGline \".concat(all_rg.join(\" , \"))\n  }\n}",
                            "class": "Expression"
                        },
                        "separate": true
                    },
                    {
                        "valueFrom": {
                            "engine": "#cwl-js-engine",
                            "script": "{\n  if ($job.inputs.sjdbGTFfile && $job.inputs.quantMode) {\n    return \"--quantMode \".concat($job.inputs.quantMode)\n  }\n}",
                            "class": "Expression"
                        },
                        "separate": true
                    },
                    {
                        "valueFrom": {
                            "engine": "#cwl-js-engine",
                            "script": "{\n  function sharedStart(array){\n  var A= array.concat().sort(), \n      a1= A[0], a2= A[A.length-1], L= a1.length, i= 0;\n  while(i<L && a1.charAt(i)=== a2.charAt(i)) i++;\n  return a1.substring(0, i);\n  }\n  path_list = []\n  arr = [].concat($job.inputs.reads)\n  arr.forEach(function(f){return path_list.push(f.path.replace(/\\\\/g,'/').replace( /.*\\//, '' ))})\n  common_prefix = sharedStart(path_list)\n  intermediate = common_prefix.replace( /\\-$|\\_$|\\.$/, '' ).concat(\"._STARgenome\")\n  source = \"./\".concat(intermediate)\n  destination = intermediate.concat(\".tar\")\n  if ($job.inputs.sjdbGTFfile && $job.inputs.sjdbInsertSave && $job.inputs.sjdbInsertSave != \"None\") {\n    return \"&& tar -vcf \".concat(destination, \" \", source)\n  }\n}",
                            "class": "Expression"
                        },
                        "separate": true,
                        "position": 100
                    },
                    {
                        "valueFrom": {
                            "engine": "#cwl-js-engine",
                            "script": "{\n  function sharedStart(array){\n  var A= array.concat().sort(), \n      a1= A[0], a2= A[A.length-1], L= a1.length, i= 0;\n  while(i<L && a1.charAt(i)=== a2.charAt(i)) i++;\n  return a1.substring(0, i);\n  }\n  path_list = []\n  arr = [].concat($job.inputs.reads)\n  arr.forEach(function(f){return path_list.push(f.path.replace(/\\\\/g,'/').replace( /.*\\//, '' ))})\n  common_prefix = sharedStart(path_list)\n  if (common_prefix == \"\" || common_prefix == \"_\"){\n    common_prefix = \"All\"\n  }\n  return \"./\".concat(common_prefix.replace( /\\-$|\\_$|\\.$/, '' ), \".\")\n}",
                            "class": "Expression"
                        },
                        "prefix": "--outFileNamePrefix",
                        "separate": true
                    },
                    {
                        "valueFrom": {
                            "engine": "#cwl-js-engine",
                            "script": "{\n  function sharedStart(array){\n  var A= array.concat().sort(), \n      a1= A[0], a2= A[A.length-1], L= a1.length, i= 0;\n  while(i<L && a1.charAt(i)=== a2.charAt(i)) i++;\n  return a1.substring(0, i);\n  }\n  path_list = []\n  arr = [].concat($job.inputs.reads)\n  arr.forEach(function(f){return path_list.push(f.path.replace(/\\\\/g,'/').replace( /.*\\//, '' ))})\n  common_prefix = sharedStart(path_list)\n  mate1 = common_prefix.replace( /\\-$|\\_$|\\.$/, '' ).concat(\".Unmapped.out.mate1\")\n  mate2 = common_prefix.replace( /\\-$|\\_$|\\.$/, '' ).concat(\".Unmapped.out.mate2\")\n  var x = arr[0].path.split('/').pop()\n  var y = x.toLowerCase()\n  \n  if ($job.inputs.unmappedOutputName) {\n  \tvar output_name = \".\" + $job.inputs.unmappedOutputName + \".\"\n  } else {\n    var output_name = \".Unmapped.out.\"\n  }\n  \n  mate1_1 = common_prefix.replace( /\\-$|\\_$|\\.$/, '' ).concat(output_name + \"mate1\")\n  mate2_1 = common_prefix.replace( /\\-$|\\_$|\\.$/, '' ).concat(output_name + \"mate2\")\n  \n  \n  if (y.endsWith('fastq') || y.endsWith('fq') || y.endsWith('fastq.gz') || y.endsWith('fastq.bz2') || y.endsWith('fq.gz') || y.endsWith('fq.bz2')) { \n    mate1fq = mate1_1.concat(\".fastq\")\n    mate2fq = mate2_1.concat(\".fastq\")\n  } else if (y.endsWith('fasta') || y.endsWith('fa') || y.endsWith('fasta.gz') || y.endsWith('fasta.bz2') || y.endsWith('fa.gz') || y.endsWith('fa.bz2')) {\n    mate1fq = mate1_1.concat(\".fasta\")\n    mate2fq = mate2_1.concat(\".fasta\")\n  }\n\n  \n  if ($job.inputs.sortUnmappedReads) {\n    \n  var cmd = \"\"\n  var sort_cmd = \" | sed 's/\\\\t.*//' | paste - - - - | sort -k1,1 -S 10G | tr '\\\\t' '\\\\n' > \"\n  if ($job.inputs.outReadsUnmapped == \"Fastx\" && arr.length > 1) {\n    cmd = cmd.concat(\" && cat \", mate2, sort_cmd, mate2fq, \" && rm \", mate2)\n  }\n  if ($job.inputs.outReadsUnmapped == \"Fastx\") {\n    cmd = cmd.concat(\" && cat \", mate1, sort_cmd, mate1fq, \" && rm \", mate1)\n  }\n  return cmd\n  \n  } else {\n\n  if ($job.inputs.outReadsUnmapped == \"Fastx\" && arr.length > 1) {\n    return \"&& mv \".concat(mate1, \" \", mate1fq, \" && mv \", mate2, \" \", mate2fq)\n  }\n  else if ($job.inputs.outReadsUnmapped == \"Fastx\" && arr.length == 1) {\n    return \"&& mv \".concat(mate1, \" \", mate1fq)\n  }\n\n  }\n}",
                            "class": "Expression"
                        },
                        "separate": true,
                        "position": 101
                    }
                ],
                "sbg:contributors": [
                    "ana_d",
                    "uros_sipetic",
                    "dusan_randjelovic"
                ],
                "stdout": "",
                "sbg:project": "uros_sipetic/star-2-5-1b-demo",
                "sbg:toolkitVersion": "2.5.1b",
                "sbg:modifiedOn": 1485434147,
                "sbg:toolAuthor": "Alexander Dobin/CSHL",
                "sbg:latestRevision": 41,
                "x": 596.6666101702949,
                "sbg:job": {
                    "inputs": {
                        "reads": [
                            {
                                "metadata": {
                                    "paired_end": "1"
                                },
                                "secondaryFiles": [],
                                "path": "/test-data/test_sample_1.fastq",
                                "size": 0,
                                "class": "File"
                            }
                        ],
                        "outSAMheaderHD": "outSAMheaderHD",
                        "scoreDelBase": 0,
                        "outFilterScoreMinOverLread": 0,
                        "seedSearchStartLmax": 0,
                        "chimScoreMin": 0,
                        "sjdbGTFtagExonParentTranscript": "",
                        "alignSJDBoverhangMin": 0,
                        "outSAMflagOR": 0,
                        "scoreInsOpen": 0,
                        "chimScoreJunctionNonGTAG": 0,
                        "sjdbGTFtagExonParentGene": "",
                        "quantMode": "TranscriptomeSAM",
                        "winAnchorDistNbins": 0,
                        "limitBAMsortRAM": 0,
                        "outSJfilterReads": "All",
                        "outSAMmapqUnique": 0,
                        "no_read_groups": false,
                        "sjdbInsertSave": "Basic",
                        "sortUnmappedReads": true,
                        "alignSJstitchMismatchNmax": "alignSJstitchMismatchNmax-string-value",
                        "outFilterMismatchNoverReadLmax": 0,
                        "outSAMreadID": "Standard",
                        "alignSJoverhangMin": 0,
                        "rg_platform_unit_id": "rg_platform_unit",
                        "alignSplicedMateMapLmin": 0,
                        "twopass1readsN": -2,
                        "outSJfilterCountTotalMin": [
                            3,
                            1,
                            1,
                            1
                        ],
                        "outSJfilterOverhangMin": [
                            30,
                            12,
                            12,
                            12
                        ],
                        "seedSearchLmax": 0,
                        "twopassMode": "Basic",
                        "outSAMtype": "SAM",
                        "outSJfilterDistToOtherSJmin": [
                            0
                        ],
                        "outSortingType": "SortedByCoordinate",
                        "alignIntronMax": 0,
                        "outSAMunmapped": "None",
                        "outSAMstrandField": "None",
                        "outFilterMatchNmin": 0,
                        "rg_mfl": "rg_mfl",
                        "rg_seq_center": "",
                        "outReadsUnmapped": "Fastx",
                        "outSJfilterCountUniqueMin": [
                            3,
                            1,
                            1,
                            1
                        ],
                        "clip3pNbases": [
                            0,
                            3
                        ],
                        "chimFilter": "banGenomicN",
                        "seedMultimapNmax": 0,
                        "outFilterMatchNminOverLread": 0,
                        "alignMatesGapMax": 0,
                        "scoreStitchSJshift": 0,
                        "chimScoreDropMax": 0,
                        "alignTranscriptsPerWindowNmax": 0,
                        "outFilterMultimapNmax": 0,
                        "rg_library_id": "",
                        "chimSegmentReadGapMax": 8,
                        "outSAMorder": "Paired",
                        "seedPerWindowNmax": 0,
                        "unmappedOutputName": "Uncontamimated",
                        "outSAMprimaryFlag": "OneBestScore",
                        "outSAMmultNmax": 0,
                        "chimSegmentMin": 15,
                        "rg_sample_id": "rg_sample",
                        "sjdbGTFchrPrefix": "chrPrefix",
                        "quantTranscriptomeBan": "IndelSoftclipSingleend",
                        "winAnchorMultimapNmax": 0,
                        "clip3pAdapterMMp": [
                            0
                        ],
                        "outSAMattributes": "Standard",
                        "chimScoreSeparation": 0,
                        "chimOutType": "Within",
                        "seedPerReadNmax": 0,
                        "seedSearchStartLmaxOverLread": 0,
                        "alignTranscriptsPerReadNmax": 0,
                        "seedNoneLociPerWindow": 0,
                        "rg_platform": "Ion Torrent PGM",
                        "alignEndsType": "Local",
                        "outSJfilterIntronMaxVsReadN": [
                            0
                        ],
                        "readMatesLengthsIn": "NotEqual",
                        "outFilterIntronMotifs": "None",
                        "outFilterMismatchNoverLmax": 0,
                        "outFilterMismatchNmax": 0,
                        "outMultimapperOrder": "Random",
                        "winBinNbits": 0,
                        "outFilterScoreMin": 0,
                        "chimJunctionOverhangMin": 0,
                        "alignSplicedMateMapLminOverLmate": 0,
                        "alignIntronMin": 0,
                        "outSAMheaderPG": "outSAMheaderPG",
                        "sjdbScore": null,
                        "scoreGapNoncan": 0,
                        "scoreDelOpen": 0,
                        "scoreGenomicLengthLog2scale": 0,
                        "limitSjdbInsertNsj": 0,
                        "winFlankNbins": 0,
                        "alignSoftClipAtReferenceEnds": "Yes",
                        "clip5pNbases": [
                            0
                        ],
                        "scoreGapATAC": 0,
                        "sjdbGTFfeatureExon": "",
                        "readMapNumber": 0,
                        "scoreGap": 0,
                        "outQSconversionAdd": 0,
                        "GENOME_DIR_NAME": "",
                        "scoreGapGCAG": 0,
                        "sjdbGTFfile": [
                            {
                                "path": "/demo/test-data/chr20.gtf"
                            }
                        ],
                        "outFilterMultimapScoreRange": 0,
                        "limitOutSJoneRead": 0,
                        "alignWindowsPerReadNmax": 0,
                        "clip3pAdapterSeq": [
                            "clip3pAdapterSeq"
                        ],
                        "outSAMattrIHstart": 6,
                        "scoreInsBase": 0,
                        "genome": {
                            "secondaryFiles": [],
                            "path": "genome.ext",
                            "size": 0,
                            "class": "File"
                        },
                        "outSAMfilter": "KeepOnlyAddedReference",
                        "sjdbOverhang": null,
                        "clip3pAfterAdapterNbases": [
                            0
                        ],
                        "outFilterType": "Normal",
                        "outSAMflagAND": 0,
                        "limitOutSJcollapsed": 0,
                        "outSAMmode": "Full"
                    },
                    "allocatedResources": {
                        "cpu": 32,
                        "mem": 60000
                    }
                },
                "temporaryFailCodes": [],
                "sbg:createdOn": 1462811121,
                "sbg:cmdPreview": "tar -xvf genome.ext && /opt/STAR-2.5.1b/bin/Linux_x86_64_static/STAR --runThreadN 32    --sjdbGTFfile /demo/test-data/chr20.gtf  --sjdbGTFchrPrefix chrPrefix --sjdbInsertSave Basic  --twopass1readsN -2  --chimOutType WithinSAM  --outSAMattrRGline ID:1 PI:rg_mfl PL:Ion_Torrent_PGM PU:rg_platform_unit SM:rg_sample  --quantMode TranscriptomeSAM --outFileNamePrefix ./test_sample_1.fastq.  --readFilesIn /test-data/test_sample_1.fastq  && tar -vcf test_sample_1.fastq._STARgenome.tar ./test_sample_1.fastq._STARgenome   && cat test_sample_1.fastq.Unmapped.out.mate1 | sed 's/\\t.*//' | paste - - - - | sort -k1,1 -S 10G | tr '\\t' '\\n' > test_sample_1.fastq.Uncontamimated.mate1.fastq && rm test_sample_1.fastq.Unmapped.out.mate1",
                "successCodes": [],
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1462811121,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 0
                    },
                    {
                        "sbg:modifiedOn": 1462878623,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 1
                    },
                    {
                        "sbg:modifiedOn": 1462878822,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 2
                    },
                    {
                        "sbg:modifiedOn": 1462888744,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "ana_d",
                        "sbg:revision": 3
                    },
                    {
                        "sbg:modifiedOn": 1467305514,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 4
                    },
                    {
                        "sbg:modifiedOn": 1469452910,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 5
                    },
                    {
                        "sbg:modifiedOn": 1469454687,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 6
                    },
                    {
                        "sbg:modifiedOn": 1469454843,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 7
                    },
                    {
                        "sbg:modifiedOn": 1469456917,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 8
                    },
                    {
                        "sbg:modifiedOn": 1469457344,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 9
                    },
                    {
                        "sbg:modifiedOn": 1469457393,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 10
                    },
                    {
                        "sbg:modifiedOn": 1469457447,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 11
                    },
                    {
                        "sbg:modifiedOn": 1469457642,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 12
                    },
                    {
                        "sbg:modifiedOn": 1469458688,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 13
                    },
                    {
                        "sbg:modifiedOn": 1469458758,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 14
                    },
                    {
                        "sbg:modifiedOn": 1470660796,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 15
                    },
                    {
                        "sbg:modifiedOn": 1471862645,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 16
                    },
                    {
                        "sbg:modifiedOn": 1471865665,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 17
                    },
                    {
                        "sbg:modifiedOn": 1471865803,
                        "sbg:revisionNotes": "Added proper 'paired_end' metadata to 'unmapped_reads' output.",
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 18
                    },
                    {
                        "sbg:modifiedOn": 1471871327,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 19
                    },
                    {
                        "sbg:modifiedOn": 1472206922,
                        "sbg:revisionNotes": "Add proper 'Reference Genome' metadata to BAM/SAM outputs.",
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 20
                    },
                    {
                        "sbg:modifiedOn": 1472737519,
                        "sbg:revisionNotes": "Addressed peer-review tickets.",
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 21
                    },
                    {
                        "sbg:modifiedOn": 1473070666,
                        "sbg:revisionNotes": "Changed number of cores from 15 to 32.",
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 22
                    },
                    {
                        "sbg:modifiedOn": 1475170418,
                        "sbg:revisionNotes": "Multiple read pairs can be included in the command line now. In order to have the same order of the pairs, \"Sample ID\" metadata has to be set. Otherwise, pairs will be ordered randomly.",
                        "sbg:modifiedBy": "ana_d",
                        "sbg:revision": 23
                    },
                    {
                        "sbg:modifiedOn": 1475749395,
                        "sbg:revisionNotes": "Expression for reads input fixed.",
                        "sbg:modifiedBy": "ana_d",
                        "sbg:revision": 24
                    },
                    {
                        "sbg:modifiedOn": 1476200602,
                        "sbg:revisionNotes": "Toolkit version changed to 2.5.1b",
                        "sbg:modifiedBy": "dusan_randjelovic",
                        "sbg:revision": 25
                    },
                    {
                        "sbg:modifiedOn": 1476893159,
                        "sbg:revisionNotes": "Update some expressions to accpet multiple fastq files.",
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 26
                    },
                    {
                        "sbg:modifiedOn": 1477489594,
                        "sbg:revisionNotes": "Unmapped reads output extension is now the same as the input read files extensions.",
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 27
                    },
                    {
                        "sbg:modifiedOn": 1479131299,
                        "sbg:revisionNotes": "Fixed an encoding bug that could manifest in downstream analysis under Windows platform.",
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 28
                    },
                    {
                        "sbg:modifiedOn": 1479808942,
                        "sbg:revisionNotes": "Fix unmapped reads output bug when no unmapped reads are found.",
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 29
                    },
                    {
                        "sbg:modifiedOn": 1479911806,
                        "sbg:revisionNotes": "Add option to rename unmapped output files.",
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 30
                    },
                    {
                        "sbg:modifiedOn": 1479919037,
                        "sbg:revisionNotes": "Add proper glob expression for unmapped reads",
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 31
                    },
                    {
                        "sbg:modifiedOn": 1479921837,
                        "sbg:revisionNotes": "Fix unmapped output expression",
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 32
                    },
                    {
                        "sbg:modifiedOn": 1480512657,
                        "sbg:revisionNotes": "Update sample_id metadata on outputs.",
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 33
                    },
                    {
                        "sbg:modifiedOn": 1480516020,
                        "sbg:revisionNotes": "Update sample_id metadata.",
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 34
                    },
                    {
                        "sbg:modifiedOn": 1480522227,
                        "sbg:revisionNotes": "Add boolean option for turning off read groups.",
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 35
                    },
                    {
                        "sbg:modifiedOn": 1481205088,
                        "sbg:revisionNotes": "Add option to sort unmapped reads by ID.",
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 36
                    },
                    {
                        "sbg:modifiedOn": 1481226048,
                        "sbg:revisionNotes": "Make sorting unmapped reads by read ID the default behavior.",
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 37
                    },
                    {
                        "sbg:modifiedOn": 1481282806,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 38
                    },
                    {
                        "sbg:modifiedOn": 1481283137,
                        "sbg:revisionNotes": "Add option to sort unmapped reads by read ID (default is OFF).",
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 39
                    },
                    {
                        "sbg:modifiedOn": 1485433817,
                        "sbg:revisionNotes": "Update read group expression to handle cases with files without any metadata.",
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 40
                    },
                    {
                        "sbg:modifiedOn": 1485434147,
                        "sbg:revisionNotes": "Update read group expression to handle cases with files without any metadata.",
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 41
                    }
                ],
                "cwlVersion": "sbg:draft-2",
                "id": "uros_sipetic/star-2-5-1b-demo/star-2-5-1-b/41",
                "y": 323.3333383018585,
                "inputs": [
                    {
                        "id": "#winFlankNbins",
                        "description": "=log2(winFlank), where win Flank is the size of the left and right flanking regions for each window (int>0).",
                        "inputBinding": {
                            "prefix": "--winFlankNbins",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Windows, Anchors, Binning",
                        "sbg:toolDefaultValue": "4",
                        "label": "Flanking regions size"
                    },
                    {
                        "id": "#winBinNbits",
                        "description": "=log2(winBin), where winBin is the size of the bin for the windows/clustering, each window will occupy an integer number of bins (int>0).",
                        "inputBinding": {
                            "prefix": "--winBinNbits",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Windows, Anchors, Binning",
                        "sbg:toolDefaultValue": "16",
                        "label": "Bin size"
                    },
                    {
                        "id": "#winAnchorMultimapNmax",
                        "description": "Max number of loci anchors are allowed to map to (int>0).",
                        "inputBinding": {
                            "prefix": "--winAnchorMultimapNmax",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Windows, Anchors, Binning",
                        "sbg:toolDefaultValue": "50",
                        "label": "Max loci anchors"
                    },
                    {
                        "id": "#winAnchorDistNbins",
                        "description": "Max number of bins between two anchors that allows aggregation of anchors into one window (int>0).",
                        "inputBinding": {
                            "prefix": "--winAnchorDistNbins",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Windows, Anchors, Binning",
                        "sbg:toolDefaultValue": "9",
                        "label": "Max bins between anchors"
                    },
                    {
                        "id": "#unmappedOutputName",
                        "description": "Names of the unmapped output files.",
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:category": "Output",
                        "sbg:toolDefaultValue": "\"Unmapped.out\"",
                        "label": "Unmapped output file names"
                    },
                    {
                        "id": "#twopassMode",
                        "description": "2-pass mapping mode. None: 1-pass mapping; Basic: basic 2-pass mapping, with all 1st pass junctions inserted into the genome indices on the fly.",
                        "inputBinding": {
                            "prefix": "--twopassMode",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            {
                                "name": "twopassMode",
                                "type": "enum",
                                "symbols": [
                                    "None",
                                    "Basic"
                                ]
                            }
                        ],
                        "sbg:category": "2-pass mapping",
                        "sbg:toolDefaultValue": "None",
                        "label": "Two-pass mode"
                    },
                    {
                        "id": "#twopass1readsN",
                        "description": "Number of reads to process for the 1st step. 0: 1-step only, no 2nd pass; use very large number (or default -1) to map all reads in the first step (int>0).",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "2-pass mapping",
                        "sbg:toolDefaultValue": "-1",
                        "label": "Reads to process in 1st step"
                    },
                    {
                        "id": "#sortUnmappedReads",
                        "description": "Unmapped reads are, by default, unsorted. If you want to sort them by read ID, please specify this option, though keep in mind that this can increase STAR run time.",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "sbg:category": "Output",
                        "sbg:toolDefaultValue": "Off",
                        "label": "Sort unmapped reads"
                    },
                    {
                        "id": "#sjdbScore",
                        "description": "Extra alignment score for alignments that cross database junctions.",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Splice junctions database",
                        "sbg:toolDefaultValue": "2",
                        "label": "Extra alignment score"
                    },
                    {
                        "id": "#sjdbOverhang",
                        "description": "Length of the donor/acceptor sequence on each side of the junctions, ideally = (mate_length - 1) (int >= 0), if int = 0, splice junction database is not used.",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Splice junctions database",
                        "sbg:toolDefaultValue": "100",
                        "label": "\"Overhang\" length"
                    },
                    {
                        "id": "#sjdbInsertSave",
                        "description": "Which files to save when sjdb junctions are inserted on the fly at the mapping step. None: not saving files at all; Basic: only small junction/transcript files; All: all files including big Genome, SA and SAindex. These files are output as archive.",
                        "type": [
                            "null",
                            {
                                "name": "sjdbInsertSave",
                                "type": "enum",
                                "symbols": [
                                    "Basic",
                                    "All",
                                    "None"
                                ]
                            }
                        ],
                        "sbg:category": "Splice junctions database",
                        "sbg:toolDefaultValue": "None",
                        "label": "Save junction files"
                    },
                    {
                        "id": "#sjdbGTFtagExonParentTranscript",
                        "description": "Tag name to be used as exons transcript-parents.",
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:category": "Splice junctions database",
                        "sbg:toolDefaultValue": "transcript_id",
                        "label": "Exons' parents name"
                    },
                    {
                        "id": "#sjdbGTFtagExonParentGene",
                        "description": "Tag name to be used as exons gene-parents.",
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:category": "Splice junctions database",
                        "sbg:toolDefaultValue": "gene_id",
                        "label": "Gene name"
                    },
                    {
                        "id": "#sjdbGTFfile",
                        "description": "Gene model annotations and/or known transcripts. No need to include this input, except in case of using \"on the fly\" annotations. If you are providing a GFF3 file and wish to use STAR results for further downstream analysis, a good idea would be to set the \"Exons' parents name\" (id: sjdbGTFtagExonParentTranscript) option to \"Parent\".",
                        "type": [
                            "null",
                            {
                                "name": "sjdbGTFfile",
                                "type": "array",
                                "items": "File"
                            }
                        ],
                        "sbg:category": "Basic",
                        "label": "Splice junction file",
                        "required": false,
                        "sbg:fileTypes": "GTF, GFF, GFF2, GFF3, TXT"
                    },
                    {
                        "id": "#sjdbGTFfeatureExon",
                        "description": "Feature type in GTF file to be used as exons for building transcripts.",
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:category": "Splice junctions database",
                        "sbg:toolDefaultValue": "exon",
                        "label": "Set exons feature"
                    },
                    {
                        "id": "#sjdbGTFchrPrefix",
                        "description": "Prefix for chromosome names in a GTF file (e.g. 'chr' for using ENSMEBL annotations with UCSC geneomes).",
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:category": "Splice junctions database",
                        "sbg:toolDefaultValue": "-",
                        "label": "Chromosome names"
                    },
                    {
                        "id": "#seedSearchStartLmaxOverLread",
                        "description": "SeedSearchStartLmax normalized to read length (sum of mates' lengths for paired-end reads).",
                        "inputBinding": {
                            "prefix": "--seedSearchStartLmaxOverLread",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "float"
                        ],
                        "sbg:category": "Alignments and Seeding",
                        "sbg:toolDefaultValue": "1.0",
                        "label": "Search start point normalized"
                    },
                    {
                        "id": "#seedSearchStartLmax",
                        "description": "Defines the search start point through the read - the read is split into pieces no longer than this value (int>0).",
                        "inputBinding": {
                            "prefix": "--seedSearchStartLmax",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Alignments and Seeding",
                        "sbg:toolDefaultValue": "50",
                        "label": "Search start point"
                    },
                    {
                        "id": "#seedSearchLmax",
                        "description": "Defines the maximum length of the seeds, if =0 max seed length is infinite (int>=0).",
                        "inputBinding": {
                            "prefix": "--seedSearchLmax",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Alignments and Seeding",
                        "sbg:toolDefaultValue": "0",
                        "label": "Max seed length"
                    },
                    {
                        "id": "#seedPerWindowNmax",
                        "description": "Max number of seeds per window (int>=0).",
                        "inputBinding": {
                            "prefix": "--seedPerWindowNmax",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Alignments and Seeding",
                        "sbg:toolDefaultValue": "50",
                        "label": "Max seeds per window"
                    },
                    {
                        "id": "#seedPerReadNmax",
                        "description": "Max number of seeds per read (int>=0).",
                        "inputBinding": {
                            "prefix": "--seedPerReadNmax",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Alignments and Seeding",
                        "sbg:toolDefaultValue": "1000",
                        "label": "Max seeds per read"
                    },
                    {
                        "id": "#seedNoneLociPerWindow",
                        "description": "Max number of one seed loci per window (int>=0).",
                        "inputBinding": {
                            "prefix": "--seedNoneLociPerWindow",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Alignments and Seeding",
                        "sbg:toolDefaultValue": "10",
                        "label": "Max one-seed loci per window"
                    },
                    {
                        "id": "#seedMultimapNmax",
                        "description": "Only pieces that map fewer than this value are utilized in the stitching procedure (int>=0).",
                        "inputBinding": {
                            "prefix": "--seedMultimapNmax",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Alignments and Seeding",
                        "sbg:toolDefaultValue": "10000",
                        "label": "Filter pieces for stitching"
                    },
                    {
                        "id": "#scoreStitchSJshift",
                        "description": "Maximum score reduction while searching for SJ boundaries in the stitching step.",
                        "inputBinding": {
                            "prefix": "--scoreStitchSJshift",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Scoring",
                        "sbg:toolDefaultValue": "1",
                        "label": "Max score reduction"
                    },
                    {
                        "id": "#scoreInsOpen",
                        "description": "Insertion open penalty.",
                        "inputBinding": {
                            "prefix": "--scoreInsOpen",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Scoring",
                        "sbg:toolDefaultValue": "-2",
                        "label": "Insertion Open Penalty"
                    },
                    {
                        "id": "#scoreInsBase",
                        "description": "Insertion extension penalty per base (in addition to --scoreInsOpen).",
                        "inputBinding": {
                            "prefix": "--scoreInsBase",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Scoring",
                        "sbg:toolDefaultValue": "-2",
                        "label": "Insertion extension penalty"
                    },
                    {
                        "id": "#scoreGenomicLengthLog2scale",
                        "description": "Extra score logarithmically scaled with genomic length of the alignment: <int>*log2(genomicLength).",
                        "inputBinding": {
                            "prefix": "--scoreGenomicLengthLog2scale",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "float"
                        ],
                        "sbg:category": "Scoring",
                        "sbg:toolDefaultValue": "-0.25",
                        "label": "Log scaled score"
                    },
                    {
                        "id": "#scoreGapNoncan",
                        "description": "Non-canonical gap open penalty (in addition to --scoreGap).",
                        "inputBinding": {
                            "prefix": "--scoreGapNoncan",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Scoring",
                        "sbg:toolDefaultValue": "-8",
                        "label": "Non-canonical gap open"
                    },
                    {
                        "id": "#scoreGapGCAG",
                        "description": "GC/AG and CT/GC gap open penalty (in addition to --scoreGap).",
                        "inputBinding": {
                            "prefix": "--scoreGapGCAG",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Scoring",
                        "sbg:toolDefaultValue": "-4",
                        "label": "GC/AG and CT/GC gap open"
                    },
                    {
                        "id": "#scoreGapATAC",
                        "description": "AT/AC and GT/AT gap open penalty (in addition to --scoreGap).",
                        "inputBinding": {
                            "prefix": "--scoreGapATAC",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Scoring",
                        "sbg:toolDefaultValue": "-8",
                        "label": "AT/AC and GT/AT gap open"
                    },
                    {
                        "id": "#scoreGap",
                        "description": "Gap open penalty.",
                        "inputBinding": {
                            "prefix": "--scoreGap",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Scoring",
                        "sbg:toolDefaultValue": "0",
                        "label": "Gap open penalty"
                    },
                    {
                        "id": "#scoreDelOpen",
                        "description": "Deletion open penalty.",
                        "inputBinding": {
                            "prefix": "--scoreDelOpen",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Scoring",
                        "sbg:toolDefaultValue": "-2",
                        "label": "Deletion open penalty"
                    },
                    {
                        "id": "#scoreDelBase",
                        "description": "Deletion extension penalty per base (in addition to --scoreDelOpen).",
                        "inputBinding": {
                            "prefix": "--scoreDelBase",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Scoring",
                        "sbg:toolDefaultValue": "-2",
                        "label": "Deletion extension penalty"
                    },
                    {
                        "id": "#rg_seq_center",
                        "description": "Specify the sequencing center for RG line.",
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:category": "Read group",
                        "sbg:toolDefaultValue": "Inferred from metadata",
                        "label": "Sequencing center"
                    },
                    {
                        "id": "#rg_sample_id",
                        "description": "Specify the sample ID for RG line.",
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:category": "Read group",
                        "sbg:toolDefaultValue": "Inferred from metadata",
                        "label": "Sample ID"
                    },
                    {
                        "id": "#rg_platform_unit_id",
                        "description": "Specify the platform unit ID for RG line.",
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:category": "Read group",
                        "sbg:toolDefaultValue": "Inferred from metadata",
                        "label": "Platform unit ID"
                    },
                    {
                        "id": "#rg_platform",
                        "description": "Specify the version of the technology that was used for sequencing or assaying.",
                        "type": [
                            "null",
                            {
                                "name": "rg_platform",
                                "type": "enum",
                                "symbols": [
                                    "LS 454",
                                    "Helicos",
                                    "Illumina",
                                    "ABI SOLiD",
                                    "Ion Torrent PGM",
                                    "PacBio"
                                ]
                            }
                        ],
                        "sbg:category": "Read group",
                        "sbg:toolDefaultValue": "Inferred from metadata",
                        "label": "Platform"
                    },
                    {
                        "id": "#rg_mfl",
                        "description": "Specify the median fragment length for RG line.",
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:category": "Read group",
                        "sbg:toolDefaultValue": "Inferred from metadata",
                        "label": "Median fragment length"
                    },
                    {
                        "id": "#rg_library_id",
                        "description": "Specify the library ID for RG line.",
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:category": "Read group",
                        "sbg:toolDefaultValue": "Inferred from metadata",
                        "label": "Library ID"
                    },
                    {
                        "id": "#reads",
                        "description": "Read sequence.",
                        "type": [
                            {
                                "name": "reads",
                                "type": "array",
                                "items": "File"
                            }
                        ],
                        "inputBinding": {
                            "valueFrom": {
                                "engine": "#cwl-js-engine",
                                "script": "{\n  var list = [].concat($job.inputs.reads)\n  var all_samples = []\n  \n  getUnique = function(arr){\n    var u = {}, a = [];\n    for(var i = 0, l = arr.length; i < l; ++i){\n      if(u.hasOwnProperty(arr[i])) {\n        continue;\n      }\n      a.push(arr[i]);\n      u[arr[i]] = 1;\n    }\n    return a;\n  }\n    \n  for (index = 0; index < list.length; ++index) {\n    if (list[index].metadata != null){\n      all_samples.push(list[index].metadata.sample_id)\n    }\n  }\n  samples = getUnique(all_samples)\n  \n  var samples_given = all_samples.length == list.length\n  \n  for (index = 0; index < list.length; ++index) {\n    if (list[index].metadata != null){\n      all_samples.push(list[index].metadata.sample_id)\n    }\n  }\n  samples = getUnique(all_samples)\n  var resp = []\n  \n  if (list.length == 1){\n    resp.push(list[0].path)\n    \n  }else if (list.length == 2){    \n    \n    left = \"\"\n    right = \"\"\n      \n    for (index = 0; index < list.length; ++index) {\n      \n      if (list[index].metadata != null){\n        if (list[index].metadata.paired_end == 1){\n          left = list[index].path\n        }else if (list[index].metadata.paired_end == 2){\n          right = list[index].path\n        }\n      }\n    }\n    \n    if (left != \"\" && right != \"\"){      \n      resp.push(left)\n      resp.push(right)\n    }\n  }\n  else if (list.length > 2){\n    left = []\n    right = []\n    if (samples_given){\n      for (sample_ind = 0; sample_ind < samples.length; ++sample_ind){\n        for (read_ind = 0; read_ind < list.length; ++read_ind){\n          if (list[read_ind].metadata != null){\n            if (list[read_ind].metadata.paired_end == 1 && list[read_ind].metadata.sample_id == samples[sample_ind]){\n              left.push(list[read_ind].path)\n            }else if (list[read_ind].metadata.paired_end == 2 && list[read_ind].metadata.sample_id == samples[sample_ind]){\n              right.push(list[read_ind].path)}\n          }\n        }\n      }\n    } else {\n        for (index = 0; index < list.length; ++index) {\n\n          if (list[index].metadata != null){\n            if (list[index].metadata.paired_end == 1){\n              left.push(list[index].path)\n            }else if (list[index].metadata.paired_end == 2){\n              right.push(list[index].path)\n            }\n          }\n        }\n    }\n\n\n    left_join = left.join()\n    right_join = right.join()\n    if (left != [] && right != []){      \n      resp.push(left_join)\n      resp.push(right_join)\n    }\n    }\n  \n  if(resp.length > 0){    \n    return \"--readFilesIn \".concat(resp.join(\" \"))\n  }\n}",
                                "class": "Expression"
                            },
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "position": 10,
                            "itemSeparator": " "
                        },
                        "sbg:category": "Basic",
                        "label": "Read sequence",
                        "required": true,
                        "sbg:fileTypes": "FASTA, FASTQ, FA, FQ, FASTQ.GZ, FQ.GZ, FASTQ.BZ2, FQ.BZ2"
                    },
                    {
                        "id": "#readMatesLengthsIn",
                        "description": "Equal/Not equal - lengths of names, sequences, qualities for both mates are the same/not the same. \"Not equal\" is safe in all situations.",
                        "inputBinding": {
                            "prefix": "--readMatesLengthsIn",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            {
                                "name": "readMatesLengthsIn",
                                "type": "enum",
                                "symbols": [
                                    "NotEqual",
                                    "Equal"
                                ]
                            }
                        ],
                        "sbg:category": "Read parameters",
                        "sbg:toolDefaultValue": "NotEqual",
                        "label": "Reads lengths"
                    },
                    {
                        "id": "#readMapNumber",
                        "description": "Number of reads to map from the beginning of the file.",
                        "inputBinding": {
                            "prefix": "--readMapNumber",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Read parameters",
                        "sbg:toolDefaultValue": "-1",
                        "label": "Reads to map"
                    },
                    {
                        "id": "#quantTranscriptomeBan",
                        "description": "Prohibit various alignment type. IndelSoftclipSingleend: prohibit indels, soft clipping and single-end alignments - compatible with RSEM; Singleend: prohibit single-end alignments.",
                        "inputBinding": {
                            "prefix": "--quantTranscriptomeBan",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            {
                                "name": "quantTranscriptomeBan",
                                "type": "enum",
                                "symbols": [
                                    "IndelSoftclipSingleend",
                                    "Singleend"
                                ]
                            }
                        ],
                        "sbg:category": "Quantification of Annotations",
                        "sbg:toolDefaultValue": "IndelSoftclipSingleend",
                        "label": "Prohibit alignment type"
                    },
                    {
                        "id": "#quantMode",
                        "description": "Types of quantification requested. 'TranscriptomeSAM' option outputs SAM/BAM alignments to transcriptome into a separate file. With 'GeneCounts' option, STAR will count number of reads per gene while mapping.",
                        "type": [
                            "null",
                            {
                                "name": "quantMode",
                                "type": "enum",
                                "symbols": [
                                    "TranscriptomeSAM",
                                    "GeneCounts",
                                    "TranscriptomeSAM GeneCounts"
                                ]
                            }
                        ],
                        "sbg:category": "Quantification of Annotations",
                        "sbg:toolDefaultValue": "-",
                        "label": "Quantification mode"
                    },
                    {
                        "id": "#outSortingType",
                        "description": "Type of output sorting.",
                        "type": [
                            "null",
                            {
                                "name": "outSortingType",
                                "type": "enum",
                                "symbols": [
                                    "Unsorted",
                                    "SortedByCoordinate"
                                ]
                            }
                        ],
                        "sbg:category": "Output",
                        "sbg:toolDefaultValue": "Unsorted",
                        "label": "Output sorting type"
                    },
                    {
                        "id": "#outSJfilterReads",
                        "description": "Which reads to consider for collapsed splice junctions output. All: all reads, unique- and multi-mappers; Unique: uniquely mapping reads only.",
                        "inputBinding": {
                            "prefix": "--outSJfilterReads",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            {
                                "name": "outSJfilterReads",
                                "type": "enum",
                                "symbols": [
                                    "All",
                                    "Unique"
                                ]
                            }
                        ],
                        "sbg:category": "Output filtering: splice junctions",
                        "sbg:toolDefaultValue": "All",
                        "label": "Collapsed junctions reads"
                    },
                    {
                        "id": "#outSJfilterOverhangMin",
                        "description": "Minimum overhang length for splice junctions on both sides for each of the motifs. To set no output for desired motif, assign -1 to the corresponding field. Does not apply to annotated junctions.",
                        "inputBinding": {
                            "prefix": "--outSJfilterOverhangMin",
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "itemSeparator": " "
                        },
                        "type": [
                            "null",
                            {
                                "items": "int",
                                "type": "array"
                            }
                        ],
                        "sbg:category": "Output filtering: splice junctions",
                        "sbg:toolDefaultValue": "30 12 12 12",
                        "label": "Min overhang SJ"
                    },
                    {
                        "id": "#outSJfilterIntronMaxVsReadN",
                        "description": "Maximum gap allowed for junctions supported by 1,2,3...N reads (int >= 0) i.e. by default junctions supported by 1 read can have gaps <=50000b, by 2 reads: <=100000b, by 3 reads: <=200000. By 4 or more reads: any gap <=alignIntronMax. Does not apply to annotated junctions.",
                        "inputBinding": {
                            "prefix": "--outSJfilterIntronMaxVsReadN",
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "itemSeparator": " "
                        },
                        "type": [
                            "null",
                            {
                                "items": "int",
                                "type": "array"
                            }
                        ],
                        "sbg:category": "Output filtering: splice junctions",
                        "sbg:toolDefaultValue": "50000 100000 200000",
                        "label": "Max gap allowed"
                    },
                    {
                        "id": "#outSJfilterDistToOtherSJmin",
                        "description": "Minimum allowed distance to other junctions' donor/acceptor for each of the motifs (int >= 0). Does not apply to annotated junctions.",
                        "inputBinding": {
                            "prefix": "--outSJfilterDistToOtherSJmin",
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "itemSeparator": " "
                        },
                        "type": [
                            "null",
                            {
                                "items": "int",
                                "type": "array"
                            }
                        ],
                        "sbg:category": "Output filtering: splice junctions",
                        "sbg:toolDefaultValue": "10 0 5 10",
                        "label": "Min distance to other donor/acceptor"
                    },
                    {
                        "id": "#outSJfilterCountUniqueMin",
                        "description": "Minimum uniquely mapping read count per junction for each of the motifs. To set no output for desired motif, assign -1 to the corresponding field. Junctions are output if one of --outSJfilterCountUniqueMin OR --outSJfilterCountTotalMin conditions are satisfied. Does not apply to annotated junctions.",
                        "inputBinding": {
                            "prefix": "--outSJfilterCountUniqueMin",
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "itemSeparator": " "
                        },
                        "type": [
                            "null",
                            {
                                "items": "int",
                                "type": "array"
                            }
                        ],
                        "sbg:category": "Output filtering: splice junctions",
                        "sbg:toolDefaultValue": "3 1 1 1",
                        "label": "Min unique count"
                    },
                    {
                        "id": "#outSJfilterCountTotalMin",
                        "description": "Minimum total (multi-mapping+unique) read count per junction for each of the motifs. To set no output for desired motif, assign -1 to the corresponding field. Junctions are output if one of --outSJfilterCountUniqueMin OR --outSJfilterCountTotalMin conditions are satisfied. Does not apply to annotated junctions.",
                        "inputBinding": {
                            "prefix": "--outSJfilterCountTotalMin",
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "itemSeparator": " "
                        },
                        "type": [
                            "null",
                            {
                                "items": "int",
                                "type": "array"
                            }
                        ],
                        "sbg:category": "Output filtering: splice junctions",
                        "sbg:toolDefaultValue": "3 1 1 1",
                        "label": "Min total count"
                    },
                    {
                        "id": "#outSAMunmapped",
                        "description": "Output of unmapped reads in the SAM format. None: no output Within: output unmapped reads within the main SAM file (i.e. Aligned.out.sam).",
                        "inputBinding": {
                            "prefix": "--outSAMunmapped",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            {
                                "name": "outSAMunmapped",
                                "type": "enum",
                                "symbols": [
                                    "None",
                                    "Within",
                                    "Within KeepPairs"
                                ]
                            }
                        ],
                        "sbg:category": "Output",
                        "sbg:toolDefaultValue": "None",
                        "label": "Write unmapped in SAM"
                    },
                    {
                        "id": "#outSAMtype",
                        "description": "Format of output alignments.",
                        "inputBinding": {
                            "valueFrom": {
                                "engine": "#cwl-js-engine",
                                "script": "{\n  SAM_type = $job.inputs.outSAMtype\n  SORT_type = $job.inputs.outSortingType\n  if (SAM_type && SORT_type) {\n    if (SAM_type==\"SAM\") {\n      return \"--outSAMtype SAM\"\n    } else {\n      return \"--outSAMtype \".concat(SAM_type, \" \", SORT_type)\n    }\n  } else if (SAM_type && SORT_type==null) {\n    if (SAM_type==\"SAM\") {\n      return \"--outSAMtype SAM\"\n    } else {\n      return \"--outSAMtype \".concat(SAM_type, \" Unsorted\")\n    }\n  }\n}",
                                "class": "Expression"
                            },
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            {
                                "name": "outSAMtype",
                                "type": "enum",
                                "symbols": [
                                    "SAM",
                                    "BAM"
                                ]
                            }
                        ],
                        "sbg:category": "Output",
                        "sbg:toolDefaultValue": "SAM",
                        "label": "Output format"
                    },
                    {
                        "id": "#outSAMstrandField",
                        "description": "Cufflinks-like strand field flag. None: not used; intronMotif: strand derived from the intron motif. Reads with inconsistent and/or non-canonical introns are filtered out.",
                        "inputBinding": {
                            "prefix": "--outSAMstrandField",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            {
                                "name": "outSAMstrandField",
                                "type": "enum",
                                "symbols": [
                                    "None",
                                    "intronMotif"
                                ]
                            }
                        ],
                        "sbg:category": "Output",
                        "sbg:toolDefaultValue": "None",
                        "label": "Strand field flag"
                    },
                    {
                        "id": "#outSAMreadID",
                        "description": "Read ID record type. Standard: first word (until space) from the FASTx read ID line, removing /1,/2 from the end; Number: read number (index) in the FASTx file.",
                        "inputBinding": {
                            "prefix": "--outSAMreadID",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            {
                                "name": "outSAMreadID",
                                "type": "enum",
                                "symbols": [
                                    "Standard",
                                    "Number"
                                ]
                            }
                        ],
                        "sbg:category": "Output",
                        "sbg:toolDefaultValue": "Standard",
                        "label": "Read ID"
                    },
                    {
                        "id": "#outSAMprimaryFlag",
                        "description": "Which alignments are considered primary - all others will be marked with 0x100 bit in the FLAG. OneBestScore: only one alignment with the best score is primary; AllBestScore: all alignments with the best score are primary.",
                        "inputBinding": {
                            "prefix": "--outSAMprimaryFlag",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            {
                                "name": "outSAMprimaryFlag",
                                "type": "enum",
                                "symbols": [
                                    "OneBestScore",
                                    "AllBestScore"
                                ]
                            }
                        ],
                        "sbg:category": "Output",
                        "sbg:toolDefaultValue": "OneBestScore",
                        "label": "Primary alignments"
                    },
                    {
                        "id": "#outSAMorder",
                        "description": "Type of sorting for the SAM output. Paired: one mate after the other for all paired alignments; PairedKeepInputOrder: one mate after the other for all paired alignments, the order is kept the same as in the input FASTQ files.",
                        "inputBinding": {
                            "prefix": "--outSAMorder",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            {
                                "name": "outSAMorder",
                                "type": "enum",
                                "symbols": [
                                    "Paired",
                                    "PairedKeepInputOrder"
                                ]
                            }
                        ],
                        "sbg:category": "Output",
                        "sbg:toolDefaultValue": "Paired",
                        "label": "Sorting in SAM"
                    },
                    {
                        "id": "#outSAMmultNmax",
                        "description": "Max number of multiple alignments for a read that will be output to the SAM/BAM files.",
                        "inputBinding": {
                            "prefix": "--outSAMmultNmax",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Output",
                        "sbg:toolDefaultValue": "-1",
                        "label": "Max number of multiple alignment"
                    },
                    {
                        "id": "#outSAMmode",
                        "description": "Mode of SAM output. Full: full SAM output; NoQS: full SAM but without quality scores.",
                        "inputBinding": {
                            "prefix": "--outSAMmode",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            {
                                "name": "outSAMmode",
                                "type": "enum",
                                "symbols": [
                                    "Full",
                                    "NoQS",
                                    "None"
                                ]
                            }
                        ],
                        "sbg:category": "Output",
                        "sbg:toolDefaultValue": "Full",
                        "label": "SAM mode"
                    },
                    {
                        "id": "#outSAMmapqUnique",
                        "description": "MAPQ value for unique mappers (0 to 255).",
                        "inputBinding": {
                            "prefix": "--outSAMmapqUnique",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Output",
                        "sbg:toolDefaultValue": "255",
                        "label": "MAPQ value"
                    },
                    {
                        "id": "#outSAMheaderPG",
                        "description": "Extra @PG (software) line of the SAM header (in addition to STAR).",
                        "inputBinding": {
                            "prefix": "--outSAMheaderPG",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:category": "Output",
                        "sbg:toolDefaultValue": "-",
                        "label": "SAM header @PG"
                    },
                    {
                        "id": "#outSAMheaderHD",
                        "description": "@HD (header) line of the SAM header.",
                        "inputBinding": {
                            "prefix": "--outSAMheaderHD",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:category": "Output",
                        "sbg:toolDefaultValue": "-",
                        "label": "SAM header @HD"
                    },
                    {
                        "id": "#outSAMflagOR",
                        "description": "Set specific bits of the SAM FLAG.",
                        "inputBinding": {
                            "prefix": "--outSAMflagOR",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Output",
                        "sbg:toolDefaultValue": "0",
                        "label": "OR SAM flag"
                    },
                    {
                        "id": "#outSAMflagAND",
                        "description": "Set specific bits of the SAM FLAG.",
                        "inputBinding": {
                            "prefix": "--outSAMflagAND",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Output",
                        "sbg:toolDefaultValue": "65535",
                        "label": "AND SAM flag"
                    },
                    {
                        "id": "#outSAMfilter",
                        "description": "Filter the output into main SAM/BAM files.",
                        "inputBinding": {
                            "prefix": "--outSAMfilter",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            {
                                "name": "outSAMfilter",
                                "type": "enum",
                                "symbols": [
                                    "KeepOnlyAddedReferences",
                                    "None"
                                ]
                            }
                        ],
                        "sbg:category": "Output",
                        "sbg:toolDefaultValue": "None",
                        "label": "Output filter"
                    },
                    {
                        "id": "#outSAMattributes",
                        "description": "Desired SAM attributes, in the order desired for the output SAM. NH: any combination in any order; Standard: NH HI AS nM; All: NH HI AS nM NM MD jM jI; None: no attributes.",
                        "inputBinding": {
                            "prefix": "--outSAMattributes",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            {
                                "name": "outSAMattributes",
                                "type": "enum",
                                "symbols": [
                                    "Standard",
                                    "NH",
                                    "All",
                                    "None"
                                ]
                            }
                        ],
                        "sbg:category": "Output",
                        "sbg:toolDefaultValue": "Standard",
                        "label": "SAM attributes"
                    },
                    {
                        "id": "#outSAMattrIHstart",
                        "description": "Start value for the IH attribute. 0 may be required by some downstream software, such as Cufflinks or StringTie.",
                        "inputBinding": {
                            "prefix": "--outSAMattrIHstart",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Output",
                        "sbg:toolDefaultValue": "1",
                        "label": "IH attribute start value"
                    },
                    {
                        "id": "#outReadsUnmapped",
                        "description": "Output of unmapped reads (besides SAM). None: no output; Fastx: output in separate fasta/fastq files, Unmapped.out.mate1/2.",
                        "inputBinding": {
                            "prefix": "--outReadsUnmapped",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            {
                                "name": "outReadsUnmapped",
                                "type": "enum",
                                "symbols": [
                                    "None",
                                    "Fastx"
                                ]
                            }
                        ],
                        "sbg:category": "Output",
                        "sbg:toolDefaultValue": "None",
                        "label": "Output unmapped reads"
                    },
                    {
                        "id": "#outQSconversionAdd",
                        "description": "Add this number to the quality score (e.g. to convert from Illumina to Sanger, use -31).",
                        "inputBinding": {
                            "prefix": "--outQSconversionAdd",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Output",
                        "sbg:toolDefaultValue": "0",
                        "label": "Quality conversion"
                    },
                    {
                        "id": "#outMultimapperOrder",
                        "description": "Random option outputs multiple alignments for each read in random order, and also also randomizes the choice of the primary alignment from the highest scoring alignments.",
                        "inputBinding": {
                            "prefix": "--outMultimapperOrder",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            {
                                "name": "outMultimapperOrder",
                                "type": "enum",
                                "symbols": [
                                    "Random",
                                    "Old_2.4"
                                ]
                            }
                        ],
                        "sbg:category": "Output",
                        "sbg:toolDefaultValue": "Old_2.4",
                        "label": "Order of multimapping alignment"
                    },
                    {
                        "id": "#outFilterType",
                        "description": "Type of filtering. Normal: standard filtering using only current alignment; BySJout: keep only those reads that contain junctions that passed filtering into SJ.out.tab.",
                        "inputBinding": {
                            "prefix": "--outFilterType",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            {
                                "name": "outFilterType",
                                "type": "enum",
                                "symbols": [
                                    "Normal",
                                    "BySJout"
                                ]
                            }
                        ],
                        "sbg:category": "Output filtering",
                        "sbg:toolDefaultValue": "Normal",
                        "label": "Filtering type"
                    },
                    {
                        "id": "#outFilterScoreMinOverLread",
                        "description": "'Minimum score' normalized to read length (sum of mates' lengths for paired-end reads).",
                        "inputBinding": {
                            "prefix": "--outFilterScoreMinOverLread",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "float"
                        ],
                        "sbg:category": "Output filtering",
                        "sbg:toolDefaultValue": "0.66",
                        "label": "Min score normalized"
                    },
                    {
                        "id": "#outFilterScoreMin",
                        "description": "Alignment will be output only if its score is higher than this value.",
                        "inputBinding": {
                            "prefix": "--outFilterScoreMin",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Output filtering",
                        "sbg:toolDefaultValue": "0",
                        "label": "Min score"
                    },
                    {
                        "id": "#outFilterMultimapScoreRange",
                        "description": "The score range below the maximum score for multimapping alignments.",
                        "inputBinding": {
                            "prefix": "--outFilterMultimapScoreRange",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Output filtering",
                        "sbg:toolDefaultValue": "1",
                        "label": "Multimapping score range"
                    },
                    {
                        "id": "#outFilterMultimapNmax",
                        "description": "Read alignments will be output only if the read maps fewer than this value, otherwise no alignments will be output.",
                        "inputBinding": {
                            "prefix": "--outFilterMultimapNmax",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Output filtering",
                        "sbg:toolDefaultValue": "10",
                        "label": "Max number of mappings"
                    },
                    {
                        "id": "#outFilterMismatchNoverReadLmax",
                        "description": "Alignment will be output only if its ratio of mismatches to *read* length is less than this value.",
                        "inputBinding": {
                            "prefix": "--outFilterMismatchNoverReadLmax",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "float"
                        ],
                        "sbg:category": "Output filtering",
                        "sbg:toolDefaultValue": "1",
                        "label": "Mismatches to *read* length"
                    },
                    {
                        "id": "#outFilterMismatchNoverLmax",
                        "description": "Alignment will be output only if its ratio of mismatches to *mapped* length is less than this value.",
                        "inputBinding": {
                            "prefix": "--outFilterMismatchNoverLmax",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "float"
                        ],
                        "sbg:category": "Output filtering",
                        "sbg:toolDefaultValue": "0.3",
                        "label": "Mismatches to *mapped* length"
                    },
                    {
                        "id": "#outFilterMismatchNmax",
                        "description": "Alignment will be output only if it has fewer mismatches than this value.",
                        "inputBinding": {
                            "prefix": "--outFilterMismatchNmax",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Output filtering",
                        "sbg:toolDefaultValue": "10",
                        "label": "Max number of mismatches"
                    },
                    {
                        "id": "#outFilterMatchNminOverLread",
                        "description": "'Minimum matched bases' normalized to read length (sum of mates lengths for paired-end reads).",
                        "inputBinding": {
                            "prefix": "--outFilterMatchNminOverLread",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "float"
                        ],
                        "sbg:category": "Output filtering",
                        "sbg:toolDefaultValue": "0.66",
                        "label": "Min matched bases normalized"
                    },
                    {
                        "id": "#outFilterMatchNmin",
                        "description": "Alignment will be output only if the number of matched bases is higher than this value.",
                        "inputBinding": {
                            "prefix": "--outFilterMatchNmin",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Output filtering",
                        "sbg:toolDefaultValue": "0",
                        "label": "Min matched bases"
                    },
                    {
                        "id": "#outFilterIntronMotifs",
                        "description": "Filter alignment using their motifs. None: no filtering; RemoveNoncanonical: filter out alignments that contain non-canonical junctions; RemoveNoncanonicalUnannotated: filter out alignments that contain non-canonical unannotated junctions when using annotated splice junctions database. The annotated non-canonical junctions will be kept.",
                        "inputBinding": {
                            "prefix": "--outFilterIntronMotifs",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            {
                                "name": "outFilterIntronMotifs",
                                "type": "enum",
                                "symbols": [
                                    "None",
                                    "RemoveNoncanonical",
                                    "RemoveNoncanonicalUnannotated"
                                ]
                            }
                        ],
                        "sbg:category": "Output filtering",
                        "sbg:toolDefaultValue": "None",
                        "label": "Motifs filtering"
                    },
                    {
                        "id": "#no_read_groups",
                        "description": "If this boolean argument is specified, no read groups will be set in the resulting BAM header.",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "sbg:category": "Read group",
                        "sbg:toolDefaultValue": "Off",
                        "label": "No read groups"
                    },
                    {
                        "id": "#limitSjdbInsertNsj",
                        "description": "Maximum number of junction to be inserted to the genome on the fly at the mapping stage, including those from annotations and those detected in the 1st step of the 2-pass run.",
                        "inputBinding": {
                            "prefix": "--limitSjdbInsertNsj",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Limits",
                        "sbg:toolDefaultValue": "1000000",
                        "label": "Max insert junctions"
                    },
                    {
                        "id": "#limitOutSJoneRead",
                        "description": "Max number of junctions for one read (including all multi-mappers).",
                        "inputBinding": {
                            "prefix": "--limitOutSJoneRead",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Limits",
                        "sbg:toolDefaultValue": "1000",
                        "label": "Junctions max number"
                    },
                    {
                        "id": "#limitOutSJcollapsed",
                        "description": "Max number of collapsed junctions.",
                        "inputBinding": {
                            "prefix": "--limitOutSJcollapsed",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Limits",
                        "sbg:toolDefaultValue": "1000000",
                        "label": "Collapsed junctions max number"
                    },
                    {
                        "id": "#limitBAMsortRAM",
                        "description": "Maximum available RAM for sorting BAM. If set to 0, it will be set to the genome index size.",
                        "inputBinding": {
                            "prefix": "--limitBAMsortRAM",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Limits",
                        "sbg:toolDefaultValue": "0",
                        "label": "Limit BAM sorting memory"
                    },
                    {
                        "id": "#genomeDirName",
                        "description": "Name of the directory which contains genome files (when genome.tar is uncompressed).",
                        "inputBinding": {
                            "valueFrom": {
                                "engine": "#cwl-js-engine",
                                "script": "$job.inputs.genomeDirName || \"genomeDir\"",
                                "class": "Expression"
                            },
                            "prefix": "--genomeDir",
                            "sbg:cmdInclude": true,
                            "position": 0,
                            "separate": true
                        },
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:category": "Basic",
                        "sbg:toolDefaultValue": "genomeDir",
                        "label": "Genome dir name"
                    },
                    {
                        "id": "#genome",
                        "description": "Genome files created using STAR Genome Generate.",
                        "type": [
                            "File"
                        ],
                        "sbg:category": "Basic",
                        "label": "Genome files",
                        "required": true,
                        "sbg:fileTypes": "TAR"
                    },
                    {
                        "id": "#clip5pNbases",
                        "description": "Number of bases to clip from 5p of each mate. In case only one value is given, it will be assumed the same for both mates.",
                        "inputBinding": {
                            "prefix": "--clip5pNbases",
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "itemSeparator": " "
                        },
                        "type": [
                            "null",
                            {
                                "items": "int",
                                "type": "array"
                            }
                        ],
                        "sbg:category": "Read parameters",
                        "sbg:toolDefaultValue": "0",
                        "label": "Clip 5p bases"
                    },
                    {
                        "id": "#clip3pNbases",
                        "description": "Number of bases to clip from 3p of each mate. In case only one value is given, it will be assumed the same for both mates.",
                        "inputBinding": {
                            "prefix": "--clip3pNbases",
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "itemSeparator": " "
                        },
                        "type": [
                            "null",
                            {
                                "items": "int",
                                "type": "array"
                            }
                        ],
                        "sbg:category": "Read parameters",
                        "sbg:toolDefaultValue": "0",
                        "label": "Clip 3p bases"
                    },
                    {
                        "id": "#clip3pAfterAdapterNbases",
                        "description": "Number of bases to clip from 3p of each mate after the adapter clipping. In case only one value is given, it will be assumed the same for both mates.",
                        "inputBinding": {
                            "prefix": "--clip3pAfterAdapterNbases",
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "itemSeparator": " "
                        },
                        "type": [
                            "null",
                            {
                                "name": "clip3pAfterAdapterNbases",
                                "type": "array",
                                "items": "int"
                            }
                        ],
                        "sbg:category": "Read parameters",
                        "sbg:toolDefaultValue": "0",
                        "label": "Clip 3p after adapter seq"
                    },
                    {
                        "id": "#clip3pAdapterSeq",
                        "description": "Adapter sequence to clip from 3p of each mate. In case only one value is given, it will be assumed the same for both mates.",
                        "inputBinding": {
                            "prefix": "--clip3pAdapterSeq",
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "itemSeparator": " "
                        },
                        "type": [
                            "null",
                            {
                                "items": "string",
                                "type": "array"
                            }
                        ],
                        "sbg:category": "Read parameters",
                        "sbg:toolDefaultValue": "-",
                        "label": "Clip 3p adapter sequence"
                    },
                    {
                        "id": "#clip3pAdapterMMp",
                        "description": "Max proportion of mismatches for 3p adapter clipping for each mate. In case only one value is given, it will be assumed the same for both mates.",
                        "inputBinding": {
                            "prefix": "--clip3pAdapterMMp",
                            "separate": true,
                            "sbg:cmdInclude": true,
                            "itemSeparator": " "
                        },
                        "type": [
                            "null",
                            {
                                "items": "float",
                                "type": "array"
                            }
                        ],
                        "sbg:category": "Read parameters",
                        "sbg:toolDefaultValue": "0.1",
                        "label": "Max mismatches proportions"
                    },
                    {
                        "id": "#chimSegmentReadGapMax",
                        "description": "Maximum gap in the read sequence between chimeric segments (int>=0).",
                        "inputBinding": {
                            "prefix": "--chimSegmentReadGapMax",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Chimeric Alignments",
                        "sbg:toolDefaultValue": "0",
                        "label": "Chimeric segment gap"
                    },
                    {
                        "id": "#chimSegmentMin",
                        "description": "Minimum length of chimeric segment length, if =0, no chimeric output (int>=0).",
                        "inputBinding": {
                            "prefix": "--chimSegmentMin",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Chimeric Alignments",
                        "sbg:toolDefaultValue": "0",
                        "label": "Min segment length"
                    },
                    {
                        "id": "#chimScoreSeparation",
                        "description": "Minimum difference (separation) between the best chimeric score and the next one (int>=0).",
                        "inputBinding": {
                            "prefix": "--chimScoreSeparation",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Chimeric Alignments",
                        "sbg:toolDefaultValue": "10",
                        "label": "Min separation score"
                    },
                    {
                        "id": "#chimScoreMin",
                        "description": "Minimum total (summed) score of the chimeric segments (int>=0).",
                        "inputBinding": {
                            "prefix": "--chimScoreMin",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Chimeric Alignments",
                        "sbg:toolDefaultValue": "0",
                        "label": "Min total score"
                    },
                    {
                        "id": "#chimScoreJunctionNonGTAG",
                        "description": "Penalty for a non-GT/AG chimeric junction.",
                        "inputBinding": {
                            "prefix": "--chimScoreJunctionNonGTAG",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Chimeric Alignments",
                        "sbg:toolDefaultValue": "-1",
                        "label": "Non-GT/AG penalty"
                    },
                    {
                        "id": "#chimScoreDropMax",
                        "description": "Max drop (difference) of chimeric score (the sum of scores of all chimeric segements) from the read length (int>=0).",
                        "inputBinding": {
                            "prefix": "--chimScoreDropMax",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Chimeric Alignments",
                        "sbg:toolDefaultValue": "20",
                        "label": "Max drop score"
                    },
                    {
                        "id": "#chimOutType",
                        "description": "Type of chimeric output. SeparateSAMold: output old SAM into separate Chimeric.out.sam file; Within: output into main aligned SAM/BAM files.",
                        "type": [
                            "null",
                            {
                                "name": "chimOutType",
                                "type": "enum",
                                "symbols": [
                                    "SeparateSAMold",
                                    "Within"
                                ]
                            }
                        ],
                        "sbg:category": "Chimeric Alignments",
                        "sbg:toolDefaultValue": "SeparateSAMold",
                        "label": "Chimeric output type"
                    },
                    {
                        "id": "#chimJunctionOverhangMin",
                        "description": "Minimum overhang for a chimeric junction (int>=0).",
                        "inputBinding": {
                            "prefix": "--chimJunctionOverhangMin",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Chimeric Alignments",
                        "sbg:toolDefaultValue": "20",
                        "label": "Min junction overhang"
                    },
                    {
                        "id": "#chimFilter",
                        "description": "Different filters for chimeric alignments None no filtering banGenomicN Ns are not allowed in the genome sequence around the chimeric junction.",
                        "inputBinding": {
                            "prefix": "--chimFilter",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            {
                                "name": "chimFilter",
                                "type": "enum",
                                "symbols": [
                                    "banGenomicN",
                                    "None"
                                ]
                            }
                        ],
                        "sbg:category": "Chimeric Alignments",
                        "sbg:toolDefaultValue": "banGenomicN",
                        "label": "Chimeric filter"
                    },
                    {
                        "id": "#alignWindowsPerReadNmax",
                        "description": "Max number of windows per read (int>0).",
                        "inputBinding": {
                            "prefix": "--alignWindowsPerReadNmax",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "float"
                        ],
                        "sbg:category": "Alignments and Seeding",
                        "sbg:toolDefaultValue": "10000",
                        "label": "Max windows per read"
                    },
                    {
                        "id": "#alignTranscriptsPerWindowNmax",
                        "description": "Max number of transcripts per window (int>0).",
                        "inputBinding": {
                            "prefix": "--alignTranscriptsPerWindowNmax",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Alignments and Seeding",
                        "sbg:toolDefaultValue": "100",
                        "label": "Max transcripts per window"
                    },
                    {
                        "id": "#alignTranscriptsPerReadNmax",
                        "description": "Max number of different alignments per read to consider (int>0).",
                        "inputBinding": {
                            "prefix": "--alignTranscriptsPerReadNmax",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Alignments and Seeding",
                        "sbg:toolDefaultValue": "10000",
                        "label": "Max transcripts per read"
                    },
                    {
                        "id": "#alignSplicedMateMapLminOverLmate",
                        "description": "AlignSplicedMateMapLmin normalized to mate length (float>0).",
                        "inputBinding": {
                            "prefix": "--alignSplicedMateMapLminOverLmate",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "float"
                        ],
                        "sbg:category": "Alignments and Seeding",
                        "sbg:toolDefaultValue": "0.66",
                        "label": "Min mapped length normalized"
                    },
                    {
                        "id": "#alignSplicedMateMapLmin",
                        "description": "Minimum mapped length for a read mate that is spliced (int>0).",
                        "inputBinding": {
                            "prefix": "--alignSplicedMateMapLmin",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Alignments and Seeding",
                        "sbg:toolDefaultValue": "0",
                        "label": "Min mapped length"
                    },
                    {
                        "id": "#alignSoftClipAtReferenceEnds",
                        "description": "Option which allows soft clipping of alignments at the reference (chromosome) ends. Can be disabled for compatibility with Cufflinks/Cuffmerge. Yes: Enables soft clipping; No: Disables soft clipping.",
                        "inputBinding": {
                            "prefix": "--alignSoftClipAtReferenceEnds",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            {
                                "name": "alignSoftClipAtReferenceEnds",
                                "type": "enum",
                                "symbols": [
                                    "Yes",
                                    "No"
                                ]
                            }
                        ],
                        "sbg:category": "Alignments and Seeding",
                        "sbg:toolDefaultValue": "Yes",
                        "label": "Soft clipping"
                    },
                    {
                        "id": "#alignSJstitchMismatchNmax",
                        "description": "4*int>=0: maximum number of mismatches for stitching of the splice junctions (-1: no limit). (1) non-canonical motifs, (2) GT/AG and CT/AC motif, (3) GC/AG and CT/GC motif, (4) AT/AC and GT/AT motif.",
                        "inputBinding": {
                            "prefix": "--alignSJstitchMismatchNmax",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:category": "Alignments and Seeding",
                        "sbg:toolDefaultValue": "0 -1 0 0",
                        "label": "Splice junction stich max mismatch"
                    },
                    {
                        "id": "#alignSJoverhangMin",
                        "description": "Minimum overhang (i.e. block size) for spliced alignments (int>0).",
                        "inputBinding": {
                            "prefix": "--alignSJoverhangMin",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Alignments and Seeding",
                        "sbg:toolDefaultValue": "5",
                        "label": "Min overhang"
                    },
                    {
                        "id": "#alignSJDBoverhangMin",
                        "description": "Minimum overhang (i.e. block size) for annotated (sjdb) spliced alignments (int>0).",
                        "inputBinding": {
                            "prefix": "--alignSJDBoverhangMin",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Alignments and Seeding",
                        "sbg:toolDefaultValue": "3",
                        "label": "Min overhang: annotated"
                    },
                    {
                        "id": "#alignMatesGapMax",
                        "description": "Maximum gap between two mates, if 0, max intron gap will be determined by (2^winBinNbits)*winAnchorDistNbins.",
                        "inputBinding": {
                            "prefix": "--alignMatesGapMax",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Alignments and Seeding",
                        "sbg:toolDefaultValue": "0",
                        "label": "Max mates gap"
                    },
                    {
                        "id": "#alignIntronMin",
                        "description": "Minimum intron size: genomic gap is considered intron if its length >= alignIntronMin, otherwise it is considered Deletion (int>=0).",
                        "inputBinding": {
                            "prefix": "--alignIntronMin",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Alignments and Seeding",
                        "sbg:toolDefaultValue": "21",
                        "label": "Min intron size"
                    },
                    {
                        "id": "#alignIntronMax",
                        "description": "Maximum intron size, if 0, max intron size will be determined by (2^winBinNbits)*winAnchorDistNbins.",
                        "inputBinding": {
                            "prefix": "--alignIntronMax",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Alignments and Seeding",
                        "sbg:toolDefaultValue": "0",
                        "label": "Max intron size"
                    },
                    {
                        "id": "#alignEndsType",
                        "description": "Type of read ends alignment. Local: standard local alignment with soft-clipping allowed. EndToEnd: force end to end read alignment, do not soft-clip; Extend5pOfRead1: fully extend only the 5p of the read1, all other ends: local alignment.",
                        "inputBinding": {
                            "prefix": "--alignEndsType",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            {
                                "name": "alignEndsType",
                                "type": "enum",
                                "symbols": [
                                    "Local",
                                    "EndToEnd",
                                    "Extend5pOfRead1",
                                    "Extend3pOfRead1"
                                ]
                            }
                        ],
                        "sbg:category": "Alignments and Seeding",
                        "sbg:toolDefaultValue": "Local",
                        "label": "Alignment type"
                    }
                ],
                "class": "CommandLineTool",
                "description": "STAR is an ultrafast universal RNA-seq aligner. It has very high mapping speed, accurate alignment of contiguous and spliced reads, detection of polyA-tails, non-canonical splices and chimeric (fusion) junctions. It works with reads starting from lengths ~15 bases up to ~300 bases. In case of having longer reads, use of STAR Long is recommended.\n\n###Common issues###\n1. In case of paired-end alignment it is crucial to set metadata 'paired-end' field to 1/2.\n2. Files in multi-FASTQ format are currently not supported, i.e. if you have single-end reads that span multiple FASTQ files, or paired-end reads that span more than 2 files, please use a tool like SBG Merge FASTQs before providing your files to the STAR aligner. \n3. If you are providing a GFF3 file and wish to use STAR results for further downstream analysis, a good idea would be to set the \"Exons' parents name\" (id: sjdbGTFtagExonParentTranscript) option to \"Parent\".\n4. Unmapped reads are, by default, unsorted. If you want to sort them by read ID, please specify the \"Sort unmapped reads\" option, though keep in mind that this can increase STAR run time.",
                "sbg:createdBy": "uros_sipetic",
                "baseCommand": [
                    "tar",
                    "-xvf",
                    {
                        "engine": "#cwl-js-engine",
                        "script": "$job.inputs.genome.path",
                        "class": "Expression"
                    },
                    "&&",
                    "/opt/STAR-2.5.1b/bin/Linux_x86_64_static/STAR",
                    "--runThreadN",
                    {
                        "engine": "#cwl-js-engine",
                        "script": "{\n  return $job.allocatedResources.cpu\n}",
                        "class": "Expression"
                    }
                ],
                "label": "STAR",
                "sbg:image_url": null,
                "outputs": [
                    {
                        "id": "#unmapped_reads",
                        "description": "Output of unmapped reads.",
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#reads",
                            "sbg:metadata": {
                                "paired_end": {
                                    "engine": "#cwl-js-engine",
                                    "script": "{\n  if ($self) {\n    filename = $self.path.split(\"/\").pop();\n    if (filename.lastIndexOf(\".fastq\") !== 0){\n      return filename[filename.lastIndexOf(\".fastq\") - 1 ]\n    } else {\n      return \"\"\n    } \n  } else {\n    return \"\"\n  }\n}",
                                    "class": "Expression"
                                },
                                "sample_id": {
                                    "engine": "#cwl-js-engine",
                                    "script": "{\n \nif([].concat($job.inputs.reads)[0].metadata.sample_id)\n   {\n    return [].concat($job.inputs.reads)[0].metadata.sample_id\n   }\n   else\n   {\n    filename = $self.path.split(\"/\").pop();\n    return filename.split(\".\").shift()\n   }\n}",
                                    "class": "Expression"
                                }
                            },
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "script": "{\n  if ($job.inputs.unmappedOutputName) {\n    return \"*\" + $job.inputs.unmappedOutputName + \"*\"\n  } else {\n    return \"*Unmapped.out*\"\n  }\n  \n}",
                                "class": "Expression"
                            }
                        },
                        "type": [
                            "null",
                            {
                                "items": "File",
                                "type": "array"
                            }
                        ],
                        "label": "Unmapped reads",
                        "sbg:fileTypes": "FASTQ"
                    },
                    {
                        "id": "#transcriptome_aligned_reads",
                        "description": "Alignments translated into transcript coordinates.",
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#reads",
                            "sbg:metadata": {
                                "reference_genome": {
                                    "engine": "#cwl-js-engine",
                                    "script": "{\n  if ($job.inputs.genome.metadata) {\n    if ($job.inputs.genome.metadata.reference_genome) {\n      return $job.inputs.genome.metadata.reference_genome\n    } else {\n      return \"\"\n    }\n  } else {\n  return \"\"\n  }\n}",
                                    "class": "Expression"
                                }
                            },
                            "glob": "*Transcriptome*"
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Transcriptome alignments",
                        "sbg:fileTypes": "BAM"
                    },
                    {
                        "id": "#splice_junctions",
                        "description": "High confidence collapsed splice junctions in tab-delimited format. Only junctions supported by uniquely mapping reads are reported.",
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#reads",
                            "sbg:metadata": {},
                            "glob": "*SJ.out.tab"
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Splice junctions",
                        "sbg:fileTypes": "TAB"
                    },
                    {
                        "id": "#reads_per_gene",
                        "description": "File with number of reads per gene. A read is counted if it overlaps (1nt or more) one and only one gene.",
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#reads",
                            "sbg:metadata": {},
                            "glob": "*ReadsPerGene*"
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Reads per gene",
                        "sbg:fileTypes": "TAB"
                    },
                    {
                        "id": "#log_files",
                        "description": "Log files produced during alignment.",
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#reads",
                            "sbg:metadata": {},
                            "glob": "*Log*.out"
                        },
                        "type": [
                            "null",
                            {
                                "items": "File",
                                "type": "array"
                            }
                        ],
                        "label": "Log files",
                        "sbg:fileTypes": "OUT"
                    },
                    {
                        "id": "#intermediate_genome",
                        "description": "Archive with genome files produced when annotations are included on the fly (in the mapping step).",
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#reads",
                            "sbg:metadata": {},
                            "glob": "*_STARgenome.tar"
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Intermediate genome files",
                        "sbg:fileTypes": "TAR"
                    },
                    {
                        "id": "#chimeric_junctions",
                        "description": "If chimSegmentMin in 'Chimeric Alignments' section is set to 0, 'Chimeric Junctions' won't be output.",
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#reads",
                            "sbg:metadata": {},
                            "glob": "*Chimeric.out.junction"
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Chimeric junctions",
                        "sbg:fileTypes": "JUNCTION"
                    },
                    {
                        "id": "#chimeric_alignments",
                        "description": "Aligned Chimeric sequences SAM - if chimSegmentMin = 0, no Chimeric Alignment SAM and Chimeric Junctions outputs.",
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#reads",
                            "sbg:metadata": {
                                "reference_genome": {
                                    "engine": "#cwl-js-engine",
                                    "script": "{\n  if ($job.inputs.genome.metadata) {\n    if ($job.inputs.genome.metadata.reference_genome) {\n      return $job.inputs.genome.metadata.reference_genome\n    } else {\n      return \"\"\n    }\n  } else {\n  return \"\"\n  }\n}",
                                    "class": "Expression"
                                }
                            },
                            "glob": "*.Chimeric.out.sam"
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Chimeric alignments",
                        "sbg:fileTypes": "SAM"
                    },
                    {
                        "id": "#aligned_reads",
                        "description": "Aligned sequence in SAM/BAM format.",
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#reads",
                            "sbg:metadata": {
                                "reference_genome": {
                                    "engine": "#cwl-js-engine",
                                    "script": "{\n  if ($job.inputs.genome.metadata) {\n    if ($job.inputs.genome.metadata.reference_genome) {\n      return $job.inputs.genome.metadata.reference_genome\n    } else {\n      return \"\"\n    }\n  } else {\n  return \"\"\n  }\n}",
                                    "class": "Expression"
                                },
                                "sample_id": {
                                    "engine": "#cwl-js-engine",
                                    "script": "{\n \nif([].concat($job.inputs.reads)[0].metadata.sample_id)\n   {\n    return [].concat($job.inputs.reads)[0].metadata.sample_id\n   }\n   else\n   {\n    filename = $self.path.split(\"/\").pop();\n    return filename.split(\".\").shift()\n   }\n}",
                                    "class": "Expression"
                                }
                            },
                            "glob": {
                                "engine": "#cwl-js-engine",
                                "script": "{\n  if ($job.inputs.outSortingType == 'SortedByCoordinate') {\n    sort_name = '.sortedByCoord'\n  }\n  else {\n    sort_name = ''\n  }\n  if ($job.inputs.outSAMtype == 'BAM') {\n    sam_name = \"*.Aligned\".concat( sort_name, '.out.bam')\n  }\n  else {\n    sam_name = \"*.Aligned.out.sam\"\n  }\n  return sam_name\n}",
                                "class": "Expression"
                            }
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Aligned SAM/BAM",
                        "sbg:fileTypes": "SAM, BAM"
                    }
                ],
                "sbg:sbgMaintained": false,
                "sbg:categories": [
                    "Alignment"
                ],
                "requirements": [
                    {
                        "id": "#cwl-js-engine",
                        "requirements": [
                            {
                                "class": "DockerRequirement",
                                "dockerPull": "rabix/js-engine"
                            }
                        ],
                        "class": "ExpressionEngineRequirement"
                    }
                ],
                "sbg:toolkit": "STAR",
                "sbg:revisionNotes": "Update read group expression to handle cases with files without any metadata.",
                "hints": [
                    {
                        "dockerImageId": "",
                        "class": "DockerRequirement",
                        "dockerPull": "images.sbgenomics.com/ana_d/star-fusion:2.5.1b"
                    },
                    {
                        "value": 60000,
                        "class": "sbg:MemRequirement"
                    },
                    {
                        "value": 32,
                        "class": "sbg:CPURequirement"
                    }
                ],
                "stdin": "",
                "sbg:license": "GNU General Public License v3.0 only",
                "sbg:validationErrors": [],
                "sbg:modifiedBy": "uros_sipetic",
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
                ]
            },
            "sbg:y": 323.3333383018585
        },
        {
            "id": "#STAR_Genome_Generate",
            "sbg:x": 379.999962777268,
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
                },
                {
                    "id": "#STAR_Genome_Generate.genomeSuffixLengthMax"
                }
            ],
            "outputs": [
                {
                    "id": "#STAR_Genome_Generate.genome"
                }
            ],
            "run": {
                "sbg:revision": 20,
                "outputs": [
                    {
                        "id": "#genome",
                        "description": "Genome files comprise binary genome sequence, suffix arrays, text chromosome names/lengths, splice junctions coordinates, and transcripts/genes information.",
                        "outputBinding": {
                            "sbg:inheritMetadataFrom": "#reference_or_index",
                            "sbg:metadata": {
                                "reference_genome": {
                                    "engine": "#cwl-js-engine",
                                    "script": "{\n  var str1 = [].concat($job.inputs.reference_or_index)[0].path.split('/')\n  var str2 = str1[str1.length-1]\n  var str3 = str2.split('.')\n  var str4 = \"\"\n  for (i=0; i<str3.length-1; i++) {\n    if (i<str3.length-2) { \n    str4 = str4 + str3[i] + \".\"\n    }\n    else {\n      str4 = str4 + str3[i]\n    }\n  }\n  var tmp = str3.pop()\n  if (tmp.toLowerCase()=='fa' || tmp.toLowerCase()=='fasta') {\n    return str4\n  } else if (tmp.toLowerCase()=='tar') {\n    return [].concat($job.inputs.reference_or_index)[0].metadata.reference_genome\n  }\n}\n",
                                    "class": "Expression"
                                }
                            },
                            "glob": "*.tar"
                        },
                        "type": [
                            "null",
                            "File"
                        ],
                        "label": "Genome Files",
                        "sbg:fileTypes": "TAR"
                    }
                ],
                "sbg:id": "admin/sbg-public-data/star-genome-generate-2-5-1-b/20",
                "arguments": [
                    {
                        "valueFrom": {
                            "engine": "#cwl-js-engine",
                            "script": "{\n  var tmp1 = [].concat($job.inputs.reference_or_index)[0].path.split('/').pop()\n  if ($job.inputs.sjdbGTFfile) {\n    var tmp2 = [].concat($job.inputs.sjdbGTFfile)[0].path.split('/').pop()\n  } else {\n    var tmp2 = \"\"\n  }\n  \n  var str1 = tmp1.split('.')\n  var x1 = \"\"\n  for (i=0; i<str1.length-1; i++) {\n    if (i<str1.length-2) { \n    x1 = x1 + str1[i] + \".\"\n    }\n    else {\n      x1 = x1 + str1[i]\n    }\n  }\n  \n  var str2 = tmp2.split('.')\n  var x2 = \"\"\n  for (i=0; i<str2.length-1; i++) {\n    if (i<str2.length-2) { \n    x2 = x2 + str2[i] + \".\"\n    }\n    else {\n      x2 = x2 + str2[i] + \"_\"\n    }\n  }\n  var tmp3 = $job.inputs.reference_or_index.path.split('/').pop()\n  var tmp4 = tmp3.split('.').pop()\n  if (tmp4 == 'tar' || tmp4 == 'TAR') {\n    return \"\"\n  } else {\n    return \"&& tar -vcf \" + x1 + \"_\" + x2 + \"star-2.5.1b-index-archive.tar ./genomeDir \"\n  }\n}",
                            "class": "Expression"
                        },
                        "separate": true,
                        "position": 99
                    },
                    {
                        "valueFrom": {
                            "engine": "#cwl-js-engine",
                            "script": "{\t\n  var sjFormat = \"False\"\n  var gtfgffFormat = \"False\"\n  var list = $job.inputs.sjdbGTFfile\n  var paths_list = []\n  var joined_paths = \"\"\n  \n  if (list) {\n    list.forEach(function(f){return paths_list.push(f.path)})\n    joined_paths = paths_list.join(\" \")\n\n\n    paths_list.forEach(function(f){\n      ext = f.replace(/^.*\\./, '')\n      ext2 = ext.toLowerCase()\n      if (ext2 == \"gff\" || ext2 == \"gtf\" || ext2 == \"gff2\" || ext2 == \"gff3\" || ext2 == \"txt\") {\n        gtfgffFormat = \"True\"\n        return gtfgffFormat\n      }\n      if (ext == \"txt\") {\n        sjFormat = \"True\"\n        return sjFormat\n      }\n    })\n\n    if ($job.inputs.sjdbGTFfile && $job.inputs.sjdbInsertSave != \"None\") {\n      if (sjFormat == \"True\") {\n        return \"--sjdbFileChrStartEnd \".concat(joined_paths)\n      }\n      else if (gtfgffFormat == \"True\") {\n        return \"--sjdbGTFfile \".concat(joined_paths)\n      }\n    }\n  }\n}",
                            "class": "Expression"
                        },
                        "separate": true
                    }
                ],
                "sbg:contributors": [
                    "dusan_randjelovic",
                    "uros_sipetic"
                ],
                "stdout": "",
                "sbg:project": "uros_sipetic/star-2-5-1b-demo",
                "sbg:toolkitVersion": "2.5.1b",
                "sbg:modifiedBy": "uros_sipetic",
                "sbg:toolAuthor": "Alexander Dobin/CSHL",
                "sbg:categories": [
                    "Alignment"
                ],
                "sbg:job": {
                    "inputs": {
                        "genomeSAindexNbases": 0,
                        "sjdbGTFtagExonParentTranscript": "sjdbGTFtagExonParentTranscript",
                        "sjdbGTFchrPrefix": "sjdbGTFchrPrefix",
                        "sjdbGTFfeatureExon": "sjdbGTFfeatureExon",
                        "sjdbOverhang": 0,
                        "genomeChrBinNbits": "genomeChrBinNbits",
                        "sjdbGTFtagExonParentGene": "sjdbGTFtagExonParentGene",
                        "reference_or_index": {
                            "secondaryFiles": [],
                            "path": "/sbgenomics/test-data/chr20.fa",
                            "size": 0,
                            "class": "File"
                        },
                        "sjdbGTFfile": [
                            {
                                "secondaryFiles": [],
                                "path": "/demo/test-files/chr20.gtf",
                                "size": 0,
                                "class": "File"
                            }
                        ],
                        "genomeSuffixLengthMax": 10,
                        "genomeSAsparseD": 0,
                        "sjdbScore": 0
                    },
                    "allocatedResources": {
                        "cpu": 32,
                        "mem": 60000
                    }
                },
                "temporaryFailCodes": [],
                "sbg:createdOn": 1462811152,
                "sbg:cmdPreview": "mkdir genomeDir && /opt/STAR-2.5.1b/bin/Linux_x86_64_static/STAR --runMode genomeGenerate --genomeDir ./genomeDir --runThreadN 32 --genomeFastaFiles /sbgenomics/test-data/chr20.fa  --sjdbGTFfile /demo/test-files/chr20.gtf  && tar -vcf chr20_chr20_star-2.5.1b-index-archive.tar ./genomeDir",
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1462811152,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 0
                    },
                    {
                        "sbg:modifiedOn": 1462878623,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 1
                    },
                    {
                        "sbg:modifiedOn": 1469452193,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 2
                    },
                    {
                        "sbg:modifiedOn": 1469458871,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 3
                    },
                    {
                        "sbg:modifiedOn": 1470664269,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 4
                    },
                    {
                        "sbg:modifiedOn": 1471013964,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 5
                    },
                    {
                        "sbg:modifiedOn": 1471277606,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 6
                    },
                    {
                        "sbg:modifiedOn": 1471277909,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 7
                    },
                    {
                        "sbg:modifiedOn": 1471435375,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 8
                    },
                    {
                        "sbg:modifiedOn": 1471435842,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 9
                    },
                    {
                        "sbg:modifiedOn": 1471439923,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 10
                    },
                    {
                        "sbg:modifiedOn": 1471871838,
                        "sbg:revisionNotes": "Updated description.",
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 11
                    },
                    {
                        "sbg:modifiedOn": 1471881882,
                        "sbg:revisionNotes": "Fixed a command line bug.",
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 12
                    },
                    {
                        "sbg:modifiedOn": 1472136332,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 13
                    },
                    {
                        "sbg:modifiedOn": 1472223272,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 14
                    },
                    {
                        "sbg:modifiedOn": 1473070682,
                        "sbg:revisionNotes": "Changed number of cores from 15 to 32.",
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 15
                    },
                    {
                        "sbg:modifiedOn": 1475755006,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 16
                    },
                    {
                        "sbg:modifiedOn": 1476200578,
                        "sbg:revisionNotes": "Toolkit version changed to 2.5.1b",
                        "sbg:modifiedBy": "dusan_randjelovic",
                        "sbg:revision": 17
                    },
                    {
                        "sbg:modifiedOn": 1477489679,
                        "sbg:revisionNotes": "Add information about proper use with GFF3 files.",
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 18
                    },
                    {
                        "sbg:modifiedOn": 1479131293,
                        "sbg:revisionNotes": "Fixed an encoding bug that could manifest in downstream analysis under Windows platform.",
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 19
                    },
                    {
                        "sbg:modifiedOn": 1486635876,
                        "sbg:revisionNotes": "Update GTF expression to properly accept files with uppercase extensions.",
                        "sbg:modifiedBy": "uros_sipetic",
                        "sbg:revision": 20
                    }
                ],
                "cwlVersion": "sbg:draft-2",
                "id": "https://api.sbgenomics.com/v2/apps/uros_sipetic/star-2-5-1b-demo/star-genome-generate-2-5-1-b/20/raw/",
                "successCodes": [],
                "inputs": [
                    {
                        "id": "#reference_or_index",
                        "sbg:stageInput": "link",
                        "inputBinding": {
                            "prefix": "--genomeFastaFiles",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "File"
                        ],
                        "sbg:category": "Basic",
                        "label": "Reference/Index files",
                        "description": "Reference sequence to which to align the reads, or a TAR bundle containg already generated indices.",
                        "sbg:fileTypes": "FASTA, FA, FNA, TAR"
                    },
                    {
                        "id": "#genomeChrBinNbits",
                        "description": "Set log2(chrBin), where chrBin is the size (bits) of the bins for genome storage: each chromosome will occupy an integer number of bins. If you are using a genome with a large (>5,000) number of chrosomes/scaffolds, you may need to reduce this number to reduce RAM consumption. The following scaling is recomended: genomeChrBinNbits = min(18, log2(GenomeLength/NumberOfReferences)). For example, for 3 gigaBase genome with 100,000 chromosomes/scaffolds, this is equal to 15.",
                        "inputBinding": {
                            "prefix": "--genomeChrBinNbits",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:category": "Genome generation parameters",
                        "sbg:toolDefaultValue": "18",
                        "label": "Bins size"
                    },
                    {
                        "id": "#genomeSAindexNbases",
                        "description": "Length (bases) of the SA pre-indexing string. Typically between 10 and 15. Longer strings will use much more memory, but allow faster searches. For small genomes, this number needs to be scaled down, with a typical value of min(14, log2(GenomeLength)/2 - 1). For example, for 1 megaBase genome, this is equal to 9, for 100 kiloBase genome, this is equal to 7.",
                        "inputBinding": {
                            "prefix": "--genomeSAindexNbases",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Genome generation parameters",
                        "sbg:toolDefaultValue": "14",
                        "label": "Pre-indexing string length"
                    },
                    {
                        "id": "#genomeSAsparseD",
                        "description": "Distance between indices: use bigger numbers to decrease needed RAM at the cost of mapping speed reduction (int>0).",
                        "inputBinding": {
                            "prefix": "--genomeSAsparseD",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Genome generation parameters",
                        "sbg:toolDefaultValue": "1",
                        "label": "Suffux array sparsity"
                    },
                    {
                        "id": "#sjdbGTFfile",
                        "sbg:stageInput": "link",
                        "description": "Gene model annotations and/or known transcripts. If you are providing a GFF3 file and wish to use STAR results for further downstream analysis, a good idea would be to set the \"Exons' parents name\" (id: sjdbGTFtagExonParentTranscript) option to \"Parent\".",
                        "type": [
                            "null",
                            {
                                "name": "sjdbGTFfile",
                                "type": "array",
                                "items": "File"
                            }
                        ],
                        "sbg:category": "Basic",
                        "label": "Splice junction file",
                        "sbg:fileTypes": "GTF, GFF, GFF2, GFF3, TXT"
                    },
                    {
                        "id": "#sjdbGTFfeatureExon",
                        "description": "Feature type in GTF file to be used as exons for building transcripts.",
                        "inputBinding": {
                            "prefix": "--sjdbGTFfeatureExon",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:category": "Splice junctions db parameters",
                        "sbg:toolDefaultValue": "exon",
                        "label": "Set exons feature"
                    },
                    {
                        "id": "#sjdbGTFtagExonParentTranscript",
                        "description": "Tag name to be used as exons transcript-parents.",
                        "inputBinding": {
                            "prefix": "--sjdbGTFtagExonParentTranscript",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:category": "Splice junctions db parameters",
                        "sbg:toolDefaultValue": "transcript_id",
                        "label": "Exons' parents name"
                    },
                    {
                        "id": "#sjdbGTFtagExonParentGene",
                        "description": "Tag name to be used as exons gene-parents.",
                        "inputBinding": {
                            "prefix": "--sjdbGTFtagExonParentGene",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:category": "Splice junctions db parameters",
                        "sbg:toolDefaultValue": "gene_id",
                        "label": "Gene name"
                    },
                    {
                        "id": "#sjdbOverhang",
                        "description": "Length of the donor/acceptor sequence on each side of the junctions, ideally = (mate_length - 1) (int >= 0), if int = 0, splice junction database is not used.",
                        "inputBinding": {
                            "prefix": "--sjdbOverhang",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Splice junctions db parameters",
                        "sbg:toolDefaultValue": "100",
                        "label": "\"Overhang\" length"
                    },
                    {
                        "id": "#sjdbScore",
                        "description": "Extra alignment score for alignments that cross database junctions.",
                        "inputBinding": {
                            "prefix": "--sjdbScore",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Splice junctions db parameters",
                        "sbg:toolDefaultValue": "2",
                        "label": "Extra alignment score"
                    },
                    {
                        "id": "#sjdbGTFchrPrefix",
                        "description": "Prefix for chromosome names in a GTF file (e.g. 'chr' for using ENSMEBL annotations with UCSC geneomes).",
                        "inputBinding": {
                            "prefix": "--sjdbGTFchrPrefix",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:category": "Splice junctions db parameters",
                        "sbg:toolDefaultValue": "-",
                        "label": "Chromosome names"
                    },
                    {
                        "id": "#genomeSuffixLengthMax",
                        "description": "Maximum length of the suffixes, has to be longer than read length. -1 = infinite.",
                        "inputBinding": {
                            "prefix": "--genomeSuffixLengthMax",
                            "separate": true,
                            "sbg:cmdInclude": true
                        },
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Genome generation parameters",
                        "sbg:toolDefaultValue": "-1",
                        "label": "Maximum genome suffic length"
                    }
                ],
                "class": "CommandLineTool",
                "description": "STAR Genome Generate is a tool that generates genome index files. One set of files should be generated per each genome/annotation combination. Once produced, these files could be used as long as genome/annotation combination stays the same. Also, STAR Genome Generate which produced these files and STAR aligner using them must be the same toolkit version.\n\n###Common issues###\n1. If the indexes for a desired fasta/gtf pair have already been generated, make sure to supply the resulting TAR bundle to the tool input if you are using this tool in a workflow in order to skip unnecessary indexing and speed up the whole workflow process.\n2. If you are providing a GFF3 file and wish to use STAR results for further downstream analysis, a good idea would be to set the \"Exons' parents name\" (id: sjdbGTFtagExonParentTranscript) option to \"Parent\".",
                "sbg:createdBy": "uros_sipetic",
                "baseCommand": [
                    {
                        "engine": "#cwl-js-engine",
                        "script": "{\n  var x = $job.inputs.reference_or_index.path.split('/').pop()\n  var y = x.split('.').pop()\n  var z = $job.allocatedResources.cpu\n  if (y == 'fa' || y == 'fasta' || y == 'FA' || y == \"FASTA\") {\n    return \"mkdir genomeDir && /opt/STAR-2.5.1b/bin/Linux_x86_64_static/STAR --runMode genomeGenerate --genomeDir ./genomeDir --runThreadN \" + z\n  } else if (y == 'tar' || y == 'TAR') {\n    return \"echo 'Tar bundle provided, skipping indexing.' \"\n  }\n}\n",
                        "class": "Expression"
                    }
                ],
                "label": "STAR Genome Generate",
                "sbg:image_url": null,
                "sbg:latestRevision": 20,
                "sbg:sbgMaintained": false,
                "requirements": [
                    {
                        "id": "#cwl-js-engine",
                        "requirements": [
                            {
                                "class": "DockerRequirement",
                                "dockerPull": "rabix/js-engine"
                            }
                        ],
                        "class": "ExpressionEngineRequirement"
                    }
                ],
                "sbg:toolkit": "STAR",
                "sbg:revisionNotes": "Update GTF expression to properly accept files with uppercase extensions.",
                "hints": [
                    {
                        "dockerImageId": "",
                        "class": "DockerRequirement",
                        "dockerPull": "images.sbgenomics.com/ana_d/star-fusion:2.5.1b"
                    },
                    {
                        "value": 32,
                        "class": "sbg:CPURequirement"
                    },
                    {
                        "value": 60000,
                        "class": "sbg:MemRequirement"
                    }
                ],
                "sbg:modifiedOn": 1486635876,
                "stdin": "",
                "sbg:license": "GNU General Public License v3.0 only",
                "sbg:validationErrors": [],
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
                ]
            },
            "sbg:y": 442.22213245910103
        }
    ],
    "requirements": [],
    "sbg:copyOf": "admin/sbg-public-data/rna-seq-alignment-star-2-5-1b/2",
    "sbg:revisionNotes": "Update STAR Genome Generate.",
    "hints": [

    ],
    "cwlVersion": "sbg:draft-2",
    "sbg:license": "Apache License 2.0",
    "sbg:validationErrors": [],
    "sbg:canvas_zoom": 0.8999999999999999,
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
    ]
}
