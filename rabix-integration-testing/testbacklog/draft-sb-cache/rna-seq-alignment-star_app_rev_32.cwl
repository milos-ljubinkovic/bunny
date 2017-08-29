{
    "sbg:sbgMaintained": false,
    "sbg:toolAuthor": "Seven Bridges Genomics",
    "outputs": [
        {
            "type": [
                "null",
                {
                    "type": "array",
                    "items": "File"
                }
            ],
            "sbg:includeInPorts": true,
            "sbg:fileTypes": "FASTQ",
            "sbg:x": 766.2497863074045,
            "sbg:y": 159.58330912391222,
            "required": false,
            "source": [
                "#STAR.unmapped_reads"
            ],
            "label": "unmapped_reads",
            "id": "#unmapped_reads"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "sbg:fileTypes": "BAM",
            "sbg:x": 1118.9998003244302,
            "sbg:y": 86.58332158128358,
            "required": false,
            "source": [
                "#STAR.transcriptome_aligned_reads"
            ],
            "label": "transcriptome_aligned_reads",
            "id": "#transcriptome_aligned_reads"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "sbg:fileTypes": "TAB",
            "sbg:x": 1282.3330177465928,
            "sbg:y": 167.49997603893155,
            "required": false,
            "source": [
                "#STAR.splice_junctions"
            ],
            "label": "splice_junctions",
            "id": "#splice_junctions"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "sbg:fileTypes": "TAB",
            "sbg:x": 1394.416355699286,
            "sbg:y": 245.74996398885858,
            "required": false,
            "source": [
                "#STAR.reads_per_gene"
            ],
            "label": "reads_per_gene",
            "id": "#reads_per_gene"
        },
        {
            "type": [
                "null",
                {
                    "type": "array",
                    "items": "File"
                }
            ],
            "sbg:includeInPorts": true,
            "sbg:fileTypes": "OUT",
            "sbg:x": 1505.0830268959055,
            "sbg:y": 322.9999517997081,
            "required": false,
            "source": [
                "#STAR.log_files"
            ],
            "label": "log_files",
            "id": "#log_files"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "sbg:fileTypes": "JUNCTION",
            "sbg:x": 1278.7498061756194,
            "sbg:y": 446.7499567170913,
            "required": false,
            "source": [
                "#STAR.chimeric_junctions"
            ],
            "label": "chimeric_junctions",
            "id": "#chimeric_junctions"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "sbg:fileTypes": "TAR",
            "sbg:x": 1408.9164783457816,
            "sbg:y": 386.0832876066342,
            "required": false,
            "source": [
                "#STAR.intermediate_genome"
            ],
            "label": "intermediate_genome",
            "id": "#intermediate_genome"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "sbg:fileTypes": "SAM",
            "sbg:x": 1147.5831347604494,
            "sbg:y": 503.2499285439613,
            "required": false,
            "source": [
                "#STAR.chimeric_alignments"
            ],
            "label": "chimeric_alignments",
            "id": "#chimeric_alignments"
        },
        {
            "type": [
                "null",
                "File"
            ],
            "sbg:includeInPorts": true,
            "sbg:fileTypes": "BAM, SAM",
            "sbg:x": 934.2498227655963,
            "sbg:y": 557.2498435974195,
            "required": false,
            "source": [
                "#Picard_SortSam.sorted_bam"
            ],
            "label": "sorted_bam",
            "id": "#sorted_bam"
        }
    ],
    "sbg:copyOf": "admin/sbg-public-data/rna-seq-alignment-star/32",
    "sbg:canvas_zoom": 0.8999999999999999,
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "description": "*** DISCLAIMER ***\n\n**The newest version of this workflow on the Seven Bridges platform uses STAR 2.5.1b instead of STAR 2.4.2a which is present in this version. Hence, Seven Bridges will no longer provide support for this version of the workflow, which will become unpublished after July 2017 (if you have copied this workflow to your project, it will still remain there and you will be able to use it even after the unpublishing process ).**\n\nThis pipeline performs the first step of RNA-Seq analysis - alignment to a reference genome and transcriptome. STAR, an ultrafast RNA-seq aligner is used in this pipeline. STAR is capable of mapping full length RNA sequences and detecting de novo canonical junctions, non-canonical splices, and chimeric (fusion) transcripts. It is optimized for mammalian sequence reads, but fine tuning of its parameters enables customization to satisfy unique needs.\n###Required inputs\nThis workflow has two **required** inputs:\n\n1. Input fastq reads (ID: *fastq*) - STAR accepts one fastq file per sample for single-end data, or two files per sample for paired-end data. **NOTE**:  For paired-end reads it is crucial to set the metadata 'paired-end' field as 1 for one input file, as 2 for the other input file.\n\n2. Reference/Index files (ID: *reference_or_index*) - reference sequence to which to align the reads, or a TAR bundle of already generated index files.\n###Optional input:\nSplice junction annotations (ID: *sjdbGTFfile*) - this input can optionally be collected from splice junction databases. \n###Outputs\nThis workflow generates **nine** output files:\n\n1. Unmapped reads (ID: *unmapped_reads*) - unmapped reads are reported in FASTQ format.\n\n2. Transcriptome alignments (ID: *transcriptome_aligned_reads*) - alignments translated into transcript coordinates.  \n\n3. Splice junctions (Outputs ID: *splice_junctions*) - high confidence collapsed splice junctions in tab-delimited format. Only junctions supported by uniquely mapping reads are reported.\n\n4. Reads per gene (ID: *reads_per_gene*) - file with number of reads per gene. A read is counted if it overlaps (1nt or more) one and only one gene.\n\n5. Log files (ID: *log_files*) - a set of log files produced during alignment\n\n6. Intermediate genome files (ID: *intermediate_genome*) - archive with genome files produced when annotations are included on the fly (in the mapping step).\n\n7. Chimeric junctions (ID: *chimeric_junctions*) \n\n8. Chimeric alignments (ID: *chimeric_alignments*) \n\n9. Sorted bam file (ID: *sorted_bam*) - output aligned sequence, bam sorted\n\nSTAR can detect chimeric transcripts, but parameter \"Min segment length\" (ID: *chimSegmentMin*) in \"Chimeric Alignments\" category must be adjusted to a desired minimum chimeric segment length.\n\nIf you want to use STAR results as an input to an RNA-seq differential expression analysis(using the cufflinks app), please also set the parameter \"utSAMstrandField\" to \"intronMotif\". \n\n###Common issues###\n1. For paired-end alignments it is crucial to set the metadata 'paired-end' field as 1 and 2 respectively for the two input fastq files, otherwise the task will fail.\n\n2. If you already have a TAR bundle of generated index files (obtained from STAR Genome Generate), you can provide the TAR bundle instead of a FASTA reference file to skip the indexing and reduce the overall workflow execution time.",
    "steps": [
        {
            "sbg:x": 375.33330281575513,
            "sbg:y": 323.58332316080725,
            "scatter": "#SBG_FASTQ_Quality_Detector.fastq",
            "run": {
                "sbg:sbgMaintained": false,
                "sbg:toolAuthor": "Seven Bridges Genomics",
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "FASTQ",
                        "description": "Source FASTQ file with updated metadata.",
                        "outputBinding": {
                            "glob": "*.fastq",
                            "sbg:inheritMetadataFrom": "#fastq"
                        },
                        "label": "Result",
                        "id": "#result"
                    }
                ],
                "arguments": [],
                "sbg:image_url": null,
                "successCodes": [],
                "temporaryFailCodes": [],
                "hints": [
                    {
                        "dockerImageId": "",
                        "dockerPull": "images.sbgenomics.com/tziotas/sbg_fastq_quality_scale_detector:1.0",
                        "class": "DockerRequirement"
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
                "stdout": "",
                "description": "FASTQ Quality Scale Detector detects which quality encoding scheme was used in your reads and automatically enters the proper value in the \"Quality Scale\" metadata field.",
                "sbg:revision": 8,
                "sbg:createdBy": "bix-demo",
                "sbg:modifiedOn": 1475246089,
                "sbg:revisionNotes": "Reverted Sanger scale to (33,126), until we find a better range.",
                "label": "SBG FASTQ Quality Detector",
                "stdin": "",
                "inputs": [
                    {
                        "type": [
                            "File"
                        ],
                        "sbg:fileTypes": "FASTQ,FQ",
                        "sbg:category": "Input",
                        "required": true,
                        "description": "FASTQ file.",
                        "label": "Fastq",
                        "id": "#fastq",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--fastq"
                        }
                    }
                ],
                "x": 375.33330281575513,
                "sbg:validationErrors": [],
                "y": 323.58332316080725,
                "sbg:license": "Apache License 2.0",
                "sbg:modifiedBy": "milan.domazet.sudo",
                "sbg:toolkit": "SBGTools",
                "sbg:id": "admin/sbg-public-data/sbg-fastq-quality-detector/12",
                "sbg:contributors": [
                    "vladimirk",
                    "milan.domazet.sudo",
                    "bix-demo"
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1450911312,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "bix-demo"
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1450911313,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "bix-demo"
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1450911313,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "bix-demo"
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1450911314,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "bix-demo"
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1472045214,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "milan.domazet.sudo"
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:modifiedOn": 1473774177,
                        "sbg:revisionNotes": "Changed input type to FASTQ and FQ.",
                        "sbg:modifiedBy": "milan.domazet.sudo"
                    },
                    {
                        "sbg:revision": 6,
                        "sbg:modifiedOn": 1473775728,
                        "sbg:revisionNotes": "Added Category.",
                        "sbg:modifiedBy": "vladimirk"
                    },
                    {
                        "sbg:revision": 7,
                        "sbg:modifiedOn": 1475083591,
                        "sbg:revisionNotes": "Fixed Sanger range and moved script to crate files.",
                        "sbg:modifiedBy": "milan.domazet.sudo"
                    },
                    {
                        "sbg:revision": 8,
                        "sbg:modifiedOn": 1475246089,
                        "sbg:revisionNotes": "Reverted Sanger scale to (33,126), until we find a better range.",
                        "sbg:modifiedBy": "milan.domazet.sudo"
                    }
                ],
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 1000
                    },
                    "inputs": {
                        "fastq": {
                            "path": "/path/to/fastq.ext",
                            "secondaryFiles": [],
                            "size": 0,
                            "class": "File"
                        }
                    }
                },
                "sbg:createdOn": 1450911312,
                "sbg:latestRevision": 8,
                "sbg:cmdPreview": "python sbg_fastq_quality_scale_detector.py --fastq /path/to/fastq.ext",
                "cwlVersion": "sbg:draft-2",
                "baseCommand": [
                    "python",
                    "sbg_fastq_quality_scale_detector.py"
                ],
                "sbg:categories": [
                    "FASTQ-Processing"
                ],
                "id": "bix-demo/sbgtools-demo/sbg-fastq-quality-detector/8",
                "sbg:project": "bix-demo/sbgtools-demo",
                "class": "CommandLineTool"
            },
            "outputs": [
                {
                    "id": "#SBG_FASTQ_Quality_Detector.result"
                }
            ],
            "id": "#SBG_FASTQ_Quality_Detector",
            "inputs": [
                {
                    "source": [
                        "#fastq"
                    ],
                    "id": "#SBG_FASTQ_Quality_Detector.fastq"
                }
            ]
        },
        {
            "sbg:y": 470.91659385958945,
            "outputs": [
                {
                    "id": "#Picard_SortSam.sorted_bam"
                }
            ],
            "run": {
                "sbg:sbgMaintained": false,
                "sbg:toolAuthor": "Broad Institute",
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "BAM, SAM",
                        "description": "Sorted BAM or SAM file.",
                        "outputBinding": {
                            "secondaryFiles": [
                                "^.bai",
                                ".bai"
                            ],
                            "glob": "*.sorted.?am",
                            "sbg:inheritMetadataFrom": "#input_bam",
                            "sbg:metadata": {
                                "__inherit__": "input_bam"
                            }
                        },
                        "label": "Sorted BAM/SAM",
                        "id": "#sorted_bam"
                    }
                ],
                "arguments": [
                    {
                        "position": 0,
                        "valueFrom": {
                            "script": "{\n  filename = $job.inputs.input_bam.path\n  ext = $job.inputs.output_type\n\nif (ext === \"BAM\")\n{\n    return filename.split('.').slice(0, -1).concat(\"sorted.bam\").join(\".\").replace(/^.*[\\\\\\/]/, '')\n    }\n\nelse if (ext === \"SAM\")\n{\n    return filename.split('.').slice(0, -1).concat(\"sorted.sam\").join('.').replace(/^.*[\\\\\\/]/, '')\n}\n\nelse \n{\n\treturn filename.split('.').slice(0, -1).concat(\"sorted.\"+filename.split('.').slice(-1)[0]).join(\".\").replace(/^.*[\\\\\\/]/, '')\n}\n}",
                            "engine": "#cwl-js-engine",
                            "class": "Expression"
                        },
                        "separate": false,
                        "prefix": "OUTPUT="
                    },
                    {
                        "position": 1000,
                        "valueFrom": {
                            "script": "{\n  filename = $job.inputs.input_bam.path\n  \n  /* figuring out output file type */\n  ext = $job.inputs.output_type\n  if (ext === \"BAM\")\n  {\n    out_extension = \"BAM\"\n  }\n  else if (ext === \"SAM\")\n  {\n    out_extension = \"SAM\"\n  }\n  else \n  {\n\tout_extension = filename.split('.').slice(-1)[0].toUpperCase()\n  }  \n  \n  /* if exist moving .bai in bam.bai */\n  if ($job.inputs.create_index === 'True' && $job.inputs.sort_order === 'Coordinate' && out_extension == \"BAM\")\n  {\n    \n    old_name = filename.split('.').slice(0, -1).concat('sorted.bai').join('.').replace(/^.*[\\\\\\/]/, '')\n    new_name = filename.split('.').slice(0, -1).concat('sorted.bam.bai').join('.').replace(/^.*[\\\\\\/]/, '')\n    return \"; mv \" + \" \" + old_name + \" \" + new_name\n  }\n\n}",
                            "engine": "#cwl-js-engine",
                            "class": "Expression"
                        },
                        "separate": true
                    }
                ],
                "sbg:image_url": null,
                "successCodes": [],
                "temporaryFailCodes": [],
                "hints": [
                    {
                        "dockerImageId": "eab0e70b6629",
                        "dockerPull": "images.sbgenomics.com/mladenlsbg/picard:1.140",
                        "class": "DockerRequirement"
                    },
                    {
                        "value": 1,
                        "class": "sbg:CPURequirement"
                    },
                    {
                        "value": {
                            "script": "{\n  if($job.inputs.memory_per_job){\n  \treturn $job.inputs.memory_per_job\n  }\n  \treturn 2048\n}",
                            "engine": "#cwl-js-engine",
                            "class": "Expression"
                        },
                        "class": "sbg:MemRequirement"
                    }
                ],
                "requirements": [
                    {
                        "engineCommand": "cwl-engine.js",
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ],
                        "id": "#cwl-js-engine",
                        "class": "ExpressionEngineRequirement"
                    }
                ],
                "stdout": "",
                "description": "Picard SortSam sorts the input SAM or BAM. Input and output formats are determined by the file extension.",
                "sbg:revision": 3,
                "sbg:createdBy": "bix-demo",
                "sbg:modifiedOn": 1476869720,
                "sbg:revisionNotes": "Modified \"sort_order\" default value.",
                "label": "Picard SortSam",
                "stdin": "",
                "inputs": [
                    {
                        "sbg:toolDefaultValue": "SILENT",
                        "type": [
                            "null",
                            {
                                "type": "enum",
                                "name": "validation_stringency",
                                "symbols": [
                                    "STRICT",
                                    "LENIENT",
                                    "SILENT"
                                ]
                            }
                        ],
                        "sbg:category": "Other input types",
                        "description": "Validation stringency for all SAM files read by this program. Setting stringency to SILENT can improve performance when processing a BAM file in which variable-length data (read, qualities, tags) do not otherwise need to be decoded. This option can be set to 'null' to clear the default value. Possible values: {STRICT, LENIENT, SILENT}.",
                        "label": "Validation stringency",
                        "id": "#validation_stringency",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "valueFrom": {
                                "script": "{\n  if ($job.inputs.validation_stringency)\n  {\n    return $job.inputs.validation_stringency\n  }\n  else\n  {\n    return \"SILENT\"\n  }\n}",
                                "engine": "#cwl-js-engine",
                                "class": "Expression"
                            },
                            "separate": false,
                            "prefix": "VALIDATION_STRINGENCY="
                        }
                    },
                    {
                        "type": [
                            {
                                "type": "enum",
                                "name": "sort_order",
                                "symbols": [
                                    "Unsorted",
                                    "Queryname",
                                    "Coordinate"
                                ]
                            }
                        ],
                        "description": "Sort order of the output file. Possible values: {unsorted, queryname, coordinate}.",
                        "sbg:category": "Other input types",
                        "sbg:altPrefix": "SO",
                        "label": "Sort order",
                        "id": "#sort_order",
                        "inputBinding": {
                            "position": 3,
                            "sbg:cmdInclude": true,
                            "valueFrom": {
                                "script": "{\n  p = $job.inputs.sort_order.toLowerCase()\n  return p\n}",
                                "engine": "#cwl-js-engine",
                                "class": "Expression"
                            },
                            "separate": false,
                            "prefix": "SORT_ORDER="
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            {
                                "type": "enum",
                                "name": "quiet",
                                "symbols": [
                                    "True",
                                    "False"
                                ]
                            }
                        ],
                        "sbg:category": "Other input types",
                        "description": "This parameter indicates whether to suppress job-summary info on System.err. This option can be set to 'null' to clear the default value. Possible values: {true, false}.",
                        "label": "Quiet",
                        "id": "#quiet",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "prefix": "QUIET="
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "SAME AS INPUT",
                        "type": [
                            "null",
                            {
                                "type": "enum",
                                "name": "output_type",
                                "symbols": [
                                    "BAM",
                                    "SAM",
                                    "SAME AS INPUT"
                                ]
                            }
                        ],
                        "description": "Since Picard tools can output both SAM and BAM files, user can choose the format of the output file.",
                        "sbg:category": "Other input types",
                        "label": "Output format",
                        "id": "#output_type"
                    },
                    {
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:toolDefaultValue": "2048",
                        "label": "Memory per job",
                        "id": "#memory_per_job",
                        "description": "Amount of RAM memory to be used per job. Defaults to 2048 MB for single threaded jobs."
                    },
                    {
                        "sbg:toolDefaultValue": "500000",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Other input types",
                        "description": "When writing SAM files that need to be sorted, this parameter will specify the number of records stored in RAM before spilling to disk. Increasing this number reduces the number of file handles needed to sort a SAM file, and increases the amount of RAM needed. This option can be set to 'null' to clear the default value.",
                        "label": "Max records in RAM",
                        "id": "#max_records_in_ram",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "prefix": "MAX_RECORDS_IN_RAM="
                        }
                    },
                    {
                        "type": [
                            "File"
                        ],
                        "sbg:fileTypes": "BAM, SAM",
                        "sbg:category": "File inputs",
                        "required": true,
                        "sbg:altPrefix": "I",
                        "label": "Input BAM",
                        "id": "#input_bam",
                        "inputBinding": {
                            "position": 1,
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "prefix": "INPUT="
                        },
                        "description": "The BAM or SAM file to sort."
                    },
                    {
                        "sbg:toolDefaultValue": "False",
                        "type": [
                            "null",
                            {
                                "type": "enum",
                                "name": "create_index",
                                "symbols": [
                                    "True",
                                    "False"
                                ]
                            }
                        ],
                        "sbg:category": "Other input types",
                        "description": "This parameter indicates whether to create a BAM index when writing a coordinate-sorted BAM file. This option can be set to 'null' to clear the default value. Possible values: {true, false}.",
                        "label": "Create index",
                        "id": "#create_index",
                        "inputBinding": {
                            "position": 5,
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "prefix": "CREATE_INDEX="
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "5",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Other input types",
                        "description": "Compression level for all compressed files created (e.g. BAM and GELI). This option can be set to 'null' to clear the default value.",
                        "label": "Compression level",
                        "id": "#compression_level",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": false,
                            "prefix": "COMPRESSION_LEVEL="
                        }
                    }
                ],
                "x": 773.083180715633,
                "sbg:validationErrors": [],
                "y": 470.91659385958945,
                "sbg:license": "MIT License, Apache 2.0 Licence",
                "sbg:links": [
                    {
                        "label": "Homepage",
                        "id": "http://broadinstitute.github.io/picard/index.html"
                    },
                    {
                        "label": "Source Code",
                        "id": "https://github.com/broadinstitute/picard/releases/tag/1.138"
                    },
                    {
                        "label": "Wiki",
                        "id": "http://broadinstitute.github.io/picard/"
                    },
                    {
                        "label": "Download",
                        "id": "https://github.com/broadinstitute/picard/zipball/master"
                    },
                    {
                        "label": "Publication",
                        "id": "http://broadinstitute.github.io/picard/"
                    }
                ],
                "sbg:toolkit": "Picard",
                "sbg:toolkitVersion": "1.140",
                "sbg:modifiedBy": "mladenlSBG",
                "sbg:id": "admin/sbg-public-data/picard-sortsam-1-140/3",
                "sbg:contributors": [
                    "bix-demo",
                    "mladenlSBG"
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1450911168,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "bix-demo"
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1450911169,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "bix-demo"
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1450911170,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "bix-demo"
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1476869720,
                        "sbg:revisionNotes": "Modified \"sort_order\" default value.",
                        "sbg:modifiedBy": "mladenlSBG"
                    }
                ],
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 1,
                        "mem": 2048
                    },
                    "inputs": {
                        "output_type": null,
                        "sort_order": "Coordinate",
                        "memory_per_job": 2048,
                        "create_index": null,
                        "input_bam": {
                            "path": "/root/dir/example.tested.bam"
                        }
                    }
                },
                "sbg:createdOn": 1450911168,
                "sbg:latestRevision": 3,
                "sbg:cmdPreview": "java -Xmx2048M -jar /opt/picard-tools-1.140/picard.jar SortSam OUTPUT=example.tested.sorted.bam INPUT=/root/dir/example.tested.bam SORT_ORDER=coordinate",
                "cwlVersion": "sbg:draft-2",
                "baseCommand": [
                    "java",
                    {
                        "script": "{   \n  if($job.inputs.memory_per_job){\n    return '-Xmx'.concat($job.inputs.memory_per_job, 'M')\n  }   \n  \treturn '-Xmx2048M'\n}",
                        "engine": "#cwl-js-engine",
                        "class": "Expression"
                    },
                    "-jar",
                    "/opt/picard-tools-1.140/picard.jar",
                    "SortSam"
                ],
                "sbg:categories": [
                    "SAM/BAM-Processing"
                ],
                "id": "bix-demo/picard-1-140-demo/picard-sortsam-1-140/3",
                "sbg:project": "bix-demo/picard-1-140-demo",
                "class": "CommandLineTool"
            },
            "sbg:x": 773.083180715633,
            "id": "#Picard_SortSam",
            "inputs": [
                {
                    "default": "SILENT",
                    "id": "#Picard_SortSam.validation_stringency"
                },
                {
                    "default": "Coordinate",
                    "id": "#Picard_SortSam.sort_order"
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
                    "source": [
                        "#STAR.aligned_reads"
                    ],
                    "id": "#Picard_SortSam.input_bam"
                },
                {
                    "default": "True",
                    "id": "#Picard_SortSam.create_index"
                },
                {
                    "id": "#Picard_SortSam.compression_level"
                }
            ]
        },
        {
            "sbg:y": 323.00000000000006,
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
                "sbg:sbgMaintained": false,
                "sbg:toolAuthor": "Alexander Dobin/CSHL",
                "outputs": [
                    {
                        "type": [
                            "null",
                            {
                                "type": "array",
                                "items": "File"
                            }
                        ],
                        "sbg:fileTypes": "FASTQ",
                        "description": "Output of unmapped reads.",
                        "outputBinding": {
                            "glob": {
                                "script": "{\n  if ($job.inputs.unmappedOutputName) {\n    return \"*\" + $job.inputs.unmappedOutputName + \"*\"\n  } else {\n    return \"*Unmapped.out*\"\n  }\n  \n}",
                                "engine": "#cwl-js-engine",
                                "class": "Expression"
                            },
                            "sbg:inheritMetadataFrom": "#reads",
                            "sbg:metadata": {
                                "sample_id": {
                                    "script": "{\n \nif([].concat($job.inputs.reads)[0].metadata.sample_id)\n   {\n    return [].concat($job.inputs.reads)[0].metadata.sample_id\n   }\n   else\n   {\n    filename = $self.path.split(\"/\").pop();\n    return filename.split(\".\").shift()\n   }\n}",
                                    "engine": "#cwl-js-engine",
                                    "class": "Expression"
                                },
                                "paired_end": {
                                    "script": "{\n  filename = $self.path.split(\"/\").pop();\n  if (filename.lastIndexOf(\".fastq\") !== 0){\n    return filename[filename.lastIndexOf(\".fastq\") - 1 ]\n  } else {\n    return \"\"\n  } \n}",
                                    "engine": "#cwl-js-engine",
                                    "class": "Expression"
                                }
                            }
                        },
                        "label": "Unmapped reads",
                        "id": "#unmapped_reads"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "BAM",
                        "description": "Alignments translated into transcript coordinates.",
                        "outputBinding": {
                            "glob": "*Transcriptome*",
                            "sbg:inheritMetadataFrom": "#reads",
                            "sbg:metadata": {
                                "reference_genome": {
                                    "script": "{\n  if ($job.inputs.genome.metadata) {\n    if ($job.inputs.genome.metadata.reference_genome) {\n      return $job.inputs.genome.metadata.reference_genome\n    } else {\n      return \"\"\n    }\n  } else {\n  return \"\"\n  }\n}",
                                    "engine": "#cwl-js-engine",
                                    "class": "Expression"
                                }
                            }
                        },
                        "label": "Transcriptome alignments",
                        "id": "#transcriptome_aligned_reads"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "TAB",
                        "description": "High confidence collapsed splice junctions in tab-delimited format. Only junctions supported by uniquely mapping reads are reported.",
                        "outputBinding": {
                            "glob": "*SJ.out.tab",
                            "sbg:inheritMetadataFrom": "#reads",
                            "sbg:metadata": {}
                        },
                        "label": "Splice junctions",
                        "id": "#splice_junctions"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "TAB",
                        "description": "File with number of reads per gene. A read is counted if it overlaps (1nt or more) one and only one gene.",
                        "outputBinding": {
                            "glob": "*ReadsPerGene*",
                            "sbg:inheritMetadataFrom": "#reads",
                            "sbg:metadata": {}
                        },
                        "label": "Reads per gene",
                        "id": "#reads_per_gene"
                    },
                    {
                        "type": [
                            "null",
                            {
                                "type": "array",
                                "items": "File"
                            }
                        ],
                        "sbg:fileTypes": "OUT",
                        "description": "Log files produced during alignment.",
                        "outputBinding": {
                            "glob": "*Log*.out",
                            "sbg:inheritMetadataFrom": "#reads",
                            "sbg:metadata": {}
                        },
                        "label": "Log files",
                        "id": "#log_files"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "TAR",
                        "description": "Archive with genome files produced when annotations are included on the fly (in the mapping step).",
                        "outputBinding": {
                            "glob": "*_STARgenome.tar",
                            "sbg:inheritMetadataFrom": "#reads",
                            "sbg:metadata": {}
                        },
                        "label": "Intermediate genome files",
                        "id": "#intermediate_genome"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "JUNCTION",
                        "description": "If chimSegmentMin in 'Chimeric Alignments' section is set to 0, 'Chimeric Junctions' won't be output.",
                        "outputBinding": {
                            "glob": "*Chimeric.out.junction",
                            "sbg:inheritMetadataFrom": "#reads",
                            "sbg:metadata": {}
                        },
                        "label": "Chimeric junctions",
                        "id": "#chimeric_junctions"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "SAM",
                        "description": "Aligned Chimeric sequences SAM - if chimSegmentMin = 0, no Chimeric Alignment SAM and Chimeric Junctions outputs.",
                        "outputBinding": {
                            "glob": "*.Chimeric.out.sam",
                            "sbg:inheritMetadataFrom": "#reads",
                            "sbg:metadata": {
                                "reference_genome": {
                                    "script": "{\n  if ($job.inputs.genome.metadata) {\n    if ($job.inputs.genome.metadata.reference_genome) {\n      return $job.inputs.genome.metadata.reference_genome\n    } else {\n      return \"\"\n    }\n  } else {\n  return \"\"\n  }\n}",
                                    "engine": "#cwl-js-engine",
                                    "class": "Expression"
                                }
                            }
                        },
                        "label": "Chimeric alignments",
                        "id": "#chimeric_alignments"
                    },
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "SAM, BAM",
                        "description": "Aligned sequence in SAM/BAM format.",
                        "outputBinding": {
                            "glob": {
                                "script": "{\n  if ($job.inputs.outSortingType == 'SortedByCoordinate') {\n    sort_name = '.sortedByCoord'\n  }\n  else {\n    sort_name = ''\n  }\n  if ($job.inputs.outSAMtype == 'BAM') {\n    sam_name = \"*.Aligned\".concat( sort_name, '.out.bam')\n  }\n  else {\n    sam_name = \"*.Aligned.out.sam\"\n  }\n  return sam_name\n}",
                                "engine": "#cwl-js-engine",
                                "class": "Expression"
                            },
                            "sbg:inheritMetadataFrom": "#reads",
                            "sbg:metadata": {
                                "sample_id": {
                                    "script": "{\n \nif([].concat($job.inputs.reads)[0].metadata.sample_id)\n   {\n    return [].concat($job.inputs.reads)[0].metadata.sample_id\n   }\n   else\n   {\n    filename = $self.path.split(\"/\").pop();\n    return filename.split(\".\").shift()\n   }\n}",
                                    "engine": "#cwl-js-engine",
                                    "class": "Expression"
                                },
                                "reference_genome": {
                                    "script": "{\n  if ($job.inputs.genome.metadata) {\n    if ($job.inputs.genome.metadata.reference_genome) {\n      return $job.inputs.genome.metadata.reference_genome\n    } else {\n      return \"\"\n    }\n  } else {\n  return \"\"\n  }\n}",
                                    "engine": "#cwl-js-engine",
                                    "class": "Expression"
                                }
                            }
                        },
                        "label": "Aligned SAM/BAM",
                        "id": "#aligned_reads"
                    }
                ],
                "arguments": [
                    {
                        "valueFrom": {
                            "script": "{\n  file = [].concat($job.inputs.reads)[0].path\n  extension = /(?:\\.([^.]+))?$/.exec(file)[1]\n  if (extension == \"gz\") {\n    return \"--readFilesCommand zcat\"\n  } else if (extension == \"bz2\") {\n    return \"--readFilesCommand bzcat\"\n  }\n}",
                            "engine": "#cwl-js-engine",
                            "class": "Expression"
                        },
                        "separate": true
                    },
                    {
                        "valueFrom": {
                            "script": "{\t\n  var sjFormat = \"False\"\n  var gtfgffFormat = \"False\"\n  var list = $job.inputs.sjdbGTFfile\n  var paths_list = []\n  var joined_paths = \"\"\n  \n  if (list) {\n    list.forEach(function(f){return paths_list.push(f.path)})\n    joined_paths = paths_list.join(\" \")\n\n\n    paths_list.forEach(function(f){\n      ext = f.replace(/^.*\\./, '')\n      if (ext == \"gff\" || ext == \"gtf\") {\n        gtfgffFormat = \"True\"\n        return gtfgffFormat\n      }\n      if (ext == \"txt\") {\n        sjFormat = \"True\"\n        return sjFormat\n      }\n    })\n\n    if ($job.inputs.sjdbGTFfile && $job.inputs.sjdbInsertSave != \"None\") {\n      if (sjFormat == \"True\") {\n        return \"--sjdbFileChrStartEnd \".concat(joined_paths)\n      }\n      else if (gtfgffFormat == \"True\") {\n        return \"--sjdbGTFfile \".concat(joined_paths)\n      }\n    }\n  }\n}",
                            "engine": "#cwl-js-engine",
                            "class": "Expression"
                        },
                        "separate": true
                    },
                    {
                        "valueFrom": {
                            "script": "{\n  a = b = c = d = e = f = g = []\n  if ($job.inputs.sjdbGTFchrPrefix) {\n    a = [\"--sjdbGTFchrPrefix\", $job.inputs.sjdbGTFchrPrefix]\n  }\n  if ($job.inputs.sjdbGTFfeatureExon) {\n    b = [\"--sjdbGTFfeatureExon\", $job.inputs.sjdbGTFfeatureExon]\n  }\n  if ($job.inputs.sjdbGTFtagExonParentTranscript) {\n    c = [\"--sjdbGTFtagExonParentTranscript\", $job.inputs.sjdbGTFtagExonParentTranscript]\n  }\n  if ($job.inputs.sjdbGTFtagExonParentGene) {\n    d = [\"--sjdbGTFtagExonParentGene\", $job.inputs.sjdbGTFtagExonParentGene]\n  }\n  if ($job.inputs.sjdbOverhang) {\n    e = [\"--sjdbOverhang\", $job.inputs.sjdbOverhang]\n  }\n  if ($job.inputs.sjdbScore) {\n    f = [\"--sjdbScore\", $job.inputs.sjdbScore]\n  }\n  if ($job.inputs.sjdbInsertSave) {\n    g = [\"--sjdbInsertSave\", $job.inputs.sjdbInsertSave]\n  }\n  \n  \n  \n  if ($job.inputs.sjdbInsertSave != \"None\" && $job.inputs.sjdbGTFfile) {\n    new_list = a.concat(b, c, d, e, f, g)\n    return new_list.join(\" \")\n  }\n}",
                            "engine": "#cwl-js-engine",
                            "class": "Expression"
                        },
                        "separate": true
                    },
                    {
                        "valueFrom": {
                            "script": "{\n  if ($job.inputs.twopassMode == \"Basic\") {\n    if ($job.inputs.twopass1readsN) {\n      return \"--twopass1readsN \".concat($job.inputs.twopass1readsN) \n    } else {\n      return \"--twopass1readsN -1\"\n    }\n  }\n}",
                            "engine": "#cwl-js-engine",
                            "class": "Expression"
                        },
                        "separate": true
                    },
                    {
                        "valueFrom": {
                            "script": "{\n  if ($job.inputs.chimOutType == \"Within\") {\n    return \"--chimOutType \".concat(\"Within\", $job.inputs.outSAMtype)\n  }\n  else {\n    return \"--chimOutType SeparateSAMold\"\n  }\n}",
                            "engine": "#cwl-js-engine",
                            "class": "Expression"
                        },
                        "separate": true
                    },
                    {
                        "valueFrom": {
                            "script": "{\n  if ($job.inputs.no_read_groups) {\n  return \"\" }\n  else {\n  var param_list = []\n  var all_samples = []\n  var list = [].concat($job.inputs.reads)\n  getUnique = function(arr){\n    var u = {}, a = [];\n    for(var i = 0, l = arr.length; i < l; ++i){\n      if(u.hasOwnProperty(arr[i])) {\n        continue;\n      }\n      a.push(arr[i]);\n      u[arr[i]] = 1;\n    }\n    return a;\n  }\n  \n  function add_param(key, value){\n    if (value == \"\") {\n      return\n    }\n    else {\n      return param_list.push(key.concat(\":\", value))\n    }\n  }\n  for (index = 0; index < list.length; ++index) {\n    if (list[index].metadata != null){\n    \tif (list[index].metadata.sample_id != null){\n      \t\tall_samples.push(list[index].metadata.sample_id)\n      }\n    }\n  }\n  \n  samples = getUnique(all_samples)\n  var samples_given = all_samples.length == list.length\n  var all_rg = []\n  if (samples_given){\n    for (sample_ind = 0; sample_ind < samples.length; ++sample_ind){\n    \tfor (read_ind = 0; read_ind < list.length; ++read_ind) {\n        var param_list = []\n        if (list[read_ind].metadata && list[read_ind].metadata.sample_id == samples[sample_ind] && list[read_ind].metadata.paired_end != \"2\") {\n        \tadd_param('ID', samples[sample_ind])\n          if ($job.inputs.rg_seq_center) {\n            add_param('CN', $job.inputs.rg_seq_center)\n          } else if (list[read_ind].metadata && list[read_ind].metadata.seq_center) {\n            add_param('CN', list[read_ind].metadata.seq_center)\n          }\n          if ($job.inputs.rg_library_id) {\n            add_param('LB', $job.inputs.rg_library_id)\n          } else if (list[read_ind].metadata && list[read_ind].metadata.library_id) {\n            add_param('LB', list[read_ind].metadata.library_id)\n          }\n          if ($job.inputs.rg_mfl) {\n            add_param('PI', $job.inputs.rg_mfl)\n          } else if (list[read_ind].metadata && list[read_ind].metadata.median_fragment_length) {\n            add_param('PI', list[read_ind].metadata.median_fragment_length)\n          }\n          if ($job.inputs.rg_platform) {\n            add_param('PL', $job.inputs.rg_platform.replace(/ /g,\"_\"))\n          } else if (list[read_ind].metadata && list[read_ind].metadata.platform) {\n            add_param('PL', list[read_ind].metadata.platform.replace(/ /g,\"_\"))\n          }\n          if ($job.inputs.rg_platform_unit_id) {\n            add_param('PU', $job.inputs.rg_platform_unit_id)\n          } else if (list[read_ind].metadata && list[read_ind].metadata.platform_unit_id) {\n            add_param('PU', list[read_ind].metadata.platform_unit_id)\n          }\n          if ($job.inputs.rg_sample_id) {\n            add_param('SM', $job.inputs.rg_sample_id)\n          } else if (list[read_ind].metadata && list[read_ind].metadata.sample_id) {\n            add_param('SM', list[read_ind].metadata.sample_id)\n          }\n          all_rg.push(param_list.join(\" \"))\n       }\n\n    }\n   }\n  } else {\n  \tvar param_list = []\n    add_param('ID', \"1\")\n    if ($job.inputs.rg_seq_center) {\n      add_param('CN', $job.inputs.rg_seq_center)\n    } else if ([].concat($job.inputs.reads)[0].metadata && [].concat($job.inputs.reads)[0].metadata.seq_center) {\n      add_param('CN', [].concat($job.inputs.reads)[0].metadata.seq_center)\n    }\n    if ($job.inputs.rg_library_id) {\n      add_param('LB', $job.inputs.rg_library_id)\n    } else if ([].concat($job.inputs.reads)[0].metadata && [].concat($job.inputs.reads)[0].metadata.library_id) {\n      add_param('LB', [].concat($job.inputs.reads)[0].metadata.library_id)\n    }\n    if ($job.inputs.rg_mfl) {\n      add_param('PI', $job.inputs.rg_mfl)\n    } else if ([].concat($job.inputs.reads)[0].metadata && [].concat($job.inputs.reads)[0].metadata.median_fragment_length) {\n      add_param('PI', [].concat($job.inputs.reads)[0].metadata.median_fragment_length)\n    }\n    if ($job.inputs.rg_platform) {\n      add_param('PL', $job.inputs.rg_platform.replace(/ /g,\"_\"))\n    } else if ([].concat($job.inputs.reads)[0].metadata && [].concat($job.inputs.reads)[0].metadata.platform) {\n      add_param('PL', [].concat($job.inputs.reads)[0].metadata.platform.replace(/ /g,\"_\"))\n    }\n    if ($job.inputs.rg_platform_unit_id) {\n      add_param('PU', $job.inputs.rg_platform_unit_id)\n    } else if ([].concat($job.inputs.reads)[0].metadata && [].concat($job.inputs.reads)[0].metadata.platform_unit_id) {\n      add_param('PU', [].concat($job.inputs.reads)[0].metadata.platform_unit_id)\n    }\n    if ($job.inputs.rg_sample_id) {\n      add_param('SM', $job.inputs.rg_sample_id)\n    } else if ([].concat($job.inputs.reads)[0].metadata && [].concat($job.inputs.reads)[0].metadata.sample_id) {\n      add_param('SM', [].concat($job.inputs.reads)[0].metadata.sample_id)\n    }\n    return \"--outSAMattrRGline \".concat(param_list.join(\" \"))\n  }\n  return \"--outSAMattrRGline \".concat(all_rg.join(\" , \"))\n  }\n}",
                            "engine": "#cwl-js-engine",
                            "class": "Expression"
                        },
                        "separate": true
                    },
                    {
                        "valueFrom": {
                            "script": "{\n  if ($job.inputs.sjdbGTFfile && $job.inputs.quantMode) {\n    return \"--quantMode \".concat($job.inputs.quantMode)\n  }\n}",
                            "engine": "#cwl-js-engine",
                            "class": "Expression"
                        },
                        "separate": true
                    },
                    {
                        "position": 100,
                        "valueFrom": {
                            "script": "{\n  function sharedStart(array){\n  var A= array.concat().sort(), \n      a1= A[0], a2= A[A.length-1], L= a1.length, i= 0;\n  while(i<L && a1.charAt(i)=== a2.charAt(i)) i++;\n  return a1.substring(0, i);\n  }\n  path_list = []\n  arr = [].concat($job.inputs.reads)\n  arr.forEach(function(f){return path_list.push(f.path.replace(/\\\\/g,'/').replace( /.*\\//, '' ))})\n  common_prefix = sharedStart(path_list)\n  intermediate = common_prefix.replace( /\\-$|\\_$|\\.$/, '' ).concat(\"._STARgenome\")\n  source = \"./\".concat(intermediate)\n  destination = intermediate.concat(\".tar\")\n  if ($job.inputs.sjdbGTFfile && $job.inputs.sjdbInsertSave && $job.inputs.sjdbInsertSave != \"None\") {\n    return \"&& tar -vcf \".concat(destination, \" \", source)\n  }\n}",
                            "engine": "#cwl-js-engine",
                            "class": "Expression"
                        },
                        "separate": true
                    },
                    {
                        "valueFrom": {
                            "script": "{\n  function sharedStart(array){\n  var A= array.concat().sort(), \n      a1= A[0], a2= A[A.length-1], L= a1.length, i= 0;\n  while(i<L && a1.charAt(i)=== a2.charAt(i)) i++;\n  return a1.substring(0, i);\n  }\n  path_list = []\n  arr = [].concat($job.inputs.reads)\n  arr.forEach(function(f){return path_list.push(f.path.replace(/\\\\/g,'/').replace( /.*\\//, '' ))})\n  common_prefix = sharedStart(path_list)\n  if (common_prefix == \"\" || common_prefix == \"_\"){\n    common_prefix = \"All\"\n  }\n  return \"./\".concat(common_prefix.replace( /\\-$|\\_$|\\.$/, '' ), \".\")\n}",
                            "engine": "#cwl-js-engine",
                            "class": "Expression"
                        },
                        "separate": true,
                        "prefix": "--outFileNamePrefix"
                    },
                    {
                        "position": 101,
                        "valueFrom": {
                            "script": "{\n  function sharedStart(array){\n  var A= array.concat().sort(), \n      a1= A[0], a2= A[A.length-1], L= a1.length, i= 0;\n  while(i<L && a1.charAt(i)=== a2.charAt(i)) i++;\n  return a1.substring(0, i);\n  }\n  path_list = []\n  arr = [].concat($job.inputs.reads)\n  arr.forEach(function(f){return path_list.push(f.path.replace(/\\\\/g,'/').replace( /.*\\//, '' ))})\n  common_prefix = sharedStart(path_list)\n  mate1 = common_prefix.replace( /\\-$|\\_$|\\.$/, '' ).concat(\".Unmapped.out.mate1\")\n  mate2 = common_prefix.replace( /\\-$|\\_$|\\.$/, '' ).concat(\".Unmapped.out.mate2\")\n  var x = arr[0].path.split('/').pop()\n  var y = x.toLowerCase()\n  \n  if ($job.inputs.unmappedOutputName) {\n  \tvar output_name = \".\" + $job.inputs.unmappedOutputName + \".\"\n  } else {\n    var output_name = \".Unmapped.out.\"\n  }\n  \n  mate1_1 = common_prefix.replace( /\\-$|\\_$|\\.$/, '' ).concat(output_name + \"mate1\")\n  mate2_1 = common_prefix.replace( /\\-$|\\_$|\\.$/, '' ).concat(output_name + \"mate2\")\n  \n  \n  if (y.endsWith('fastq') || y.endsWith('fq') || y.endsWith('fastq.gz') || y.endsWith('fastq.bz2') || y.endsWith('fq.gz') || y.endsWith('fq.bz2')) { \n    mate1fq = mate1_1.concat(\".fastq\")\n    mate2fq = mate2_1.concat(\".fastq\")\n  } else if (y.endsWith('fasta') || y.endsWith('fa') || y.endsWith('fasta.gz') || y.endsWith('fasta.bz2') || y.endsWith('fa.gz') || y.endsWith('fa.bz2')) {\n    mate1fq = mate1_1.concat(\".fasta\")\n    mate2fq = mate2_1.concat(\".fasta\")\n  }\n\n\n  if ($job.inputs.sortUnmappedReads) {\n    \n  var cmd = \"\"\n  var sort_cmd = \" | sed 's/\\\\t.*//' | paste - - - - | sort -k1,1 -S 10G | tr '\\\\t' '\\\\n' > \"\n  if ($job.inputs.outReadsUnmapped == \"Fastx\" && arr.length > 1) {\n    cmd = cmd.concat(\" && cat \", mate2, sort_cmd, mate2fq, \" && rm \", mate2)\n  }\n  if ($job.inputs.outReadsUnmapped == \"Fastx\") {\n    cmd = cmd.concat(\" && cat \", mate1, sort_cmd, mate1fq, \" && rm \", mate1)\n  }\n  return cmd\n  \n  } else {\n\n  if ($job.inputs.outReadsUnmapped == \"Fastx\" && arr.length > 1) {\n    return \"&& mv \".concat(mate1, \" \", mate1fq, \" && mv \", mate2, \" \", mate2fq)\n  }\n  else if ($job.inputs.outReadsUnmapped == \"Fastx\" && arr.length == 1) {\n    return \"&& mv \".concat(mate1, \" \", mate1fq)\n  }\n\n  }\n}",
                            "engine": "#cwl-js-engine",
                            "class": "Expression"
                        },
                        "separate": true
                    }
                ],
                "sbg:image_url": null,
                "successCodes": [],
                "temporaryFailCodes": [],
                "hints": [
                    {
                        "dockerImageId": "a4b0ad2c3cae",
                        "dockerPull": "images.sbgenomics.com/ana_d/star:2.4.2a",
                        "class": "DockerRequirement"
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
                "requirements": [
                    {
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ],
                        "id": "#cwl-js-engine",
                        "class": "ExpressionEngineRequirement"
                    }
                ],
                "stdout": "",
                "description": "STAR is an ultrafast universal RNA-seq aligner. It has very high mapping speed, accurate alignment of contiguous and spliced reads, detection of polyA-tails, non-canonical splices and chimeric (fusion) junctions. It works with reads starting from lengths ~15 bases up to ~300 bases. In case of having longer reads, use of STAR Long is recommended.\n\n###Common issues###\n1. In case of paired-end alignment it is crucial to set metadata 'paired-end' field to 1/2.\n2. Files in multi-FASTQ format are currently not supported, i.e. if you have single-end reads that span multiple FASTQ files, or paired-end reads that span more than 2 files, please use a tool like SBG Merge FASTQs before providing your files to the STAR aligner.\n3. If you are providing a GFF3 file and wish to use STAR results for further downstream analysis, a good idea would be to set the \"Exons' parents name\" (id: sjdbGTFtagExonParentTranscript) option to \"Parent\".\n4. Unmapped reads are, by default, unsorted. If you want to sort them by read ID, please specify the \"Sort unmapped reads\" option, though keep in mind that this can increase STAR run time.",
                "sbg:revision": 26,
                "sbg:createdBy": "bix-demo",
                "sbg:modifiedOn": 1485434288,
                "sbg:revisionNotes": "Update read group expression to handle cases with files without any metadata.",
                "label": "STAR",
                "stdin": "",
                "inputs": [
                    {
                        "sbg:toolDefaultValue": "4",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Windows, Anchors, Binning",
                        "description": "=log2(winFlank), where win Flank is the size of the left and right flanking regions for each window (int>0).",
                        "label": "Flanking regions size",
                        "id": "#winFlankNbins",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--winFlankNbins"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "16",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Windows, Anchors, Binning",
                        "description": "=log2(winBin), where winBin is the size of the bin for the windows/clustering, each window will occupy an integer number of bins (int>0).",
                        "label": "Bin size",
                        "id": "#winBinNbits",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--winBinNbits"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "50",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Windows, Anchors, Binning",
                        "description": "Max number of loci anchors are allowed to map to (int>0).",
                        "label": "Max loci anchors",
                        "id": "#winAnchorMultimapNmax",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--winAnchorMultimapNmax"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "9",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Windows, Anchors, Binning",
                        "description": "Max number of bins between two anchors that allows aggregation of anchors into one window (int>0).",
                        "label": "Max bins between anchors",
                        "id": "#winAnchorDistNbins",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--winAnchorDistNbins"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "\"Unmapped.out\"",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "Names of the unmapped output files.",
                        "sbg:category": "Output",
                        "label": "Unmapped output file names",
                        "id": "#unmappedOutputName"
                    },
                    {
                        "sbg:toolDefaultValue": "None",
                        "type": [
                            "null",
                            {
                                "type": "enum",
                                "name": "twopassMode",
                                "symbols": [
                                    "None",
                                    "Basic"
                                ]
                            }
                        ],
                        "sbg:category": "2-pass mapping",
                        "description": "2-pass mapping mode. None: 1-pass mapping; Basic: basic 2-pass mapping, with all 1st pass junctions inserted into the genome indices on the fly.",
                        "label": "Two-pass mode",
                        "id": "#twopassMode",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--twopassMode"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "-1",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Number of reads to process for the 1st step. 0: 1-step only, no 2nd pass; use very large number to map all reads in the first step (int>0).",
                        "sbg:category": "2-pass mapping",
                        "label": "Reads to process in 1st step",
                        "id": "#twopass1readsN"
                    },
                    {
                        "sbg:toolDefaultValue": "Off",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "description": "Unmapped reads are, by default, unsorted. If you want to sort them by read ID, please specify this option, though keep in mind that this can increase STAR run time.",
                        "sbg:category": "Output",
                        "label": "Sort unmapped reads",
                        "id": "#sortUnmappedReads"
                    },
                    {
                        "sbg:toolDefaultValue": "2",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Extra alignment score for alignments that cross database junctions.",
                        "sbg:category": "Splice junctions database",
                        "label": "Extra alignment score",
                        "id": "#sjdbScore"
                    },
                    {
                        "sbg:toolDefaultValue": "100",
                        "type": [
                            "null",
                            "int"
                        ],
                        "description": "Length of the donor/acceptor sequence on each side of the junctions, ideally = (mate_length - 1) (int >= 0), if int = 0, splice junction database is not used.",
                        "sbg:category": "Splice junctions database",
                        "label": "\"Overhang\" length",
                        "id": "#sjdbOverhang"
                    },
                    {
                        "sbg:toolDefaultValue": "None",
                        "type": [
                            "null",
                            {
                                "type": "enum",
                                "name": "sjdbInsertSave",
                                "symbols": [
                                    "Basic",
                                    "All",
                                    "None"
                                ]
                            }
                        ],
                        "description": "Which files to save when sjdb junctions are inserted on the fly at the mapping step. None: not saving files at all; Basic: only small junction/transcript files; All: all files including big Genome, SA and SAindex. These files are output as archive.",
                        "sbg:category": "Splice junctions database",
                        "label": "Save junction files",
                        "id": "#sjdbInsertSave"
                    },
                    {
                        "sbg:toolDefaultValue": "transcript_id",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "Tag name to be used as exons transcript-parents.",
                        "sbg:category": "Splice junctions database",
                        "label": "Exons' parents name",
                        "id": "#sjdbGTFtagExonParentTranscript"
                    },
                    {
                        "sbg:toolDefaultValue": "gene_id",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "Tag name to be used as exons gene-parents.",
                        "sbg:category": "Splice junctions database",
                        "label": "Gene name",
                        "id": "#sjdbGTFtagExonParentGene"
                    },
                    {
                        "type": [
                            "null",
                            {
                                "type": "array",
                                "items": "File",
                                "name": "sjdbGTFfile"
                            }
                        ],
                        "sbg:fileTypes": "GTF, GFF, GFF2, GFF3, TXT",
                        "sbg:category": "Basic",
                        "required": false,
                        "description": "Gene model annotations and/or known transcripts. No need to include this input, except in case of using \"on the fly\" annotations. If you are providing a GFF3 file and wish to use STAR results for further downstream analysis, a good idea would be to set the \"Exons' parents name\" (id: sjdbGTFtagExonParentTranscript) option to \"Parent\".",
                        "label": "Splice junction file",
                        "id": "#sjdbGTFfile"
                    },
                    {
                        "sbg:toolDefaultValue": "exon",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "Feature type in GTF file to be used as exons for building transcripts.",
                        "sbg:category": "Splice junctions database",
                        "label": "Set exons feature",
                        "id": "#sjdbGTFfeatureExon"
                    },
                    {
                        "sbg:toolDefaultValue": "-",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "Prefix for chromosome names in a GTF file (e.g. 'chr' for using ENSMEBL annotations with UCSC geneomes).",
                        "sbg:category": "Splice junctions database",
                        "label": "Chromosome names",
                        "id": "#sjdbGTFchrPrefix"
                    },
                    {
                        "sbg:toolDefaultValue": "1.0",
                        "type": [
                            "null",
                            "float"
                        ],
                        "sbg:category": "Alignments and Seeding",
                        "description": "SeedSearchStartLmax normalized to read length (sum of mates' lengths for paired-end reads).",
                        "label": "Search start point normalized",
                        "id": "#seedSearchStartLmaxOverLread",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--seedSearchStartLmaxOverLread"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "50",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Alignments and Seeding",
                        "description": "Defines the search start point through the read - the read is split into pieces no longer than this value (int>0).",
                        "label": "Search start point",
                        "id": "#seedSearchStartLmax",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--seedSearchStartLmax"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Alignments and Seeding",
                        "description": "Defines the maximum length of the seeds, if =0 max seed length is infinite (int>=0).",
                        "label": "Max seed length",
                        "id": "#seedSearchLmax",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--seedSearchLmax"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "50",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Alignments and Seeding",
                        "description": "Max number of seeds per window (int>=0).",
                        "label": "Max seeds per window",
                        "id": "#seedPerWindowNmax",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--seedPerWindowNmax"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "1000",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Alignments and Seeding",
                        "description": "Max number of seeds per read (int>=0).",
                        "label": "Max seeds per read",
                        "id": "#seedPerReadNmax",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--seedPerReadNmax"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "10",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Alignments and Seeding",
                        "description": "Max number of one seed loci per window (int>=0).",
                        "label": "Max one-seed loci per window",
                        "id": "#seedNoneLociPerWindow",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--seedNoneLociPerWindow"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "10000",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Alignments and Seeding",
                        "description": "Only pieces that map fewer than this value are utilized in the stitching procedure (int>=0).",
                        "label": "Filter pieces for stitching",
                        "id": "#seedMultimapNmax",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--seedMultimapNmax"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "1",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Scoring",
                        "description": "Maximum score reduction while searching for SJ boundaries in the stitching step.",
                        "label": "Max score reduction",
                        "id": "#scoreStitchSJshift",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--scoreStitchSJshift"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "-2",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Scoring",
                        "description": "Insertion open penalty.",
                        "label": "Insertion Open Penalty",
                        "id": "#scoreInsOpen",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--scoreInsOpen"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "-2",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Scoring",
                        "description": "Insertion extension penalty per base (in addition to --scoreInsOpen).",
                        "label": "Insertion extension penalty",
                        "id": "#scoreInsBase",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--scoreInsBase"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "-0.25",
                        "type": [
                            "null",
                            "float"
                        ],
                        "sbg:category": "Scoring",
                        "description": "Extra score logarithmically scaled with genomic length of the alignment: <int>*log2(genomicLength).",
                        "label": "Log scaled score",
                        "id": "#scoreGenomicLengthLog2scale",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--scoreGenomicLengthLog2scale"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "-8",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Scoring",
                        "description": "Non-canonical gap open penalty (in addition to --scoreGap).",
                        "label": "Non-canonical gap open",
                        "id": "#scoreGapNoncan",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--scoreGapNoncan"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "-4",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Scoring",
                        "description": "GC/AG and CT/GC gap open penalty (in addition to --scoreGap).",
                        "label": "GC/AG and CT/GC gap open",
                        "id": "#scoreGapGCAG",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--scoreGapGCAG"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "-8",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Scoring",
                        "description": "AT/AC and GT/AT gap open penalty (in addition to --scoreGap).",
                        "label": "AT/AC and GT/AT gap open",
                        "id": "#scoreGapATAC",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--scoreGapATAC"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Scoring",
                        "description": "Gap open penalty.",
                        "label": "Gap open penalty",
                        "id": "#scoreGap",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--scoreGap"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "-2",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Scoring",
                        "description": "Deletion open penalty.",
                        "label": "Deletion open penalty",
                        "id": "#scoreDelOpen",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--scoreDelOpen"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "-2",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Scoring",
                        "description": "Deletion extension penalty per base (in addition to --scoreDelOpen).",
                        "label": "Deletion extension penalty",
                        "id": "#scoreDelBase",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--scoreDelBase"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "Inferred from metadata",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "Specify the sequencing center for RG line.",
                        "sbg:category": "Read group",
                        "label": "Sequencing center",
                        "id": "#rg_seq_center"
                    },
                    {
                        "sbg:toolDefaultValue": "Inferred from metadata",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "Specify the sample ID for RG line.",
                        "sbg:category": "Read group",
                        "label": "Sample ID",
                        "id": "#rg_sample_id"
                    },
                    {
                        "sbg:toolDefaultValue": "Inferred from metadata",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "Specify the platform unit ID for RG line.",
                        "sbg:category": "Read group",
                        "label": "Platform unit ID",
                        "id": "#rg_platform_unit_id"
                    },
                    {
                        "sbg:toolDefaultValue": "Inferred from metadata",
                        "type": [
                            "null",
                            {
                                "type": "enum",
                                "name": "rg_platform",
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
                        "description": "Specify the version of the technology that was used for sequencing or assaying.",
                        "sbg:category": "Read group",
                        "label": "Platform",
                        "id": "#rg_platform"
                    },
                    {
                        "sbg:toolDefaultValue": "Inferred from metadata",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "Specify the median fragment length for RG line.",
                        "sbg:category": "Read group",
                        "label": "Median fragment length",
                        "id": "#rg_mfl"
                    },
                    {
                        "sbg:toolDefaultValue": "Inferred from metadata",
                        "type": [
                            "null",
                            "string"
                        ],
                        "description": "Specify the library ID for RG line.",
                        "sbg:category": "Read group",
                        "label": "Library ID",
                        "id": "#rg_library_id"
                    },
                    {
                        "type": [
                            {
                                "type": "array",
                                "items": "File",
                                "name": "reads"
                            }
                        ],
                        "sbg:fileTypes": "FASTA, FASTQ, FA, FQ, FASTQ.GZ, FQ.GZ, FASTQ.BZ2, FQ.BZ2",
                        "sbg:category": "Basic",
                        "required": true,
                        "description": "Read sequence. In case of paired-end alignment it is crucial to set metadata 'paired-end' field to 1/2.",
                        "label": "Read sequence",
                        "id": "#reads",
                        "inputBinding": {
                            "position": 10,
                            "sbg:cmdInclude": true,
                            "valueFrom": {
                                "script": "{\n  var list = [].concat($job.inputs.reads)\n  var all_samples = []\n  \n  getUnique = function(arr){\n    var u = {}, a = [];\n    for(var i = 0, l = arr.length; i < l; ++i){\n      if(u.hasOwnProperty(arr[i])) {\n        continue;\n      }\n      a.push(arr[i]);\n      u[arr[i]] = 1;\n    }\n    return a;\n  }\n    \n  for (index = 0; index < list.length; ++index) {\n    if (list[index].metadata != null){\n      all_samples.push(list[index].metadata.sample_id)\n    }\n  }\n  samples = getUnique(all_samples)\n  \n  var samples_given = all_samples.length == list.length\n  \n  for (index = 0; index < list.length; ++index) {\n    if (list[index].metadata != null){\n      all_samples.push(list[index].metadata.sample_id)\n    }\n  }\n  samples = getUnique(all_samples)\n  var resp = []\n  \n  if (list.length == 1){\n    resp.push(list[0].path)\n    \n  }else if (list.length == 2){    \n    \n    left = \"\"\n    right = \"\"\n      \n    for (index = 0; index < list.length; ++index) {\n      \n      if (list[index].metadata != null){\n        if (list[index].metadata.paired_end == 1){\n          left = list[index].path\n        }else if (list[index].metadata.paired_end == 2){\n          right = list[index].path\n        }\n      }\n    }\n    \n    if (left != \"\" && right != \"\"){      \n      resp.push(left)\n      resp.push(right)\n    }\n  }\n  else if (list.length > 2){\n    left = []\n    right = []\n    if (samples_given){\n      for (sample_ind = 0; sample_ind < samples.length; ++sample_ind){\n        for (read_ind = 0; read_ind < list.length; ++read_ind){\n          if (list[read_ind].metadata != null){\n            if (list[read_ind].metadata.paired_end == 1 && list[read_ind].metadata.sample_id == samples[sample_ind]){\n              left.push(list[read_ind].path)\n            }else if (list[read_ind].metadata.paired_end == 2 && list[read_ind].metadata.sample_id == samples[sample_ind]){\n              right.push(list[read_ind].path)}\n          }\n        }\n      }\n    } else {\n        for (index = 0; index < list.length; ++index) {\n\n          if (list[index].metadata != null){\n            if (list[index].metadata.paired_end == 1){\n              left.push(list[index].path)\n            }else if (list[index].metadata.paired_end == 2){\n              right.push(list[index].path)\n            }\n          }\n        }\n    }\n\n\n    left_join = left.join()\n    right_join = right.join()\n    if (left != [] && right != []){      \n      resp.push(left_join)\n      resp.push(right_join)\n    }\n    }\n  \n  if(resp.length > 0){    \n    return \"--readFilesIn \".concat(resp.join(\" \"))\n  }\n}",
                                "engine": "#cwl-js-engine",
                                "class": "Expression"
                            },
                            "itemSeparator": " ",
                            "separate": true
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "NotEqual",
                        "type": [
                            "null",
                            {
                                "type": "enum",
                                "name": "readMatesLengthsIn",
                                "symbols": [
                                    "NotEqual",
                                    "Equal"
                                ]
                            }
                        ],
                        "sbg:category": "Read parameters",
                        "description": "Equal/Not equal - lengths of names, sequences, qualities for both mates are the same/not the same. \"Not equal\" is safe in all situations.",
                        "label": "Reads lengths",
                        "id": "#readMatesLengthsIn",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--readMatesLengthsIn"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "-1",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Read parameters",
                        "description": "Number of reads to map from the beginning of the file.",
                        "label": "Reads to map",
                        "id": "#readMapNumber",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--readMapNumber"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "IndelSoftclipSingleend",
                        "type": [
                            "null",
                            {
                                "type": "enum",
                                "name": "quantTranscriptomeBan",
                                "symbols": [
                                    "IndelSoftclipSingleend",
                                    "Singleend"
                                ]
                            }
                        ],
                        "sbg:category": "Quantification of Annotations",
                        "description": "Prohibit various alignment type. IndelSoftclipSingleend: prohibit indels, soft clipping and single-end alignments - compatible with RSEM; Singleend: prohibit single-end alignments.",
                        "label": "Prohibit alignment type",
                        "id": "#quantTranscriptomeBan",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--quantTranscriptomeBan"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "-",
                        "type": [
                            "null",
                            {
                                "type": "enum",
                                "name": "quantMode",
                                "symbols": [
                                    "TranscriptomeSAM",
                                    "GeneCounts",
                                    "TranscriptomeSAM GeneCounts"
                                ]
                            }
                        ],
                        "description": "Types of quantification requested. 'TranscriptomeSAM' option outputs SAM/BAM alignments to transcriptome into a separate file. With 'GeneCounts' option, STAR will count number of reads per gene while mapping.",
                        "sbg:category": "Quantification of Annotations",
                        "label": "Quantification mode",
                        "id": "#quantMode"
                    },
                    {
                        "sbg:toolDefaultValue": "Unsorted",
                        "type": [
                            "null",
                            {
                                "type": "enum",
                                "name": "outSortingType",
                                "symbols": [
                                    "Unsorted",
                                    "SortedByCoordinate"
                                ]
                            }
                        ],
                        "description": "Type of output sorting.",
                        "sbg:category": "Output",
                        "label": "Output sorting type",
                        "id": "#outSortingType"
                    },
                    {
                        "sbg:toolDefaultValue": "All",
                        "type": [
                            "null",
                            {
                                "type": "enum",
                                "name": "outSJfilterReads",
                                "symbols": [
                                    "All",
                                    "Unique"
                                ]
                            }
                        ],
                        "sbg:category": "Output filtering: splice junctions",
                        "description": "Which reads to consider for collapsed splice junctions output. All: all reads, unique- and multi-mappers; Unique: uniquely mapping reads only.",
                        "label": "Collapsed junctions reads",
                        "id": "#outSJfilterReads",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--outSJfilterReads"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "30 12 12 12",
                        "type": [
                            "null",
                            {
                                "type": "array",
                                "items": "int"
                            }
                        ],
                        "sbg:category": "Output filtering: splice junctions",
                        "description": "Minimum overhang length for splice junctions on both sides for each of the motifs. To set no output for desired motif, assign -1 to the corresponding field. Does not apply to annotated junctions.",
                        "label": "Min overhang SJ",
                        "id": "#outSJfilterOverhangMin",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "itemSeparator": " ",
                            "prefix": "--outSJfilterOverhangMin"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "50000 100000 200000",
                        "type": [
                            "null",
                            {
                                "type": "array",
                                "items": "int"
                            }
                        ],
                        "sbg:category": "Output filtering: splice junctions",
                        "description": "Maximum gap allowed for junctions supported by 1,2,3...N reads (int >= 0) i.e. by default junctions supported by 1 read can have gaps <=50000b, by 2 reads: <=100000b, by 3 reads: <=200000. By 4 or more reads: any gap <=alignIntronMax. Does not apply to annotated junctions.",
                        "label": "Max gap allowed",
                        "id": "#outSJfilterIntronMaxVsReadN",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "itemSeparator": " ",
                            "prefix": "--outSJfilterIntronMaxVsReadN"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "10 0 5 10",
                        "type": [
                            "null",
                            {
                                "type": "array",
                                "items": "int"
                            }
                        ],
                        "sbg:category": "Output filtering: splice junctions",
                        "description": "Minimum allowed distance to other junctions' donor/acceptor for each of the motifs (int >= 0). Does not apply to annotated junctions.",
                        "label": "Min distance to other donor/acceptor",
                        "id": "#outSJfilterDistToOtherSJmin",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "itemSeparator": " ",
                            "prefix": "--outSJfilterDistToOtherSJmin"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "3 1 1 1",
                        "type": [
                            "null",
                            {
                                "type": "array",
                                "items": "int"
                            }
                        ],
                        "sbg:category": "Output filtering: splice junctions",
                        "description": "Minimum uniquely mapping read count per junction for each of the motifs. To set no output for desired motif, assign -1 to the corresponding field. Junctions are output if one of --outSJfilterCountUniqueMin OR --outSJfilterCountTotalMin conditions are satisfied. Does not apply to annotated junctions.",
                        "label": "Min unique count",
                        "id": "#outSJfilterCountUniqueMin",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "itemSeparator": " ",
                            "prefix": "--outSJfilterCountUniqueMin"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "3 1 1 1",
                        "type": [
                            "null",
                            {
                                "type": "array",
                                "items": "int"
                            }
                        ],
                        "sbg:category": "Output filtering: splice junctions",
                        "description": "Minimum total (multi-mapping+unique) read count per junction for each of the motifs. To set no output for desired motif, assign -1 to the corresponding field. Junctions are output if one of --outSJfilterCountUniqueMin OR --outSJfilterCountTotalMin conditions are satisfied. Does not apply to annotated junctions.",
                        "label": "Min total count",
                        "id": "#outSJfilterCountTotalMin",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "itemSeparator": " ",
                            "prefix": "--outSJfilterCountTotalMin"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "None",
                        "type": [
                            "null",
                            {
                                "type": "enum",
                                "name": "outSAMunmapped",
                                "symbols": [
                                    "None",
                                    "Within"
                                ]
                            }
                        ],
                        "sbg:category": "Output",
                        "description": "Output of unmapped reads in the SAM format. None: no output Within: output unmapped reads within the main SAM file (i.e. Aligned.out.sam).",
                        "label": "Write unmapped in SAM",
                        "id": "#outSAMunmapped",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--outSAMunmapped"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "SAM",
                        "type": [
                            "null",
                            {
                                "type": "enum",
                                "name": "outSAMtype",
                                "symbols": [
                                    "SAM",
                                    "BAM"
                                ]
                            }
                        ],
                        "sbg:category": "Output",
                        "description": "Format of output alignments.",
                        "label": "Output format",
                        "id": "#outSAMtype",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "valueFrom": {
                                "script": "{\n  SAM_type = $job.inputs.outSAMtype\n  SORT_type = $job.inputs.outSortingType\n  if (SAM_type && SORT_type) {\n    return \"--outSAMtype \".concat(SAM_type, \" \", SORT_type)\n  } else if (SAM_type && SORT_type == null) {\n    return \"--outSAMtype \".concat(SAM_type, \" Unsorted\")\n  }\n}",
                                "engine": "#cwl-js-engine",
                                "class": "Expression"
                            },
                            "separate": true
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "None",
                        "type": [
                            "null",
                            {
                                "type": "enum",
                                "name": "outSAMstrandField",
                                "symbols": [
                                    "None",
                                    "intronMotif"
                                ]
                            }
                        ],
                        "sbg:category": "Output",
                        "description": "Cufflinks-like strand field flag. None: not used; intronMotif: strand derived from the intron motif. Reads with inconsistent and/or non-canonical introns are filtered out.",
                        "label": "Strand field flag",
                        "id": "#outSAMstrandField",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--outSAMstrandField"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "Standard",
                        "type": [
                            "null",
                            {
                                "type": "enum",
                                "name": "outSAMreadID",
                                "symbols": [
                                    "Standard",
                                    "Number"
                                ]
                            }
                        ],
                        "sbg:category": "Output",
                        "description": "Read ID record type. Standard: first word (until space) from the FASTx read ID line, removing /1,/2 from the end; Number: read number (index) in the FASTx file.",
                        "label": "Read ID",
                        "id": "#outSAMreadID",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--outSAMreadID"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "OneBestScore",
                        "type": [
                            "null",
                            {
                                "type": "enum",
                                "name": "outSAMprimaryFlag",
                                "symbols": [
                                    "OneBestScore",
                                    "AllBestScore"
                                ]
                            }
                        ],
                        "sbg:category": "Output",
                        "description": "Which alignments are considered primary - all others will be marked with 0x100 bit in the FLAG. OneBestScore: only one alignment with the best score is primary; AllBestScore: all alignments with the best score are primary.",
                        "label": "Primary alignments",
                        "id": "#outSAMprimaryFlag",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--outSAMprimaryFlag"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "Paired",
                        "type": [
                            "null",
                            {
                                "type": "enum",
                                "name": "outSAMorder",
                                "symbols": [
                                    "Paired",
                                    "PairedKeepInputOrder"
                                ]
                            }
                        ],
                        "sbg:category": "Output",
                        "description": "Type of sorting for the SAM output. Paired: one mate after the other for all paired alignments; PairedKeepInputOrder: one mate after the other for all paired alignments, the order is kept the same as in the input FASTQ files.",
                        "label": "Sorting in SAM",
                        "id": "#outSAMorder",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--outSAMorder"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "Full",
                        "type": [
                            "null",
                            {
                                "type": "enum",
                                "name": "outSAMmode",
                                "symbols": [
                                    "Full",
                                    "NoQS"
                                ]
                            }
                        ],
                        "sbg:category": "Output",
                        "description": "Mode of SAM output. Full: full SAM output; NoQS: full SAM but without quality scores.",
                        "label": "SAM mode",
                        "id": "#outSAMmode",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--outSAMmode"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "255",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Output",
                        "description": "MAPQ value for unique mappers (0 to 255).",
                        "label": "MAPQ value",
                        "id": "#outSAMmapqUnique",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--outSAMmapqUnique"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "-",
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:category": "Output",
                        "description": "Extra @PG (software) line of the SAM header (in addition to STAR).",
                        "label": "SAM header @PG",
                        "id": "#outSAMheaderPG",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--outSAMheaderPG"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "-",
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:category": "Output",
                        "description": "@HD (header) line of the SAM header.",
                        "label": "SAM header @HD",
                        "id": "#outSAMheaderHD",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--outSAMheaderHD"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Output",
                        "description": "Set specific bits of the SAM FLAG.",
                        "label": "OR SAM flag",
                        "id": "#outSAMflagOR",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--outSAMflagOR"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "65535",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Output",
                        "description": "Set specific bits of the SAM FLAG.",
                        "label": "AND SAM flag",
                        "id": "#outSAMflagAND",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--outSAMflagAND"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "Standard",
                        "type": [
                            "null",
                            {
                                "type": "enum",
                                "name": "outSAMattributes",
                                "symbols": [
                                    "Standard",
                                    "NH",
                                    "All",
                                    "None"
                                ]
                            }
                        ],
                        "sbg:category": "Output",
                        "description": "Desired SAM attributes, in the order desired for the output SAM. NH: any combination in any order; Standard: NH HI AS nM; All: NH HI AS nM NM MD jM jI; None: no attributes.",
                        "label": "SAM attributes",
                        "id": "#outSAMattributes",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--outSAMattributes"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "None",
                        "type": [
                            "null",
                            {
                                "type": "enum",
                                "name": "outReadsUnmapped",
                                "symbols": [
                                    "None",
                                    "Fastx"
                                ]
                            }
                        ],
                        "sbg:category": "Output",
                        "description": "Output of unmapped reads (besides SAM). None: no output; Fastx: output in separate fasta/fastq files, Unmapped.out.mate1/2.",
                        "label": "Output unmapped reads",
                        "id": "#outReadsUnmapped",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--outReadsUnmapped"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Output",
                        "description": "Add this number to the quality score (e.g. to convert from Illumina to Sanger, use -31).",
                        "label": "Quality conversion",
                        "id": "#outQSconversionAdd",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--outQSconversionAdd"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "Normal",
                        "type": [
                            "null",
                            {
                                "type": "enum",
                                "name": "outFilterType",
                                "symbols": [
                                    "Normal",
                                    "BySJout"
                                ]
                            }
                        ],
                        "sbg:category": "Output filtering",
                        "description": "Type of filtering. Normal: standard filtering using only current alignment; BySJout: keep only those reads that contain junctions that passed filtering into SJ.out.tab.",
                        "label": "Filtering type",
                        "id": "#outFilterType",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--outFilterType"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "0.66",
                        "type": [
                            "null",
                            "float"
                        ],
                        "sbg:category": "Output filtering",
                        "description": "'Minimum score' normalized to read length (sum of mates' lengths for paired-end reads).",
                        "label": "Min score normalized",
                        "id": "#outFilterScoreMinOverLread",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--outFilterScoreMinOverLread"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Output filtering",
                        "description": "Alignment will be output only if its score is higher than this value.",
                        "label": "Min score",
                        "id": "#outFilterScoreMin",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--outFilterScoreMin"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "1",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Output filtering",
                        "description": "The score range below the maximum score for multimapping alignments.",
                        "label": "Multimapping score range",
                        "id": "#outFilterMultimapScoreRange",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--outFilterMultimapScoreRange"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "10",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Output filtering",
                        "description": "Read alignments will be output only if the read maps fewer than this value, otherwise no alignments will be output.",
                        "label": "Max number of mappings",
                        "id": "#outFilterMultimapNmax",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--outFilterMultimapNmax"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "1",
                        "type": [
                            "null",
                            "float"
                        ],
                        "sbg:category": "Output filtering",
                        "description": "Alignment will be output only if its ratio of mismatches to *read* length is less than this value.",
                        "label": "Mismatches to *read* length",
                        "id": "#outFilterMismatchNoverReadLmax",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--outFilterMismatchNoverReadLmax"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "0.3",
                        "type": [
                            "null",
                            "float"
                        ],
                        "sbg:category": "Output filtering",
                        "description": "Alignment will be output only if its ratio of mismatches to *mapped* length is less than this value.",
                        "label": "Mismatches to *mapped* length",
                        "id": "#outFilterMismatchNoverLmax",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--outFilterMismatchNoverLmax"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "10",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Output filtering",
                        "description": "Alignment will be output only if it has fewer mismatches than this value.",
                        "label": "Max number of mismatches",
                        "id": "#outFilterMismatchNmax",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--outFilterMismatchNmax"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "0.66",
                        "type": [
                            "null",
                            "float"
                        ],
                        "sbg:category": "Output filtering",
                        "description": "'Minimum matched bases' normalized to read length (sum of mates lengths for paired-end reads).",
                        "label": "Min matched bases normalized",
                        "id": "#outFilterMatchNminOverLread",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--outFilterMatchNminOverLread"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Output filtering",
                        "description": "Alignment will be output only if the number of matched bases is higher than this value.",
                        "label": "Min matched bases",
                        "id": "#outFilterMatchNmin",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--outFilterMatchNmin"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "None",
                        "type": [
                            "null",
                            {
                                "type": "enum",
                                "name": "outFilterIntronMotifs",
                                "symbols": [
                                    "None",
                                    "RemoveNoncanonical",
                                    "RemoveNoncanonicalUnannotated"
                                ]
                            }
                        ],
                        "sbg:category": "Output filtering",
                        "description": "Filter alignment using their motifs. None: no filtering; RemoveNoncanonical: filter out alignments that contain non-canonical junctions; RemoveNoncanonicalUnannotated: filter out alignments that contain non-canonical unannotated junctions when using annotated splice junctions database. The annotated non-canonical junctions will be kept.",
                        "label": "Motifs filtering",
                        "id": "#outFilterIntronMotifs",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--outFilterIntronMotifs"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "Off",
                        "type": [
                            "null",
                            "boolean"
                        ],
                        "sbg:stageInput": null,
                        "sbg:category": "Read group",
                        "description": "If this boolean argument is specified, no read groups will be set in the resulting BAM header.",
                        "label": "No read groups",
                        "id": "#no_read_groups"
                    },
                    {
                        "sbg:toolDefaultValue": "1000000",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Limits",
                        "description": "Maximum number of junction to be inserted to the genome on the fly at the mapping stage, including those from annotations and those detected in the 1st step of the 2-pass run.",
                        "label": "Max insert junctions",
                        "id": "#limitSjdbInsertNsj",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--limitSjdbInsertNsj"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "1000",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Limits",
                        "description": "Max number of junctions for one read (including all multi-mappers).",
                        "label": "Junctions max number",
                        "id": "#limitOutSJoneRead",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--limitOutSJoneRead"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "1000000",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Limits",
                        "description": "Max number of collapsed junctions.",
                        "label": "Collapsed junctions max number",
                        "id": "#limitOutSJcollapsed",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--limitOutSJcollapsed"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Limits",
                        "description": "Maximum available RAM for sorting BAM. If set to 0, it will be set to the genome index size.",
                        "label": "Limit BAM sorting memory",
                        "id": "#limitBAMsortRAM",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--limitBAMsortRAM"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "genomeDir",
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:category": "Basic",
                        "description": "Name of the directory which contains genome files (when genome.tar is uncompressed).",
                        "label": "Genome dir name",
                        "id": "#genomeDirName",
                        "inputBinding": {
                            "position": 0,
                            "sbg:cmdInclude": true,
                            "valueFrom": {
                                "script": "$job.inputs.genomeDirName || \"genomeDir\"",
                                "engine": "#cwl-js-engine",
                                "class": "Expression"
                            },
                            "separate": true,
                            "prefix": "--genomeDir"
                        }
                    },
                    {
                        "type": [
                            "File"
                        ],
                        "sbg:fileTypes": "TAR",
                        "sbg:category": "Basic",
                        "required": true,
                        "description": "Genome files created using STAR Genome Generate.",
                        "label": "Genome files",
                        "id": "#genome"
                    },
                    {
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            {
                                "type": "array",
                                "items": "int"
                            }
                        ],
                        "sbg:category": "Read parameters",
                        "description": "Number of bases to clip from 5p of each mate. In case only one value is given, it will be assumed the same for both mates.",
                        "label": "Clip 5p bases",
                        "id": "#clip5pNbases",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "itemSeparator": " ",
                            "prefix": "--clip5pNbases"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            {
                                "type": "array",
                                "items": "int"
                            }
                        ],
                        "sbg:category": "Read parameters",
                        "description": "Number of bases to clip from 3p of each mate. In case only one value is given, it will be assumed the same for both mates.",
                        "label": "Clip 3p bases",
                        "id": "#clip3pNbases",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "itemSeparator": " ",
                            "prefix": "--clip3pNbases"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            {
                                "type": "array",
                                "items": "int",
                                "name": "clip3pAfterAdapterNbases"
                            }
                        ],
                        "sbg:category": "Read parameters",
                        "description": "Number of bases to clip from 3p of each mate after the adapter clipping. In case only one value is given, it will be assumed the same for both mates.",
                        "label": "Clip 3p after adapter seq",
                        "id": "#clip3pAfterAdapterNbases",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "itemSeparator": " ",
                            "prefix": "--clip3pAfterAdapterNbases"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "-",
                        "type": [
                            "null",
                            {
                                "type": "array",
                                "items": "string"
                            }
                        ],
                        "sbg:category": "Read parameters",
                        "description": "Adapter sequence to clip from 3p of each mate. In case only one value is given, it will be assumed the same for both mates.",
                        "label": "Clip 3p adapter sequence",
                        "id": "#clip3pAdapterSeq",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "itemSeparator": " ",
                            "prefix": "--clip3pAdapterSeq"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "0.1",
                        "type": [
                            "null",
                            {
                                "type": "array",
                                "items": "float"
                            }
                        ],
                        "sbg:category": "Read parameters",
                        "description": "Max proportion of mismatches for 3p adapter clipping for each mate. In case only one value is given, it will be assumed the same for both mates.",
                        "label": "Max mismatches proportions",
                        "id": "#clip3pAdapterMMp",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "itemSeparator": " ",
                            "prefix": "--clip3pAdapterMMp"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "15",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Chimeric Alignments",
                        "description": "Minimum length of chimeric segment length, if =0, no chimeric output (int>=0).",
                        "label": "Min segment length",
                        "id": "#chimSegmentMin",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--chimSegmentMin"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "10",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Chimeric Alignments",
                        "description": "Minimum difference (separation) between the best chimeric score and the next one (int>=0).",
                        "label": "Min separation score",
                        "id": "#chimScoreSeparation",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--chimScoreSeparation"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Chimeric Alignments",
                        "description": "Minimum total (summed) score of the chimeric segments (int>=0).",
                        "label": "Min total score",
                        "id": "#chimScoreMin",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--chimScoreMin"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "-1",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Chimeric Alignments",
                        "description": "Penalty for a non-GT/AG chimeric junction.",
                        "label": "Non-GT/AG penalty",
                        "id": "#chimScoreJunctionNonGTAG",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--chimScoreJunctionNonGTAG"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "20",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Chimeric Alignments",
                        "description": "Max drop (difference) of chimeric score (the sum of scores of all chimeric segements) from the read length (int>=0).",
                        "label": "Max drop score",
                        "id": "#chimScoreDropMax",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--chimScoreDropMax"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "SeparateSAMold",
                        "type": [
                            "null",
                            {
                                "type": "enum",
                                "name": "chimOutType",
                                "symbols": [
                                    "SeparateSAMold",
                                    "Within"
                                ]
                            }
                        ],
                        "description": "Type of chimeric output. SeparateSAMold: output old SAM into separate Chimeric.out.sam file; Within: output into main aligned SAM/BAM files.",
                        "sbg:category": "Chimeric Alignments",
                        "label": "Chimeric output type",
                        "id": "#chimOutType"
                    },
                    {
                        "sbg:toolDefaultValue": "20",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Chimeric Alignments",
                        "description": "Minimum overhang for a chimeric junction (int>=0).",
                        "label": "Min junction overhang",
                        "id": "#chimJunctionOverhangMin",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--chimJunctionOverhangMin"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "10000",
                        "type": [
                            "null",
                            "float"
                        ],
                        "sbg:category": "Alignments and Seeding",
                        "description": "Max number of windows per read (int>0).",
                        "label": "Max windows per read",
                        "id": "#alignWindowsPerReadNmax",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--alignWindowsPerReadNmax"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "100",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Alignments and Seeding",
                        "description": "Max number of transcripts per window (int>0).",
                        "label": "Max transcripts per window",
                        "id": "#alignTranscriptsPerWindowNmax",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--alignTranscriptsPerWindowNmax"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "10000",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Alignments and Seeding",
                        "description": "Max number of different alignments per read to consider (int>0).",
                        "label": "Max transcripts per read",
                        "id": "#alignTranscriptsPerReadNmax",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--alignTranscriptsPerReadNmax"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "0.66",
                        "type": [
                            "null",
                            "float"
                        ],
                        "sbg:category": "Alignments and Seeding",
                        "description": "AlignSplicedMateMapLmin normalized to mate length (float>0).",
                        "label": "Min mapped length normalized",
                        "id": "#alignSplicedMateMapLminOverLmate",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--alignSplicedMateMapLminOverLmate"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Alignments and Seeding",
                        "description": "Minimum mapped length for a read mate that is spliced (int>0).",
                        "label": "Min mapped length",
                        "id": "#alignSplicedMateMapLmin",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--alignSplicedMateMapLmin"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "Yes",
                        "type": [
                            "null",
                            {
                                "type": "enum",
                                "name": "alignSoftClipAtReferenceEnds",
                                "symbols": [
                                    "Yes",
                                    "No"
                                ]
                            }
                        ],
                        "sbg:category": "Alignments and Seeding",
                        "description": "Option which allows soft clipping of alignments at the reference (chromosome) ends. Can be disabled for compatibility with Cufflinks/Cuffmerge. Yes: Enables soft clipping; No: Disables soft clipping.",
                        "label": "Soft clipping",
                        "id": "#alignSoftClipAtReferenceEnds",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--alignSoftClipAtReferenceEnds"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "5",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Alignments and Seeding",
                        "description": "Minimum overhang (i.e. block size) for spliced alignments (int>0).",
                        "label": "Min overhang",
                        "id": "#alignSJoverhangMin",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--alignSJoverhangMin"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "3",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Alignments and Seeding",
                        "description": "Minimum overhang (i.e. block size) for annotated (sjdb) spliced alignments (int>0).",
                        "label": "Min overhang: annotated",
                        "id": "#alignSJDBoverhangMin",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--alignSJDBoverhangMin"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Alignments and Seeding",
                        "description": "Maximum gap between two mates, if 0, max intron gap will be determined by (2^winBinNbits)*winAnchorDistNbins.",
                        "label": "Max mates gap",
                        "id": "#alignMatesGapMax",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--alignMatesGapMax"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "21",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Alignments and Seeding",
                        "description": "Minimum intron size: genomic gap is considered intron if its length >= alignIntronMin, otherwise it is considered Deletion (int>=0).",
                        "label": "Min intron size",
                        "id": "#alignIntronMin",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--alignIntronMin"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "0",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Alignments and Seeding",
                        "description": "Maximum intron size, if 0, max intron size will be determined by (2^winBinNbits)*winAnchorDistNbins.",
                        "label": "Max intron size",
                        "id": "#alignIntronMax",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--alignIntronMax"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "Local",
                        "type": [
                            "null",
                            {
                                "type": "enum",
                                "name": "alignEndsType",
                                "symbols": [
                                    "Local",
                                    "EndToEnd",
                                    "Extend5pOfRead1"
                                ]
                            }
                        ],
                        "sbg:category": "Alignments and Seeding",
                        "description": "Type of read ends alignment. Local: standard local alignment with soft-clipping allowed. EndToEnd: force end to end read alignment, do not soft-clip.",
                        "label": "Alignment type",
                        "id": "#alignEndsType",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--alignEndsType"
                        }
                    }
                ],
                "x": 623.9999999999999,
                "sbg:validationErrors": [],
                "y": 323.00000000000006,
                "sbg:license": "GNU General Public License v3.0 only",
                "sbg:links": [
                    {
                        "label": "Homepage",
                        "id": "https://github.com/alexdobin/STAR"
                    },
                    {
                        "label": "Releases",
                        "id": "https://github.com/alexdobin/STAR/releases"
                    },
                    {
                        "label": "Manual",
                        "id": "https://github.com/alexdobin/STAR/blob/master/doc/STARmanual.pdf"
                    },
                    {
                        "label": "Support",
                        "id": "https://groups.google.com/forum/#!forum/rna-star"
                    },
                    {
                        "label": "Publication",
                        "id": "http://www.ncbi.nlm.nih.gov/pubmed/23104886"
                    }
                ],
                "sbg:toolkit": "STAR",
                "sbg:toolkitVersion": "2.4.2a",
                "sbg:modifiedBy": "uros_sipetic",
                "sbg:id": "admin/sbg-public-data/star/26",
                "sbg:contributors": [
                    "ana_d",
                    "uros_sipetic",
                    "bix-demo",
                    "jexnaex"
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1450911471,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "bix-demo"
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1450911473,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "bix-demo"
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1450911475,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "bix-demo"
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1462878528,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic"
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1462889222,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "ana_d"
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:modifiedOn": 1464956638,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "jexnaex"
                    },
                    {
                        "sbg:revision": 6,
                        "sbg:modifiedOn": 1464956988,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "jexnaex"
                    },
                    {
                        "sbg:revision": 7,
                        "sbg:modifiedOn": 1467305434,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "ana_d"
                    },
                    {
                        "sbg:revision": 8,
                        "sbg:modifiedOn": 1470661539,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic"
                    },
                    {
                        "sbg:revision": 9,
                        "sbg:modifiedOn": 1470668183,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic"
                    },
                    {
                        "sbg:revision": 10,
                        "sbg:modifiedOn": 1470672304,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic"
                    },
                    {
                        "sbg:revision": 11,
                        "sbg:modifiedOn": 1470672593,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic"
                    },
                    {
                        "sbg:revision": 12,
                        "sbg:modifiedOn": 1471865774,
                        "sbg:revisionNotes": "Added proper 'paired_end' metadata to 'unmapped_reads' output.",
                        "sbg:modifiedBy": "uros_sipetic"
                    },
                    {
                        "sbg:revision": 13,
                        "sbg:modifiedOn": 1471871298,
                        "sbg:revisionNotes": "Updated description.",
                        "sbg:modifiedBy": "uros_sipetic"
                    },
                    {
                        "sbg:revision": 14,
                        "sbg:modifiedOn": 1472206891,
                        "sbg:revisionNotes": "Add proper 'Reference Genome' metadata to BAM/SAM outputs.",
                        "sbg:modifiedBy": "uros_sipetic"
                    },
                    {
                        "sbg:revision": 15,
                        "sbg:modifiedOn": 1473068488,
                        "sbg:revisionNotes": "Fixed description typos.",
                        "sbg:modifiedBy": "uros_sipetic"
                    },
                    {
                        "sbg:revision": 16,
                        "sbg:modifiedOn": 1473070488,
                        "sbg:revisionNotes": "Changed number of cores from 15 to 32.",
                        "sbg:modifiedBy": "uros_sipetic"
                    },
                    {
                        "sbg:revision": 17,
                        "sbg:modifiedOn": 1475169313,
                        "sbg:revisionNotes": "Multiple read pairs can be included in the command line now. In order to have the same order of the pairs, \"Sample ID\" metadata has to be set. Otherwise, pairs will be ordered randomly.",
                        "sbg:modifiedBy": "ana_d"
                    },
                    {
                        "sbg:revision": 18,
                        "sbg:modifiedOn": 1475749337,
                        "sbg:revisionNotes": "Expression fixed for reads input.",
                        "sbg:modifiedBy": "ana_d"
                    },
                    {
                        "sbg:revision": 19,
                        "sbg:modifiedOn": 1476893173,
                        "sbg:revisionNotes": "Update some expressions to accpet multiple fastq files.",
                        "sbg:modifiedBy": "uros_sipetic"
                    },
                    {
                        "sbg:revision": 20,
                        "sbg:modifiedOn": 1477488616,
                        "sbg:revisionNotes": "Unmapped reads output extension is now the same as the input read files extensions.",
                        "sbg:modifiedBy": "uros_sipetic"
                    },
                    {
                        "sbg:revision": 21,
                        "sbg:modifiedOn": 1479131281,
                        "sbg:revisionNotes": "Fixed an encoding bug that could manifest in downstream analysis under Windows platform.",
                        "sbg:modifiedBy": "uros_sipetic"
                    },
                    {
                        "sbg:revision": 22,
                        "sbg:modifiedOn": 1480523653,
                        "sbg:revisionNotes": "Add couple of small features.",
                        "sbg:modifiedBy": "uros_sipetic"
                    },
                    {
                        "sbg:revision": 23,
                        "sbg:modifiedOn": 1481205093,
                        "sbg:revisionNotes": "Add option to sort unmapped reads by ID.",
                        "sbg:modifiedBy": "uros_sipetic"
                    },
                    {
                        "sbg:revision": 24,
                        "sbg:modifiedOn": 1481225957,
                        "sbg:revisionNotes": "Make sorting unmapped reads by read ID the default behaviour.",
                        "sbg:modifiedBy": "uros_sipetic"
                    },
                    {
                        "sbg:revision": 25,
                        "sbg:modifiedOn": 1481283140,
                        "sbg:revisionNotes": "Add option to sort unmapped reads by read ID (default is OFF).",
                        "sbg:modifiedBy": "uros_sipetic"
                    },
                    {
                        "sbg:revision": 26,
                        "sbg:modifiedOn": 1485434288,
                        "sbg:revisionNotes": "Update read group expression to handle cases with files without any metadata.",
                        "sbg:modifiedBy": "uros_sipetic"
                    }
                ],
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 32,
                        "mem": 60000
                    },
                    "inputs": {
                        "seedNoneLociPerWindow": 0,
                        "limitSjdbInsertNsj": 0,
                        "outFilterScoreMin": 0,
                        "alignSJDBoverhangMin": 0,
                        "sjdbScore": null,
                        "outSAMheaderHD": "outSAMheaderHD",
                        "quantTranscriptomeBan": "IndelSoftclipSingleend",
                        "sjdbInsertSave": "Basic",
                        "winAnchorDistNbins": 0,
                        "outFilterType": "Normal",
                        "alignTranscriptsPerWindowNmax": 0,
                        "chimSegmentMin": 0,
                        "outSAMmode": "Full",
                        "outSJfilterReads": "All",
                        "outQSconversionAdd": 0,
                        "alignSplicedMateMapLmin": 0,
                        "clip3pAdapterMMp": [
                            0
                        ],
                        "chimScoreSeparation": 0,
                        "outSAMunmapped": "None",
                        "outSAMheaderPG": "outSAMheaderPG",
                        "winFlankNbins": 0,
                        "outSJfilterCountUniqueMin": [
                            3,
                            1,
                            1,
                            1
                        ],
                        "seedPerReadNmax": 0,
                        "outFilterMultimapNmax": 0,
                        "scoreGenomicLengthLog2scale": 0,
                        "outFilterMatchNminOverLread": 0,
                        "twopass1readsN": 0,
                        "seedMultimapNmax": 0,
                        "sjdbGTFfeatureExon": "",
                        "clip3pNbases": [
                            0,
                            3
                        ],
                        "seedSearchStartLmax": 0,
                        "no_read_groups": false,
                        "sjdbGTFtagExonParentGene": "",
                        "outSAMattributes": "Standard",
                        "readMatesLengthsIn": "NotEqual",
                        "seedSearchLmax": 0,
                        "rg_platform": "Ion Torrent PGM",
                        "sortUnmappedReads": true,
                        "alignMatesGapMax": 0,
                        "outSJfilterIntronMaxVsReadN": [
                            0
                        ],
                        "genome": {
                            "path": "genome.ext",
                            "secondaryFiles": [],
                            "size": 0,
                            "class": "File"
                        },
                        "outFilterMismatchNoverReadLmax": 0,
                        "outSortingType": "Unsorted",
                        "alignEndsType": "Local",
                        "scoreInsBase": 0,
                        "alignSJoverhangMin": 0,
                        "sjdbGTFtagExonParentTranscript": "",
                        "rg_platform_unit_id": "rg_platform_unit",
                        "chimJunctionOverhangMin": 0,
                        "chimScoreJunctionNonGTAG": 0,
                        "rg_mfl": "rg_mfl",
                        "alignIntronMax": 0,
                        "outFilterMatchNmin": 0,
                        "outSAMtype": "BAM",
                        "alignIntronMin": 0,
                        "scoreGapNoncan": 0,
                        "outSAMstrandField": "None",
                        "clip5pNbases": [
                            0
                        ],
                        "unmappedOutputName": "",
                        "sjdbOverhang": null,
                        "scoreDelBase": 0,
                        "seedSearchStartLmaxOverLread": 0,
                        "chimOutType": "Within",
                        "sjdbGTFchrPrefix": "chrPrefix",
                        "outSJfilterDistToOtherSJmin": [
                            0
                        ],
                        "outReadsUnmapped": "Fastx",
                        "outSAMprimaryFlag": "OneBestScore",
                        "outFilterIntronMotifs": "None",
                        "readMapNumber": 0,
                        "chimScoreMin": 0,
                        "scoreDelOpen": 0,
                        "outSAMflagOR": 0,
                        "scoreStitchSJshift": 0,
                        "limitOutSJoneRead": 0,
                        "limitBAMsortRAM": 0,
                        "outSAMreadID": "Standard",
                        "clip3pAfterAdapterNbases": [
                            0
                        ],
                        "scoreGapATAC": 0,
                        "outSAMmapqUnique": 0,
                        "winAnchorMultimapNmax": 0,
                        "chimScoreDropMax": 0,
                        "GENOME_DIR_NAME": "",
                        "scoreGapGCAG": 0,
                        "winBinNbits": 0,
                        "outFilterMultimapScoreRange": 0,
                        "clip3pAdapterSeq": [
                            "clip3pAdapterSeq"
                        ],
                        "outSJfilterOverhangMin": [
                            30,
                            12,
                            12,
                            12
                        ],
                        "alignSoftClipAtReferenceEnds": "Yes",
                        "alignWindowsPerReadNmax": 0,
                        "sjdbGTFfile": [
                            {
                                "path": "/demo/test-data/chr20.gtf"
                            }
                        ],
                        "quantMode": "TranscriptomeSAM",
                        "rg_library_id": "",
                        "outSJfilterCountTotalMin": [
                            3,
                            1,
                            1,
                            1
                        ],
                        "limitOutSJcollapsed": 0,
                        "scoreGap": 0,
                        "alignSplicedMateMapLminOverLmate": 0,
                        "alignTranscriptsPerReadNmax": 0,
                        "outFilterMismatchNoverLmax": 0,
                        "seedPerWindowNmax": 0,
                        "rg_seq_center": "",
                        "outFilterScoreMinOverLread": 0,
                        "reads": [
                            {
                                "path": "/test-data/read_A_1.fastq",
                                "metadata": {
                                    "sample_id": "a",
                                    "seq_center": "illumina",
                                    "format": "fastq",
                                    "paired_end": "1"
                                },
                                "secondaryFiles": [],
                                "size": 0,
                                "class": "File"
                            },
                            {
                                "path": "/test-data/read_A_2.fastq",
                                "metadata": {
                                    "sample_id": "a",
                                    "paired_end": "2"
                                },
                                "secondaryFiles": [],
                                "size": 0,
                                "class": "File"
                            },
                            {
                                "path": "/test-data/read_B_2.fastq",
                                "metadata": {
                                    "sample_id": "b",
                                    "paired_end": "2"
                                },
                                "secondaryFiles": [],
                                "size": 0,
                                "class": "File"
                            },
                            {
                                "path": "/test-data/read_B_1.fastq",
                                "metadata": {
                                    "sample_id": "b",
                                    "paired_end": "1"
                                },
                                "secondaryFiles": [],
                                "size": 0,
                                "class": "File"
                            }
                        ],
                        "outSAMflagAND": 0,
                        "outSAMorder": "Paired",
                        "rg_sample_id": "rg_sample",
                        "outFilterMismatchNmax": 0,
                        "scoreInsOpen": 0,
                        "twopassMode": "Basic"
                    }
                },
                "sbg:createdOn": 1450911471,
                "sbg:latestRevision": 26,
                "sbg:cmdPreview": "tar -xvf genome.ext && /opt/STAR --runThreadN 32    --sjdbGTFfile /demo/test-data/chr20.gtf  --sjdbGTFchrPrefix chrPrefix --sjdbInsertSave Basic  --twopass1readsN -1  --chimOutType WithinBAM  --outSAMattrRGline ID:a CN:illumina PI:rg_mfl PL:Ion_Torrent_PGM PU:rg_platform_unit SM:rg_sample , ID:b PI:rg_mfl PL:Ion_Torrent_PGM PU:rg_platform_unit SM:rg_sample  --quantMode TranscriptomeSAM --outFileNamePrefix ./read.  --readFilesIn /test-data/read_A_1.fastq,/test-data/read_B_1.fastq /test-data/read_A_2.fastq,/test-data/read_B_2.fastq  && tar -vcf read._STARgenome.tar ./read._STARgenome   && cat read.Unmapped.out.mate2 | sed 's/\\t.*//' | paste - - - - | sort -k1,1 -S 10G | tr '\\t' '\\n' > read.Unmapped.out.mate2.fastq && rm read.Unmapped.out.mate2 && cat read.Unmapped.out.mate1 | sed 's/\\t.*//' | paste - - - - | sort -k1,1 -S 10G | tr '\\t' '\\n' > read.Unmapped.out.mate1.fastq && rm read.Unmapped.out.mate1",
                "cwlVersion": "sbg:draft-2",
                "baseCommand": [
                    "tar",
                    "-xvf",
                    {
                        "script": "$job.inputs.genome.path",
                        "engine": "#cwl-js-engine",
                        "class": "Expression"
                    },
                    "&&",
                    "/opt/STAR",
                    "--runThreadN",
                    {
                        "script": "{\n  return $job.allocatedResources.cpu\n}",
                        "engine": "#cwl-js-engine",
                        "class": "Expression"
                    }
                ],
                "sbg:categories": [
                    "Alignment"
                ],
                "id": "bix-demo/star-2-4-2a-demo/star/26",
                "sbg:project": "bix-demo/star-2-4-2a-demo",
                "class": "CommandLineTool"
            },
            "sbg:x": 623.9999999999999,
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
                    "default": 100,
                    "id": "#STAR.sjdbOverhang"
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
                    "source": [
                        "#sjdbGTFfile"
                    ],
                    "id": "#STAR.sjdbGTFfile"
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
                    "source": [
                        "#SBG_FASTQ_Quality_Detector.result"
                    ],
                    "id": "#STAR.reads"
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
                    "default": "TranscriptomeSAM",
                    "id": "#STAR.quantMode"
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
                    "default": "BAM",
                    "id": "#STAR.outSAMtype"
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
                    "default": "Fastx",
                    "id": "#STAR.outReadsUnmapped"
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
                    "id": "#STAR.limitBAMsortRAM"
                },
                {
                    "id": "#STAR.genomeDirName"
                },
                {
                    "source": [
                        "#STAR_Genome_Generate.genome"
                    ],
                    "id": "#STAR.genome"
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
            ]
        },
        {
            "sbg:y": 443.16660563151044,
            "outputs": [
                {
                    "id": "#STAR_Genome_Generate.genome"
                }
            ],
            "run": {
                "sbg:sbgMaintained": false,
                "sbg:toolAuthor": "Alexander Dobin/CSHL",
                "outputs": [
                    {
                        "type": [
                            "null",
                            "File"
                        ],
                        "sbg:fileTypes": "TAR",
                        "description": "Genome files comprise binary genome sequence, suffix arrays, text chromosome names/lengths, splice junctions coordinates, and transcripts/genes information.",
                        "outputBinding": {
                            "glob": "*.tar",
                            "sbg:inheritMetadataFrom": "#reference_or_index",
                            "sbg:metadata": {
                                "reference_genome": {
                                    "script": "{\n  var str1 = [].concat($job.inputs.reference_or_index)[0].path.split('/')\n  var str2 = str1[str1.length-1]\n  var str3 = str2.split('.')\n  var str4 = \"\"\n  for (i=0; i<str3.length-1; i++) {\n    if (i<str3.length-2) { \n    str4 = str4 + str3[i] + \".\"\n    }\n    else {\n      str4 = str4 + str3[i]\n    }\n  }\n  var tmp = str3.pop()\n  if (tmp.toLowerCase()=='fa' || tmp.toLowerCase()=='fasta') {\n    return str4\n  } else if (tmp.toLowerCase()=='tar') {\n    return [].concat($job.inputs.reference_or_index)[0].metadata.reference_genome\n  }\n}\n",
                                    "engine": "#cwl-js-engine",
                                    "class": "Expression"
                                }
                            }
                        },
                        "label": "Genome Files",
                        "id": "#genome"
                    }
                ],
                "arguments": [
                    {
                        "position": 99,
                        "valueFrom": {
                            "script": "{\n  var tmp1 = [].concat($job.inputs.reference_or_index)[0].path.split('/').pop()\n  if ($job.inputs.sjdbGTFfile) {\n    var tmp2 = [].concat($job.inputs.sjdbGTFfile)[0].path.split('/').pop()\n  } else {\n    var tmp2 = \"\"\n  }\n  \n  var str1 = tmp1.split('.')\n  var x1 = \"\"\n  for (i=0; i<str1.length-1; i++) {\n    if (i<str1.length-2) { \n    x1 = x1 + str1[i] + \".\"\n    }\n    else {\n      x1 = x1 + str1[i]\n    }\n  }\n  \n  var str2 = tmp2.split('.')\n  var x2 = \"\"\n  for (i=0; i<str2.length-1; i++) {\n    if (i<str2.length-2) { \n    x2 = x2 + str2[i] + \".\"\n    }\n    else {\n      x2 = x2 + str2[i] + \"_\"\n    }\n  }\n  var tmp3 = $job.inputs.reference_or_index.path.split('/').pop()\n  var tmp4 = tmp3.split('.').pop()\n  if (tmp4 == 'tar' || tmp4 == 'TAR') {\n    return \"\"\n  } else {\n    return \"&& tar -vcf \" + x1 + \"_\" + x2 + \"star-2.4.2a-index-archive.tar ./genomeDir \"\n  }\n}",
                            "engine": "#cwl-js-engine",
                            "class": "Expression"
                        },
                        "separate": true
                    },
                    {
                        "valueFrom": {
                            "script": "{\t\n  var sjFormat = \"False\"\n  var gtfgffFormat = \"False\"\n  var list = $job.inputs.sjdbGTFfile\n  var paths_list = []\n  var joined_paths = \"\"\n  \n  if (list) {\n    list.forEach(function(f){return paths_list.push(f.path)})\n    joined_paths = paths_list.join(\" \")\n\n\n    paths_list.forEach(function(f){\n      ext = f.replace(/^.*\\./, '')\n      ext2 = ext.toLowerCase()\n      if (ext2 == \"gff\" || ext2 == \"gtf\" || ext2 == \"gff2\" || ext2 == \"gff3\" || ext2 == \"txt\") {\n        gtfgffFormat = \"True\"\n        return gtfgffFormat\n      }\n      if (ext == \"txt\") {\n        sjFormat = \"True\"\n        return sjFormat\n      }\n    })\n\n    if ($job.inputs.sjdbGTFfile && $job.inputs.sjdbInsertSave != \"None\") {\n      if (sjFormat == \"True\") {\n        return \"--sjdbFileChrStartEnd \".concat(joined_paths)\n      }\n      else if (gtfgffFormat == \"True\") {\n        return \"--sjdbGTFfile \".concat(joined_paths)\n      }\n    }\n  }\n}",
                            "engine": "#cwl-js-engine",
                            "class": "Expression"
                        },
                        "separate": true
                    }
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:revision": 0,
                        "sbg:modifiedOn": 1450911469,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "bix-demo"
                    },
                    {
                        "sbg:revision": 1,
                        "sbg:modifiedOn": 1450911470,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "bix-demo"
                    },
                    {
                        "sbg:revision": 2,
                        "sbg:modifiedOn": 1470664221,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic"
                    },
                    {
                        "sbg:revision": 3,
                        "sbg:modifiedOn": 1470664283,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic"
                    },
                    {
                        "sbg:revision": 4,
                        "sbg:modifiedOn": 1470664360,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic"
                    },
                    {
                        "sbg:revision": 5,
                        "sbg:modifiedOn": 1471007754,
                        "sbg:revisionNotes": "Redesigned the indexer",
                        "sbg:modifiedBy": "uros_sipetic"
                    },
                    {
                        "sbg:revision": 6,
                        "sbg:modifiedOn": 1471008158,
                        "sbg:revisionNotes": "Redesigned the indexer.",
                        "sbg:modifiedBy": "uros_sipetic"
                    },
                    {
                        "sbg:revision": 7,
                        "sbg:modifiedOn": 1471010224,
                        "sbg:revisionNotes": "Redesigned the indexer",
                        "sbg:modifiedBy": "uros_sipetic"
                    },
                    {
                        "sbg:revision": 8,
                        "sbg:modifiedOn": 1471013061,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic"
                    },
                    {
                        "sbg:revision": 9,
                        "sbg:modifiedOn": 1471277621,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic"
                    },
                    {
                        "sbg:revision": 10,
                        "sbg:modifiedOn": 1471435382,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic"
                    },
                    {
                        "sbg:revision": 11,
                        "sbg:modifiedOn": 1471435812,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic"
                    },
                    {
                        "sbg:revision": 12,
                        "sbg:modifiedOn": 1471439825,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic"
                    },
                    {
                        "sbg:revision": 13,
                        "sbg:modifiedOn": 1471871809,
                        "sbg:revisionNotes": "Updates description.",
                        "sbg:modifiedBy": "uros_sipetic"
                    },
                    {
                        "sbg:revision": 14,
                        "sbg:modifiedOn": 1472136360,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic"
                    },
                    {
                        "sbg:revision": 15,
                        "sbg:modifiedOn": 1472223236,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic"
                    },
                    {
                        "sbg:revision": 16,
                        "sbg:modifiedOn": 1473070729,
                        "sbg:revisionNotes": "Changed number of cores from 15 to 32.",
                        "sbg:modifiedBy": "uros_sipetic"
                    },
                    {
                        "sbg:revision": 17,
                        "sbg:modifiedOn": 1475755058,
                        "sbg:revisionNotes": null,
                        "sbg:modifiedBy": "uros_sipetic"
                    },
                    {
                        "sbg:revision": 18,
                        "sbg:modifiedOn": 1477489169,
                        "sbg:revisionNotes": "Add info about GFF3 file use.",
                        "sbg:modifiedBy": "uros_sipetic"
                    },
                    {
                        "sbg:revision": 19,
                        "sbg:modifiedOn": 1479131285,
                        "sbg:revisionNotes": "Fixed an encoding bug that could manifest in downstream analysis under Windows platform.",
                        "sbg:modifiedBy": "uros_sipetic"
                    },
                    {
                        "sbg:revision": 20,
                        "sbg:modifiedOn": 1486635990,
                        "sbg:revisionNotes": "Update GTF expression to properly accept files with uppercase extensions.",
                        "sbg:modifiedBy": "uros_sipetic"
                    }
                ],
                "sbg:image_url": null,
                "successCodes": [],
                "temporaryFailCodes": [],
                "hints": [
                    {
                        "dockerImageId": "a4b0ad2c3cae",
                        "dockerPull": "images.sbgenomics.com/ana_d/star:2.4.2a",
                        "class": "DockerRequirement"
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
                "requirements": [
                    {
                        "requirements": [
                            {
                                "dockerPull": "rabix/js-engine",
                                "class": "DockerRequirement"
                            }
                        ],
                        "id": "#cwl-js-engine",
                        "class": "ExpressionEngineRequirement"
                    }
                ],
                "stdout": "",
                "description": "STAR Genome Generate is a tool that generates genome index files. One set of files should be generated per each genome/annotation combination. Once produced, these files could be used as long as genome/annotation combination stays the same. Also, STAR Genome Generate which produced these files and STAR aligner using them must be the same toolkit version.\n\n###Common issues###\n1. If the indexes for a desired fasta/gtf pair have already been generated, make sure to supply the resulting TAR bundle to the tool input if you are using this tool in a workflow in order to skip unnecessary indexing and speed up the whole workflow process.\n2. If you are providing a GFF3 file and wish to use STAR results for further downstream analysis, a good idea would be to set the \"Exons' parents name\" (id: sjdbGTFtagExonParentTranscript) option to \"Parent\".",
                "sbg:revision": 20,
                "sbg:createdBy": "bix-demo",
                "sbg:modifiedOn": 1486635990,
                "sbg:revisionNotes": "Update GTF expression to properly accept files with uppercase extensions.",
                "label": "STAR Genome Generate",
                "stdin": "",
                "sbg:project": "bix-demo/star-2-4-2a-demo",
                "sbg:validationErrors": [],
                "baseCommand": [
                    {
                        "script": "{\n  var x = $job.inputs.reference_or_index.path.split('/').pop()\n  var y = x.split('.').pop()\n  var z = $job.allocatedResources.cpu\n  if (y == 'fa' || y == 'fasta' || y == 'FA' || y == \"FASTA\") {\n    return \"mkdir genomeDir && /opt/STAR --runMode genomeGenerate --genomeDir ./genomeDir --runThreadN \" + z\n  } else if (y == 'tar' || y == 'TAR') {\n    return \"echo 'Tar bundle provided, skipping indexing.' \"\n  }\n}\n",
                        "engine": "#cwl-js-engine",
                        "class": "Expression"
                    }
                ],
                "sbg:license": "GNU General Public License v3.0 only",
                "sbg:links": [
                    {
                        "label": "Homepage",
                        "id": "https://github.com/alexdobin/STAR"
                    },
                    {
                        "label": "Releases",
                        "id": "https://github.com/alexdobin/STAR/releases"
                    },
                    {
                        "label": "Manual",
                        "id": "https://github.com/alexdobin/STAR/blob/master/doc/STARmanual.pdf"
                    },
                    {
                        "label": "Support",
                        "id": "https://groups.google.com/forum/#!forum/rna-star"
                    },
                    {
                        "label": "Publication",
                        "id": "http://www.ncbi.nlm.nih.gov/pubmed/23104886"
                    }
                ],
                "sbg:toolkit": "STAR",
                "sbg:toolkitVersion": "2.4.2a",
                "sbg:modifiedBy": "uros_sipetic",
                "sbg:id": "admin/sbg-public-data/star-genome-generate/20",
                "sbg:contributors": [
                    "bix-demo",
                    "uros_sipetic"
                ],
                "sbg:categories": [
                    "Alignment"
                ],
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": 32,
                        "mem": 60000
                    },
                    "inputs": {
                        "genomeSAindexNbases": 0,
                        "sjdbGTFchrPrefix": "sjdbGTFchrPrefix",
                        "sjdbGTFfeatureExon": "sjdbGTFfeatureExon",
                        "genomeChrBinNbits": "genomeChrBinNbits",
                        "reference_or_index": {
                            "path": "/sbgenomics/test-data/chr20.fa",
                            "secondaryFiles": [],
                            "size": 0,
                            "class": "File"
                        },
                        "sjdbOverhang": 0,
                        "sjdbScore": 0,
                        "sjdbGTFfile": [
                            {
                                "path": "/sbgenomics/test-data/chr20.gtf",
                                "secondaryFiles": [],
                                "size": 0,
                                "class": "File"
                            }
                        ],
                        "sjdbGTFtagExonParentTranscript": "sjdbGTFtagExonParentTranscript",
                        "genomeSAsparseD": 0,
                        "sjdbGTFtagExonParentGene": "sjdbGTFtagExonParentGene"
                    }
                },
                "sbg:createdOn": 1450911469,
                "sbg:cmdPreview": "mkdir genomeDir && /opt/STAR --runMode genomeGenerate --genomeDir ./genomeDir --runThreadN 32 --genomeFastaFiles /sbgenomics/test-data/chr20.fa  --sjdbGTFfile /sbgenomics/test-data/chr20.gtf  && tar -vcf chr20_chr20_star-2.4.2a-index-archive.tar ./genomeDir",
                "cwlVersion": "sbg:draft-2",
                "class": "CommandLineTool",
                "sbg:latestRevision": 20,
                "id": "https://api.sbgenomics.com/v2/apps/bix-demo/star-2-4-2a-demo/star-genome-generate/20/raw/",
                "inputs": [
                    {
                        "type": [
                            "File"
                        ],
                        "sbg:fileTypes": "FASTA, FA, FNA, TAR",
                        "sbg:stageInput": "link",
                        "sbg:category": "Basic",
                        "description": "Reference sequence to which to align the reads, or a TAR bundle containg already generated indices.",
                        "label": "Reference/Index files",
                        "id": "#reference_or_index",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--genomeFastaFiles"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "18",
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:category": "Genome generation parameters",
                        "description": "Set log2(chrBin), where chrBin is the size (bits) of the bins for genome storage: each chromosome will occupy an integer number of bins. If you are using a genome with a large (>5,000) number of chrosomes/scaffolds, you may need to reduce this number to reduce RAM consumption. The following scaling is recomended: genomeChrBinNbits = min(18, log2(GenomeLength/NumberOfReferences)). For example, for 3 gigaBase genome with 100,000 chromosomes/scaffolds, this is equal to 15.",
                        "label": "Bins size",
                        "id": "#genomeChrBinNbits",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--genomeChrBinNbits"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "14",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Genome generation parameters",
                        "description": "Length (bases) of the SA pre-indexing string. Typically between 10 and 15. Longer strings will use much more memory, but allow faster searches. For small genomes, this number needs to be scaled down, with a typical value of min(14, log2(GenomeLength)/2 - 1). For example, for 1 megaBase genome, this is equal to 9, for 100 kiloBase genome, this is equal to 7.",
                        "label": "Pre-indexing string length",
                        "id": "#genomeSAindexNbases",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--genomeSAindexNbases"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "1",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Genome generation parameters",
                        "description": "Distance between indices: use bigger numbers to decrease needed RAM at the cost of mapping speed reduction (int>0).",
                        "label": "Suffux array sparsity",
                        "id": "#genomeSAsparseD",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--genomeSAsparseD"
                        }
                    },
                    {
                        "type": [
                            "null",
                            {
                                "type": "array",
                                "items": "File",
                                "name": "sjdbGTFfile"
                            }
                        ],
                        "sbg:fileTypes": "GTF, GFF, GFF2, GFF3, TXT",
                        "sbg:stageInput": "link",
                        "sbg:category": "Basic",
                        "description": "Gene model annotations and/or known transcripts. If you are providing a GFF3 file and wish to use STAR results for further downstream analysis, a good idea would be to set the \"Exons' parents name\" (id: sjdbGTFtagExonParentTranscript) option to \"Parent\".",
                        "label": "Splice junction file",
                        "id": "#sjdbGTFfile"
                    },
                    {
                        "sbg:toolDefaultValue": "exon",
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:category": "Splice junctions db parameters",
                        "description": "Feature type in GTF file to be used as exons for building transcripts.",
                        "label": "Set exons feature",
                        "id": "#sjdbGTFfeatureExon",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--sjdbGTFfeatureExon"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "transcript_id",
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:category": "Splice junctions db parameters",
                        "description": "Tag name to be used as exons transcript-parents.",
                        "label": "Exons' parents name",
                        "id": "#sjdbGTFtagExonParentTranscript",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--sjdbGTFtagExonParentTranscript"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "gene_id",
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:category": "Splice junctions db parameters",
                        "description": "Tag name to be used as exons gene-parents.",
                        "label": "Gene name",
                        "id": "#sjdbGTFtagExonParentGene",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--sjdbGTFtagExonParentGene"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "100",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Splice junctions db parameters",
                        "description": "Length of the donor/acceptor sequence on each side of the junctions, ideally = (mate_length - 1) (int >= 0), if int = 0, splice junction database is not used.",
                        "label": "\"Overhang\" length",
                        "id": "#sjdbOverhang",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--sjdbOverhang"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "2",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:category": "Splice junctions db parameters",
                        "description": "Extra alignment score for alignments that cross database junctions.",
                        "label": "Extra alignment score",
                        "id": "#sjdbScore",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--sjdbScore"
                        }
                    },
                    {
                        "sbg:toolDefaultValue": "-",
                        "type": [
                            "null",
                            "string"
                        ],
                        "sbg:category": "Splice junctions db parameters",
                        "description": "Prefix for chromosome names in a GTF file (e.g. 'chr' for using ENSMEBL annotations with UCSC geneomes).",
                        "label": "Chromosome names",
                        "id": "#sjdbGTFchrPrefix",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "prefix": "--sjdbGTFchrPrefix"
                        }
                    }
                ]
            },
            "sbg:x": 382.41658528645826,
            "id": "#STAR_Genome_Generate",
            "inputs": [
                {
                    "source": [
                        "#reference_or_index"
                    ],
                    "id": "#STAR_Genome_Generate.reference_or_index"
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
                    "source": [
                        "#sjdbGTFfile"
                    ],
                    "id": "#STAR_Genome_Generate.sjdbGTFfile"
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
            ]
        }
    ],
    "requirements": [],
    "sbg:latestRevision": 32,
    "sbg:image_url": "https://brood.sbgenomics.com/static/bixqa/qa-load-2017-07-31-18/rna-seq-alignment-star/32.png",
    "sbg:revision": 32,
    "sbg:createdBy": "bixqa",
    "sbg:modifiedOn": 1501518651,
    "sbg:revisionNotes": "Update STAR Genome Generate.",
    "label": "RNA-seq Alignment - STAR",
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedOn": 1501518651,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "bixqa"
        },
        {
            "sbg:revision": 1,
            "sbg:modifiedOn": 1501518651,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "bixqa"
        },
        {
            "sbg:revision": 2,
            "sbg:modifiedOn": 1501518651,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "bixqa"
        },
        {
            "sbg:revision": 3,
            "sbg:modifiedOn": 1501518651,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "bixqa"
        },
        {
            "sbg:revision": 4,
            "sbg:modifiedOn": 1501518651,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "bixqa"
        },
        {
            "sbg:revision": 5,
            "sbg:modifiedOn": 1501518651,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "bixqa"
        },
        {
            "sbg:revision": 6,
            "sbg:modifiedOn": 1501518651,
            "sbg:revisionNotes": "Updated STAR and STAR genome Generate, where STAR Genome Generate was redesigned to be able to take a TAR index bundle as an input as well, in addition to just a FASTA file, which allows it to skip indexing.",
            "sbg:modifiedBy": "bixqa"
        },
        {
            "sbg:revision": 7,
            "sbg:modifiedOn": 1501518651,
            "sbg:revisionNotes": "Improved workflow description.",
            "sbg:modifiedBy": "bixqa"
        },
        {
            "sbg:revision": 8,
            "sbg:modifiedOn": 1501518651,
            "sbg:revisionNotes": "Improved workflow description.",
            "sbg:modifiedBy": "bixqa"
        },
        {
            "sbg:revision": 9,
            "sbg:modifiedOn": 1501518651,
            "sbg:revisionNotes": "Updated description.",
            "sbg:modifiedBy": "bixqa"
        },
        {
            "sbg:revision": 10,
            "sbg:modifiedOn": 1501518651,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "bixqa"
        },
        {
            "sbg:revision": 11,
            "sbg:modifiedOn": 1501518651,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "bixqa"
        },
        {
            "sbg:revision": 12,
            "sbg:modifiedOn": 1501518651,
            "sbg:revisionNotes": "Update STAR.",
            "sbg:modifiedBy": "bixqa"
        },
        {
            "sbg:revision": 13,
            "sbg:modifiedOn": 1501518651,
            "sbg:revisionNotes": "Add suggested files.",
            "sbg:modifiedBy": "bixqa"
        },
        {
            "sbg:revision": 14,
            "sbg:modifiedOn": 1501518651,
            "sbg:revisionNotes": "Turn off BAM sorting inside STAR.",
            "sbg:modifiedBy": "bixqa"
        },
        {
            "sbg:revision": 15,
            "sbg:modifiedOn": 1501518651,
            "sbg:revisionNotes": "Update STAR Genome Generate.",
            "sbg:modifiedBy": "bixqa"
        },
        {
            "sbg:revision": 16,
            "sbg:modifiedOn": 1501518651,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "bixqa"
        },
        {
            "sbg:revision": 17,
            "sbg:modifiedOn": 1501518651,
            "sbg:revisionNotes": "Update STAR to accept multiple read files.",
            "sbg:modifiedBy": "bixqa"
        },
        {
            "sbg:revision": 18,
            "sbg:modifiedOn": 1501518651,
            "sbg:revisionNotes": null,
            "sbg:modifiedBy": "bixqa"
        },
        {
            "sbg:revision": 19,
            "sbg:modifiedOn": 1501518651,
            "sbg:revisionNotes": "Rename \"GenomeFastaFiles\" input to \"reference_or_index\"",
            "sbg:modifiedBy": "bixqa"
        },
        {
            "sbg:revision": 20,
            "sbg:modifiedOn": 1501518651,
            "sbg:revisionNotes": "Update STAR to accept mult-FASTQ files.",
            "sbg:modifiedBy": "bixqa"
        },
        {
            "sbg:revision": 21,
            "sbg:modifiedOn": 1501518651,
            "sbg:revisionNotes": "set reference_or_index suggested file",
            "sbg:modifiedBy": "bixqa"
        },
        {
            "sbg:revision": 22,
            "sbg:modifiedOn": 1501518651,
            "sbg:revisionNotes": "Updated description to clarify how to use STAR output for differential expression.",
            "sbg:modifiedBy": "bixqa"
        },
        {
            "sbg:revision": 23,
            "sbg:modifiedOn": 1501518651,
            "sbg:revisionNotes": "Update STAR so that unmapped reads extensions matched the input reads extension.",
            "sbg:modifiedBy": "bixqa"
        },
        {
            "sbg:revision": 24,
            "sbg:modifiedOn": 1501518651,
            "sbg:revisionNotes": "Fixed an encoding bug that could manifest in JSON parsing under Windows platform.",
            "sbg:modifiedBy": "bixqa"
        },
        {
            "sbg:revision": 25,
            "sbg:modifiedOn": 1501518651,
            "sbg:revisionNotes": "Update STAR to add a couple of small features.",
            "sbg:modifiedBy": "bixqa"
        },
        {
            "sbg:revision": 26,
            "sbg:modifiedOn": 1501518651,
            "sbg:revisionNotes": "Update STAR to add option to sort unmapped reads.",
            "sbg:modifiedBy": "bixqa"
        },
        {
            "sbg:revision": 27,
            "sbg:modifiedOn": 1501518651,
            "sbg:revisionNotes": "Update STAR to make sorting unmapped reads the default behavior.",
            "sbg:modifiedBy": "bixqa"
        },
        {
            "sbg:revision": 28,
            "sbg:modifiedOn": 1501518651,
            "sbg:revisionNotes": "STAR update.",
            "sbg:modifiedBy": "bixqa"
        },
        {
            "sbg:revision": 29,
            "sbg:modifiedOn": 1501518651,
            "sbg:revisionNotes": "Add Google platform instance hint.",
            "sbg:modifiedBy": "bixqa"
        },
        {
            "sbg:revision": 30,
            "sbg:modifiedOn": 1501518651,
            "sbg:revisionNotes": "Update Google instance hint.",
            "sbg:modifiedBy": "bixqa"
        },
        {
            "sbg:revision": 31,
            "sbg:modifiedOn": 1501518651,
            "sbg:revisionNotes": "Add disclaimer about unpublishing in the description.",
            "sbg:modifiedBy": "bixqa"
        },
        {
            "sbg:revision": 32,
            "sbg:modifiedOn": 1501518651,
            "sbg:revisionNotes": "Update STAR Genome Generate.",
            "sbg:modifiedBy": "bixqa"
        }
    ],
    "sbg:project": "bixqa/qa-load-2017-07-31-18",
    "sbg:validationErrors": [],
    "sbg:license": "Apache License 2.0",
    "sbg:canvas_x": -56,
    "sbg:links": [
        {
            "label": "Homepage",
            "id": "https://github.com/alexdobin/STAR"
        },
        {
            "label": "Releases",
            "id": "https://github.com/alexdobin/STAR/releases"
        },
        {
            "label": "Manual",
            "id": "https://github.com/alexdobin/STAR/blob/master/doc/STARmanual.pdf"
        },
        {
            "label": "Support",
            "id": "https://groups.google.com/forum/#!forum/rna-star"
        },
        {
            "label": "Publication",
            "id": "http://www.ncbi.nlm.nih.gov/pubmed/23104886"
        }
    ],
    "sbg:createdOn": 1501518651,
    "sbg:toolkitVersion": "2.4.2a",
    "sbg:modifiedBy": "bixqa",
    "hints": [

    ],
    "sbg:id": "bixqa/qa-load-2017-07-31-18/rna-seq-alignment-star/32",
    "id": "https://api.sbgenomics.com/v2/apps/bixqa/qa-load-2017-07-31-18/rna-seq-alignment-star/32/raw/",
    "sbg:categories": [
        "Alignment",
        "RNA"
    ],
    "sbg:toolkit": "STAR",
    "cwlVersion": "sbg:draft-2",
    "inputs": [
        {
            "type": [
                {
                    "type": "array",
                    "items": "File"
                }
            ],
            "sbg:includeInPorts": true,
            "sbg:fileTypes": "FASTQ,FQ",
            "sbg:y": 323.74994913736975,
            "sbg:x": 149.24997965494788,
            "label": "fastq",
            "id": "#fastq"
        },
        {
            "type": [
                "File"
            ],
            "sbg:fileTypes": "FASTA, FA, FNA, TAR",
            "sbg:y": 465.8335367838541,
            "sbg:suggestedValue": {
                "path": "57bd5d15507c17b56d99b0d6",
                "name": "human_g1k_v37_decoy.phiX174_Homo_sapiens.GRCh37.75_star-2.4.2a.tar",
                "class": "File"
            },
            "sbg:x": 154.16666666666663,
            "label": "reference_or_index",
            "id": "#reference_or_index"
        },
        {
            "type": [
                "null",
                {
                    "type": "array",
                    "items": "File",
                    "name": "sjdbGTFfile"
                }
            ],
            "sbg:fileTypes": "GTF, GFF, GFF2, GFF3, TXT",
            "sbg:y": 189.16666666666663,
            "sbg:suggestedValue": [
                {
                    "path": "5772b6c4507c1752674486cd",
                    "name": "Homo_sapiens.GRCh37.75.gtf",
                    "class": "File"
                }
            ],
            "sbg:x": 143.33333333333331,
            "label": "sjdbGTFfile",
            "id": "#sjdbGTFfile"
        }
    ],
    "sbg:canvas_y": -23,
    "sbg:contributors": [
        "bixqa"
    ],
    "sbg:projectName": "qa-load-2017-07-31-18",
    "class": "Workflow"
}
