Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B91A99ACB64
	for <lists+jfs-discussion@lfdr.de>; Wed, 23 Oct 2024 15:38:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1t3bZF-0003aX-Oj;
	Wed, 23 Oct 2024 13:38:29 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1t3bZE-0003aQ-Or
 for jfs-discussion@lists.sourceforge.net;
 Wed, 23 Oct 2024 13:38:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :From:Subject:Cc:To:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FsoJ1XJgEV4maLRK1UMaGfU/gKy7wRyoCp/f3Y9AjSc=; b=BEu8bKM2zsczXcikobnbQRLujy
 UUhM/XlB9uP5mP1kh7WWGRI4vXsiEP0bmFJ+ktTZPMjVUmdcB/zP2oP4LE/iSwXPkG29n4MP/dkzk
 p1XvRxc6+crDPM3CKEZUHVm32Xlf3IofAeVnpFCBAX3oC1kGAhQyZW0pLajLtaiu7yFI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:From:Subject:Cc:To:
 Date:Message-ID:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=FsoJ1XJgEV4maLRK1UMaGfU/gKy7wRyoCp/f3Y9AjSc=; b=S
 DcQSY6kx1mZmhnEKFIgXAZmqIpoTVs9vTKiETV+lqwnHM59Vtb3XRqiGoxQpdpJPEyQh8FHzHo8ql
 pgu1llOZjazdsWzgKJAFjOwg91KMXtfKFkeVvn5xVpea75vfQ/th0p4Px2L6Y7POoEA0fF6DinpRm
 pOVOG1uIZS3G4kMA=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t3bZD-0003ME-3H for jfs-discussion@lists.sourceforge.net;
 Wed, 23 Oct 2024 13:38:28 +0000
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49NBQad8014077;
 Wed, 23 Oct 2024 13:38:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:message-id
 :mime-version:subject:to; s=corp-2023-11-20; bh=FsoJ1XJgEV4maLRK
 1UMaGfU/gKy7wRyoCp/f3Y9AjSc=; b=b2GevuED2EKcdnjwzELhR07NbL3nfUOi
 6TpAluv11ePF40npV6mGTIO04XAOTmnhh9ZyB5lz8jS6gra2JYO+4Nvcz73BlgkV
 WT+FVQZ+zncYpymF6SCUhXvSvzKT+laMf5VpJtCKXGMlEeuwq1OH7fIA1yjubqcC
 s17mxoF4hP7HGhy46BPQbod5iTvv02wN+PvgUmrmZJRrbL6K/4KhXfJrpTor0dOv
 N29qHE6815Vur42HM/YPdhWbhaT62xolS2AS5v9sn3Y5ZA1FWvwFZwlS+UNVMzYH
 0agAj3As0w6eE36lX7zWc4qwtS+uffUGxrLwWfSXCWe7tA1ExRSlVw==
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 42cqv3f9s0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 23 Oct 2024 13:38:15 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 49NCUI6s039749; Wed, 23 Oct 2024 13:38:14 GMT
Received: from nam12-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2170.outbound.protection.outlook.com [104.47.55.170])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 42emhb2571-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 23 Oct 2024 13:38:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UgkYTRXXnpDYrAwVSZX7DNgPorcQS7qEm/7p0W6aLv9K2LC46MX4IhQsXJ2R1jaqaG2v58nn2PqXT7vwI9yXe1ZNJseOst7a4HgFMpCLWw1h6Q+iI4GA1pkH1C/YkbqTg8YRou+XILoDx64ftZLpm5jBC33ZUDIW4fV3uRgYSAuTMnNhCkA9p2m4PMTSV6qDFVp7nq7B48YRSzyDSsElgZ9J+/747nK/8qsmnyYr5zVcdhC8eBumfdhgxqSRqrEHZwbZHIeXg5ectoL9V+T2mtasHJQzf44tZ5ZvfCww/d2vK9/FMv962+Ew3zRASkpxY9tDpstZ330QWyjmFA1gqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FsoJ1XJgEV4maLRK1UMaGfU/gKy7wRyoCp/f3Y9AjSc=;
 b=Xpcd1QTgjlnE1BJg9aWlvJnGj7/77T33sIm/VByvj/pLWQSjiWlChu1gP9XCBtuSIHWYyT+DWyhX49YDI0ekNduEqX2mnv0J4HeCDoX0V+dsGcfYLRE9zozfeGJk7ovNyc/ZJyTT0DnpnQHStvWpv8A0op81BKpiLOuM6OmyBF8gsDxzSbcp6cibq0y+6jCHIehV0lRRbE7Jfe9GfKskZs076w3LFCJL9GKGcQGTexF2fb8WjTOYA0LvQ3Nj94Hop6xnhVXkFXrxV/QSWPWHBY7laDoQc0Blg+QLRm/CaQDRFJ7MFmVaAk07K9wuFgYGEUe8LBnBiFONfU+nGi5X1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FsoJ1XJgEV4maLRK1UMaGfU/gKy7wRyoCp/f3Y9AjSc=;
 b=xFHX1QAWElkvpDQRzBCx+ViQmchls4OblDcNkUF+ecyhO5ZFH64by8BdItgvef1OpCWWT1qmSaM4p1VDT9BFyi3YAy4Gfgzc3ihHX2+BIFwftmvhfyGXUSR3h48UB+DchvEn7P4mG79Np+48Cr+Wk/YwDzFIGOxA2VbZvcc01vY=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by SN7PR10MB6497.namprd10.prod.outlook.com (2603:10b6:806:2a4::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.28; Wed, 23 Oct
 2024 13:38:12 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb%5]) with mapi id 15.20.8069.027; Wed, 23 Oct 2024
 13:38:12 +0000
