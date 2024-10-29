Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E77849B55AD
	for <lists+jfs-discussion@lfdr.de>; Tue, 29 Oct 2024 23:19:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1t5uYU-0004V3-Hw;
	Tue, 29 Oct 2024 22:19:13 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1t5uYS-0004Uw-V8
 for jfs-discussion@lists.sourceforge.net;
 Tue, 29 Oct 2024 22:19:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2jd7HBjFjZfZayYIy+nLAo0xO0dH3w9xlEMZUOVRpMo=; b=G1RHF19WmFEmENAYxSXWPkRaXz
 /YwnJZNl+ia6N4YHTdLFhGvsb+wsXyorjddn6D3o37sFKrPvqbgSfRzn8Z5Yo0mN8PkJa+uXpkmJF
 KVDPvD41sqqMNaDsDYHSxKSKoHKgE6GyhvonLz7gnFJTIZqZ04TFAJ+qGFEZAYaTPJrk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2jd7HBjFjZfZayYIy+nLAo0xO0dH3w9xlEMZUOVRpMo=; b=QD3mfDNv2X7jC1NljyS1atJ3G7
 JyQNnX7vbu/yzrWyMh3J5p9GpcB/W6bQdmGA23TW46sKYpco2JJp4nFxK4OGzFy0v5Gotrmmbp0bF
 X+pkRAoEeYF0YHFuvJS0sx9s65BIXDu0L1teARAKTsROXavxv+7c4SBaW5FqR0vBH+U8=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t5uYR-00042M-N0 for jfs-discussion@lists.sourceforge.net;
 Tue, 29 Oct 2024 22:19:12 +0000
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49TGfeU5018834;
 Tue, 29 Oct 2024 22:18:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2023-11-20; bh=2jd7HBjFjZfZayYIy+nLAo0xO0dH3w9xlEMZUOVRpMo=; b=
 SGSmAAZYLcJyly2pJLft0PJQMN5PijfejKGx4S7PjChnhmUUZbmRZVupBvZBMmvF
 gMchwLxRVwr+N+RDdDADWhv5q3wmbE1QQe8gYKIrvJ27F9XE9YZv8hpOyKG0dd0B
 B4aPbQFaQ65GGT7uk+T0B9TKg3FXhkkk8NF6fX59pU1Rz/A2RvnmAWXJNjnr++sF
 EwXRKrID13/8ByEhyD+0JITAW6Gcxg2z2DqTf71haEHiV5d9SSDGGksKFFaouH2M
 qfYJTB/e9fsCLyU01QSxu+J2H5Mw46ZsibP9QqLro0vdW/uCxbOwivVkHNiHjltw
 fmkUq3JDPkH6LRmOvN2New==
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 42grys6r0e-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 29 Oct 2024 22:18:54 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 49TM6SaC034753; Tue, 29 Oct 2024 22:18:53 GMT
Received: from nam11-co1-obe.outbound.protection.outlook.com
 (mail-co1nam11lp2171.outbound.protection.outlook.com [104.47.56.171])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 42hnd8aupu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 29 Oct 2024 22:18:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T68+Z+Wp3vvkSrjt2Yt1vedTylH3re5aQlTLY20ISCUyfZGJLJth4EOuyCLk2NU/wndGEHsPDD4c+pCvgSQPpujtMiGIFc0spgBs0F+AtxymNZ7XJ8cFxWZqvvT69TGuEKU9XrGMLmAVvLJK83d9+wirkEww1R8cG3OJiOrGkqmHrJeRkmoVcjAPA9QWR2zKhqzpSUYeaj6vFssX+ko4kwsGjdGRFj+OU+Gf6bJnLDZEB/h30RNuh0e7YtgSTvwtkzL9E1dblomRUU0VzqpHTkoaq2JT+t+kTfTelGoPrnAS6Uh5043QK2QRSw+IUA4iuliRYempAOrDqqT1fwZUTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2jd7HBjFjZfZayYIy+nLAo0xO0dH3w9xlEMZUOVRpMo=;
 b=JgpRGCEXkURgIwIv9+dPoOZpcxF4oulYvwrHyxBmpF9OSKhdWn6WUC9Yc03Q5bpiRhmewj7M9pVwEiLyGVMILPUiCZ+333PI/1DfCpfpOZX+pS6HNahKTeb5H1rRRrLZi8+1Eno4Nh/5wNMJ53oXjyjrpEppCeCqToatBDQIIRtS/m5mGx20yqnSb3s/ohL9JB18T8xHpqwFHN+1QW0Srpj5DIy3xNUkyBA5g3Gt3uP9H1jayiivu6GJHBgS2TM9DU9LkQQc5hEWx/1tQVDBbjSyxvphSSBL8ZFISiOmR4Cq2wRIjVe+vfxx4GLnBHEPIz3lz0ByYO9F8gHVCy79kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2jd7HBjFjZfZayYIy+nLAo0xO0dH3w9xlEMZUOVRpMo=;
 b=mCuc4fLDPMBmB85cpk/6kbkcE8g5fFK2bZ0sxNnlMN3fzsHeD4lig9oiManTXzwtOR+wEYnv3VK9ChHHY2hl//38PXREOp8Hv9eT6UtMmIGUQit9BCExpJYYosVTU9mx+5CbLN7IoppHPxNopNqc6WAIgBm1pRE5tfEovhoWnQo=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by DS7PR10MB7324.namprd10.prod.outlook.com (2603:10b6:8:ec::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.27; Tue, 29 Oct
 2024 22:18:50 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb%5]) with mapi id 15.20.8114.015; Tue, 29 Oct 2024
 22:18:50 +0000
