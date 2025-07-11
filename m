Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F9BB025D9
	for <lists+jfs-discussion@lfdr.de>; Fri, 11 Jul 2025 22:37:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:To:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V2+7ZGnZdomrOq5L0C6rSbmNAuFPyrbobkzMhASXJFE=; b=Uxp1bbZvXNsWPNrPXVp13qPeb+
	+KnxlPWGRVnEBmDUN0h2PXGWbbbQn6mGd0KxgiY4cMlbXvt29OSAAedQzKKSfYNnDSN1MlYCOh3U0
	jdQfu5zV36ajxaqRGUCp3B7XXPb/bu04NIxF8nh6OH6Tf7ZMjjbinAdZBhZWbYO+Ez9M=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uaKUI-0000ei-Qt;
	Fri, 11 Jul 2025 20:36:54 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1uaKUG-0000ea-NH
 for jfs-discussion@lists.sourceforge.net;
 Fri, 11 Jul 2025 20:36:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GtINvi+Ub1UVWQXjsCUcWIDb0IuXOg+jc9dvHmqcKfM=; b=VTKoeAw4HlBNDUda8rAKUmroCC
 u3DPTKFh7a7I794SEJcpvmKuuMuEXwxy149uE9GMNaXtEwh4uBIo6ee/z2cEkDRLG4J1VHeFm1yGm
 ez0htALnbHNWqdDMIV7GU4C+N17LEQG3iKgZdZKLU5apoSspogJgb2f9LciuhEan3dqg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GtINvi+Ub1UVWQXjsCUcWIDb0IuXOg+jc9dvHmqcKfM=; b=k/JCRgHayAWBZKsUAxHL5YnXvb
 n4c8RkPwRxjB8UUWCNW2nrngxPoX2Yi9doUS885BjCYPSp1HXb4yV0XxTCkBIehcJ88vIpX/oIilH
 FMwQRVvUHorO7bjmve8gWdBY4DZla+DYHDrArDLJw7zdeWpCaoBf3PJS+8lridrtQdXE=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uaKUG-0004Ai-91 for jfs-discussion@lists.sourceforge.net;
 Fri, 11 Jul 2025 20:36:52 +0000
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56BIHOce031183;
 Fri, 11 Jul 2025 20:36:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2025-04-25; bh=GtINvi+Ub1UVWQXjsCUcWIDb0IuXOg+jc9dvHmqcKfM=; b=
 VnqRzeFgHXRnTFAo5Q4L0domROoY1g3GZL1pKfjtHK7V0BdM8D/CBJkHnPwuDlIX
 JRY9gQKwSzG725FpYwkbqe+ZduS8IOawLfP1AIL7OAWWAeSY9IaaX9pSxklTkQPo
 lGDjYR7S7IkQHXzMaaU3VwdPSkFlEGJlsIx5g2vuxXjgcd95Q7z8b67ueC/sAhZX
 jWnruvE/SU9mD+X3CfaF82g93p0a3SbcD9u27Ldgux/dK+RjStlZdtWxAGRHGnLq
 gWhufkMRvzbhNBg667KFna8O/gbr6jpWxC7p+Obu1Fwdy8Hk88wSGYocLEmitacI
 kzqVcHKk89WIA0/LCP0tNA==
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 47u7rk07qt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 11 Jul 2025 20:36:39 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 56BIvaAc014203; Fri, 11 Jul 2025 20:36:38 GMT
Received: from dm1pr04cu001.outbound.protection.outlook.com
 (mail-centralusazon11010031.outbound.protection.outlook.com [52.101.61.31])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 47ptget117-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 11 Jul 2025 20:36:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zLBqAGaKQr2EdarwTNbb9GFcsgoxYoqQguD9wFaPgGthZHmz8c09ioYmqbjO99q4YPDdI7Y/Cj91VhhVpV3R48R17MrXjlyTm05DZ91D0PlYdaCJ1rKkx6fJXVYqfTLoFeIpz677+41kOS8avD77++IJBNMUtg9WYNzi0E0PNB4ZSH28pE4vAdAXKUcEDtpmwwHw1fSX0NNm7sZQYHdbD+ZB93em9mW/mJCHr7TW3SZxdD5bDUvkOcBtn90FcsV+k0Hld7gIG4XTkRrXOVZW35ZOxNVT+f4lSJdxGcMIuY8YJ58yz7ZtSjTd5eUIGRjV/yMGbxAz60PAMDGUqB0hcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GtINvi+Ub1UVWQXjsCUcWIDb0IuXOg+jc9dvHmqcKfM=;
 b=iXBW7ncUFR1KLFuKVXU3aQD7HcDE0DYgXhGtnNBn8tydfdWljpI7Q5lmSq11/M0ZNs/K2c5Jq6SVW0d3SLCnnb0PDosRzKetTNs+BPBnDEGzuxo13q1GgMSSd3EElltR4HzflP3jSqbMroknkmth6+El+zZ/SyKfGWvP1jsKW69okkwrohdH/cos/6wbYAjD9aiOJUU8qraND1CI/y72g9PXKWYTmypp/f0ecsR62b3GvlNkoQzkLlVkQhyQczNCgHqGpJTo4Na5QmQMLBR5g0IC1ihBJzTW6JeNNW1r8W0kvldGUgjvLbZfWuQA913mhM0RdHLvpwLEmk2J+4T75g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GtINvi+Ub1UVWQXjsCUcWIDb0IuXOg+jc9dvHmqcKfM=;
 b=w0C4STJkVDu+2uXb5bBsp+88cZltaZdUd1o3mCaA8aI64F+VM4IBissyWUTAdQTJKwnjZ52MOGnusE/jD75dLuTk/vMiY7zdCNY/IUQXiu+5wsoJUgIht5R2E9AtcgBSQVFx3aVERqIlmZEFbxXiSaUPD8QBzUrKc5VYFXrUsiQ=
