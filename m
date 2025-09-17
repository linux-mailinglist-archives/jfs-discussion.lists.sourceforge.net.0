Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF1AB8158F
	for <lists+jfs-discussion@lfdr.de>; Wed, 17 Sep 2025 20:33:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:To:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NYmPhzw2kYMVgCTvKWYpqlyn9OCCco2khKBaBwtrG/w=; b=j283+A5Ogkg+arRk3Nz8XdgRwn
	BXo2G9/MXU0lsKd15AjT/uGk4dbr8rcc8QGAp+QmylgL7iQATpk6I4Kq5rg1eSwR97u5ccR3xzB0s
	SSq3NeZOgQ2ToG2d5/9Vss7yMmc6HULNk0DyiuvTux0VhTjJx/OCVQOT4wYZg4Iuc018=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uywxy-0006JF-Ev;
	Wed, 17 Sep 2025 18:33:18 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1uywxw-0006J9-Sv
 for jfs-discussion@lists.sourceforge.net;
 Wed, 17 Sep 2025 18:33:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cPHGowDDIYs1YuoZ6+0tXbEP75hmEN0ZxYIiK54e4B0=; b=iiBKOsnkHL92FdtUPU+R8+GG3g
 MLh8kp2DN7w4kIcew0SkvcFVJHzCduuIIqWfdc9ZsiqOEU5n/d/vQCC6B7QmZogtkzSRg21LB7vA+
 yumnnsy2UreVZUfLWFtJS9k/5lv2/rnv9E6BVNlXJyq02m2PBn2nH+C6q7yJcvF8/t0A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cPHGowDDIYs1YuoZ6+0tXbEP75hmEN0ZxYIiK54e4B0=; b=FumS/rhRaSh0vPJisKlcEZ3vYc
 nIAA1TV7Rs/uThtiTMdipqzEqx3nAuh8QUNUf7ApYoHhvyOda6KA+QUGc11GekC9VJy6c9ipXvTmi
 bhHEVlnkFIbi+ELy9t/wmOIb39NfLJxb01h2Pa+mRe9g4m69rg3UJlZBp9of4UlWcwVs=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uywxw-0003D6-Dt for jfs-discussion@lists.sourceforge.net;
 Wed, 17 Sep 2025 18:33:16 +0000