Message-ID: <d52ae3e1-7ef9-4d31-b463-dec0e2427210@oracle.com>
Date: Tue, 29 Oct 2024 17:18:47 -0500
User-Agent: Mozilla Thunderbird
To: Artem Sadovnikov <ancowi69@gmail.com>
References: <20241005100658.2102-1-ancowi69@gmail.com>
Content-Language: en-US
In-Reply-To: <20241005100658.2102-1-ancowi69@gmail.com>
X-ClientProxiedBy: CH5P223CA0001.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:610:1f3::27) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|DS7PR10MB7324:EE_
X-MS-Office365-Filtering-Correlation-Id: d0d962fa-d295-4fce-b534-08dcf867aa30
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eXBtTmZXbW4zc1FUUGZsS1djYmxaelhVTVViUFV5THRXMUtWcFVKY3FsSXA3?=
 =?utf-8?B?R1lkMnJzaTAvdmFTL0dhTm1qb05naVR3U3l2amVKU2c2dlB0dVhsUXo1eENt?=
 =?utf-8?B?R3M3YXJyR0FFQ2kyNGptczM5MzRlWDhYczFSUTNINHNEalRxeUVJVGIyYys1?=
 =?utf-8?B?b3REY0pTWTIxNVg5UUNZR3Qrb0ZNSmNtbUk0WHR2OWNmOVRYL0wvTW1KbTBl?=
 =?utf-8?B?NE11NmU0UzNHYjhxRUZRVUJHMHorUklCVkl4S2p3aEJaYXJLS0d1MlRleHBZ?=
 =?utf-8?B?TU02UVZUWVd4UFVyNUtYNHh0UFBLbGxtL2pBT0hnSEwwdWtnMmwvOEtReFZ1?=
 =?utf-8?B?aW56NVFlRWFOZ3RRNG5jOGcxZ2VUYy80WXo3cWE5RWx0ZStud3BlcmhtN1BI?=
 =?utf-8?B?VGM4ZUUxS2JPZHduczhBRG91YkxCQmVFQko5QlhiU1dvRldqZUtNcjBZRGow?=
 =?utf-8?B?eUxSbDkvNHNZbnZ5RVhMMERZak5Vb09DbUxqU01NV2FiUnU5dU12UDRoQ25r?=
 =?utf-8?B?dkx1ZFBjeGdvM3V0TkgydFZlOUFoaWxkZ09nU1FEdXJyc0xMS3R1TTQ1VnFY?=
 =?utf-8?B?SFlVT2I1TjJVMlBxck1JNnJ5eGlMZ2QvY2N5ZE1BL1R5dDJiSUhmMUlNSUtO?=
 =?utf-8?B?MmFKdzVVbEdPVVNyYVVZS2JWUnJlMUN4dmlsSW1lTkl1MW82WUtiaERmQ2Va?=
 =?utf-8?B?aWVPSlEvQnJaaUxzNEJXVmZYbHB5dHBTWlpkNTRQTXdGVkhQcjJNVVcvQkYw?=
 =?utf-8?B?MU53cUJrd21kYTNZUXg1bHN3VE55REY5NmJlQUdReXlnSkZHdGVsNU05dEZ6?=
 =?utf-8?B?cm94SHZkajdzbnFPVjN3T0h3Mlh5OFc5VkRkeU0yVjhUQ0lrOTU3MUVvTUts?=
 =?utf-8?B?d09ROXlDVWh4QmJYdys1dUFHOHRHMVUzSmp2YnFlZksrZFA0anloTllQdkhl?=
 =?utf-8?B?YkVDcW1nd3g2NitwcVpDcWVLOGxtbUVlRWxqNzhCb0M4VEgwdE9jbnJ1NG9q?=
 =?utf-8?B?RkR5TUpha1dSdGxpZWNCdnZ4OW1vQ0JxMnhxRksyeHZMMWZyUlFRaFozM3FP?=
 =?utf-8?B?NGlhSUhnSTduYkxUZHMzTTNhQVZ6bS9HWlF6ck5rKzd5R2xTMjRNcWJQdmE0?=
 =?utf-8?B?azY0ZHM0Z2NSUm9sOGZxaHZRcEFEdjY0YmUwZjVhM0FTQlM2OFNWMnNrUmN0?=
 =?utf-8?B?Y0RIczV2d0o3Slp5QnBQcWVnS1MxU2dFQ3I5TnVtZTRDT3BEMVZEZEd4WmI4?=
 =?utf-8?B?a1BTRGZnMVR3dDF6UnBhWEhoYTZpcmRPYklaY3lJeTJXUExBSGkra1hCNHBR?=
 =?utf-8?B?cXdIRnVhNzBFTm1GaTlqTWZHOE1rcGZOQ3c1UkR1OU8vV25nUmtZdk1weHBF?=
 =?utf-8?B?VmR5QVJzbC9RelNhU0U3dWpzVStBakIwK2tHVkNia29zRkJwMTFrTHNUMFVN?=
 =?utf-8?B?d0Y1VURWek0wbC94NG44aXVPV28vcllhM1ZpNnRBTWNIaGJiK05ZdmxkNFJY?=
 =?utf-8?B?TXhvQ3NUcHN5SFZHd1NXd0ZXMDVxMmE5WDI2anhkZmd4cFlJcjdTcDQwa2pQ?=
 =?utf-8?B?cnliTzJHQkhPQmNyWDRkRWFkVnZkZkR3THF3L3RxdWJ4aU9ueXZHS3V1bUhj?=
 =?utf-8?B?MWZTQXFwSnd2Nk5Xc3FaTUE0RnJLOWFMSjJiTkoxR3U2ZGNtMmJJK0s1TS9z?=
 =?utf-8?B?L2RWWE1ERElFZWhud0hVdjNsK1hsM2kwSGdlYVg1QmNCVWhFUncvRVM0aXo3?=
 =?utf-8?Q?ZGtPEyygpk/DsOL6+vRFE4pcPgeLBCJ6EPDcV5K?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NW0yaUlLcTNkTmJQaVc1Vmt5SUI3Nkl4YVc0WFJHRm9xa2xhemR6Mk43Z0R4?=
 =?utf-8?B?MWhkOFAzaUJUanpYeExCOXdYSE5qYmRQWXFkU2dZMENBQkxuTkViV0JsNFpn?=
 =?utf-8?B?bHhCV0dQWi9PandrZC85SkJ0L2Z3dllheHdpMlV1Q0gwY3pVajhzNkxkbE5C?=
 =?utf-8?B?My92R09vUElDZ1hKaXoxdWhJdnBvUjVoT0ZTeFFjQldmNFJIb0orcVY1M0hi?=
 =?utf-8?B?TjJjTGNFNkVYR3ROK0Q2Vm9hQVIvZ0tUVFZla1RkZ1lmM1ZjODhIcEs0MXZ6?=
 =?utf-8?B?d3pjSis1bFFzTE9rbmQ4bnF6V2w5T3R1OW9YY1RPY1hwRXVXUW51V3BwQjA2?=
 =?utf-8?B?ZW5ZNFpRU1dZbEZYdkl1UFdQOVRtL0wvUEtKbzBGRUJiRlZDWHB1UjhzNURi?=
 =?utf-8?B?WWNNK09WaTR5cENpKzNvWVNFSjN1K3dkcVM3QklMMm1IRzIvUVRWWTdvbGlU?=
 =?utf-8?B?VnUzd2Frc3B6QXpibEliN2xUWHZFZTFuajFSRDhnTmVuamFUUThvMi9weEor?=
 =?utf-8?B?dlBxQkh4QXlsY1pSR2hIVVdKeDlzZXdTSTY5eFJSRHI2a1hKeHdvMGZQNnRR?=
 =?utf-8?B?OVk0SnNEL0ZMVGo4b0NhZDY3cXFKNTd6ZVZ0bEE5ZDhKR3ExWFRmZlhjMzR2?=
 =?utf-8?B?MkNaYWtVaURreU0vbTRWekVPbWRIQ05ZVUpjRWg5WVpiV3k0RWo1TzVBSWZP?=
 =?utf-8?B?QWNNY3FLZ0s1LzlaMTh2RWs2SVYzR2RycXB3U0ppS0VVeTVEUU1MMUZHZVlx?=
 =?utf-8?B?Mmg5V0NMRXBscTBKb3BPUW13REJsbnJwMFIzY0hmaUswbmRUMUFEb2R5T1ZT?=
 =?utf-8?B?cTBqSzBSVHFWdGVxS3R1d1gvMTJGeW1keHBvcnNDUVdxR3hnaVBqbU9DWUVD?=
 =?utf-8?B?ei85cVhFM1VPdDY1MDhlTVhteU80UnJ3RVdDVVo0dVNCdEVYckk1Q0FkbUsv?=
 =?utf-8?B?QWN6ZWNMY1VOMXljaHROSnpmdFFCYVdYMDd2NXAzbGVFd3huWWhSSno5ZFk3?=
 =?utf-8?B?WXlDY0lFaFdnV2NCOUZ5KzZ6c0x3TDFtdGIyQndZbUZOUHdjTUtCYWg4RVlC?=
 =?utf-8?B?UjdNN2tpRW9BdkdDR3JtRUVBRDVkQTdQWUgvY2ZlSzBqOTF5L3RydDhkUE5n?=
 =?utf-8?B?Zmo0WGoxSldHYUxyaVVSQThHOEdzTVhjK0NzaXNzSjgyazh5MDdab0tTTHMw?=
 =?utf-8?B?QjFrbUhNUFZtQ0hjRWc5T2VMSG5YVDMyalc0MmdiODYwd0NZUFRrL3o1OW1S?=
 =?utf-8?B?N3VzUlBudGhoSXF3SG9KdjFlQklmcDBSNEtxM2tWa0FWUzQ2QzZIcDU5M3Vp?=
 =?utf-8?B?MnhNU0IzWHRMUi8xQ1hFbzZZNm1EVFQ3NjAxOFUwR2RWK0oyNUpiWWR2dmdO?=
 =?utf-8?B?YjZRcjIvdnRiVjFraHFoVDVkY1A5V3VyOWt0R3ZBOVpSL1hQMDRwb3l1TDFY?=
 =?utf-8?B?Zk5mUUEvNTFYSFZ1TlRyUVFtNkk1aGJ6eitka1RqcWZ2QkszaFVrYTlpOTRS?=
 =?utf-8?B?amlqWnJNZlptenhrNTUwUlJ2R204Mm4xbGhCSDlleUNNTVhZTWp0TmNuOHNz?=
 =?utf-8?B?K0tGTmNRSEJGVkllMW0rZDVkdlFHYVpHNDNXNm1UWUZMZC9vVXZGd3RJSndD?=
 =?utf-8?B?TmFydGs1ckVOTVZ5aXU5RzZCaXJ0d2RjZzEyM3BFS21pV0hFOUVuTFdNcUxH?=
 =?utf-8?B?ZTJvRkFWYTRybGZQelpOVFlNenJEeXJTdkRGallZK1RMekd0ZnMzM3p3Slpw?=
 =?utf-8?B?TmU0UDJFSExxM0w1RzVzVW8rRk1scDA2aGZBL3NFckU0ZEhqOTdSZTdKQmFF?=
 =?utf-8?B?MDUvYVZPL0VrWlo1R3hVY3o5WnlNWnNQZEgyYkxna0RUWDVtTWt6L0kyT1d4?=
 =?utf-8?B?MU9TM2wrZmdMcTVkbzdTR25yVFVMWFVBaFhHeGlNMlVVY0pYUzcxS3c5d3Vq?=
 =?utf-8?B?YjUvZ2dvYnhra2ZWUHZRek90cjc3UDRBR1VCL2hKWWZzbDJGZXorS096a1o0?=
 =?utf-8?B?SDh4MkpVL3M4ME93bmI4ZXN1NkxwWFhJRklPNUhBNzNHNDFtVVhnR1hSYlN5?=
 =?utf-8?B?SFJHS1NxYzZlbUszNi96dFdjRU9RTXhrSnAvSlhCdlFlbG1JbUpzdERLRWRG?=
 =?utf-8?B?TGNVMGdtQkhRcTJlY2x4Ni9rR1FuVEZDeUJJS0tqL05pMzVNamt6Vlc5eFhN?=
 =?utf-8?B?eUE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 3M5eq3zwkgaNa5q3iK2aepJZCxCeLXybgtUg143Z6AOUcml5m+A4Nvb+gosH4oeXoo09/19nQYrRt5cRQjek3TgiOQ011nCOWMGDlrF0a4+XTDmxvEriOnsmBNYYrsiJxTMPo9WVXuwIBSWi2A7B6+8UEeCxM9Bsd1cWrXRp30YvFyO+UvkmmnEUfpkqaht9VBKQbC61wYXNdHqmmsC+Dkeb/XLqNmFau6Vb4vMN85rGCwYEYT1aHfi6fQ3oAgeYoEMZ4axhPQUD8fd8RuQxpFZQw4FMqr0u7QwXShZcVvHiK7UOzaO4tz7gyyMrxLynJWiOBibzyQDlX3pBk3S68ErPmMMToFqfPztd9Uwzc7YwLIiN66TlUsTLfNd5inl/Vv8Ziw1fbyhe5jz3CwNm0jdmOOmmeDNWyN9d7XTjfloFsLgSYct0T4lhRJGFbbGzl87NAkl8240gqga2kxmrgbVyzS+bjpIIa1Nwuqly3ZFd4zCDlJpCX5jtvOfLWEfm52EC5lF1zEUrBbVKgh3TC771EjpTij0RkizIiz5eBPleY5RfiPxnjgJg4kxdkVW7m17obHodkGGHzoGsNOCgtvS8Mv4B7OeCiROwdlU4ChA=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d0d962fa-d295-4fce-b534-08dcf867aa30
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2024 22:18:50.1754 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pXPRxHfY3IiL4mcvUUXmz1gDcH4KuKMV40ZsUz3fH7fAeg715Whz3M0HIxpeQToNRe26AVEzK4U14HM1WqvRdbcouWGTl0KeY+ELGSQu2Xw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR10MB7324
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-29_17,2024-10-29_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 malwarescore=0 spamscore=0
 phishscore=0 mlxscore=0 bulkscore=0 suspectscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2409260000
 definitions=main-2410290169