Received: from PH3PPF517B7003F.namprd10.prod.outlook.com
 (2603:10b6:518:1::79d) by BLAPR10MB4914.namprd10.prod.outlook.com
 (2603:10b6:208:30d::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.21; Fri, 11 Jul
 2025 20:36:36 +0000
Received: from PH3PPF517B7003F.namprd10.prod.outlook.com
 ([fe80::943c:5ede:5076:73d4]) by PH3PPF517B7003F.namprd10.prod.outlook.com
 ([fe80::943c:5ede:5076:73d4%6]) with mapi id 15.20.8922.025; Fri, 11 Jul 2025
 20:36:36 +0000
Message-ID: <e49d2897-56d8-4ad2-8ef4-9448e42067cd@oracle.com>
Date: Fri, 11 Jul 2025 15:36:33 -0500
User-Agent: Mozilla Thunderbird
To: Christoph Hellwig <hch@lst.de>, shaggy@kernel.org
References: <20250711081232.564776-1-hch@lst.de>
Content-Language: en-US
In-Reply-To: <20250711081232.564776-1-hch@lst.de>
X-ClientProxiedBy: CH5P221CA0002.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:610:1f2::27) To PH3PPF517B7003F.namprd10.prod.outlook.com
 (2603:10b6:518:1::79d)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH3PPF517B7003F:EE_|BLAPR10MB4914:EE_
