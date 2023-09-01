Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 54FDE79012C
	for <lists+jfs-discussion@lfdr.de>; Fri,  1 Sep 2023 19:09:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qc7dT-0004Qp-Eo;
	Fri, 01 Sep 2023 17:08:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1qc7dS-0004Qj-7A
 for jfs-discussion@lists.sourceforge.net;
 Fri, 01 Sep 2023 17:08:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vLwBu/q+CGkOj1CldXv+2QULzORTFLeMIvRh2aA8maw=; b=E1KgUJhB3XalKQBdbEYgHPwoD0
 cgWkr0LkHy8P304+n7Pr2k10ryFm3luu7u/wH/5XJAs0+gZQz90sI2+CxqWNFnayYtaB3rAgzog0H
 qWeECivhbPOGBOfIkco5FZ00JAoiJ7rKecDY/5/Vc/e7x8xCSFN2zaZVUhH/qnBOdPzM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vLwBu/q+CGkOj1CldXv+2QULzORTFLeMIvRh2aA8maw=; b=I/Nd+TxyeZQZncYyO3I45/LWdc
 89YDSK85z5PcI5gpbAcEN9VArZtNOOn/4tcK+yCS5fOHMS/CXsrhhnzPuViwgc/elxZEUKeFAWnIU
 VmiNKHDuljZfmY2KeU0oEorj6KEu98JAh8V/BuKDvZnuSQ8/zibEbTn0tETRyh6nW2Xg=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qc7dM-0007ZD-Ie for jfs-discussion@lists.sourceforge.net;
 Fri, 01 Sep 2023 17:08:42 +0000
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 381CAKxH027006; Fri, 1 Sep 2023 17:08:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-03-30;
 bh=vLwBu/q+CGkOj1CldXv+2QULzORTFLeMIvRh2aA8maw=;
 b=drJgpps8whklxC+9jeYUiL3Fd2ZBEHI2NFXhRMKqDeBKOeeRlNW+vGVSXvKGpdILAXaX
 xk0DwSdAUzR0plhhD8Wvh0x7+RVd1InVmF3x5mWsaO6shbsm19PfSj8ZNBP9CrQwxqnV
 FW4hbqIrQdGIrROYQ6B/07pthOeFzSlD5Mjsv9eEW9f7XTmZD/kI9pj2TGdbq15Yx7EQ
 TeNW8NtEKDOUUdMIXELBEeaw04FDJ7KPP+bLYfCiq8wIJ5/uQtVsCtY5ozXDsHrZXffk
 JDhQThe8QwaYuBHgm1x2iK/fYGfG30r5wqGamXjU6UuLJshjmpEbpgdPaH6auXvHMnW/ /Q== 
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3sq9mcvduy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 01 Sep 2023 17:08:16 +0000
Received: from pps.filterd
 (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.19/8.17.1.19)
 with ESMTP id 381GhKH0032840; Fri, 1 Sep 2023 17:08:15 GMT
