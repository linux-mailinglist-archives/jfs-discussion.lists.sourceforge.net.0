Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D825DAC71BD
	for <lists+jfs-discussion@lfdr.de>; Wed, 28 May 2025 21:52:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:To:Date:Message-ID:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=K5hLWlY0Gbg9XgutZdwftsnu2o4D4uRwAI1rCYq9Pe4=; b=finY2+7e1e54RUZ3OA4eX5YDND
	av14MY3z8WSRc/PrjRz9idot6WXhz5De8hk6y61IMc1qN5VeDsu2mmHualkgaFNAw1brNeTVZI6TR
	NH+mERXqBARGbUdXHxQn14+E+ujJ3CTX4MF6axwxnJjMTFU7FB3sEqdlKxdUmaT6D23M=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uKMos-00089I-Q7;
	Wed, 28 May 2025 19:52:10 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1uKMog-00088n-Sk
 for jfs-discussion@lists.sourceforge.net;
 Wed, 28 May 2025 19:51:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :From:Subject:Cc:To:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2gacJ3pK/wjNQQxziL+D1i0jgVkxC9h+dG+3lLpw+A8=; b=btb+tHwKO1bA30qIFAGTw6qsyD
 oSbohi61l08s13QHIDR3UtWsMG22aB0A+qbKEsPfBmBwVG0PkI/4Hzj1Ponun1HI7F1EiwcKKtOwP
 ibXUA9TJ2CNlJVy7uUXAAG4B5BtINW1rQ5piv7i7mX/XmDRnHiZWrs1/dTYU29fyVuQk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:From:Subject:Cc:To:
 Date:Message-ID:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=2gacJ3pK/wjNQQxziL+D1i0jgVkxC9h+dG+3lLpw+A8=; b=j
 ZLz8RcxzVA91MauUQ6wxUInWWhHv4vIgftV3yCO2nfnfo38+Dn+LXPNs5Dwmy7BNZSG0uQASNW5uB
 vTjgUhwo4qW0hY6Q+9Wc3aRbBbd5Sq0XaF6KS9WpggAuAVGZYeBTXhp6M0W7hLDM0Gjrxzs/48iwu
 kZ8iXqQm49Dl44e4=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uKMoa-0007Ms-CI for jfs-discussion@lists.sourceforge.net;
 Wed, 28 May 2025 19:51:52 +0000