X-MS-Office365-Filtering-Correlation-Id: 3351b693-a7a9-46c9-04ff-08ddc0baa13c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S28yVlg1NC9wcEo4UTFBMFlJR29VWDlUMU85OE1PUGpPRFpsdFBSUlRRVWU2?=
 =?utf-8?B?NnRvaHYydXZmbUFIb3dENmsxS3hvYndXMmdDRVQxem01YzdPRzBrNVgrQU9n?=
 =?utf-8?B?R21PNC9SUHVwb0pTN0NuSFd0SEYwdTNJWWR4UUhDOUpyVjFqT3kyNlY3SFZN?=
 =?utf-8?B?VWpSa0c3ZjAzZW1OaUNsaG5vRFkvclE4VUxrSzBCM3hwc2VSK0hpYzlQY3VY?=
 =?utf-8?B?ZzIxWk1XWDdUMVQ0NEZrQWxKa1ZPN0o0enRIZDlkZ01QR0ZvalgzNVBqNDUv?=
 =?utf-8?B?NUJyRFBKWEZoQ2trWW8xeTVCMUpCS3hhOU5PaFJlYkNabGZVVzR0UXN0eXVV?=
 =?utf-8?B?V0t6Rk1zV0I5WHVxYkF3OG1DVGJqOTF1MlVUTG9zYWNUNlFBUXpHS1Y4azc4?=
 =?utf-8?B?ajJpOTNFWWoyM1RSVjY3NS9rZ3ViNUNnUXA0Y3VlTld4WUZlaXlVQm5wNEhn?=
 =?utf-8?B?WG1wemJUYVlML3NYdm5zZGo5a2gzME83RkhZdE9LWllseWgva3h3aCtrOXhE?=
 =?utf-8?B?VXMvZ24yRVJzQTBtL3NObXZ4cWZXbHVqZ0dObkZzam1CM1hIWWlIaEVCMjdX?=
 =?utf-8?B?VEo5WHY1bFJacGVLdXZ1TmpBTUp0TWFLN1JIWlRXY0dpeUJLN2RXaUl1WTVP?=
 =?utf-8?B?RWxsL1p0Ty9RcFVGdS9ETHNWMlNNUCs1ZG1pbmRjZTFoSVJjeFcvb3dpcnYw?=
 =?utf-8?B?bHk2NENaWVpHYU5tb05vYkkxWmFqdzdZV3VON1ZFb1pwMkFVNzROTzA1UG9P?=
 =?utf-8?B?NkYvbjB0VThOaHRzcS8wcHI1ZmhMQjdxdjgzK0gvVW5OZjd4UXM4amxkS0pN?=
 =?utf-8?B?cjU0SjBNZW9sSjRhaWp5ZDZUWnFjaEFGTUJ3U1dqZWoxV1hMWFRsZXF3emFl?=
 =?utf-8?B?dXdSR2J1RUtoMkdjblhYOUx0ZzRVOWp0ejVxWXcvbU80M2ttM0JzWDI3TnhX?=
 =?utf-8?B?TUZrcy9oUHl0YWRoK1JEZ2d0YVVWMWxDZmVZN0VPNEcvVWtpRk01MDR3WW83?=
 =?utf-8?B?QjJIV2xlWVd0Vkd2SGswaS93cTdyZDluUzU1eWkvV21ncnlDUWRIL3oxbm1P?=
 =?utf-8?B?M0FrQ0M4YXBjWWNlSDFRbGpQSkppSEU5ZVBtSnM0cU9mTHNBbTB0SkhEYUM2?=
 =?utf-8?B?ajA5bWtOWTVQaXpORFFLZG5mWGVuaDh0RWJ6UStFZ1lSMW1qblVGOHNJY0xT?=
 =?utf-8?B?bVk4TWJjdmgvMzNOWE1nYnNodks0RTV5YUpzTUFucUl4VmoyQnRmWlZBQjE4?=
 =?utf-8?B?MndxelVsaXlheVRaU29HUTlRVGJ3ZTFtNjZYVGI4bEs5SjdQNFQydjRVbE9T?=
 =?utf-8?B?MlVFUWxRR2VjYkw5b205MWVtZXJ3YWtzNmw5Y3pNTkY2cExYdnFYNUEzWFEx?=
 =?utf-8?B?SmIxOHVybk1iRWg3Y2x1aEVuYkd2VklzckJRZERyTkJkVVVZMnFUMUZrcS92?=
 =?utf-8?B?ZGd2aDNvN09zS1VCZSt0aFpTV3ZKMDFNS0JKWENsS2dIVkREVWI2Z2VOSzdi?=
 =?utf-8?B?RmpxejA2d1JFU0JHaTYyQjJiVUpXQWJTSWd1dytXYUIvemlYditRN3FwdWFF?=
 =?utf-8?B?cEZKRURYZ2JJZkUzTkhuYUFGdC8xTmdnUXIvTldMNEJjU0xZRkV4TVRoSTFE?=
 =?utf-8?B?VlBlZEVzZFp3Rnh6K0lKSGRWYU1oQ3JJSm11eXFjMnAwdmIzSUR4V2pmU0VP?=
 =?utf-8?B?RjRmTnNheVFSY1F2WWFtOXcrTUg2dEFKMTRHM0lRVzFjZDFWcGtWTjF4Mm9X?=
 =?utf-8?B?VjZoL05UUllFSG1yYzJBMjFYQmM5K3VwUUVXTVNZUEpYS3dLNENuOVpUb1dk?=
 =?utf-8?B?Z0JaQWozUThCK3FHN1NnS1FjRWVlODg4VUV4bHcvOE91eExIMUkyd2M3SGd0?=
 =?utf-8?B?cTBES2ZOMytKWlR4TmNLUDVURDQzVjFMZVdzQmtaRFhYalQwZ2h1bmtORXVi?=
 =?utf-8?Q?DcQbQlWjX9Q=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH3PPF517B7003F.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N0JqZURndVdWaU5pL3VvM2paWnlsK3Brd3FwUmtkcEVnMFgxYjRCUGhIZ3BJ?=
 =?utf-8?B?MnRFbTVySTY3UXB1SW1GV2xJYnAxNklQRkdPZmFrdXpxbk05dFFTQWVrRjR4?=
 =?utf-8?B?U0VvVHI5NXphUXdhRVZET1RpTFRscVF2bDZzVlpkaGdiQld4MTdPMWhMS2lK?=
 =?utf-8?B?ekNIbkViamxxWjV3SEpsOXh3cnpVTDF3a2cvNTU1dE9OM2o4aTRpU0p4dTNG?=
 =?utf-8?B?NUxUaW81aU1ORjZLYlhUU0NValNuWFJpUnZXRGVHcWZrdjN3TDFoZ05EbENC?=
 =?utf-8?B?SDNkMkVHQ0FERDB0V2JndWFILzdRRVBYMzB5MTgwc1pnV3hlUGlJTC8zSXBO?=
 =?utf-8?B?cHIvei9CV21nY2VUYUVXdVA5UFAyRHB5Q1BBOWJ5ZEFnbmdnRFd2NlBTZ0Fl?=
 =?utf-8?B?ejl0Z1h3RFpDcXVFUW13bVlsWkhxTzdtVHJZUFlMb1FrTmtIZEM1ZVUvTU4r?=
 =?utf-8?B?VkR2UmdhRFdrUEFxdmFTQUJ3b0tyZ0NZN3RQVlVLOG5TOGtKeFM5VGROUitX?=
 =?utf-8?B?dlRGT2R1OXFzTUZOTDYxVEVzV0JEWisxNWZma1JzWGNwaEcvRG55R1dHMlVu?=
 =?utf-8?B?YUZJN0cxRkd5QUpucXdmejBFOEJzWlA4NmZQK2YwRURDOXdieG5aVWZPUkQr?=
 =?utf-8?B?Vm90SFIvei9wNk9CbU1zTDNFemgzcUNhZUJocVlFUXlFdlNmV2VXa3NRZXI4?=
 =?utf-8?B?U2NVWDQxb2lWMEh1MXdQSHhjeCtCWkEydms2cFlLeGxHRndUazhOQ2dxUXh1?=
 =?utf-8?B?Z1ZoWXlvZlZ2a3liV2pMSHhNWHZhZjZiYUw4WG5yQjJJOU1PazVoSDg2V0ht?=
 =?utf-8?B?dTZTLzJhbnNBcUlRa0pqQmNLM29VL0lRSzRrS3N2ejZXVXRuRUM5MFB2NTFN?=
 =?utf-8?B?bml1dkFXaDZmaEcrZ1RWOERpajh6ZExaT2xnQmhIU2llc21NV1p5Yk1nUGhj?=
 =?utf-8?B?cmRPZVdkRlc4MEc1MlVvRkdITS9ZWVNsVDRsUWRQWjhYSG9pQmVPWFZxTmNM?=
 =?utf-8?B?QnEzMWNjRzcyb1gydDlsUGhhTFNyRnFQMDBjZmUwTVUyS1duNTdKNzRqTFox?=
 =?utf-8?B?dnFZcXVrbnJkQTlIc3EzOWVHY3VadSt1M1U0T3FITkwwMlR5ZHJrU1FmSkRj?=
 =?utf-8?B?dk1acythTkozeE8zWUFBOFZ2eW5ZK1ViQ1h1TFBWWXRTWjEzS283SDc3Q3hj?=
 =?utf-8?B?dGJpbDlxY2lJc3l3ZXRjWWlqMlR1MlVldnd3a0M0WWl0MmwzOWtMRHV6ZVJQ?=
 =?utf-8?B?UUp5RitkdGxSbEdqOGZER2l5N2V6MGdvYjNZcHJSMjJJaGxoZWVDeW1mcU1n?=
 =?utf-8?B?ZUhURjdsUWZFblArOHU0eWM3ekNhRzJZOSs3VXpsT2o3YnIyaVRKcm02Qnda?=
 =?utf-8?B?ZXJVd3ZqNWJEbWZ6bXpHYmVURHg2eHlabTVxOFlPaUhMSisxSGJ0eXFBWWE1?=
 =?utf-8?B?YlNtNkdld2R3U2ZOVjBCSHJ3RkI1VHgzd3lpZVhOUFA2NWNnYWNtVmtJVGpp?=
 =?utf-8?B?bnB6elJIdGxNcUo1NW8rQkhNUVlEOUkvdWU1eGI3Q2Q3TFF5Y1dDYWlqMWll?=
 =?utf-8?B?SC9lZGh3akdCN1JHWURtNEFFbitFM2Q5Q1FoYVFRaXdGR00xWEhSa1A5U2hp?=
 =?utf-8?B?NDliTFVtbVFxTVZJMDM0T0N4TFdIeHZ2U2ltYmN4SHRScEdyTUo1Zmc2SW1m?=
 =?utf-8?B?YldCMGZaMlVrVDZpOXhYNzhzdkx1VWlyL3lhOUNnVXZVVkxSZ3MyTGlHUnBn?=
 =?utf-8?B?eW5HOW5tSVh3TU5id0IxeTVFWEJnbC9Ta25BWG5La01DMzhhMFRSaG5IRkVP?=
 =?utf-8?B?Snh2THZmNjlKSE1zWHppblcvcHowbC9wS2t1TS9raU5GSWZtRHdhM3E5T2Q2?=
 =?utf-8?B?VnZYdFB3cXJ1Lzd1UWkrOWN1Mjhsd3Z2blM1Ky9ZWWZha0ZESHRXaU5qaDQr?=
 =?utf-8?B?NUlvMWtzTzJMK1B6SmRSbFdjcHpySzUvT0RIclhZL0xha2VNVk9kVWxRblFr?=
 =?utf-8?B?alVITms3Rllhd2lYQlJIeFlId01LVkxpcXF3dXlhL1NYa3dZeVF1cEc1WlJx?=
 =?utf-8?B?ODZQZUhtUk5nNUxhcDV3b3VyNHc5Q1pBZDhjb0xmOVZKQ0xqdU4zQ2QxNVZY?=
 =?utf-8?B?a2t3K2llVUNVQkFERE55S0toNndDLzBxVHpkZ2FzdGJNTTB4VkU2emsraWNW?=
 =?utf-8?B?K0E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: FE/e2C/LbkiA6+BJWq1x9pQhRRMMIFKLq2LeerzcTiJBy/2BDQRhKTDQBBjCTEm2OW1tBvfo3IWcQ5i29Kdt9QGCiHw5tzoKQmlPNL0AHVkYv+fOLKpLPM0GNxP5NKqShAi2bhUZtECTZH/LUz8cuwDg72pOZEcCZXhBN8yb5RG4r4lfIEWTbrjLXCviBX9KXj1qs4kEZ+s0BokM82H1Iamz1j+cl1uAuSv9tB1Y2QmGIlGBEgOXUVAI40m7N8GkVqC6ABpQD+/h7dtnllMnqpg+JbG5SZeUN8KwSuHjadcSLVlyG6Z/grUeHc/CB2XlWqxuw8+40TAjfFrlclJKCabYuHLlngmsz4Q/IAgfaiFop0Anc5X3wrrbI3cnsQZT1j1JMCMGJUdQeit6CEZUYvOHHQFhJo47LkgKES1P3fHh17f4LwheaMPP3cBK+MiKM0FMnY42yUA9WNujyxclMpqYsqCKM0yfT/alGqhl1PPnr9k9MaU+vMmyEDGSDj8gQ5x6aS6JEuLjJsAaRz+QNGVRUrcVIWOGMqFuj3ww3T1JHYgVzPyCsNOgs98x614rTmpkdcVwgVrm4gaYpAgHhuQ7tkTQgkVGXmNYTZkAtEI=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3351b693-a7a9-46c9-04ff-08ddc0baa13c