Received: from nam10-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam10lp2107.outbound.protection.outlook.com [104.47.55.107])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 3sr6dt303q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 01 Sep 2023 17:08:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kH8Pzw5SvHPAsglY/LnjtxNFDCWe4tQZH/PSiY5xtTprFkOZcUQPbJR/T/2J+gDgcci6iRGiT5VyDX/yXZdJFQ4e3mMQ/Y4dbSKwIqxgaENwfON0Q9kvGC3IQseMifxQ/m2XwDSgWGueZ6S8s1lbtL9K0gAjtxzYg3WI+E9NofIbkvwHKcTSWb9r03xQvmw0hTpWErLRE/3fJoJC9yyCACFJHRDd0qCQY1tT7Q4R1faJINALAxyteph7sDWYXh773PGJZXlOs6/KOd/9X7SKcT1Z/2o+FioiGhirwoQ7zhp7yI3XgAa3DhXJF8ZJOJaNRMd830u10xF9qTELejzvGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vLwBu/q+CGkOj1CldXv+2QULzORTFLeMIvRh2aA8maw=;
 b=Bmma6Gd4YvYMZEc2ggvDn6ITSJ1TnbW/ndClHMWxziUIwkvbVn4xHG1rVrraIqBoT5Ht7Ay0rBh7jKsGhmqkj3qcwfur33gAv54El3elYr04y3Pi90TKMwvRCNG6cmzoYmHyhcv6UCuZ+bcjwOBMxHSuvU5IVSsG+3BdDLtL58BE6r1S0UCrFt5clYDu3oOGNDLn4bhZpQM1OjC0uhkwGHcjsOtCojTt8Q1xg6p6GEWsMVKEiUH4Aq443zdbd832AMwpbyyocfzAEwvDFpKaouKVVMhbQM/LP2KJ/Q7LlYfeB4E4i5OHcSo1FY+RFlzpDwc1PkRgD79hfYv3Ij0HIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vLwBu/q+CGkOj1CldXv+2QULzORTFLeMIvRh2aA8maw=;
 b=IfP8zqdAkTyf5Yyo8N08YVaB60UhfwFYGvm+jV4U2nlYIrASbrcqobovvj1BqnOszdtRd3qKcgT6kDx5uGNYmZRALHUBdD0j5ulMQ/gBW/sOgOPo7ZZko9HtnqXPjXbuPwEt3eDCq0wxXzSKBIlzqUAWe0jwTgOtu5zYXwJknsw=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by MN2PR10MB4223.namprd10.prod.outlook.com (2603:10b6:208:1dd::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.23; Fri, 1 Sep
 2023 17:08:12 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::5943:cf66:5683:21be]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::5943:cf66:5683:21be%4]) with mapi id 15.20.6745.026; Fri, 1 Sep 2023
 17:08:12 +0000
Message-ID: <f9475918-2186-49b8-b801-6f0f9e75f4fa@oracle.com>
Date: Fri, 1 Sep 2023 12:08:09 -0500
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Manas Ghandat <ghandatmanas@gmail.com>, shaggy@kernel.org,
 liushixin2@huawei.com
References: <20230829165244.460154-1-ghandatmanas@gmail.com>
 <e62dbf53-9d74-45e5-b44e-53140672b8b5@oracle.com>
 <ae6ce935-96eb-3d40-f252-54fff7eb0ea9@gmail.com>
In-Reply-To: <ae6ce935-96eb-3d40-f252-54fff7eb0ea9@gmail.com>
X-ClientProxiedBy: DM6PR18CA0032.namprd18.prod.outlook.com
 (2603:10b6:5:15b::45) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|MN2PR10MB4223:EE_
