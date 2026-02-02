Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cC7CIXDggGleCAMAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Mon, 02 Feb 2026 18:35:44 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC1FCFA5D
	for <lists+jfs-discussion@lfdr.de>; Mon, 02 Feb 2026 18:35:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:To:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YmwQMpXFSRaB191jdtHo+xozf/v2rLBRcsZxeCLZc6o=; b=mdo7GtbvT88hFR5TY98z0soiwK
	bPrG2FEvKiHYfAwsORtA0u6eXB3ghL25mJEZBO0Pgaw7VjRlXiH42UAnxzfsichnY4L9o0aksd9il
	NYkGFw8G5iu+KR46gYILAQFF9se8k7yyOKTLlw+GXFs1QkFF465z1H3yRxN0KbIVEBYg=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vmxpD-0005Lw-LT;
	Mon, 02 Feb 2026 17:34:59 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1vmxpB-0005Lo-QJ
 for jfs-discussion@lists.sourceforge.net;
 Mon, 02 Feb 2026 17:34:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=f0szo/RIpCBE41M0kbFNDN2O4NI5EIK8KDtHLqxgSjE=; b=c/WBUnSAmwRPuzdgpuZkv8BKfi
 jnOH5ZssliXoq6Xr3V1Q6bw6dvVQXTIS+WWZWbZfqpA8xT25gMlkWGR8cUr6JdfjLFvvwvCmnDO0o
 pcOhdXZukVhRFwmV1HtDsKny3acKa5kxQcq4enwFn5Ec/mMSY8hoYhv4oilP4fBDou4M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=f0szo/RIpCBE41M0kbFNDN2O4NI5EIK8KDtHLqxgSjE=; b=O18m55H5L6bJNcf5tOlifCfI7d
 6OtJxyFgznR4AKmsheojnNjxRrJDS4IVfEC93+s3BBaqkw52fDo5Fs02CE9b5SkkxY/Ws3GgAtrna
 tXV0eCb503M8/L0XjAku83XjarKjnr8iz416ImJzgtEAXWLW5MZCBbGIxWjl6bBQCZhw=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vmxpB-0000f1-67 for jfs-discussion@lists.sourceforge.net;
 Mon, 02 Feb 2026 17:34:57 +0000
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 6128uPFc1383306; Mon, 2 Feb 2026 17:34:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2025-04-25; bh=f0szo/RIpCBE41M0kbFNDN2O4NI5EIK8KDtHLqxgSjE=; b=
 GdtExkeetLJ6PdbkAZgtYNxtikl5Up2k2hmrA9WU8rLnCYtgIRWuR1UHn9kRXlGk
 OVilMJXi+xr3KlxzYMyKRcFsFCuGw8Pu9wbh29WNvZ7Io/koRPjJnE1jOYR3lPqy
 6EUG3RVwKNon54+m2FuxXxRb7PM2SKo+cYQNUWhIINzGAuQPJtVdkutResYb9eTn
 RS4baQzD64YqmzZDJ3JLhxVzLnlKFu8ZjBDrzlwmm5C9ZX2azisfOCRrmp0fRFuo
 YnWeVRDYQ3E1pDD+pznupe8zYk9A2jFg2p+efVd5ZTv+ikkhQi5pCnMANBBBxz3X
 y13H70KVfQCjR1b2hq3xcA==
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4c1arhjmk0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 02 Feb 2026 17:34:42 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 612GeZD4025798; Mon, 2 Feb 2026 17:34:41 GMT
Received: from ch1pr05cu001.outbound.protection.outlook.com
 (mail-northcentralusazon11010066.outbound.protection.outlook.com
 [52.101.193.66])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 4c1868q0e3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 02 Feb 2026 17:34:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TWcEyNm+od3bTyTrYBgDgKMtU7hk1/8/OXrUfNpQnMiMoNpU2tGVBqG+RUXkCgF06Axm0ivI0igV/NY1+j6WMGPFq91QbHj9IyDresfW25ROb/kVkY2PpJzHU0l5AK3wyXsynV0nJzbpVBg/hkDGCURAHqyHFi4yOLF6BgQjfM5o+DCk5LkSiUPD4e0LiF79FuBkK6Ii+lo+XrFun7Q0pA7Yp0Qms+ZKB6Ey6AdrVPqgu6PLwYRUlXK8CHPy+GKhuX8YKqlFTWALq1anmH4L7uFnxo/NZRLDfGpb41LA1SEtp0GMLFvS2PtoLaS0OTj8s4MkPBag5eG6f4Vtung/mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f0szo/RIpCBE41M0kbFNDN2O4NI5EIK8KDtHLqxgSjE=;
 b=sS0YznYyfK3de4pW7cLZd62WQF+ejvlcL89e2ReN8aQJMMjHHVCWDmUSjiulEygXIH9qyWzOXbMS0wkGN4+5GBBiARYi8okEQ+BPFNBQ0cshHe5XfgUeORuyk8/DyUXQVu/+ZwsoVJrTg2IL4cwIApgYEMM53elR5M2xCi8so434Sz6lnfVG+z//25VUtolT/vTck204HhCasQDm04Jp/+s8Bps4cahSICUV+CzcGkP8IEB9J7/DG0xoBcf3zuaeeruyBcow6KOyIL2wwRH2RpTWZYOVIytj41Gmjw0VgD2T4qy9Y+M6xmyRCm2tfU1TyfPU8qeLFFxiIduG9fulmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f0szo/RIpCBE41M0kbFNDN2O4NI5EIK8KDtHLqxgSjE=;
 b=pB5eSA/9hIQQC1ihqeJq/z0yfrnfiPIAkXSYWUGoULto8VNmiHWUON6JgVnM8HrXQTUb0pJkQ9eMyZQso+jRIog/HBG+AiCDeqLKWredgr6WRyHvlVv8OKcYkJAotm5VI6NpRcPrWxGzVOgZUSFLwdMbiB+sODzbjEyPkNVjn6o=