X-MS-Exchange-CrossTenant-AuthSource: PH3PPF517B7003F.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2025 20:36:36.0182 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jsggycGZrzqfB9CZ+/ef1RYOTbg/zAucW5sPF0mhHX9PYBgNVCVEjGwLqG329iQoLqUacafSS5/aQ/FNKAJSTSnhG8o1FVTG7ejtE3bcx6g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR10MB4914
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-11_06,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 malwarescore=0 mlxscore=0
 phishscore=0 bulkscore=0 mlxlogscore=999 spamscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2505160000
 definitions=main-2507110154
X-Proofpoint-GUID: 94IKHxAJbAyheDLNfcqLXm1AwMnVclPB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzExMDE1NSBTYWx0ZWRfXz8L/a1KERmuy
 4/8gEvXdplqPcDxdkTJoBc0O0G0rK5tRHC5kfMAWcJFubhKJtBLYzaOkV9s9BDEuA1A13Yr+iIF
 gVkd2KrVE2CkguGZVfCPKDg9hylqaIIT9NhTXGmTflFzbeI8GKwkA9PrM8I4Ex5e6ZzQnaYLNg5
 5Elvg0d622USPndpD20Ttf/Ct/cSrkSW3hpalaIJuMT4YDzJGf9G5yLjyLzt0AbXEXwezAApT7O
 f/dtRrYoZx1Iz3nAKGCy06nmh6ovgnVatAih+nEpF3eDaIhPPIG9QAKlBDayy1bH3UoQ7EIvu3J
 7+bxY4jYxoZ69+UwlcMX599DulHPCb8xf38n0RC9TYImJ6+KNGmegWhTkg5vn1XPff0fXD+EZqd
 sf++aMDV8heUhGYms0T8OqHVWlvY5qtPWUVljiZjWBrl7orZM86M0Ye/97EhIhCxEhvAKKvR