X-Proofpoint-ORIG-GUID: exEFJVGxQKvkDdAOvUiSKrQ20TVtqNV1
X-Proofpoint-GUID: exEFJVGxQKvkDdAOvUiSKrQ20TVtqNV1
X-Spam-Score: 1.6 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/5/24 5:06AM,
 Artem Sadovnikov wrote: > Commit 7c55b78818cf
 ("jfs: xattr: fix buffer overflow for invalid xattr") > also addresses this
 issue but it only fixes it for positive values, while > ea_ [...] 
 Content analysis details:   (1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.165.32 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.220.165.32 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1t5uYR-00042M-N0
Subject: Re: [Jfs-discussion] [PATCH] jfs: xattr: check invalid xattr size
 more strictly
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
Cc: Christian Brauner <brauner@kernel.org>, lvc-project@linuxtesting.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 jfs-discussion@lists.sourceforge.net, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 10/5/24 5:06AM, Artem Sadovnikov wrote:
> Commit 7c55b78818cf ("jfs: xattr: fix buffer overflow for invalid xattr")
> also addresses this issue but it only fixes it for positive values, while
> ea_size is an integer type and can take negative values, e.g. in case of
> a corrupted filesystem. This still breaks validation and would overflow
> because of implicit conversion from int to size_t in print_hex_dump().
> 
> Fix this issue by clamping the ea_size value instead.
> 
> Found by Linux Verification Center (linuxtesting.org) with Syzkaller.
> 
> Cc: stable@vger.kernel.org
> Signed-off-by: Artem Sadovnikov <ancowi69@gmail.com>

Looks good. I'll apply this one.

Shaggy
> ---
>   fs/jfs/xattr.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/fs/jfs/xattr.c b/fs/jfs/xattr.c
> index 8ef8dfc3c194..95bcbbf7359c 100644
> --- a/fs/jfs/xattr.c
> +++ b/fs/jfs/xattr.c
> @@ -557,7 +557,7 @@ static int ea_get(struct inode *inode, struct ea_buffer *ea_buf, int min_size)
>   
>         size_check:
>   	if (EALIST_SIZE(ea_buf->xattr) != ea_size) {
> -		int size = min_t(int, EALIST_SIZE(ea_buf->xattr), ea_size);
> +		int size = clamp_t(int, ea_size, 0, EALIST_SIZE(ea_buf->xattr));
>   
>   		printk(KERN_ERR "ea_get: invalid extended attribute\n");
>   		print_hex_dump(KERN_ERR, "", DUMP_PREFIX_ADDRESS, 16, 1,


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