Received: from IA1PR10MB8212.namprd10.prod.outlook.com (2603:10b6:208:463::20)
 by DS4PR10MB997647.namprd10.prod.outlook.com (2603:10b6:8:31f::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Mon, 2 Feb
 2026 17:34:37 +0000
Received: from IA1PR10MB8212.namprd10.prod.outlook.com
 ([fe80::ee8a:bd21:f1cb:c79a]) by IA1PR10MB8212.namprd10.prod.outlook.com
 ([fe80::ee8a:bd21:f1cb:c79a%3]) with mapi id 15.20.9499.005; Mon, 2 Feb 2026
 17:34:37 +0000
Message-ID: <fd1854c2-d3f1-4901-8b7d-c6ce944caf61@oracle.com>
Date: Mon, 2 Feb 2026 11:34:34 -0600
User-Agent: Mozilla Thunderbird
To: Arnd Bergmann <arnd@kernel.org>, Dave Kleikamp <shaggy@kernel.org>,
 Nathan Chancellor <nathan@kernel.org>, Zheng Yu <zheng.yu@northwestern.edu>
References: <20260202094958.1232478-1-arnd@kernel.org>
Content-Language: en-US
In-Reply-To: <20260202094958.1232478-1-arnd@kernel.org>
X-ClientProxiedBy: CH5P220CA0024.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:610:1ef::23) To IA1PR10MB8212.namprd10.prod.outlook.com
 (2603:10b6:208:463::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR10MB8212:EE_|DS4PR10MB997647:EE_
X-MS-Office365-Filtering-Correlation-Id: 95cbda7a-a246-4cb2-f243-08de6281569b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dVlHaXMra3F5ZjllZEkzM1Nsd3E3blo3dmRWMUJjYWZMOWJoWEJmcGhROWVJ?=
 =?utf-8?B?cUxsRjhLOUNWZVFFbmFTbk5hRisrSDNybFB1WGlVRGM2NXBIYWNyWFZ2ZTZE?=
 =?utf-8?B?bE1hQmNnK0RSa2tXOTUraWtxTVlNTHZ5LzFjc1M3RGJtaVJwQWV2emlGaHEy?=
 =?utf-8?B?WGJpdDFvM0dESWwybi9SNGNLQjU2LzBPMWlXSEVJMlJCZnBmbGpXaEc2UkVF?=
 =?utf-8?B?L21FeE1pSjA5aG1ReExacUhOQ2xjV0x0VitTd0tLdjRldWpJSFB3aHNQRHZR?=
 =?utf-8?B?ejdnejFPc0tsOTViQ1p5ZU9mOE9SRndIcjhhWGZpYXZCVWcxRVJXTWpUbE1L?=
 =?utf-8?B?UlJRc0xqMnkwTFRTRFM3YXo1QzVrc3FOSllMem1oc0o4TkJSK2JsSVRWeEJP?=
 =?utf-8?B?L2VlUWZ4ZWlyQWltQ1dUeitVUkFRZFJZb2E3UXErUE5jejY5MTZScUZVQ3A5?=
 =?utf-8?B?cHBqekt3WUtZNS9Oa0RaRnhIU0daSXpwNXdnMi9PNDhhb3JVZ1lDYWQrb2ht?=
 =?utf-8?B?ditQbUdxNWs2NGhpcUU0dlNWa0Iyd3ljZGZJRStvekhPU3M0Y0RmQ0luN1Zv?=
 =?utf-8?B?TjAvL1RxUklzUTVsYmMyWW93WG0za3lzQUlmWHFCUUVHQ1JoV1BVNXBEVWJN?=
 =?utf-8?B?TnNwaytTMUhnSXd3bnR5aEp5Z3psTVRoYU9ZLzJTWlBZNkE3MVRMdFJhaTd4?=
 =?utf-8?B?VDc3Y3lGdDhmYnZPMWRlbUZqcDdYR1BEVEtaN2o0MkIzSUtoSTlNRzRMU2NM?=
 =?utf-8?B?Rk96YlhGaTFoTUpJWi84KzJNcUl5QmYvOSszbjQ5WDhmeEJXSTk4MWRYaUNX?=
 =?utf-8?B?a3Z4cm9qWG12QklQNFpZKy9nV0g4WVM2SW1EaUF2ZWhwY1lFakM5R2JjM0d3?=
 =?utf-8?B?ZjV2dlJaWEFoM3l1ZHVnaXRPTEc3eEtyWE1kMDhpaTZjUlc3TTVxV2EvSTlq?=
 =?utf-8?B?aktZOGNlR0ZvaTVWcklncGJUbUwyQ082dFQ0cTd1SkxQQWlpNGxUa05adEhT?=
 =?utf-8?B?VFpGT1MzWUFhOWozWGlMcndWT0ZVaDJVSmIxVlc3U2ZqMEN4T0R6dVRWNWFn?=
 =?utf-8?B?VUk2aUo0dThucC9DN3ZEaDVoUVVvUjJyQmF1N3QzY3pyR2tzeEl3dndFRStM?=
 =?utf-8?B?Ny85dUFxb0FiNEhOSnZRNGc1c1hPZExSUGV3SThpd0FOOUNKcWQ2c3VUZ0NH?=
 =?utf-8?B?VDhYbXFsN1R1UUg3YkFOV1k2bzl3SUZydE5WYkdsVllTVUVVVEU0NmJCZmFk?=
 =?utf-8?B?MklFdUp2emJZUHhDMVlRM2ludjRmSFpJbFB6UWJYT05sR0V4M1h2TXYwWGg3?=
 =?utf-8?B?Z1RIMHVzMytYbEovMHV4Z0V2MzF3Qk95YU1GSldvby9hRkdrczBvRGp4TmZz?=
 =?utf-8?B?bnV4dzY4empSSXRUQjU5RSt6dXdQcEwxY2syVm1PU25qeUdxWHJSdldaN1BR?=
 =?utf-8?B?dUQvQnNPbFNTSDV1WGw0blhndWZraHNJeXZIWUhNQUJQSTYwbWpLK28zVjQ0?=
 =?utf-8?B?cDN4dkp3TFlock9CR2ZXT1h1b0RUbzYrOTlvREtMOEd2TEo3M1dQWnI2RTY3?=
 =?utf-8?B?dVB1WllKaXkwSEx3UUZFWlA1R1R5SmY4RjFiazFlaVNrOG9LRERoZnRYMEFp?=
 =?utf-8?B?dEswQmgyZVlUOFRMVTZNSFZVTHhkVVhSR0J6dVJIMStJdWNUSmp3bFRHcFVy?=
 =?utf-8?B?eUM3RXM3Y1JhRktnOHFkRmFHRE1TSTZEMDBJa0o2TjREMUlUanc4QTdHaVNQ?=
 =?utf-8?B?c0dkSVpLYXVDMExON0xMTEdKS1NveERWbndVR3FtTUhKWVdHcUtWMzRTR0RY?=
 =?utf-8?B?MnVWb09xNlZoR0xtRzRXbkk1QjVYZzBiakVIUElLaWxReXFzakJoTWNwaStY?=
 =?utf-8?B?N1RhWkgrdnNSMDdzTnZ1NVhIVW5tVDVXZDhIdmM3K3RNUVVHc09IanpON1hV?=
 =?utf-8?B?cE9TNllEQ3BqWGNjYTRiZDJKNjV5R29DTURBYzJiSkIxYW1JbkdjN2ozNnJV?=
 =?utf-8?B?M1NvM3dhbkJxSEFXV3dWUUJUeVNRVjFMSTFFSGpZYnFwcldGS05WbzNqYnN4?=
 =?utf-8?B?VGhGNDc1ZVRQNEdWZ2J3M1ZKUWFabnVLSGpIMUFhc3dQZ1pwK0lFcFFZK04r?=
 =?utf-8?Q?MxJk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR10MB8212.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZHUvNVpmSHdtR3hRTERxRUFsc2VkRW4yU0o4Z1FHNm91bm9nSy9VRW1NZ2pk?=
 =?utf-8?B?OE5Ra2hBd1FWMjNPY01oRGRsRExiNHQ4T1oxZ0hsaGNxS29WaEJLWXZjSlVs?=
 =?utf-8?B?WW9jZ0pndWhmaXZ4dHR3a0hidm5HOFVrUndtc2tVZkxtNzRhVXRyTVZ2QlFL?=
 =?utf-8?B?SVBaaHJGVjl1a1ZvMWl3QzJSdVVLMDFqV0laQkwzbWIyUW52bkFDaUdIalhr?=
 =?utf-8?B?QnZhQU1vclpBTGE3QnZ4VmlBSGNzMDdKNEN0eStXOGtOTmpURG5pTVJnTzFw?=
 =?utf-8?B?eVVFalp1MkU5Wklqa25URVZKWmJ3OXltalFOSFVLMEErRHJpaVhBTWJ5eERD?=
 =?utf-8?B?a3JNOTdQWFJSWWFQL1pjbWdQVXU5R29UeGJsT2lIdXBZODJmdGNydzRFcnRi?=
 =?utf-8?B?VlhYWjdzdlR5Y0Jvb1JwT3NkckpRSGI2eEJpSlJpZys0Zk8rTm5MYnZiL2hj?=
 =?utf-8?B?cjhYTFZwRmxHUjRSZkVLODRBMkJsRXRrWkRYaVNkb2dManZtQjU0dmV6R2tM?=
 =?utf-8?B?MVJtaWwrWW1wR00xaXpYdXkrS2hIWFNRd24xNEhtbGU1R2JXUUNjc0NBQkV0?=
 =?utf-8?B?cklydGRyUGVYZnFPOFprQzBlcmZGRnlGbTVqOGF1eVI3REVyOTNpMW1EeEJv?=
 =?utf-8?B?TW5nRy8wbXgyOFJGWXVPSld0TjBHMkNObnFUTVJoVWZEbm5nT3NzYUFJUG9L?=
 =?utf-8?B?NHdHanhNUnE3KzdYSTlSdHduaUJONVpYK0o4Z2pLSU1ZalRFTXg3dDEwalRZ?=
 =?utf-8?B?ckZkdk9VSFFXZGxRVkFNWmpJU2g1VW1zQ3ZmQjlFY2ZNc0o0cnpIMWpIYXRU?=
 =?utf-8?B?Ry9RQURuNnpCUmpRU2NVVW9nbEJEdFlwTzgvci81c1MyZFlvdzZuaUxDendM?=
 =?utf-8?B?UDc4aDkyVmQ3aFZPeithNmNuU25tNTdMcXUzZ0lrSUpvVFFiUVpTMDAzcnFn?=
 =?utf-8?B?eDFMaVVNaWFwY1B2QytLTFBjT3NDb0oxRisxTzhPbkg1U2xFbnI2bm51VC9O?=
 =?utf-8?B?djVWT0lva2MwY204dFVwK2M2eHBJKzBqTjNBNVdkc1JzeGdpcWpnYzA1MFU5?=
 =?utf-8?B?WHVTS0JuZG9uRW9STE1uc3QrMEo4d1d6UitLSk13YjZBUkNWQ29xSUhnSnla?=
 =?utf-8?B?QnNBdzNNWmJMRDlySzU3S3ZJM0xlc2JkZWU1Wm8vTWsweEJtUWRjUHhxNmJR?=
 =?utf-8?B?bHFIckwrYmpVV3YzWmZDNVNySkg5dkM0N0grcFJEdFBValExbW9jWVRRZENz?=
 =?utf-8?B?UlNNQUprZm51SVdkNGt1cU9tcVJxeVR5eEhzQ1RlZU1Pc3VUaDlFNDNUb0lh?=
 =?utf-8?B?ZHJYc3piUitOWDVyNjhWd0N5WE9pOG9tWnZuVmNWNnlkS3pvZjd3cngrQmxx?=
 =?utf-8?B?ZUVXQjhhTUpDQjkzZ2xGR2JaQ1N4UFJmWjkxcGh0SlU5ZkRUa1h5TmYzVU11?=
 =?utf-8?B?NXROSkFnS2VlMS9obDdlZU5OdW0wSHYxVjN1UkJoTVN5NnJiazJPbE50UWhV?=
 =?utf-8?B?WTZ4a09BMGJBQW4wUmxqTlRFY09GUUlmejN5RXNLOHNFaDlLalEyYjNRTEgy?=
 =?utf-8?B?ZS9zVFZ0UmI4eGRncnU2ZkdFMDI4cHRtQXJ4TkV0WFMwM0YydlpOQ1ZuUUlr?=
 =?utf-8?B?WTZYd1dkRDFRTk1jeW9mU1JLcjFyMzlhZkN5QllDRHJ4NWtCd0Z0REtpUzdT?=
 =?utf-8?B?MzZTbTFvcUNzbWE1RzJVZy9aenJKWE41dDg4ZVhtRGFodENJMlUzTTVZa3Fa?=
 =?utf-8?B?aWhrbUNiZktYZlMwNmtUb21sMVVMYTlVK3k5VUNNRFVwU3AvZURiVGZOa2xu?=
 =?utf-8?B?RnRFblIzdkZtSS9lLzRZRVhjY25DR2J6QmVUT3pvcWlaNEZSOVBVYXRiTFUx?=
 =?utf-8?B?SWIxb0MwL2tCVkZvVWd6Z2dRMm5BcVEvbGZwVVFtMWRSTkxXUDBTQnpsQW5U?=
 =?utf-8?B?VGN4a09hQW1yaENmcHYrZWVQWTRKUlUwcndHYzZSYmNpWDcwYzVIZDNIU3VX?=
 =?utf-8?B?SHFQOVFBMFNqQ21mOXQ5bnVYNytCczdBK3hTL1Z3a2kzT3RWbVl4QVd6em9M?=
 =?utf-8?B?a0NjMjNweEtIR1RPWFNQRG8rb2RHZDB4SzRNU3p4VGhmc0gwRWY4T2VVdVhC?=
 =?utf-8?B?NG5ZMDJFYVVyN2lJUXhZTUJDc3F4S3FsQWNJTWlpN1hWd0FxeXIvNUFrWjkr?=
 =?utf-8?B?OVRVUHQ1dXZJT3d2RTVBY0hUMHNldFp0MnVXR2x2ZlFTd3FtbVBONjZhbUFh?=
 =?utf-8?B?eGJ3TkVVOUQ0emMwQUE4VVRrTXVNTFpzejJLazhlM3U5Y1BISVZLeFl5NFNq?=
 =?utf-8?B?ODMzODdiWjJnaU4wZCthYXV1NHRSSzI0Nlh2YTRUOUhIbTliYWpGUT09?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: ddQskchAx1RIXVCeuIiy6dufl34QqM7eWH5RtealdjZWesLLnnOOjbmiG6KVXZfihS1J9WbfByp8Fd0kJTxCTg+dYCPXIbuHqdBKHNG4D2Si+ARcT6aEAj6ZQyFwyct0fFEndWg2rJTj204c6rpbmWGAHk4DRodiWFkdBleHr868RMH6tsS3rXRTFZxGdwSpWlhrh/AONyV9ecKG5npmKXKKkmV8RuItLXQTHMDnwEu2Vg4pcVFyA3Q1uvdlr4jSXL8Dvg3bK6c968IWCQ3h+xTBx/MLuPny1V/iIJzg3wA9AslN2opUdmIM9RWp/g0Lbyow6tQ+43eMaJ4BhyghEN6mNrzMJa8hULx4UEh/GiQxbenHCpT0FI+Sc9z6LUrjlCeDBnVLsYz31OaqG4TbCCY8h2nc4f5lngx/BKA0NLH+TSdY0HMU2Xj9Tz8MK7HXsJMQXcUjzQcbFaMoxNXDqTFEtfDC3nAnm/c+7tnBSM5p8vJ6/7lis7EUib/GVLgno02CXSN0/8ik/Q8o3Jf22H2KGcNDfJeE0iaGEXyGJ9me3VyLdxeQaV7Q2C+cNC4nhpW/zkIqj2ua2+ftpIJQvlOz1c16ULT4tZBJF/EJwGs=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 95cbda7a-a246-4cb2-f243-08de6281569b
X-MS-Exchange-CrossTenant-AuthSource: IA1PR10MB8212.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2026 17:34:37.7904 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DydVHDBpYDfCaxBKwyWsxezW9s5Cj5UgPuvPTxfoz6qwmayGrUZV9OaDoCauyrzefKuhaiGAg1uZy2gFSGbeDWZMOVe6YJuQHzB7us2i+Bw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PR10MB997647
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_05,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxlogscore=999
 adultscore=0 suspectscore=0 mlxscore=0 phishscore=0 bulkscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2601150000 definitions=main-2602020139
X-Proofpoint-ORIG-GUID: XK_G97vmOsiVT1Mg9HcKB8p8gYBJeg00
X-Proofpoint-GUID: XK_G97vmOsiVT1Mg9HcKB8p8gYBJeg00
X-Authority-Analysis: v=2.4 cv=fdmgCkQF c=1 sm=1 tr=0 ts=6980e032 cx=c_pps
 a=OOZaFjgC48PWsiFpTAqLcw==:117 a=OOZaFjgC48PWsiFpTAqLcw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=WmfX0Ep4EwWLics8V8IA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDEzOCBTYWx0ZWRfX2rPn6SzZ1VTc
 WhpVsc3aKFPgZ1C59o72c7K30p0QlyqYX1tr3IXOKgiHxqRJYXHnEMn0Llrlu6SFeCWO4reGqLe
 IFXyDXNWwyELxtM5zkDv360dmhScSMGEMNlMgh92H7RglkjnthEj6MDpDJLToapZvIEx80ElP5Y
 jvju0A3UhcPBleC4sHYVz6xefUYOoPoYEaGLRaJVwyf5s2d4H2AiQtlDRqY5iVx/5RDLmvVzcGe
 UywsJDbbgVYS75OKBIV/ZVO6GAiHCMZfhCl5Zb+ZrpvimmQt/2IATakNgJg0Ou/jHMbayztE68B
 EooP3HOa2dKC0kMC0wwwwTb9MDc4ZnXpPdj8idzuz3ksmSGb0/KHqYI/LO3hQR4Em5yJB2rGG36
 JD8pCkzj4aXGkGQ2TLcEvR8ipiPsO7IWiSAzsz7Opg85topL6Y+0aN54HStZI4JrFbxxyDUQrtj
 knnCIQBdwBP+mpZK60w==
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2/2/26 3:49AM, Arnd Bergmann wrote: > From: Arnd Bergmann
 <arnd@arndb.de> > > A recent change for the range check started triggering
 a clang warning: > > fs/jfs/jfs_dtree.c:2906:31: error: result o [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 ARC_VALID              Message has a valid ARC signature
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 ARC_SIGNED             Message has a ARC signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.220.177.32 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vmxpB-0000f1-67
Subject: Re: [Jfs-discussion] [PATCH] jfs: avoid
 -Wtautological-constant-out-of-range-compare warning
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
Cc: jfs-discussion@lists.sourceforge.net, llvm@lists.linux.dev,
 Arnd Bergmann <arnd@arndb.de>,
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
 linux-kernel@vger.kernel.org, Bill Wendling <morbo@google.com>,
 Justin Stitt <justinstitt@google.com>, Aditya Dutt <duttaditya18@gmail.com>,
 Roman Smirnov <r.smirnov@omp.ru>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-5.71 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:arnd@kernel.org,m:shaggy@kernel.org,m:nathan@kernel.org,m:zheng.yu@northwestern.edu,m:jfs-discussion@lists.sourceforge.net,m:llvm@lists.linux.dev,m:arnd@arndb.de,m:nick.desaulniers+lkml@gmail.com,m:linux-kernel@vger.kernel.org,m:morbo@google.com,m:justinstitt@google.com,m:duttaditya18@gmail.com,m:r.smirnov@omp.ru,m:nickdesaulniers@gmail.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_MIXED(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.sourceforge.net,lists.linux.dev,arndb.de,gmail.com,vger.kernel.org,google.com,omp.ru];
	FORWARDED(0.00)[jfs-discussion@lists.sourceforge.net];
	FORGED_SENDER(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oracle.com:mid,oracle.com:replyto,arndb.de:email];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,oracle.com:s=corp-2025-04-25,oracle.onmicrosoft.com:s=selector2-oracle-onmicrosoft-com];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	TAGGED_RCPT(0.00)[jfs-discussion,lkml];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[dave.kleikamp@oracle.com];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,oracle.com:-,oracle.onmicrosoft.com:-];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9DC1FCFA5D