X-Proofpoint-ORIG-GUID: 94IKHxAJbAyheDLNfcqLXm1AwMnVclPB
X-Authority-Analysis: v=2.4 cv=OIEn3TaB c=1 sm=1 tr=0 ts=687175d7 b=1 cx=c_pps
 a=e1sVV491RgrpLwSTMOnk8w==:117 a=e1sVV491RgrpLwSTMOnk8w==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19
 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Wb1JkmetP80A:10 a=GoEa3M9JfhUA:10 a=2n53oO-IGR7rIP4wU84A:9
 a=QEXdDO2ut3YA:10 cc=ntf awl=host:13600
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 7/11/25 3:12AM, Christoph Hellwig wrote: > Stop using the
 obsolete write_cache_pages and use writeback_iter directly. Looks good. I'll
 apply and test it. Thanks, Shaggy 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 ARC_VALID              Message has a valid ARC signature
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 ARC_SIGNED             Message has a ARC signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.220.165.32 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uaKUG-0004Ai-91
Subject: Re: [Jfs-discussion] [PATCH] jfs: stop using write_cache_pages
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
Cc: jfs-discussion@lists.sourceforge.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 7/11/25 3:12AM, Christoph Hellwig wrote:
> Stop using the obsolete write_cache_pages and use writeback_iter directly.