Received: from pps.filterd (m0333521.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54SIND2Q016490;
 Wed, 28 May 2025 19:51:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:message-id
 :mime-version:subject:to; s=corp-2025-04-25; bh=2gacJ3pK/wjNQQxz
 iL+D1i0jgVkxC9h+dG+3lLpw+A8=; b=KGn++KL5fC7HacPB6xNImjcK6iHWJlTO
 voRXNWTy19ZhTp2kuI4qQzv9Npv8+9kPDKGtY5YI1XetC0dBGYSnbtMPvE8/xkFQ
 OvDeV93EhYe+GPo/C9rpqFVLR0B2Juu5Pi8UEWGlf0LaCjlT7w+Gwj2fo893rhd3
 upf1VhIo2rY4FQQuykF4fQH7j06W5g+JfS2wXB1J0e8f5q2cTuPsjZL4xqEJu1wE
 YfwDNwAL73mBFxdgXq+nFbRBMabWBgc9oXm6BCzc7UeM6k3Bzg+5UO0nwq/5byUq
 r/j/daZrHiFaRfKHfC9zlzimH8/dkSrgWFeYK8dsjrPuWS284MjaYw==
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 46v33mxukm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 28 May 2025 19:51:45 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 54SIZ7nu024602; Wed, 28 May 2025 19:51:44 GMT
Received: from nam02-bn1-obe.outbound.protection.outlook.com
 (mail-bn1nam02on2057.outbound.protection.outlook.com [40.107.212.57])
 by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 46u4jb481u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 28 May 2025 19:51:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VDpoO7dn+/wUSwgAqh7wwuqmXIYsbzTWffOgQaDpi4R0p9fVzwVZEfWr+WuEyMsuS9MpH+VSGqNGUy6+vrSRXPU4RH27/cwJC14cp6V0p/LBTjXgRrgW38umN/2Uz1Ag3eaU0gg+LX6QZeCvZhuFd1ooDjDSL6CqXfV/sFQDSq+Wxcp0/Rxl12HDTNZVzWe0gjaFCSdnDct8pEOdsM4InL7ypdpoBaytN6Ru+Vc/vUvDiWduTpdrDOet3hSgQqOwUS8QsjYVcaC2nknlxt8H2H6VHNZOcWHpz/c/1W63u/PSY0dRUVlMf2kUYdKZrW3YuFo6EOsAGW/lsUR8XDoFtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2gacJ3pK/wjNQQxziL+D1i0jgVkxC9h+dG+3lLpw+A8=;
 b=PNlySHqHJVu5irY3ThiICfYm3IaNtS4M5ZidTgyVgf90Ekdlhq5YHkDw4jrSvXShgWzLcBeCJHho6NWSFLE6SWfSk/23rWd490Xycf7pG2kaW8y8XtTrIz301XrN45Mwy0AwyF7Zi87dBVDoCtq2mqPthYZaRDbNslOPC8oBXFLSBs4aELCFfGd0VT2r69EfDALCTDc7LPrMJgojXclU33LxM9jT0eqywxZ8MXEvCIGwDtj1eyB4lhmibGhcRNvT1jgS7tAtjtFCQUkNfV+au5v1gF0DQVEE2t+nJYDTUye15++yXf1HTAMqLrb++WI3Nb1tHgY4wV/l3jJbaExqrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2gacJ3pK/wjNQQxziL+D1i0jgVkxC9h+dG+3lLpw+A8=;
 b=sUIyiARIfYVJqmBp/mwn9pdDStv8TPmKRw4H+OsuM/atwvPJtKZ4VSBxCqca8ecVJ4HsAWL8xSWX/hgKjRo1xs8jLpZwakmA4x1LX8CmZc9v9ttDbldHpbCLf8JqfDP0qJeuB3+ecsKKDRh4prKHbFSHKKEEL/cjvA0WNkmX/SY=
Received: from DM3PPF35CFB4DBF.namprd10.prod.outlook.com
 (2603:10b6:f:fc00::c1d) by CH0PR10MB7440.namprd10.prod.outlook.com
 (2603:10b6:610:18c::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.36; Wed, 28 May
 2025 19:51:42 +0000
Received: from DM3PPF35CFB4DBF.namprd10.prod.outlook.com
 ([fe80::1c40:7ef9:414e:f765]) by DM3PPF35CFB4DBF.namprd10.prod.outlook.com
 ([fe80::1c40:7ef9:414e:f765%5]) with mapi id 15.20.8746.030; Wed, 28 May 2025
 19:51:42 +0000
Message-ID: <ebb6fd19-0c06-4a71-b900-b99b442a4b8f@oracle.com>
Date: Wed, 28 May 2025 14:51:41 -0500
User-Agent: Mozilla Thunderbird
To: Linus Torvalds <torvalds@linux-foundation.org>
Content-Language: en-US
X-ClientProxiedBy: CH2PR18CA0011.namprd18.prod.outlook.com
 (2603:10b6:610:4f::21) To DM3PPF35CFB4DBF.namprd10.prod.outlook.com
 (2603:10b6:f:fc00::c1d)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM3PPF35CFB4DBF:EE_|CH0PR10MB7440:EE_
X-MS-Office365-Filtering-Correlation-Id: 8f3608a6-b08b-4dcb-fcb2-08dd9e211181
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OEkzRUZ5cTBYODMzMUoxSzdJSHhtV3FGT2Y1TmZnSEtWZE9SeUJ0cVVnQ0JW?=
 =?utf-8?B?Ump0QzJmc1pkZE45bUQzSytNbTdrR2JyUHBlc05abW9XQUduVEJzQ1MxczNw?=
 =?utf-8?B?UVR5dDVFL3JDMVZxdzhWQkk4ZTVvdXhLb2NES2ZpR25Ta0tBeEFsY1h0SEJR?=
 =?utf-8?B?TFhISHAxVzhjU24rdnlacWU2TzVTQmwvc1NqczlPRFF0V0lzM2tSUXpvd1Br?=
 =?utf-8?B?OVUrRE1zbllVelkvRDhvNXZEVk9oQjh2ZkxGd2JGWVViSTNsREdyVzhuWFE2?=
 =?utf-8?B?NVFOV1dDR1RXb1lVUzJCU0VpQTNlY2Y3WVMva3BoLzJvTzBZcmt6dHNJWkx4?=
 =?utf-8?B?MFgvOEFzaHd5ZUdNWC84YSswaE5QZFVWem9idjF0VzA4WSs3V3JpMkpkR2dQ?=
 =?utf-8?B?YUp6UURIcERsNld1bm5ONW5iUFZiWUN6OEhRSEdOb3R6NnFIYVEwa1A2dzBy?=
 =?utf-8?B?dVJKMFlFU0tEdngwdDFzc2ljSWkwbUtzQllwSnNsa0Y5SUhLM0tpWm5lQUY3?=
 =?utf-8?B?cWhrVzByU1NsRFZvWk0zSW9zRDRoT1Mwc1loMkpnQ2xmNXJvbFBtcDhmU1Nv?=
 =?utf-8?B?djFTU0wyMitJSHhKbmdDZkl6RGRPdzI1N2xKVmk1akdhZm9JY0hnM3VMQ01i?=
 =?utf-8?B?UC85VFprQjRhSVNvcHo3MzZUNzZlOXNleHFMQTcwMnlIWk1DT1hEaVlGVW1i?=
 =?utf-8?B?Q2tYV1pTVW5ZU2dhY0ZpU0tkeWl6WE9zc25JTzhHQ2NseHZoU2dodkF3eEJ3?=
 =?utf-8?B?ZVRjclRsOEdseDFWZytvbFR4VmYxbFlKVE9VcitrZUQ1MVlrcUFRRjN5eVRZ?=
 =?utf-8?B?Tmt3Q21Vd2tISS9QV0FrTy90aGtIbUR6Q2krNUI2R1liaXRFM1MxeDBncVhB?=
 =?utf-8?B?cEVsMHBjenlYRjQ4OUsxNGJvZ3h6M0p1S1FqRzBJU0FFamQ3VWFJU2t6VmUw?=
 =?utf-8?B?L0l2NEtQUEpaTTRkYU1XOGdJVG5BVWlFTFZUVmpSanJKaHhNNWwrUkVXejJP?=
 =?utf-8?B?OVdxTU03ekVJVFZXeW1BTjc0TXAvcjZ1Z3RWaDgycDZ5Qzl3Qi9jQnE0NWJB?=
 =?utf-8?B?bDM3OHJzb04rdWh5NzVVellsc3RZb3BMYUJ0TEVzM3FqNTVEb3UvSUxpQlZB?=
 =?utf-8?B?TVYxOEtIV3dJRnlyWUJiYXBvU1FqTkVPeEp4SFkvcFZibTkvYldneTBVUmRv?=
 =?utf-8?B?bUpmditsdHhGVC9DVVpVZnJMeHBXT0dJS2VTU3M1ajlTQ1d5NFR6Zi9GYUcv?=
 =?utf-8?B?aE1HUXBJVFFIOUw0cnNZRXVhYzRNSFlEQ3RsTU1aQWlkWDdMSnpLMXZIRjNT?=
 =?utf-8?B?U0o4SVBUL2RLQXNkaERQMU1jZzNiOFU2bUdGMGgzVHlybkVSMDdlbHdha29V?=
 =?utf-8?B?MEpxcXhmWlYzeXFxN3VLbzMreTBoNEI5R3hiRXdvZFdEQ1l4eFBueHpIc2FK?=
 =?utf-8?B?MVVTcVBiWFBsWE1OYWx5ZmcvWmNMVDVaVUUwVUtYNWFHbDBuUkYvVkR4bVRF?=
 =?utf-8?B?UDVLNS9rRDJHaE13dG5KOVZXbXFVRld6TndyR2dWRENYSDlraWZHeGtaZERN?=
 =?utf-8?B?azFuV3FJd1dFak5zN3dOcmJXb2pWUm04cThHOFZhMyt5TGdXa3pCTDR4WVQz?=
 =?utf-8?B?dUdwQVZLeHJ4V3Qyc21QZHVMNllpTDg4YTlXNHlTT1pDOE5GRjdBRForNFZu?=
 =?utf-8?B?TkI5WHA1czZCYlhyMUxYbFFweWN3MkhHdUJaQnVBSGJaK2oyOXdKZ1dwMnhE?=
 =?utf-8?B?Z2J5a0JndDFmcm5xY3hkeGZaTklrYUt0K2crWldOdURSRUQzdXNGRkEyU0VS?=
 =?utf-8?B?VThGTmpBY01ZY0Z4QWZHdG5RVGticW53T2tIMzZvN3hGb3lwN3dkVys3c2JX?=
 =?utf-8?B?cUhXMWJwMHpadzhKRXNMbHZwTUdMUy8xQVFldXlLWlRRSllMMkhRb0dxUjNI?=
 =?utf-8?Q?04BkTeGHUF8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF35CFB4DBF.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Ky9ZY2k3Mld6YURDWUI4cjJIM1BVQ1ZDa0puTnkvWUxkcmM3eHBtbmRJdXIy?=
 =?utf-8?B?WW9hQmJNOU9ScjlzMU1BWS9GSXBNOWZIM0RabzNZUHE1bE0rMEdvQ0QyT08r?=
 =?utf-8?B?VU96S3plamcxb3dDZUhiM1VWTWRBbVB4RHFUQjc2VUZHa0xhbGRTRkV1c3J1?=
 =?utf-8?B?d2NVV0RJa1NNNFdhWEtZdlBRMUU1YmwwU0FtQVZ2cWZGSTIrQ2YzOEVwWVM4?=
 =?utf-8?B?ZXdzY0w5L0J4S01pWTh4K3RmUTZvR2U3U3ViK2ZMOS92NEM2OUxCTEEvRFBJ?=
 =?utf-8?B?Lys3T0RIVEJmKzJvOSsyN1lQQzZFUm9iS0FMMlVHMW5sMUs2NWFuY045R2xx?=
 =?utf-8?B?ZElyK2hqNlBWbzRsazVtVG55TlVzOUg2dmZIV295cWdZUDFlblhyYWFET2Jh?=
 =?utf-8?B?c0o1UnVqWWd4Z09JeS9iZDRJRHVSaGVrZk1TNHd3SEczR29TRUVyb2NyMWVQ?=
 =?utf-8?B?ZVBrTzJWLzRrNWlsM0ZNWUd0WkNSUFBUTnVkK0g0VmVwOTVFRldYanY1SXd0?=
 =?utf-8?B?Yyt0ZThlQkpVajVIYmI1b2c0Tlo1MW4yRmt2elFJN1F4K0JtR3ZrSzlHeTcr?=
 =?utf-8?B?Y1NZenpSbTk3VkdZb1doU0tmNXowcVVTVHZLZW1NL1NXVHhMMDhHWHpEbEVF?=
 =?utf-8?B?UXpQVWhkRDJSL296STZlVGVtbjl1OURLVFd0cVpsQTZnbS9pRWFETStSNkRT?=
 =?utf-8?B?SXdmRVNyOVVvL1czaWZJNU9kSVFRWUxqZ0VzVVpqbzg1WldZYzJKZmUvRTF1?=
 =?utf-8?B?eGtWMDZjS3NtKzNNWTQ5MkFSZ05ud25reTdtWHg5Zy9qam9XejhFMlo5U01R?=
 =?utf-8?B?NzZlY1B1ZkdZY1BPek16SXFkVnFoRjM1dmY4V2d3TU9oa05WWkdQek4yTWNp?=
 =?utf-8?B?RDQvanQ3ZGp5QTdxL0cvMllEbUczZFFyL1NZd0xjYUlBbHRYQnZ2dmpzOU5W?=
 =?utf-8?B?c3lsNkF0YUd2VUZSaTB0c3V1bWYrQmNCZG12a0toeUlManNKVWtIYzJJVGxF?=
 =?utf-8?B?ck1mSUZwT0hRbnlLOVd1SzN3MWxtUTg0OHBXQWpQSTA4TEU4c2N2L1FJV3p6?=
 =?utf-8?B?QVpObXZ1VHhENU1FTE9xYVpHUXZvTHZrUUxaUUhjSThxbGFhSnB2THZFbm14?=
 =?utf-8?B?dkNRaUQwNmgzYWhXSTAyc3hRZ3U4NThzd2NiQi90cmw0MnAveXJiZmdjeDlv?=
 =?utf-8?B?YXRQeDZrRDVGMGlmVytyQmNVUHJqUXBBbUw4K0VLaGtsdFludm80NEVKNXpv?=
 =?utf-8?B?dTBqanJTcUU4NGt6ZGZYREczQ1FCNTJmdzBPYzUrSlFSNEJSMzI5NXRLMVIr?=
 =?utf-8?B?SHdqQS85VHRuMHF5V1Fmcys3MEtRdmpaMkJWWlVLbHpoZEFuL21RM3UzTzhS?=
 =?utf-8?B?SWVrZDA2VUNkaEI3OExIZFdDamJkMVU4a1FxcVl6SGFuUFNZTmg0b01CalFY?=
 =?utf-8?B?OGw5eWFBemdQQlI2cUVpdFJIK2R0T1hjcTBkTi9mSXkrWGRwU2Rnb1lrWFda?=
 =?utf-8?B?VFRQaVZvTnV4TURINWRtUlNDZStoN3FpMHo5V0tWY2R2V3IrY2U1S1NpTUJZ?=
 =?utf-8?B?b21nVFZhbHF4dUs2UVR1SUs5R1hOeTE3dm9FZE9HQnVCY09pL2Z1d2lwcjdq?=
 =?utf-8?B?Zm8rd0dqR08vYnBGS0pUT054QmVZNmlYbDdPVEZSUHlEMlh3bGtGbEtmTTB3?=
 =?utf-8?B?dlRKVHNRblErbjRaeTI4dlpWWUxYUnIzQk5rV1d6Q2prSVpwZkQ5ZVkyT3Rz?=
 =?utf-8?B?YU5YMFd0d3dEZllqR29GV0JMUWszVFBVT0hMOWQxQ3h1VjhLVzFzMWVYVWl6?=
 =?utf-8?B?Lzh6V2QzTTgzWDFvbHZFWXJ3N2FOVTMzQ2pVWGlJcDE2Vkk5d3NMcjZxVWRK?=
 =?utf-8?B?dGYzMjBIVmEzZnJFMDZGSXE4VFoyUm5IcEFVbTcwczlHa3NxU29XeFNTS2M3?=
 =?utf-8?B?K1ZiS3JQdUxuWWdRZW9LMk5CYnFCQVpBQXBRZU9HeU1xUUM1VitEV2pCVk5m?=
 =?utf-8?B?Z3ZrbzlBVGNRbzczNFBzNm5xYkUwM1l5OEdUSVlPbUlwNmR1WllZVVlFeWlD?=
 =?utf-8?B?TWQxa3g1Z0FPSmVQaEh1d1FFdVh3THlLSVRoN2lWVy8vbHBpanlhUTlhUVgr?=
 =?utf-8?B?OTFBOE5Hd1lVYkFhUVNtQllOYUpsZkoxaTZVd2N3OE0zU3V5VFRFMmJVRVJD?=
 =?utf-8?B?WGc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 2A+y+emnEP1tu/jBe0nUZYl09WfKFhfjm+OoSdI+1c4hb4dGU48QRlpCsqDmk9UKSje9h23PGoDp4tE68HRpIfG4WJuXLeKj3RPK3xa68bieSXR3tIW08tCiXQzGwZVgl4awNed8w+Qjz8JUg8aN7E8OwiAUp6JWRhjGVWQjMofyuxXOFWvDLcQIxYXui5b6EJbOE5rEv1rX5yNnD++GmMLv7HtF+Yif8OkXg8FqSb5P2gQFfUOCnagGu5JF6114/4mVqNIyeFP60QcxqPNqn1JhrNuIsodxR2Ply5faGll6r7sB4RIJSzCYoG6uK9Sczr4QW9RFJe8RmGGpj9TE+6kECQCE0yihVwa/+a5N2omxJ04x9Gf5m3NJ/Z8OnlQ6WzVKCS+lAg9+MRAOit+MGu9A8LsNVnfJiZh/fmcjdopnjql0CJlXtz/Jo+Lzdu9su97W6tD4JjOdJnLnAEGyG5OEaGJii4iec00ImzBAjmhOCHp/m2HTI1hJyds7HkVk62yxPqQHrAjvYfIXW6G6YTIOWal9wkw4Q/9A92iOl8h/FhyG6mJAmIc/QXCAYIzh3Z4hpQdy4f8TVMfp7cQ+xzG+xuHsmt9UEbFnl/N6Ub4=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f3608a6-b08b-4dcb-fcb2-08dd9e211181
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF35CFB4DBF.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2025 19:51:42.3549 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UhnU2hG/l8UH8xG5MOHsqBTvfpRj3jF+JsZjtfexLdynIRNNwxJuEbZXE2+V9T5ONUh6lzhCMzILMTkZPs2PExFPBjca2+LtFiaRiNLdWig=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR10MB7440
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-28_10,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 adultscore=0 spamscore=0
 suspectscore=0 bulkscore=0 phishscore=0 mlxlogscore=999 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2505160000
 definitions=main-2505280174
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI4MDE3NCBTYWx0ZWRfX1TVvgjhePG6y
 8DwLXZkq2a2gaMjzc9WJrgrcBEcwyGYrzU5dVhnFLwa3XPIlovuK3t4iTxA8MwSz2l27M5MIMyc
 zfBY13ljC4trtXzQAkpV5YB08AyzMQcKfVulhO4WC2JvEYkCTzWOQAHp4eH0HNA9iRgRGd7f6Wu
 O9+qMg6vRWmgTwwgupMeA5jVwNOVH2EYxS8+am1pPaMz6Zfh+M8GYcB7qINNAB7W2AOES1u+qO5
 cutOvp1zr9KVntXSD/S98kiX8/3NN6SgGP692yq0YQFIZc90LN+yyg5fdRkOTU6ZFD08WpB5G9E
 W9qfLd5MV1L4CV/8UNNy4UQhh4ey6MqrSbvrjxvfJI+HKHfdaSajTHid9j6DEFrl8s6mz9PuYiV
 xw1vSe1LzEX1TShWxRRn169p8GHdmIIPCVGAICZsl4A4qRVgDL45SbdFF4L//KHddMYRhxgm
X-Proofpoint-GUID: 1nUC9g-ILuyD10-3cLsiSjI1zNj2rEmj
X-Authority-Analysis: v=2.4 cv=aO/wqa9m c=1 sm=1 tr=0 ts=68376952 b=1 cx=c_pps
 a=zPCbziy225d3KhSqZt3L1A==:117 a=zPCbziy225d3KhSqZt3L1A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19
 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=GoEa3M9JfhUA:10 a=VwQbUJbxAAAA:8 a=NEAV23lmAAAA:8
 a=aoeRu7uMpexTEP93S7cA:9 a=QEXdDO2ut3YA:10 cc=ntf awl=host:13206
X-Proofpoint-ORIG-GUID: 1nUC9g-ILuyD10-3cLsiSjI1zNj2rEmj
X-Headers-End: 1uKMoa-0007Ms-CI
Subject: [Jfs-discussion] [GIT PULL] jfs updates for v6.16
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

The following changes since commit a2cc6ff5ec8f91bc463fd3b0c26b61166a07eb11:

   Merge tag 'firewire-updates-6.15' of 
git://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394 
(2025-04-02 22:41:04 -0700)

are available in the Git repository at:

   git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.16

for you to fetch changes up to 5dff41a86377563f7a2b968aae00d25b4ceb37c9:

   jfs: fix array-index-out-of-bounds read in add_missing_indices 
(2025-04-03 09:11:43 -0500)

----------------------------------------------------------------
A few small fixes for jfs

----------------------------------------------------------------
Aditya Dutt (1):
       jfs: fix array-index-out-of-bounds read in add_missing_indices

Dylan Wolff (1):
       jfs: Fix null-ptr-deref in jfs_ioc_trim

Vasiliy Kovalev (1):
       jfs: validate AG parameters in dbMount() to prevent crashes

  fs/jfs/jfs_discard.c |  3 ++-
  fs/jfs/jfs_dmap.c    |  6 +++++-
  fs/jfs/jfs_dtree.c   | 18 +++++++++++++++---
  3 files changed, 22 insertions(+), 5 deletions(-)


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