X-MS-Office365-Filtering-Correlation-Id: 64e53318-0528-46ae-fa48-08dbab0e05fb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ATYc+NALQ7frWtxi+t9mvKeGNsxfuq39GX6fU37RrkNnDBkb7p7dGvjqCeHfyqxjw7yyw0FgOgTyA91/A+sbhJkkrlBWR6+N36yNbio9mT9J4DHFdD+CjYpLG3F5fCuyZxZxhAIDOSUHoRPu5VYmISpJ28O37BqnGBbgXDd/pMc8K6c++bhjwVfL06XbFfjT1Xe4riRNjTPUPcCaz+nXr3kBUXQerxeR82/hFQ7Mp2QzKvob7S4zUqG8gc5WqqpRwjgBgxxh+TYOAg4hVv+sJq3FnpuurAe1vFbD9UeSojHJHMM6dIc41jPowiJbEn3tr9XglAun2PPn1a175vA+NkmNTeVwLkt+UUQKQXEMiwwWKa5sGk8KWBwR1xskHM6n2qZLUK8KengZVgNhxKepTRo4raDVRE/bqb/EpCgY7B3kLs5/r0zwH6qrlTkCj8jaWTVYwlSfMaG9qjrMz8xG9vaqNqob3qd7c0IV1bsFJMyWhZVGokVBcUMHky+U9GC/XjAPYbwUY+/GT+HK1XH+FR1MpIyMqti/2/8iXFGEx9O20WYxEUuPoTUNoV279bd4X4fS0hWl72myXXL6bI7bEW1eXYuh+7VcCEXt8VEJR14Ni0wBHIubjimVZDhz6COUcLAawLsbhkvxLGqynUelExFViNJAYy61IVBAO7Tm+dc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(136003)(39860400002)(376002)(366004)(1800799009)(186009)(451199024)(6506007)(6486002)(53546011)(6512007)(6666004)(83380400001)(86362001)(31696002)(38100700002)(36756003)(26005)(2616005)(31686004)(2906002)(41300700001)(66946007)(66556008)(66476007)(8936002)(8676002)(4326008)(316002)(44832011)(966005)(478600001)(5660300002)(99710200001)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NTZqK1N6UFlhV2NyUlEvVlhrSFI4QmlXTlhzdDVhY0pLbHVkSXdYekh4UnBx?=
 =?utf-8?B?Vk0rcGZyTDNJZy80N1FXNnJaNmZOWTNWNXVQOGpLRkNwRjN0NXJ1S3hJT1Qv?=
 =?utf-8?B?MVJSakx6bWdzVVB5blZlWmVQSkxudzd5UlkvNFArN1FCcW9iS0ZoY2k1UlIy?=
 =?utf-8?B?cGZka3g0UFFMbWpFWnB1WUJ1R2E3MTJCOXZsektOT2ViTm1DT1NoNUowZXJH?=
 =?utf-8?B?M1ZIMmNhVDRvNDlIUnZaSlpHNGNkQjYvMnlqN3JFUVBONnJ0dEFsUThzNkJC?=
 =?utf-8?B?VVNlcUw1ZVlSOFBORGEzSWR0Q3RBSUZPd0ludE1BOU15Tzl0L1ZueHQ2c2Fh?=
 =?utf-8?B?QnJWSkI4M0Q4ZDdNV3l6cXNDeDNSNGRhUC83M1BJTWE3cnlPdWhrUnFQL011?=
 =?utf-8?B?SEZFTzFxTW1VZnBWTUcxWlJySnlQNlJGN3dKRm9VL2w5V2FKVHo1bWNXUDZQ?=
 =?utf-8?B?a1BPWk5Ob3BZU1NBRmZpSTIyRHRXS1BjaDZZWlFvNUtsVllKa2J2Z1UxTlFP?=
 =?utf-8?B?ck9saE9IS3dRNEFCL0lRU1B2Y2xYY3JwZWJQbXBMVTFCcXNRSU5tdk50TkR0?=
 =?utf-8?B?ejFldFBQRWlmcEt4Nms0amlocGpCalhsZENUNTNLb3ZuV241SzBFM2tBMDI4?=
 =?utf-8?B?SE9UcjRhMzRINWtBVi8yL0pWbmR0UVdTcjhzdERvbi92SGhnSEJKMXNCc2FR?=
 =?utf-8?B?QVRRSWF3cmJNMHgzalJlRmpGWGxhUm5LSTlPOEcvak9PQno4OFpkZ0F4Mjk5?=
 =?utf-8?B?R0dYQmhLUnlzUkw1Mm92SSs0ZXk1MU1GVkpxSStZYkthK1FudTU5dGZKYXpu?=
 =?utf-8?B?YVZhUjBGWmhzNUgxeFBqZHRrd1BWTEIwQVFiWFhqMFZWNlhzUXlqbVVFb0p0?=
 =?utf-8?B?a3dvOThpY3psUU5pNUNpRUErdW5sdEdqWDRXNDNlR2RuaUQ5aGUrUktXMnMz?=
 =?utf-8?B?L1lVREpoQzVCR0JZVUt5NDFKMWcvdm5OWmM0SVJoT3VKOUVsVXQwS0JHRm1P?=
 =?utf-8?B?U2NyeXgyQ3NNT0xFVFhSdjJyMlZDZEJ5MzlpNkFMYzByWEFxM2plZHhxUWJN?=
 =?utf-8?B?SzJaY09pQXhVSlFWUWdUSC9SZ09VU3UzYlNNN1I5eDU2azMyR3RMcDBNSXlw?=
 =?utf-8?B?ZUJQcFQyaEtMZHQvTjVBdTVOMng2Z294cE5OWXM5T2xkdjRpdUhxM25sRnc0?=
 =?utf-8?B?c3RmRm9rcjZtMzFIbkpMK0UxWEliZFIwTGlqWktkOUtDRUNLbk1Lb3lpSk82?=
 =?utf-8?B?alFkTFJjTTJhSWxLZzNaV3A2OTV5d0hFRUdEY0Ztb2RmcGRrdTRWRWNqa2FI?=
 =?utf-8?B?V25uSzVya09yTUNnQjZKbnNYa3AxWjVuRGNITmVYeS9VU0dtMFNmSnBDVTh6?=
 =?utf-8?B?OExoVnczeUlrWitPMVNYbDQ5aU1WNHg0OHFWT3VxdW51ZnIxR1pLNFRGaVdm?=
 =?utf-8?B?VEVZcDZQeHozbEZZUW16cXJZKzFBQnM3dkV5VDVSc0FRRWlWVEhrYUFOdFFv?=
 =?utf-8?B?VEhyTDBjY1hyQVlOQU55blc5ZDR0WUp2amdDaFpHams0NE9OTUhUVFE4bkho?=
 =?utf-8?B?MTZSM1FnaVdGeERtOFNzVjlYTEFxK2c3S0tDSTR6K200U3VrYSsxNlBLanN6?=
 =?utf-8?B?d2graDdlUUtuOFZQeS9kM2lWbHVGczZOZTE4M2hlQjdLOHhCY2g0UCtvOW5y?=
 =?utf-8?B?MFFxa0xUakpiZ3M2U3cvNzhRUmVnNG5NTHJWbkp3aUY4VDRpWE8vUTI1emgv?=
 =?utf-8?B?UjdwSk1LaEcvOGtaVDBSeVZPN2FTeksxMXBhRVRYbnVuNGhYcFAxUS9kMWlK?=
 =?utf-8?B?b3BPa09IOVBMdDA4bkl3eTFYV1czK1lNTUtrYVZFOFNyQ3owbGd2OG1oKzhN?=
 =?utf-8?B?ZUNVSUdPVHZ0N3Eza1FlRW0xV1hIVlM4c2E3VXBJaVQyZUJPYmlmalNoUHJY?=
 =?utf-8?B?TEQwS2dwS1EyNnVRNm9nR0p6VEg1bEZ4MDVzZjBKWHpRS1F1VmZBbTdTc3dh?=
 =?utf-8?B?V09MUUZmZWJXQ3lSbjZDa3FUd2F2YmZWQ3F1Q25jQ1ZJN2Iwa2Rpb2JwUGdp?=
 =?utf-8?B?cWV0VFRzeW4ySXVkL2QvWUl6dkFYYm9RQ0cvcmxWY25leVBxZWh2dEtxbXFp?=
 =?utf-8?B?a1ZhdWsyNXprcnA2NEdacWx0ZTZCSC9FK09vNGpjZmF0QlVBYUY0U3NLamMv?=
 =?utf-8?B?emc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: =?utf-8?B?UTA5N2x6ZXFiYWZ1OFJyMjRNWWJQck9meDlSZXBOM04rZ3YyWWlVNVlOM1A3?=
 =?utf-8?B?NEQ2NFVVMndZL2JnOGFyWmVkWmF6dktpb2pZSlFyc2RCVG9NY0drUTFXR0tP?=
 =?utf-8?B?cnFhTmVGa1JnNklIbVdCNW9LanNCQWlxMjdGT1R1YWk2bXkrSGZBWU5jM2NB?=
 =?utf-8?B?eGljSWNaVHg3N29Ic05pREdTWVFxbFV2ZWhuMlhnc3RDaHVRZDlFelRVeEtT?=
 =?utf-8?B?Q05WdnIyUkxYa3RhWStkOElVZXpOYVB3cWxjaU1CbFVFLzZQeWtiR0JKUUU3?=
 =?utf-8?B?UitxUTdSVktyTndPR0ZwWmlGR0hDcjRaSkxDTFo3RWRnSTZ6WmU5aDRNS2Y3?=
 =?utf-8?B?NDlCeXc4ODlZOGVVcldyOGw1OVJNTnVrb3ZRdnc3VWJjSWxoNk90RjVKa1dz?=
 =?utf-8?B?NTJzK2o5cTZjSVA4RVVzc21XY1piQjdIOUgzNldtaVpqWmcrQ2tndXFOTDd5?=
 =?utf-8?B?am4vTjJIRkNqMHRnaEd0a2ZvdDNmTlNid3VLZWFDWCt3c1lWOS84NzNxNDRU?=
 =?utf-8?B?b1pwdXQyKyt3UGJYWDdacW1jTHAvKzQvMHVObFplUk5Zd1RyRVNFN0NRSnpF?=
 =?utf-8?B?RkFLNi9EMXpESGZGQ2JLd0Y2UTNsZFhGRlJtWm1HQ3lZMTExOCtpM21qSHhi?=
 =?utf-8?B?eHlDdFprZXlLYzN1VERyN0p0WnR5aDZFMTlpdXJRdGVyQ0pTajh3Q2RWRVNa?=
 =?utf-8?B?eFBiUTVmRE92TWJQblV2bU00OUZNNmNqaWxhb1IvWCtHbjRXNlBnM3p6a1BG?=
 =?utf-8?B?RFdBZ0x5RXVFcW1PTHBwYS9XN3ZSbEVzTTFQTVdEQnd5K3MxV3RXUEU5ZW8w?=
 =?utf-8?B?b0dRLzJtQzVQazAwbWhYcmlRVEVqa2FBU3djSTFwVEdkTytHV2NEekQrcUZ5?=
 =?utf-8?B?K1RoTjhTSllheUZOSVRkVHZzbm5MK1l5RmpkVHhQYmsrZ2lrWmVhZnpmcDQ0?=
 =?utf-8?B?K3orYnhkMEdBQm5PL1c5dUV1Z096RnhaMDZlZ25ZTlB0RmIycmFyTDhZQXJi?=
 =?utf-8?B?L2RpMktPL1YxR0JxeCsyQUljUm84WkNDVk5lOXp1N1RtZjFERHFqRnR0Q1pi?=
 =?utf-8?B?YjQ5TG4yVnA5OE5uWEFmbHVuWTNsb2JSRWtLK09hRkQvVCs4eWtaRExoR25n?=
 =?utf-8?B?ZzhNc1Rhcml6UklodVprUVJ6SjZRaDUxSjNxRDdzNkhZdzlVWFQ5V0c5WlVF?=
 =?utf-8?B?cllwMEluNUlrUFRJWnBkZ0NjMTF2OE5aOWtIaXZNdnorRFVMYWoxMVFhSlFn?=
 =?utf-8?B?MDEyZExVR01LVFg3K052bU90TUQwbmdibXBha2N2ZzJsWUpQWElkb1pqRVJQ?=
 =?utf-8?B?Zmw0K3NMUk9mbGtQd2JxVlJWQ09RUWY2Wmt0RHFpQklaUVpBQkZYUTRMSDNB?=
 =?utf-8?Q?ZMk8zUXd044kywrv0w4ghzvnmkhFqYAc=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 64e53318-0528-46ae-fa48-08dbab0e05fb
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Sep 2023 17:08:12.3654 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3nqfTZ87sVLS/JL84MXDcJCquWs/TNKQ4A9DjKvZMdsldTK1z2MtPbI0V7ZDQHkjecxWri1skU19ga8zqH73bCWv3Q8XrXWj06ld8nqS7NI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR10MB4223
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-01_14,2023-08-31_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 suspectscore=0
 adultscore=0 phishscore=0 spamscore=0 mlxlogscore=999 bulkscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2308100000 definitions=main-2309010160