X-Rspamd-Action: no action

On 2/2/26 3:49AM, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> A recent change for the range check started triggering a clang warning:
> 
> fs/jfs/jfs_dtree.c:2906:31: error: result of comparison of constant 128 with expression of type 's8' (aka 'signed char') is always false [-Werror,-Wtautological-constant-out-of-range-compare]
>   2906 |                         if (stbl[i] < 0 || stbl[i] >= DTPAGEMAXSLOT) {
>        |                                            ~~~~~~~ ^  ~~~~~~~~~~~~~
> fs/jfs/jfs_dtree.c:3111:30: error: result of comparison of constant 128 with expression of type 's8' (aka 'signed char') is always false [-Werror,-Wtautological-constant-out-of-range-compare]
>   3111 |                 if (stbl[0] < 0 || stbl[0] >= DTPAGEMAXSLOT) {
>        |                                    ~~~~~~~ ^  ~~~~~~~~~~~~~
> 
> Both the old and the new check were useless, but the previous version
> apparently did not lead to the warning.
> 
> Rephrase this again by adding a cast. The check is still always false,
> but the compiler shuts up about it.

I think it would be better to just drop the useless part of these tests.

Shaggy

> 
> Fixes: cafc6679824a ("jfs: replace hardcoded magic number with DTPAGEMAXSLOT constant")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>   fs/jfs/jfs_dtree.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c
> index 0ab83bb7bbdf..e3301e5fa037 100644
> --- a/fs/jfs/jfs_dtree.c
> +++ b/fs/jfs/jfs_dtree.c
> @@ -2903,7 +2903,7 @@ int jfs_readdir(struct file *file, struct dir_context *ctx)
>   		stbl = DT_GETSTBL(p);
>   
>   		for (i = index; i < p->header.nextindex; i++) {
> -			if (stbl[i] < 0 || stbl[i] >= DTPAGEMAXSLOT) {
> +			if (stbl[i] < 0 || (unsigned char)stbl[i] >= DTPAGEMAXSLOT) {
>   				jfs_err("JFS: Invalid stbl[%d] = %d for inode %ld, block = %lld",
>   					i, stbl[i], (long)ip->i_ino, (long long)bn);
>   				free_page(dirent_buf);
> @@ -3108,7 +3108,7 @@ static int dtReadFirst(struct inode *ip, struct btstack * btstack)
>   		/* get the leftmost entry */
>   		stbl = DT_GETSTBL(p);
>   
> -		if (stbl[0] < 0 || stbl[0] >= DTPAGEMAXSLOT) {
> +		if (stbl[0] < 0 || (unsigned char)stbl[0] >= DTPAGEMAXSLOT) {
>   			DT_PUTPAGE(mp);
>   			jfs_error(ip->i_sb, "stbl[0] out of bound\n");
>   			return -EIO;



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