Message-ID: <6b12f129-69d8-4bc0-b369-0942a6bd2d4f@oracle.com>
Date: Wed, 23 Oct 2024 08:38:10 -0500
User-Agent: Mozilla Thunderbird
To: Linus Torvalds <torvalds@linux-foundation.org>
Content-Language: en-US
X-ClientProxiedBy: CH0PR03CA0226.namprd03.prod.outlook.com
 (2603:10b6:610:e7::21) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|SN7PR10MB6497:EE_
X-MS-Office365-Filtering-Correlation-Id: e90bbfdb-a08e-4b40-b99b-08dcf367f07d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Zm9pdGQxOFFrOFNuOEVWaGhkenZ3OGQ3UjZCWndLVVdyLy94ZG9iVmJEZ1R0?=
 =?utf-8?B?NWtkeldPUHVCUVFDY2RZVXhFZUpOR3NyWk9uTzZXYkJ3blNTck9FU3RzcnMv?=
 =?utf-8?B?cFd1OGxWelZ4QURNcjJ5bkNIeU9DZ3FwQWJab1pndWJlRWtmVmVtaEdLWE1D?=
 =?utf-8?B?dW1UdncvclBuY3FpQTNzb0J5STJRZm9GbFFONTJ0MWZGK2Y1RjlCdUtkc2FI?=
 =?utf-8?B?S3cyaDFOTmt5cnM5ZGdRT1JjMmNZVzB4YnJsdzk1b1NHV0lLcWRkZ0szME9u?=
 =?utf-8?B?NFRiZko2WHpGUE00STN5dVlXS2R5bFhwTzNDbVhwcWE3RHQ3a2JqS1JzVDBS?=
 =?utf-8?B?UGpCSElyWS9FVVdMbk9aV2Fmdklpdkp2OGdiYXZOdFJFWExUSlZ1d2RWL0VM?=
 =?utf-8?B?aDJXL0JMV2ZFeUxRMWxmVko0eUNreUtkWjdVNDJzZ1ZqMnN0eU5xa1ZpenA2?=
 =?utf-8?B?WEZwcDUxTFluREtLd1pjUTdRVXNDVEQ1Mm44U3l4L0pJZVN3L3A0UGc1ZUhw?=
 =?utf-8?B?YXFLWUFPU2hKYXNUd1NNbXZtME04RzVrSy8zbFpSMHg1bzRnYUE1VkRNK25j?=
 =?utf-8?B?NWFVUzRuVjBjeGhjVlNqWDJCeDEwbWNOMUhQSm9zV2hQeW82MDB0VG0ydFQ1?=
 =?utf-8?B?RHFMcURVeXBnaDhMMk9EVkRhNVNaSG93Y2tpbkNQcm1LNUl5NmdUMFV6a3Yv?=
 =?utf-8?B?UFRFVkNEem05RkoxazBDb0wrTVRjR3ZJN3BXazZ6Wm5KMitvVVdaakxkNGRr?=
 =?utf-8?B?YzIwN2gwaUNUZ2JjQlVEMDA4dm1SZno2NnNRQ1d6NTJrenU1L0Nhb3RLR0dE?=
 =?utf-8?B?MXBTSGs5Sm5Iamx5RkFFVTRodHBHUTVsOEI0T3pzMCs0VjlkcFZxZTZVQ1hJ?=
 =?utf-8?B?eUhiM3ZPcUw2QlRaQnl0WGdmaE5mUTNuYU4vNlc5UDQ5MEV2cGZnOHdlSVUr?=
 =?utf-8?B?bXlFWUF1aCtybS8rRnV4ZmlyUk0xQkQxejVaZXFuV015NEhuWENwQWhtZXNG?=
 =?utf-8?B?WU5ZdTZGSGxmc2VhNTB4ZElpcnlVUWFhWHdVRFNLVlV0ejkwR081NTFodU1Y?=
 =?utf-8?B?V3psdWozNEdoQVFQcGJzL0VJaS84OXRKeko1elU1bXp0UXRkczV4RHppMzJu?=
 =?utf-8?B?dE1IS1k1b1lWNHVpaWtYRHQxZ05JVUkxL09TdkNsbFJETk9PbDduZnFYQ2xX?=
 =?utf-8?B?YVcvSlpWRXRreTREWUFpN3lNWnU0cEtMZFZNYUN2U3gzU3VEMjlGb0g5SDNZ?=
 =?utf-8?B?amlhNFlKdnNkRERLMUZvV25YcGFFV0dJTVA1bGdoOGttZndVR1lvSW9lakFQ?=
 =?utf-8?B?SklZM1hkRUF2RGlXdVR5SFBRK3ZySERlMEo4Z003VjNqSlFZampHZ215NXVQ?=
 =?utf-8?B?VVA1WHpLSytDVXdVYklaVllvTWxjdzNCQUM1VUo5TFZ5dElJKzkrSTNGSEtm?=
 =?utf-8?B?SUhJN0hYWjYyL2drOHVWYUY2UkEwSEhjalVTRTdnUVhVOVc0UjROSC9uTUU0?=
 =?utf-8?B?eEhETzlYb0NESWJxclY5VkNBMkQwdjJjakMrSEVXYlA3TTk1WHd1dDduU2R3?=
 =?utf-8?B?Vis5V1pjWWJPSzFWR2tVbnZaYXZ3S1pwUjNtQTdKOHlEbHQrWkFlc29wdlJu?=
 =?utf-8?B?L3JISG1vbTU3WTVVVHM2NmJIS1FDNFVTeWFvSGVrNDBtenBLb0ZFd3ZKeHRS?=
 =?utf-8?B?SkxiQndHREpOaHlnTnBQZG04UmtHT29venpJaWkzZXdGUERJbWpjbW9qSnh2?=
 =?utf-8?Q?8Y+4aoO98/ehenkf+FJOW+1zHa3/Cl+yuiAstfB?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cm5SRDhSMmRXaHljN29PY1pSekUwYUZqUGErUm15aS9IWUFPSThNMmJmSUF6?=
 =?utf-8?B?UmN2ekx2Y2tlaEhzYzQ2cjJXTmd2ZFZ4d1ZWeGg1bmdCWkFmWWlHNkZtbGV2?=
 =?utf-8?B?Snl4M3ZvYWhZUUV2aVNvQk5DcEFKU3gyellnNkVzUE5MSWtoQkJseXl4ZkVO?=
 =?utf-8?B?cHVXN290NFEyYjgzQ2hmZzlzWVRzeGlNcUxYZ3NTemNxdEhDaTViQUEwSXh4?=
 =?utf-8?B?UXRHOVZ4STdhVHNGWkRiaFFFRDhVMkhkZytPRzY4NThGWitLc1AySng3MXJU?=
 =?utf-8?B?NXdyRDdQRXpBQ3ZvV1pHZlkwNGgvMWcvSHl3S0wxc1gwUlBKVTVHK2VDNUdT?=
 =?utf-8?B?ZVU1RVhCb1kvcS9uKzBKdVoveHBEZzZWMWl3NnByQXBrdDdXTEFJakNjaklh?=
 =?utf-8?B?SUt1OXBITkhRT2xDUTZyblRpNmZSQ0tnTTF4dy9TUHBHVXU2MUEvclpiTDA0?=
 =?utf-8?B?RHJldWVXcEJEK2s1QjBQa1JtT1NmTUNqNHdkOERlL0E4VjlqR1pxMWwraXRq?=
 =?utf-8?B?a3hhNldPd0xEWWdodThZdG5Qc1VhT2greE9sVnVMSEVEZUEzeGZEVWZLWm1P?=
 =?utf-8?B?RzllalVZNGVrT1h4d1BLNU5BaHVtQytSSm4xemhLZVpXZHB3MkU3Ukp2YUcr?=
 =?utf-8?B?aHpwanVROVdrQnVBMklSL1JyMkxWYzFIVUtVTjR4OEhJNzJtTEdsQkdHS1Zl?=
 =?utf-8?B?WkRVaFQ2a21ZaHl0SGdWanBzVGVBb2Q2V3piNkU2K25yaFlIcE5nSktsQ0l6?=
 =?utf-8?B?M3VRaUUxMmZaSW1oZHl6VFlnTkV4c0pTZG95cnpCVlNCNVB2a240SHRGblBG?=
 =?utf-8?B?NDNuSUU0Y2ZIdlMzZExHMFFSazB1bnE5aWUrdGFyZHFaZU1mYjVmL0NlVDFS?=
 =?utf-8?B?eDdzMzN6c0lRVy9oaVpxU3hhcHlXSkhJV25aK2xIZWtRa0F0ZmlLS1FiQStY?=
 =?utf-8?B?Qm9ZU1Y2ZmRBZ0VsRG1Jc3k1Rk9GcC85S3RMalB1clVNYVlTZWh4eW9qandq?=
 =?utf-8?B?V2ViNnRsMlJXYlAxNjE1MFRaVWszbGVwVW8xK09zREpVL0hENEtDQ2FtY0R6?=
 =?utf-8?B?SERyV1lsMDhTZ2FneFI1Ky82ZnpVTGx3L3AvSGlSdzRnRFg2Z1FKK2hMb1U2?=
 =?utf-8?B?WC9EUHRqZVNFKzU1SkxqaXRFTHBlOUxLb1JKSzRDbFJ1L083K0ZIQnpSVHFX?=
 =?utf-8?B?QTlUbElwUDV6WmF1SzRCNk5mUm5zOGlZMEhlQjB1SSs3L1cwMVZjR1dCQWVl?=
 =?utf-8?B?NURaUG96Mm5xTFRaNnpNaGpXckd6NmwxVE1WdVJmdzlUZzlCWElLZ2d3SE1o?=
 =?utf-8?B?NUxTaFUwRVRac01KK1BjY3lWVXNYRVRwdnFXbnoxdjJJWVJhZW5LYVRBTzFH?=
 =?utf-8?B?dGd5L29vQ1o5VVhRa3NIZUpmUzVySjFtS1VrM0pCeHd5VlE3amdyQ3ozRDBs?=
 =?utf-8?B?NTRGMHI5dCtWamVtZ2FCNkppZDJoc1N4dTRFMzdhaGVyaFF5bzZrWlVucW1n?=
 =?utf-8?B?bG1VNU93dmhVZjk3Nnl2eEZQb1lGOFQ0NTBoQVVyY0tPVGxFU3JrU0RFZjQ1?=
 =?utf-8?B?a0VKTlJIdWo2b1B1MWpYWEUxTUJ4ZGhNL0xQeEVLdXpTa1c5bFE5Zy9GNjQ2?=
 =?utf-8?B?MU4xcVAvNzlxSVVmN0svY0VNR3BEWGxxejRtRHpNNjB4aEtjcHJHZWxKUVhH?=
 =?utf-8?B?NEluaDB4RmU4Rk1qVUlTS2xiZ2R5OTBtQWJZbHBidTMzaU5PN09yVE9iVjZt?=
 =?utf-8?B?WnRSVnpkK2J3VmpNR1hCQ2tPclFIS0N5c2NjMkwxVS82K1YyNEFNdXZzajlr?=
 =?utf-8?B?L09JVDd3eU5zMGE5emRCK0ZnSjJrUnA5SVRJZXBqNHovQnhNcHEraXdUb3dz?=
 =?utf-8?B?emlLMHdnQlVodFNhRzFYRjZVSmtkcVcydEdtc3RhK01xUTlzTUlMZCttRHNl?=
 =?utf-8?B?ZlY3MXZqY3ZZOSt2NHNsV0ZiQlNtV3phNm9nY2RuRWhjNUhLczdxT0hQYUZz?=
 =?utf-8?B?cVR1cWpPc2hqY2dGbEs2TE5Wd2lXN1RHMSt6YXJyNlJDSExJQVhUREZMYzUz?=
 =?utf-8?B?MUVBbE41OEJiKy9ML1pncG9WSDc1c29iUC9FdXFra0g1SnkrUjBEayswNUVU?=
 =?utf-8?B?cktSNU4wUWUveDVZRUNQSWprM01rN2I3d1lOQXc4L1hKanZGcjFZb3lpR1pL?=
 =?utf-8?B?cWc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: WWc1yqW5Yj5LGWeXM/PwpmuHEPktcvu1P2TP3o6G5t28J77b9iz3jgYkNXyltNksbJa90g43i9QbRb5wEUIx7qSVhueCb0pFoSwk7RlbfZlYAVGrrizXD761P2n2m/2Q2QHOf/jqP3UKW90Tl7+3UavP3lfPktcpcup0cHG4X1f0z2ABMmKTZLRNAero28efs7cD1uJjSeUuwp5KVlHytSmtHXVgZ+bXl8vQ/Mncs0vZ+Dixwn7Q3iRtnR31yOx8UMSeHgRrZ4QCAd401s694l1wCCVph3GqhXTY54Zm0hVcOjc/Aes0TvYcCr17O30jPfaLFH2uoK8AQY1lN22TDh8xKjJc4d24LMdUcG+zKxstlrjrjItBWX4nF+9ziEP9EadNmtm6EPW3jnCaucKEB1jWH90A2WCgrpJXfHVIESmM4Q1xMKm0afinRYsJaJDphRMi5ZAnF09MvfYfy++aOmJnJpr333tOIescW8P/F+juNrQEKzCOYzHwQtkPePp/G7cfc9yVGSZ0IOpHNFEEK+UHsUeaUJWuPP37KfgOYjI9REH1Kv/Ubs/hLyi2l8Nc7U3pXYtvERaDepPaekHCEpEl/6nNyJNfh6F2M5usmvI=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e90bbfdb-a08e-4b40-b99b-08dcf367f07d
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2024 13:38:12.4290 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /jVsBTAzl+uroW2WtMO/OyihRU0gJCH8X6xX3wPHd1qtg0iEl2SwVphQ3q/um1ACkAmII8L7F9KefF6NcST7sujdjIEP4cm8FICCRWFftwU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR10MB6497
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-23_11,2024-10-23_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxscore=0 phishscore=0
 suspectscore=0 bulkscore=0 adultscore=0 malwarescore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2409260000
 definitions=main-2410230082