Received: from pps.filterd (m0333521.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58HEIah3018956;
 Wed, 17 Sep 2025 18:33:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2025-04-25; bh=cPHGowDDIYs1YuoZ6+0tXbEP75hmEN0ZxYIiK54e4B0=; b=
 LaYSWFF50Uy3OdJG67siEyteaLOzxGFNPtijtWcOwT2EU+yJlkiF1K8JBxse67sp
 wuFqZ/jGfFPv699k2ElsW0YsYb8fMj95n83D3j17P6esCzBCfh2KQyLe8uD9GxX5
 Phz15QJOdkRvgu+Knn3DHH2Ixfcn4XqlDLAsvKDU/x0SpFvgozbKkzWCTKYfSjVZ
 Natko8lv08r/qPB8fmVGqCb6fVoyyPDTl2iku6Yjev1m+Jf0ufxo2QjRNFFvDma3
 ounmqyplpXdCFsV4CEOfRO07pDqYwQL1PWF4vuCkKmVn1Oath/3OdKizPa+rWzbP
 JgLLvxLzEsUR73HyDOfcdQ==
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 497fx9syp0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 17 Sep 2025 18:33:04 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 58HH5XdG001524; Wed, 17 Sep 2025 18:33:04 GMT
Received: from bn1pr04cu002.outbound.protection.outlook.com
 (mail-eastus2azon11010053.outbound.protection.outlook.com [52.101.56.53])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 494y2ecfrn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 17 Sep 2025 18:33:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iqyPR7qnwqbfvc7zYcfLKP82GR/smj+2aia6i1Kqk4Z0vHwNiG6M6evuL/Ekn0Uj16r5MaBdOre7Kjc24if4EaplnHf9Y1CZ+5Sp/tnmyKg8jLNkLroIsY682UEMXDFGc19+ssmCnC8M0uByQF+OLQjn9GeFBvLZr3XX4ggM1YisXJTThATxzONAKTEh5fOg+JEzKnJ+cKg2OzPi9z36L6rHzfMxQJJuyPxbBSW5FS11ZlvSe88YG/bvzKwe/peKAG2tfhFrToBWpUFyUmEkahB5rWkf5AwfONbvoFw6TcMJn/zY3ksMDLaXQUYu+nEP5hoc2ec/s3oVlvLp6RWCWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cPHGowDDIYs1YuoZ6+0tXbEP75hmEN0ZxYIiK54e4B0=;
 b=J4vxi+EZfPJRHxWZj377WlgAH2DlBPIPqXjFvDxHCJIcqHOXO+z53uf5H6LMDiLmJYLndeQK5svLETNbJHztytgiSUxkwxQVnlcNh+AjA00a6kWK3hwtMHrvdIKMJQ/l+LShGtDoscAhWgs9JuBbT4ScxSnWrUksT4CkqxwXzM0CxSGzyB58Iy9R9ylecJmskxGzXCn4J4bBOuvFC0glkkC3Yvm0KYRydLQSQV1Eix3/UDdCweaUAf1CdRP9kHktvKaNtNPd6s8dlyQkvONVR5QOKnsfmzyaYQxz68wXJ8dtAuPk8BXKj2pojbQyG04S1OA3tv/VILWzgDy68qRgfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cPHGowDDIYs1YuoZ6+0tXbEP75hmEN0ZxYIiK54e4B0=;
 b=e0yMOwmQ7acmCFUqMTS6x2OiGvi4tBtGMEYQJR1QEjCl/EX0jYyDxxr1PwCCxSq3xh933PVavxSiH+r8iWW563PXPRSF40WnW+au6D2eQgujDATFR1toVCLMdcYSjTsBKJsMM374cALwxrYgyHV2NKhWTRy+mV8pAGfZEUJG8Jw=
Received: from DM3PPF35CFB4DBF.namprd10.prod.outlook.com
 (2603:10b6:f:fc00::c1d) by IA1PR10MB7261.namprd10.prod.outlook.com
 (2603:10b6:208:3f6::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.22; Wed, 17 Sep
 2025 18:33:01 +0000
Received: from DM3PPF35CFB4DBF.namprd10.prod.outlook.com
 ([fe80::211d:441:2594:6cca]) by DM3PPF35CFB4DBF.namprd10.prod.outlook.com
 ([fe80::211d:441:2594:6cca%8]) with mapi id 15.20.9115.020; Wed, 17 Sep 2025
 18:33:01 +0000
Message-ID: <69dc8b58-b214-4397-b09e-f52b817335b9@oracle.com>
Date: Wed, 17 Sep 2025 13:33:00 -0500
User-Agent: Mozilla Thunderbird
To: Shaurya Rane <ssrane_b23@ee.vjti.ac.in>
References: <20250824201332.4236-1-ssrane_b23@ee.vjti.ac.in>
Content-Language: en-US
In-Reply-To: <20250824201332.4236-1-ssrane_b23@ee.vjti.ac.in>
X-ClientProxiedBy: CH0PR03CA0194.namprd03.prod.outlook.com
 (2603:10b6:610:e4::19) To DM3PPF35CFB4DBF.namprd10.prod.outlook.com
 (2603:10b6:f:fc00::c1d)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM3PPF35CFB4DBF:EE_|IA1PR10MB7261:EE_
X-MS-Office365-Filtering-Correlation-Id: e7eb7d17-4c23-4f20-a139-08ddf618a1c3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bU95cjZlZmN6NjhjdDR4NUliNldsckxkbUkycVBTNzA0dTNuMHZTc3FTWHR5?=
 =?utf-8?B?LzFKRmU3M3hmbFNZdXY3U2pkTU5XOTN6N0ZjaGlMQk1mWlpLL3RmZERVZTJ1?=
 =?utf-8?B?NFRhYm5yekFzQStIL0ROMEJQRGJ5bXRmaUFBMVgrdjhJM1oyd1U5UTBNa1hu?=
 =?utf-8?B?ZStrQnJ2c3YrQk5VRjBDNjQxTDBlcHZqMkxlV21HS0VrZUI3dExsd3RJM0Jr?=
 =?utf-8?B?R1J3dzB4N281RkZnZzJ3eXlkM2NaWjVHYlptSHkzWVZJeWpocUVlTWk1ajZs?=
 =?utf-8?B?Vy9Wdk1nRm5SSWljZzRJRFNvSVFIdDFCU1VtTGZ2UzFza0p6S1I4RlljNnZL?=
 =?utf-8?B?TGYrVEkvNnA5OUhxWGVlRUdNc3BIcDZXbDZBalZBS0NRbDlrem1lWElET09o?=
 =?utf-8?B?dXprQXNNcHgyOVVYbGs1TGJSUmF6VkpVZi9Ob1dZR244dzZwdmhNMFRGbmVN?=
 =?utf-8?B?VWhnc1JzVTBaaEtMcnBORldqNnNCaHV6SUNkUGx0aC9yRldMNEJmeXNGTzRI?=
 =?utf-8?B?M2E2c0htanZXRU1Tb3RIMHl6cnhPTGV2cmh2cnBWMXBmNTFDdUpMVEZydlFt?=
 =?utf-8?B?dXBqbjk4UmI4ck8yenhnM3dWY0dlRWlNTUhzSVJQZ3lUUlNXWGpBWWFtWWhj?=
 =?utf-8?B?NzhGT05HNDdxODZlYVl6REtxQnlscEZCT200Y1NmdWxRRFh1QXJNTStqWURz?=
 =?utf-8?B?dzZJNExIUTl0SEtQaGc3WkZHY29Ld0Noa1ZxbGtoVkhNbnZBeXVxWEE1cFZh?=
 =?utf-8?B?RHVRQW1rWFg4YTc4TlJiVnZ1VzVINXVTZTNhb01tQUZSY2kzUWE2bXBjY2tY?=
 =?utf-8?B?ajV4VGMxYkc1dk9jdEZxd2I5VGtoNnZsWndOK2ZtdW0vbXp5cmhDUDJEb0pX?=
 =?utf-8?B?VUhHY2hidmIxM0NvaVVOUnU3VFlxaG96Z1FUSCs1TVlCV2dEVk9tWFlyNGZy?=
 =?utf-8?B?bmViMzNvRjV1YVJIem1QYU5SNkxwSk9SQUQzN2lYdytXOC96SFBtV2hGTUZk?=
 =?utf-8?B?Mjd5Y1RaYkhiQXg3SVNrMHYrQVpRUllCcVl2SkhwN2kvNjJuRFFGTzJGdE9i?=
 =?utf-8?B?aWlOWE43b2RpQWRKYXNkUlpveEhmRGFKaDNHYzNMdHdjc2tDWFYzK1JlOGpa?=
 =?utf-8?B?QWdhWkh0K1dnazc1YlpxN0ZXN1pOQWtFRWpiUk92bU5vMTZhdENML0tRbXYz?=
 =?utf-8?B?UkZxRkpxSFgwUzM1d1F1eFRFTVlEeGtJNVVhTHZjTUs5a05UNWd6WWI4M2w2?=
 =?utf-8?B?M0t6RDFXOTJYQ1lhZHVqKzFYV0dtOFo1WEwzRmNHOGFzS2xUSmNvQ3F4aGNN?=
 =?utf-8?B?NFRXMnJzMlZ1ZnB4ajJsWlcwQnBvWm5YSDdJY1l4NjQ1V1hoaEQwQkEweCty?=
 =?utf-8?B?NHJpUnZZTnlxbUdjR3hUc2k4SFdadjBOL1NTUkRpbDdSTXhxZ2lVdzgzbTZm?=
 =?utf-8?B?d1RzY1oyUHMrb0ZkZisvYWlpOFBqakJTYk5sSi8rL3NEdUJKRDRWVTVISGFX?=
 =?utf-8?B?cExsdUhtYmJlQmVvZXM0S05MRTJWRlZ1Q2hZSndMdVo0OHBvbHFZWVZTWUZy?=
 =?utf-8?B?djIxWGhRamtlNDUwdm5IRE9NcGN1Q29sTGhscnNxTzNzT3lEL0pMUXFDOVFm?=
 =?utf-8?B?Tzg1LzdjWEtQb3d3elAxQ1FmbVBadFUvdmRSamMwL01iTkpEbVpLcks5ODlN?=
 =?utf-8?B?em0yK0ZBTnZ3STZ1LzFCSm9jWGpDb1NaSFBLVElDYWlEZUhEbDdoN0hpU3ZN?=
 =?utf-8?B?eVBac1FTeFhia0ZxOTRMRU5pQ0dXSHd4eW02ZEVuL2JPQXBlZjBGTzNjK2Ex?=
 =?utf-8?B?ak5XK1B3aVJ0U1R5dkxkUytPdnQ2S1ZqckZ2VEhKZmJOZzNJZjFZaE1nbFZ0?=
 =?utf-8?B?QWxWbG8vUjYyM2U4OEdPTjI5WkZVM01XUnZvWitUTlZHTDRETzlQcmNCMTVJ?=
 =?utf-8?Q?qA4srhF8JlM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF35CFB4DBF.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UDF1UlRod2dkd1lUd0prRDZ6QzZFblB5cTRsSUt3dkVScXA0VWpkYWJQY2hO?=
 =?utf-8?B?R3g2cHNuMyt4WTZHM0ozQlo4V0E3ZXZLcHE1cDlGU0EvTE9hY1BtbW1MZzlq?=
 =?utf-8?B?anJVZ3hkcHZnUm51Z3k5bllLb2hnZ1BVc2MyL1dLTjF6b2h1bExVSFNHVnVw?=
 =?utf-8?B?U1lXK1JYTENSVkVBNUVFSjhUMHRReU4wMEw0MjBsNUhSdnNxM1hheEM0MFo2?=
 =?utf-8?B?Mm84NStScE1pdU1ub3BzT3N6WWJYZ09FYkl0NTFDeEUyMFliVTNRZTRDa1oz?=
 =?utf-8?B?MUJVWEtMb3c2NmZqNVdaYlU5MXJmQ0VYSFlmRlR6UzVhM0Qwa0hNN2pGa2Fq?=
 =?utf-8?B?YVozWkFBTHZ0N0piYXh4RDE5Z1FRcFlsaDgyM3I1UjVOM0hxZVJSWGYrVXVH?=
 =?utf-8?B?UmRNK1N6NXpza0l2Uk5zaElaQ21vL2pIdVJNL29pN3RWWGJYbk1UMDg5eGJU?=
 =?utf-8?B?ZlY1TlhSRmF0Z3hWeER2UmxVOS9qdFVpNElJNkYxMnY1MDdQNGJIc2wzcUNi?=
 =?utf-8?B?dUF1b2ljRTZGY1M4cDcvNjJ0aFNYZm1RRnJpREhkTWVZRWZVQms2dTN0ZVdv?=
 =?utf-8?B?ajJEUWxBV2hQK1pNbjQyWVF1Y1g1c2F2bkV6bnozdi85dks0WlZtOGZDaFBm?=
 =?utf-8?B?QmhmaDVWeWlpVTllTUluMy9tZUhoZS9NNHBLa2FFL1dGcTREblN1U2pXWS9G?=
 =?utf-8?B?SXBmSW1PS0JlcDZkTkZVeUhud0VPUXFPZHhlQWRQTGdRQmZ4aEpOVk9oKzRk?=
 =?utf-8?B?WHhsQ2sxb2ROS3N6MVpmRGF2bU85ZFlseXJDWm9Bdk9vdzByT2JRSzVOaDZZ?=
 =?utf-8?B?SkpuYzZUWDBlVWRTQlRySmNtUkZnY1FrT3dLZUpyUS9PWXh3MFVQMWg5L1RG?=
 =?utf-8?B?R2tBN0swVm85K3N4RTRQdDl4NCtqRGM4NjI2SXFvZ2ZtRzY4elYvb0xoZUpY?=
 =?utf-8?B?b3pKcHpCTWNYaFNGWk9VVVZBYjhnbGVqUEFyQ1VsdCtGTVE4V3VBcTlmaUhO?=
 =?utf-8?B?ZEpFaFFMbkJXYjRDdm5uNDVLUlRRSVUydEVMbk9UazBEaUFCbWc1cEUrN3J0?=
 =?utf-8?B?Qk95T2dVKzJYMW95ZTVuWnhKdVk0KzJmcVpBVFZSc3h3UFVRNlZDY2JGalph?=
 =?utf-8?B?M1IvaTBGWXo0c2ZKbDNZVExhVHBjQlZNNjNFNkg1Ny8rNFE4c0hsUWIvN202?=
 =?utf-8?B?MEFoSnlpZzVtV29iT3NwdGFKbEMwcEdGU25Db0JhTW45Z1MwbFk3bkVTMTFl?=
 =?utf-8?B?cEJrMkFVU3pHbG5VMGpneURhaXE4T1lpUmp5clRRSmdCenMrTU8xVWhBeVVK?=
 =?utf-8?B?T3lSWlN4S0ZBdy95VjZRQVdQL2NYdmRDWVZDUnZXZ3QrYVVwSG1WUXp4RS96?=
 =?utf-8?B?YTRsa0kyd1EyT1dRdnlsbW1WMU1IcFgyaTBPckl1Tm9WUmlGN24wRVFBRHF4?=
 =?utf-8?B?dmxaMGtMdHAxdXFsNjVTeUU4MXRkTk1ObXk2ZFU1WmFqYXB3VVdtencwS2Qy?=
 =?utf-8?B?TU50eWVkUklYWWtucExTcjB4OUt0d3FlWlZWUS9wanR0SXkvMWQyaDdxRkla?=
 =?utf-8?B?VGI3eEpVOHVQdHBKWDBpdXpTYUQ3YW50WUxybHNlTFNOckVoUzB6WHR2VURh?=
 =?utf-8?B?SnZOT0VoTTZRaTRNdko3UjJZQXAvNmxnTFZTb0xxYy9LN3JMRjREMFpYaW9Q?=
 =?utf-8?B?a2wwYWNhU0FYdlI3dm5IM0pKZFdGeCsyb0J2NUpDNmdtWEU2cmkzZG42NUtn?=
 =?utf-8?B?MFIrandlaDhMY2RNemVlUFROYnM0aTR3aUk0enpwTytsZlc4NVlXcXhZUUVn?=
 =?utf-8?B?UGtJZXRablJXU2ZjRGtnSmxZVVZrcFJKSjV4bmpKZ2Q1OTJVRVN5YzZlelky?=
 =?utf-8?B?TVdaZUZPWEtLZU5uWjdNZ2pTaGNRamtwYmFkTEtpeU83OFo5QnppN0NIcUtK?=
 =?utf-8?B?SG9QVjZ1WFd0bW8xVWNZNnMvZXlmbnBmWjBCaG5jUEQ5dVllc0t4WGVMVTNx?=
 =?utf-8?B?dEQwdjNuYjMzcnFGNmZYeVc5NjdCVWt4ejUya0dMeFFLVlpkNC9NT3ZvbGFs?=
 =?utf-8?B?dnhqeU01U011UVN1TmlPTVM1Z1o5V1NIczRZTUJwSkIrQjNPLzBXZlJpQUhR?=
 =?utf-8?B?VHUrSjM5QnZ4MHFnSFByd1RBazluNTNkY3AzZlVqS0ZwQlVyWEdBblplUzF4?=
 =?utf-8?B?alE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: AfL2mXib7Fdf9HH2ES23ILhr3oQ2oKoToUIvAk3t9x9+fpOE6Peve1EPVGp9MawYjS1VZNrdUumS/lAFDSd/OVxcnXz6ncQ3GlM+vAzcAbh7bmZbK+itMfV27JJt9npmiVOoiGib9bkt6B7ecBj8rk0Ej+PupxOar4UfVeg0s60WkKK9sfslllpMGTagoC+msJMubcI/xGrfxgLmRkv/wdbmESxZUcP8VCJStkc8qLqcrk375COOSxscLIB3j9q1wU3Vw+rv/0NSX8Q4eNQU7FW2x0QWQVL+mAb7bg37NwGwI8fOH1hHUQyi6By+KIXaIiuGZmUKg3DsDND/YBIrNMx9N3p7+8JVbyebcYj1ZlIZlKMQBqRbwW6g4lOvT6wyKlG5JhAcoPhhtgAVMzT9i0hvSrV6IcPPjYXFiQR2rH5dNA5POrJFHRE8MxRaCC0DDZTSfF6PhArYkw8hgcZF7DO7dmhZ+jzB6u3QJD6Ls5yYXBTbGtBlPWf/huMvq7u0QW7hZexxjgPN3VzWBLP++p91KNk7XGHiafBG9uBwfBar1zcId/gVYhFnmCm7iZMUDhq//lFaFAfzks3LeYiVazZzpSn6e8rdOOlv6qqhRC4=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e7eb7d17-4c23-4f20-a139-08ddf618a1c3
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF35CFB4DBF.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Sep 2025 18:33:01.3292 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WplXmDw194UnvTwffbBSAz3w9YtcVSheTBi9euQ+npFhHnDv96+SkLhoAm5Dlj2o9JAn+N3MdHsxI/RqRB87okt7aZoRI5zKCHMTHtlG3GM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR10MB7261
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 phishscore=0
 suspectscore=0 spamscore=0 mlxscore=0 adultscore=0 bulkscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2508110000 definitions=main-2509170181
X-Proofpoint-ORIG-GUID: XVvpyt4_wGc8J-L3eYbwRKg4I8JlOD0E
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX8bARtCqSpJYz
 T6CJNhodv/PoMKh+FlJ67NVNKYPaqampeMUVl/WOGp7vP22Xsm++E0wWWZbld8ozY40uRCRFnLa
 QBqhTFa4TDZaGiNq0CK8VB55t02bM3y7dzi5ywg+QHWZTfMTLVRrVUFtpTTlwMSnaMLpcGs6IEO
 PB6TJE8pPHX7K+0iMxkttvkabUBbK0sVjclauJBMZAkd0KKWZ1h4FKOQPViDDNcH5/PvYTQpxf1
 /XnSFwGD2TJ5f60s20Ds92pqLWaASdMZIZkxPMC36DKx5jki5nP+3yXDbgpeyPXsAT15IQOraBH
 yrhPIihGBKQhGC+JoEL7qUG/2vP9DGaNrraxC7zIkuAxm7K4J6fh9YDgvnOjtjD6Dd0bap0aJ0S
 RE2le2ZW
X-Proofpoint-GUID: XVvpyt4_wGc8J-L3eYbwRKg4I8JlOD0E
X-Authority-Analysis: v=2.4 cv=C7vpyRP+ c=1 sm=1 tr=0 ts=68cafee0 cx=c_pps
 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:117 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19
 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=GoEa3M9JfhUA:10 a=hSkVLCK3AAAA:8 a=eNZtLaaam7eqLkZ_DF0A:9
 a=QEXdDO2ut3YA:10 a=cQPPKAXgyycSBL8etih5:22
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 8/24/25 3:13PM,
 Shaurya Rane wrote: > The transaction manager
 initialization in txInit() was not properly > initializing TxBlock[0].waitor
 waitqueue, causing a crash when > txEnd(0) is called on re [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain 0.0 ARC_SIGNED             Message has a ARC signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 ARC_VALID              Message has a valid ARC signature
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.220.165.32 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uywxw-0003D6-Dt
Subject: Re: [Jfs-discussion] [PATCH] jfs: fix uninitialized waitqueue in
 transaction manager
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
Cc: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 syzbot+c4f3462d8b2ad7977bea@syzkaller.appspotmail.com,
 syzbot+0cee785b798102696a4b@syzkaller.appspotmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 8/24/25 3:13PM, Shaurya Rane wrote:
> The transaction manager initialization in txInit() was not properly
> initializing TxBlock[0].waitor waitqueue, causing a crash when
> txEnd(0) is called on read-only filesystems.
> 
> When a filesystem is mounted read-only, txBegin() returns tid=0 to
> indicate no transaction. However, txEnd(0) still gets called and
> tries to access TxBlock[0].waitor via tid_to_tblock(0), but this
> waitqueue was never initialized because the initialization loop
> started at index 1 instead of 0.
> 
> This causes a 'non-static key' lockdep warning and system crash:
>    INFO: trying to register non-static key in txEnd
> 
> Fix by ensuring all transaction blocks including TxBlock[0] have
> their waitqueues properly initialized during txInit().
> 
> Reported-by: syzbot+c4f3462d8b2ad7977bea@syzkaller.appspotmail.com
> 
> Signed-off-by: Shaurya Rane <ssrane_b23@ee.vjti.ac.in>

Looks good, and the code even looks prettier. Applying and testing.

Thanks,
Shaggy

> ---
>   fs/jfs/jfs_txnmgr.c | 9 +++++----
>   1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/fs/jfs/jfs_txnmgr.c b/fs/jfs/jfs_txnmgr.c
> index be17e3c43582..7840a03e5bcb 100644
> --- a/fs/jfs/jfs_txnmgr.c
> +++ b/fs/jfs/jfs_txnmgr.c
> @@ -272,14 +272,15 @@ int txInit(void)
>   	if (TxBlock == NULL)
>   		return -ENOMEM;
>   
> -	for (k = 1; k < nTxBlock - 1; k++) {
> -		TxBlock[k].next = k + 1;
> +	for (k = 0; k < nTxBlock; k++) {
>   		init_waitqueue_head(&TxBlock[k].gcwait);
>   		init_waitqueue_head(&TxBlock[k].waitor);
>   	}
> +
> +	for (k = 1; k < nTxBlock - 1; k++) {
> +		TxBlock[k].next = k + 1;
> +	}
>   	TxBlock[k].next = 0;
> -	init_waitqueue_head(&TxBlock[k].gcwait);
> -	init_waitqueue_head(&TxBlock[k].waitor);
>   
>   	TxAnchor.freetid = 1;
>   	init_waitqueue_head(&TxAnchor.freewait);



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