Looks good. I'll apply and test it.

Thanks,
Shaggy

> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   fs/jfs/jfs_metapage.c | 8 +++++---
>   1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/fs/jfs/jfs_metapage.c b/fs/jfs/jfs_metapage.c
> index 9029cd216912..b98cf3bb6c1f 100644
> --- a/fs/jfs/jfs_metapage.c
> +++ b/fs/jfs/jfs_metapage.c
> @@ -421,7 +421,7 @@ static void metapage_write_end_io(struct bio *bio)
>   }
>   
>   static int metapage_write_folio(struct folio *folio,
> -		struct writeback_control *wbc, void *unused)
> +		struct writeback_control *wbc)
>   {
>   	struct bio *bio = NULL;
>   	int block_offset;	/* block offset of mp within page */
> @@ -550,10 +550,12 @@ static int metapage_writepages(struct address_space *mapping,
>   		struct writeback_control *wbc)
>   {
>   	struct blk_plug plug;
> +	struct folio *folio = NULL;
>   	int err;
>   
>   	blk_start_plug(&plug);
> -	err = write_cache_pages(mapping, wbc, metapage_write_folio, NULL);
> +	while ((folio = writeback_iter(mapping, wbc, folio, &err)))
> +		err = metapage_write_folio(folio, wbc);
>   	blk_finish_plug(&plug);
>   
>   	return err;
> @@ -813,7 +815,7 @@ static int metapage_write_one(struct folio *folio)
>   
>   	if (folio_clear_dirty_for_io(folio)) {
>   		folio_get(folio);
> -		ret = metapage_write_folio(folio, &wbc, NULL);
> +		ret = metapage_write_folio(folio, &wbc);
>   		if (ret == 0)
>   			folio_wait_writeback(folio);
>   		folio_put(folio);



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