X-Proofpoint-ORIG-GUID: Vow9V1Yj9pXvj7rv_MSYPYzKjmJk1aEz
X-Proofpoint-GUID: Vow9V1Yj9pXvj7rv_MSYPYzKjmJk1aEz
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 8/31/23 10:19AM, Manas Ghandat wrote: > I was wondering
    if we could implement a get_tree_size macro wherein  we > could find the
    tree size so that we can do the comparison. SInce the > tp->dmt_str [...]
    
 
 Content analysis details:   (-0.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [205.220.165.32 listed in list.dnswl.org]
  0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
                             [205.220.165.32 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qc7dM-0007ZD-Ie
Subject: Re: [Jfs-discussion] [PATCH] jfs: fix array-index-out-of-bounds in
 dbFindLeaf
X-BeenThere: jfs-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <jfs-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=jfs-discussion>
List-Post: <mailto:jfs-discussion@lists.sourceforge.net>
List-Help: <mailto:jfs-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=subscribe>
From: Dave Kleikamp via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Dave Kleikamp <dave.kleikamp@oracle.com>
Cc: jfs-discussion@lists.sourceforge.net,
 Linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org,
 syzbot+aea1ad91e854d0a83e04@syzkaller.appspotmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gOC8zMS8yMyAxMDoxOUFNLCBNYW5hcyBHaGFuZGF0IHdyb3RlOgo+IEkgd2FzIHdvbmRlcmlu
ZyBpZiB3ZSBjb3VsZCBpbXBsZW1lbnQgYSBnZXRfdHJlZV9zaXplIG1hY3JvIHdoZXJlaW7CoCB3
ZSAKPiBjb3VsZCBmaW5kIHRoZSB0cmVlIHNpemUgc28gdGhhdCB3ZSBjYW4gZG8gdGhlIGNvbXBh
cmlzb24uIFNJbmNlIHRoZSAKPiB0cC0+ZG10X3N0cmVlIGlzIGFuIGFycmF5IHdlIGNhbiBnZXQg
aXRzIHNpemUgYW5kIGZpeCB0aGUgb3V0IG9mIGJvdW5kcy4gCj4gV291bGQgdGhpcyB0aGluZyB3
b3JrPwoKZG10cmVlX3QgaXMgYSB1bmlvbiBvZiB0d28gbmVhcmx5IGlkZW50aWNhbCBzdHJ1Y3R1
cmVzIHRoYXQgYm90aCBjb250YWluIAphbiBzdHJlZS4gVGhlIG9ubHkgcmVhbCBkaWZmZXJlbmNl
IGluIHRoZSBzdHJ1Y3R1cmVzIGlzIHRoZSBzaXplIG9mIHRoZSAKc3RyZWUsIHNvIGRiRmluZExl
YWYgZG9lc24ndCByZWFsbHkga25vdyB3aGljaCBpcyBiZWluZyB1c2VkIGJ5IHRoZSBjYWxsZXIu
Cgo+IAo+IE9uIDMwLzA4LzIzIDAwOjA4LCBEYXZlIEtsZWlrYW1wIHdyb3RlOgo+PiBUaGlzIHdv
bid0IHdvcmsuIGRiRmluZExlYWYoKSBjYW4gYmUgY2FsbGVkIGZyb20gZGJGaW5kQ3RsKCkgd2l0
aCAKPj4gc3RydWN0IGRtYXBjdGwgd2hvc2Ugc3RyZWUgaW5kZXggY2FuIGJlIGFzIGhpZ2ggYXMg
Q1RMVFJFRVNJWkUgd2hpY2ggCj4+IGlzIGxhcmdlciB0aGFuIFRSRUVTSVpFLiBBIGNoZWNrIGFn
YWluc3QgQ1RMVFJFRVNJWkUgbWlnaHQgYmUgYmV0dGVyIAo+PiB0aGFuIG5vdGhpbmcgYXQgYWxs
IGJ1dCB3b24ndCBuZWNlc3NhcmlseSBkZXRlY3QgYW4gb3ZlcmZsb3cuIAo+PiBDdXJyZW50bHks
IGRiRmluZExlYWYgZG9lc24ndCBoYXZlIGFueXRoaW5nIHRvIHRlbGwgaXQgd2hpY2ggdHJlZSBp
dCAKPj4gaXMgd29ya2luZyBvbi4KPj4KPj4gV2UgY291bGQgcGFzcyBpbiB0aGUgdHJlZXNpemUg
YXMgYW4gYXJndW1lbnQgdG8gZGJGaW5kQ3RsKCkgaWYgd2UgCj4+IGNhbid0IGNvbWUgdXAgd2l0
aCBzb21ldGhpbmcgc2ltcGxlci4KPj4KPj4gU2hhZ2d5Cj4+Cj4+Pgo+Pj4gU2lnbmVkLW9mZi1i
eTogTWFuYXMgR2hhbmRhdCA8Z2hhbmRhdG1hbmFzQGdtYWlsLmNvbT4KPj4+IFJlcG9ydGVkLWJ5
OiBzeXpib3QrYWVhMWFkOTFlODU0ZDBhODNlMDRAc3l6a2FsbGVyLmFwcHNwb3RtYWlsLmNvbQo+
Pj4gQ2xvc2VzOiBodHRwczovL3N5emthbGxlci5hcHBzcG90LmNvbS9idWc/ZXh0aWQ9YWVhMWFk
OTFlODU0ZDBhODNlMDQKPj4+IC0tLQo+Pj4gwqAgZnMvamZzL2pmc19kbWFwLmMgfCA0ICsrKysK
Pj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKPj4+Cj4+PiBkaWZmIC0tZ2l0
IGEvZnMvamZzL2pmc19kbWFwLmMgYi9mcy9qZnMvamZzX2RtYXAuYwo+Pj4gaW5kZXggYTE0YTBm
MThhNGM0Li41YWYxN2IyMjg3YmUgMTAwNjQ0Cj4+PiAtLS0gYS9mcy9qZnMvamZzX2RtYXAuYwo+
Pj4gKysrIGIvZnMvamZzL2pmc19kbWFwLmMKPj4+IEBAIC0yOTQ4LDYgKzI5NDgsMTAgQEAgc3Rh
dGljIGludCBkYkZpbmRMZWFmKGRtdHJlZV90ICogdHAsIGludCBsMm5iLCAKPj4+IGludCAqbGVh
ZmlkeCkKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8qIHN1ZmZpY2llbnQgZnJlZSBz
cGFjZSBmb3VuZC7CoCBtb3ZlIHRvIHRoZSBuZXh0Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgICogbGV2ZWwgKG9yIHF1aXQgaWYgdGhpcyBpcyB0aGUgbGFzdCBsZXZlbCkuCj4+PiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICovCj4+PiArCj4+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBpZiAoeCArIG4gPiBUUkVFU0laRSkKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgcmV0dXJuIC1FTk9TUEM7Cj4+PiArCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBpZiAobDJuYiA8PSB0cC0+ZG10X3N0cmVlW3ggKyBuXSkKPj4+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgYnJlYWs7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgfQoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1kaXNjdXNz
aW9uIG1haWxpbmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0
cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1c3Npb24K