X-Proofpoint-ORIG-GUID: qOSKzaeIw9RytJ49Pi-q78Oeu7rdaZkZ
X-Proofpoint-GUID: qOSKzaeIw9RytJ49Pi-q78Oeu7rdaZkZ
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The following changes since commit
 c2ee9f594da826bea183ed14f2cc029c719bf4da:
 KVM: selftests: Fix build on on non-x86 architectures (2024-10-21 15:49:33
 -0700) are available in the Git repository at: 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.220.177.32 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.177.32 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1t3bZD-0003ME-3H
Subject: [Jfs-discussion] [GIT PULL] jfs updates for v6.12-rc5
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
Cc: "jfs-discussion@lists.sourceforge.net"
 <jfs-discussion@lists.sourceforge.net>, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The following changes since commit c2ee9f594da826bea183ed14f2cc029c719bf4da:

   KVM: selftests: Fix build on on non-x86 architectures (2024-10-21 15:49:33 -0700)

are available in the Git repository at:

   git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.12-rc5

for you to fetch changes up to 67373ca8404fe57eb1bb4b57f314cff77ce54932:

   jfs: Fix sanity check in dbMount (2024-10-22 09:40:37 -0500)

----------------------------------------------------------------
Fix a regression introduced in 6.12-rc1

----------------------------------------------------------------
Dave Kleikamp (1):
       jfs: Fix sanity check in dbMount

  fs/jfs/jfs_dmap.c | 2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
