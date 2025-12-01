Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F20C99645
	for <lists+jfs-discussion@lfdr.de>; Mon, 01 Dec 2025 23:37:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:To:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tq+8bgYJTAIcOggvziexLPmuIqwZ/5HuK1p70Y2GIgw=; b=PU6YCVHlwMV6hGm8rrtRHtaoE2
	CPJOhrWX0R6+Xg46lWRaPgYb01yCIhxdCwnMBrdk6gHvLQee42RmVxWIE+YqVqPcwbdoCkdFckUDm
	pCkbDDud4GII0iLUI4AVuLIvoE69ZX5qdAtH8HYnE8GQCx2xrNPlWvGmZ0jmbw49TO+M=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vQCVj-0005el-4c;
	Mon, 01 Dec 2025 22:36:47 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1vQCVh-0005ee-CT
 for jfs-discussion@lists.sourceforge.net;
 Mon, 01 Dec 2025 22:36:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RaurBGODlxs62UC5oyT/Sw1MblRAG+1lMVWa6BCB4Y8=; b=lR5S4kouTGlz2NbYhTjZ9de/7I
 NLDa51tCWyddwz5b8MUOebBlS40H20qrZIehc7aKul5K8pU2O0dxTAG75/YcIqfO4wPGH8Jdr/RJl
 2Lz2N5wt/n+VqDJefArW2IyTS7Nk+bXbOHlgawi7oUO4+nEyxe2MiGjdahkTmCtGFJsU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RaurBGODlxs62UC5oyT/Sw1MblRAG+1lMVWa6BCB4Y8=; b=YTqRfxrsPcWC8lAWn2DySFD8Ig
 qG5KArFB6SZmIgJbXtks054jrT2B4jc9qj/WACz1sFob9X/PmP/R9Wg1HUywEoNbvfTJawupo3Gre
 QdhImMwKtNYujLUQjKl9V3x1jDAoFryI5+EN1ZXoqtkEVJ7/4mgkdgQ/wtv9ObbRHidg=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vQCVg-0006Kk-H0 for jfs-discussion@lists.sourceforge.net;
 Mon, 01 Dec 2025 22:36:45 +0000
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 5B1MNMc72958956; Mon, 1 Dec 2025 22:36:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2025-04-25; bh=RaurBGODlxs62UC5oyT/Sw1MblRAG+1lMVWa6BCB4Y8=; b=
 KjHsCGXac84LtX3IHzS+PSbayuZQLCE9x1Q+Oh2vwKE8vbvLSCTjTxxtx0ITjpCk
 EkBgFd2+r4qQzI2jHfxn63caFP2jyorEVegVpN+uTz66X6VOytOLpo4058FELOHo
 dGGvQV1sD94McAA0USetIK4pvar3TEWkSLGAD8DaTIqFuzRXeGWcMFJ359qQp/5l
 ljmHHnqQEHeXY6V6lRsYLzvN80WXR/X4+RgWpFJVOa5vHSjsrGzZMk5V85e3MPRs
 O8nUZ57n+vppkHsvImrzYhJxFtSXy0kVzUkWktjIoAMJwoBR0Q29GCJg0Id4E2DT
 A0y62KdDFFur82LCtbTtsw==
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4as86y9jxj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 01 Dec 2025 22:36:29 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 5B1KgDjZ016629; Mon, 1 Dec 2025 22:36:28 GMT
Received: from co1pr03cu002.outbound.protection.outlook.com
 (mail-westus2azon11010036.outbound.protection.outlook.com [52.101.46.36])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 4aqq98bu1h-2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 01 Dec 2025 22:36:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Imo2BGEEv4IjCjkQlEFmo+ykX7zrOJLSogYsF37Co8n1Ns4kGBX5X1JG2wpGVCJMP+yQ2MJJ6NO79VOUT5U1N/po0wJDilLsXTu7NxW3LHO80zM7RgA9E6lSPuOZyzryYUN/ZZLdqNJNjlrXhMsdKb3zr9o0eD+9cABG40Huph4flU9Gpon3lmEFb7OXOgVu7YuSRTIuoZHifYghHFnNtH37pYYfx22yFE7TgaBlLXFLa5AL4u2wY/xcmx/FyFS41vVpbCI+Xh1+MeWBCL6B0LwPKXqfSv2vC6+kDkL30RPNUhjxCFsQff9/Fi/HmnjxtRTdVDFcew5vzmR2T8pM4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RaurBGODlxs62UC5oyT/Sw1MblRAG+1lMVWa6BCB4Y8=;
 b=inGeZ1JsedY/46sB30eGJomgYMOcfqG3ve3qGHkqPo+4Rck8Q7ALJ066GUNWjZvSWRa5Juv3Z4wALOL87Z4l5vbM/Vki0WmTJCCk8mG1Q2BvXaulxBsT8e3IaQyS3NiIOFtBCxSuHlDiXL6W3F/UK07kYbqHyJGscqEjtcOdxgDwZrKLh7AHxlWbES4WzEONLIxWxKn9zBgBlNONZ3T0bPZYwD56J1gqMKlIIcKMvM/dnmhzjakhdUb4fG52bBKTL91QV0OMzyCyHqixGrrRLcECN4anFzgEtXhJIjJ/ya+InAkHRCcKrCe1TroTLswD/p0xy637FE+l6LVJ/lDgwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RaurBGODlxs62UC5oyT/Sw1MblRAG+1lMVWa6BCB4Y8=;
 b=LVYZFSmU4CYn68nHSiOaMA9Khc5wON8/q1a0itMFs2e20u20Od6Dvv3tyKoh7Dr6ug5LxfFcSPiB9u0vnVW87f/iwA8fTu5qlvp101mYjEI/a2KM9jiFs1/riZfEQFgToVqADcJHTGXR/kY7qi9CLdSed/FDoNkDuB0HzhfFv14=
Received: from IA1PR10MB8212.namprd10.prod.outlook.com (2603:10b6:208:463::20)
 by IA1PR10MB6830.namprd10.prod.outlook.com (2603:10b6:208:426::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Mon, 1 Dec
 2025 22:36:24 +0000
Received: from IA1PR10MB8212.namprd10.prod.outlook.com
 ([fe80::ee8a:bd21:f1cb:c79a]) by IA1PR10MB8212.namprd10.prod.outlook.com
 ([fe80::ee8a:bd21:f1cb:c79a%3]) with mapi id 15.20.9366.012; Mon, 1 Dec 2025
 22:36:24 +0000
Message-ID: <40db68fc-a5a3-4bb2-abc5-b93ee2429602@oracle.com>
Date: Mon, 1 Dec 2025 16:35:49 -0600
User-Agent: Mozilla Thunderbird
To: Jori Koolstra <jkoolstra@xs4all.nl>, brauner@kernel.org,
 gabriel@krisman.be, jlayton@kernel.org, neil@brown.name,
 viro@zeniv.linux.org.uk
References: <20251028232329.430752-1-jkoolstra@xs4all.nl>
 <20251118164645.67401-1-jkoolstra@xs4all.nl>
 <918405804.66343.1764595242232@kpc.webmail.kpnmail.nl>
Content-Language: en-US
In-Reply-To: <918405804.66343.1764595242232@kpc.webmail.kpnmail.nl>
X-ClientProxiedBy: CH0P221CA0028.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:610:11d::10) To IA1PR10MB8212.namprd10.prod.outlook.com
 (2603:10b6:208:463::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR10MB8212:EE_|IA1PR10MB6830:EE_
X-MS-Office365-Filtering-Correlation-Id: b0093bd4-6be8-4c12-94fd-08de312a0f30
X-LD-Processed: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SFJlOE1wOUViM3JIRDl6YUlRdlVYZWFLaythdk9OTXgxSmoxdEVkNk56MldO?=
 =?utf-8?B?ZzFJN25TTGZScDBleDZqNUZtenZ6TDdnZVNXUHZhMEgwVkZhZGFtVEtjcXRS?=
 =?utf-8?B?WnRIWWhWVXk3Wi92ZERTb3AvZjlicXBjZWQxQ0tFd3FDWkdIRnRFVnI2T0wy?=
 =?utf-8?B?Q0ZHUFM3Vjh6cGhUNWRtbFNFRy9QNW5iMWx3dk5QUXdVOERDVXRTbTZNNVhC?=
 =?utf-8?B?WHZ6NG1Dc2RleldIODN3YzJLMXJjVEhoZi85ekR0RnlrTGJ3WEZLdWExNEds?=
 =?utf-8?B?dVM0dDFXeE1iS0owRVU3b1FqZW1PYk9Lb3FIMHdNTEdOTTBtRlRaRVNwalFO?=
 =?utf-8?B?SExka1RXL29NSnRxK1J5b2d3MWxTOHJpZ3I2QnRNQ21IRVZnRk1kNys0cXhU?=
 =?utf-8?B?czR0OExYZ1gzdFRmWUlJcXRHQi9sSDAwUWg2WFFIU1U1bnpiSStrVWtDMFhT?=
 =?utf-8?B?eGxsWk95K3JJb1owdjdzZzdWNHJyR2VXRVVISitqV2NMMTliYWI3azJEd0hU?=
 =?utf-8?B?QVFYUlFsZWsydHVZbkdheG5XdlppWHJWaHFGdmlQbm5WNjBla2FZMjg3ZWV4?=
 =?utf-8?B?enpMenlkSkV6cVgzY3NGZ3F2MU9jcEg3QXV5Zk92U2tJNWZxZGc4NzBmdUJC?=
 =?utf-8?B?YmVzUEpmUlRIaGthNkdoMWZ1UTE5OFhZNXJNOEV5NUlkZUZ1Y2hhS1ZXb2FW?=
 =?utf-8?B?L2RQSHlOd2Q3QTVzcitrVFc1OWlyZk1od0RTRWVGcXhIQ1JmeXRTOVp2dXY3?=
 =?utf-8?B?TjhwQjR6UGJ0TzNGTXZRUEo0OFdSaHJNeHlFNXAxeDZiZElpK1hCUytXUjhS?=
 =?utf-8?B?N0o1S2ZvZXEvOWNYZkw5OFE0L2JNSzJ2VW1ud3czakxyQVRyNjVBT0txSjJr?=
 =?utf-8?B?eGlnUkpCL0FuRUlmeCtZeFNMRXAvRDJoSG1acUpMZFhpS1FGN1doMStWdWM3?=
 =?utf-8?B?NVdPMU5FSkdzNElpbU9BdlRWeVYwaGc3Z3lqc24wdzlBY2k2cXZDTTAwbGdY?=
 =?utf-8?B?RkowekNKbXpVV0FvWmx4TUc2VFJCREZpalRma2hBRVoxMWw1WWxIb012OWsv?=
 =?utf-8?B?RXJ1NFVVVi9Way9uQWxkekVhdEJsdDhvUUtWWjBMMXRrR0VXdUpIbDU4RkRz?=
 =?utf-8?B?d2RERHcyeHRGQTFLV0hvVkVScytqSGIwRHZnTEZjRDlSNWpwRnNMVWlRZmNn?=
 =?utf-8?B?d1NMK1h6bGJjM3Y4cERzN2RYVnFmUWZVUFUrci9YRXk1RFVpMjJtZ2d2Z2Y3?=
 =?utf-8?B?L1o0dnRZS2c1QmZrWWpiK2FwNFdrWVIwMGFhdkV1MTBJVW5Ic1NlcG82MW8z?=
 =?utf-8?B?WjExT1ZnQXg3MWFhU01MeUNBdVZKeXYxTmpQTFVJRFZzSGEvT1dpRk9kL1Z2?=
 =?utf-8?B?aVNhMVczMTQ1U2tWa0FjdzR0d21FK1liQVUxOVU3bzFjZ1IzTkNPdWNqSkEx?=
 =?utf-8?B?dEpwOVdVTks4ZXhxUUx5ZzBvMzNGV0JnazVQUWpGMDd3ZTdOUzRHSzUvdVd0?=
 =?utf-8?B?ZGYwTWtFbzNjcUhNNFJsRlkxV3FYZE1OUUpuSEtxQXRzbDBaeitSRGFxM2Rk?=
 =?utf-8?B?MWtvQ2YydTVEUnVlYkQwNGxkNCt4RlFTU1dZTUhSR3hYd1FIRVdDMlFXMHpN?=
 =?utf-8?B?N0lqQ2FUclZVZjhneE1VZ2laYlpEbEtLcDU4UW5uU3JXTnVpQWVvYkVHcEEy?=
 =?utf-8?B?ZXhRY2NXRnlrNkdGY2l4UE9zTDRHYVBSS0UrYU9rQmFQc3FaZzlDQnd3ZkZt?=
 =?utf-8?B?QzVzb2YrRm45YmtsVFNoMjdINEJtSVVsalB2cTI5aTZTdWVHWnZSQzhVWU9w?=
 =?utf-8?B?ektaTXFsd2l5dENNemxNMmRQV0wxRXhSaGIrU1VTNlpwQnZBdDJwcHBER1JK?=
 =?utf-8?B?ci95NGZURmtlYnVVSFhVa3BZTEhDZ21GaXhSOUU2YlEvYWc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR10MB8212.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aWIyMjFqa0MrTXduT0hTeGRxb2REM1BJTGhUR21sUzE1YVlqY1NLOElBVWlh?=
 =?utf-8?B?bk5oanBhY1hhU1NIYVBVZG9uUkwrOHZYbFNLTk5PSEpHWnl2SW1FWXNJdXN0?=
 =?utf-8?B?L2pZSDNoSkhPZW5VSmJ0c0wxNXFweWlQRUNCTTd1NEpRY3ZUdjNJcE1GNUxT?=
 =?utf-8?B?Q2JUalpvK1N3MWs3NlhHRlExYTF0M2N3Qlo1VENVejd6dmROY2JoL2lOVEx6?=
 =?utf-8?B?Y1lsZC9rUk5iU1Yyajc2c0lTTzM2RllXaHg5TjNNeElxVWREUEJzNHZtcUd1?=
 =?utf-8?B?Ulh3N1A5Q1VRMWJaaU1ObFdaYnRmSkZBYytXQXhNOVdOWUVyQkR5WkRXcCs4?=
 =?utf-8?B?ejBKKzM5R29paGRFWWNIVEoya2VoSE5aUlozU25VVWJMT244QXRCcEo5WmIw?=
 =?utf-8?B?dnMvekQwV01tYnVQRis3VGRpOHEvZTNQVXpodEsrSXF0Nk5HS2JSSG9YSVJW?=
 =?utf-8?B?NWwxakEzTzhaY1pXTVlTRmVxU21NdWpMdmpGUnRGaW8wY1lrQ3NRTktvTlZR?=
 =?utf-8?B?b204QXhTS2plSG9SRUhJVkNROXo5MnJ1SnhHUGZyUnNoejZSSnR4T3FROWx1?=
 =?utf-8?B?ZEowYXh1RXBaU21wUGpVN2hmdEozbGtHZmwxeld3T2l1aGZqMlE3OFRJek5p?=
 =?utf-8?B?VDJLMEZsWnhFWk1kTzBrTHR2TkthU2NLT3lVanJ6WEZHT3ZUQVIwbkJ1eW4x?=
 =?utf-8?B?clE3YnQ3bC84bzdSaFhzbFVMaEl1RE5xZndQbTZkN2VOQWNMR00wNXNuRlZ5?=
 =?utf-8?B?ZFdnV1RwT2xwN2FxSk1YTTVtVnNwRGdNMFBTVkxOTllDQjhPd3pCWVJHbVNR?=
 =?utf-8?B?VHZqYWdTM2xSYW5rRXM0S0xvRkMzY1V1NTBuMllZclhBVzk0enBvSHVrU05N?=
 =?utf-8?B?MUFnYW95SVVrQXN0VkhnSVpqVzFBSEFkT2NYczkxVDVoTWhYTjVYQzhxVjEw?=
 =?utf-8?B?ckh3NlNRbWg1WDIrSU1VTlRhazBoQjA3M2pwNWw1NWk1ZStmM2MyZUd1QmJs?=
 =?utf-8?B?TnJmcnQ0bWRic1daamZCS0RDN3FCRUxyNEVLWGVBUHFPSWlRVUNFQzRaZkFy?=
 =?utf-8?B?b3ZsUGxZYW1IdUhYMktwQXMvd1U0OUJ0STdQaDBWa2NvT1dTWXhTRXE3bkNv?=
 =?utf-8?B?cHdrUEk3QVhxYzNQZW13TnIxUktVanlJVDhON1FmNEJvdDBmcGpHSnE5VWNI?=
 =?utf-8?B?amcyQUJQR3IrbGZ0SFlORDFNcG1GbGtiR01KWEc2a1FINlhyN1M5cW4vYlk0?=
 =?utf-8?B?SFE0TkF4d3loUmdaSXA3RVlYNkZ1Z052VkF4Q0FhNjVHYVNUSlhHQnNxajkw?=
 =?utf-8?B?cGtBQ1JjYTNxRlB5dFd2RG9xcm9rb0l2ZEdQN3ZuNjlSU21VcUFyQWt5WVBY?=
 =?utf-8?B?N1RMNzRuMUtZRVk5d2VKVWtrcjJIMHhPV0ExUGh2bU4vR2VtN0dPK2JRTWdj?=
 =?utf-8?B?ZUFKaGNXbHpPenUrQ3liaVZibjVRYUpNQzh2UExrT3hLdVB3Ylk4eGIwYkNo?=
 =?utf-8?B?SWY5UWR3Q2dPWHpOZTQxQkl1eXVycHlTaFZEblRVdWw4MGtCVndrUlgzT00w?=
 =?utf-8?B?ZXdTRU9EVklhd2FqL0lqanFEZzRtMFF0UDFPYmNHWDcwOUxySzZiNjhEVTJi?=
 =?utf-8?B?TGNqaW1zWmdPTURYUXVSWGkyQVFHM1lYa3M4ZU04TGVDeEY0S3pkdmV2Q1U0?=
 =?utf-8?B?OVBjd2pLSk9zdkZDcmVvN25DN0IvYWNic0JSKzJuSmdqZXdPOXhuRkd2K015?=
 =?utf-8?B?N3MxaG5mRkNQNG43amdyUlUyenhTbEZuMG5qT1kxT0dXOGNDL2dMUHREKysv?=
 =?utf-8?B?SEV6Tnp4bys1NTdTQ0JKT2MzaysxQUlrK2thSG1xRXhYUUZCeVl1cjJRblh4?=
 =?utf-8?B?UUdjekNnZ3M2dFdDNDhLamp1cFZpaWc5TU1ZZkZYUTJvQm0yekV0Q3ROc0g0?=
 =?utf-8?B?TVN4YTZWY0IzUDFmUDJxRC9xaG5MbmVJZGxjekNPYUhWaFlIYlFDZW05ZkNq?=
 =?utf-8?B?WGMrM3JwY2hYK0Fva1RIUC9EV2lHcnJWamx1Vmx4ZVNvbEt2WTRIMkszZVNl?=
 =?utf-8?B?YW0vSTZOd1ZNWEJCTnM2YkRKa3M1bHF0OExoS0NTb3Q0emFUd2Q3aDNMeXpr?=
 =?utf-8?B?YUkyVTB5cE9ObzJVUGxOSnkxOU9ZTHpmelgzWkZRaGx1dWk1YURTR0tsai8v?=
 =?utf-8?B?NGc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: FrQa/a5nwh4TC6MxoXEINDY5l0V7b9wQKv0ULHXxP69vS7LeVD7AZfawo8Bm0lz6fvWtSa9TdvLpeXqvbMyWrj74+l245CJ5QOLHhByHaer9KR6E7884Tkz8Ffwenuc0ElLWHtg1ZfwpNiMcBA1HqcaR8SCHkgEjhf4lPaR0mnTfNgHFL2kCuKl4vdXn4rNqYnpoeSWT00BF/IHjx0TrNyb80gakycqDcCADo3lz2t6u5DpP+qMm182J6VGqPys8HgPzE9nM8dG5h+pxV7WkxBrAgLl270GKNfrUFFWZQ+9ewWXJqcNEHyLgLmMscRnOC4CWk6KPXNPzJ3tEGzE6licLTZA94hOTNxiJq/u584yOqdjK3ItokAFzCJyRlDiE57oF8YENTSW179YawgVfuLFrXvr04Fnq0QIETn8Q1whQLrGicNn74JceprTR2IkQOUEL3B5fbN/sSx6fta+GdxUdb2y2WUH0i429gzn/dZBTtyoo9keao1mhgByLUfyNZFpC+aj3bq46PNWXHdJwTAJ3YXwihiDeHqJKS9Y0uRGBZyqCn1GfrSTQ5zNwvKR4POOcgnK4vE/e00tdyfpZORb2Js8em7nQnSekneONBi4=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0093bd4-6be8-4c12-94fd-08de312a0f30
X-MS-Exchange-CrossTenant-AuthSource: IA1PR10MB8212.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2025 22:36:24.7170 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X1dhYat5w+rSblkRllAzI7yEPLPkRCwGFE4o/cEZgZEs/Sz4Gmoop1GYSmD3mhvrnB0hq9r917j4Yo3FE9ZhIyzVTjBeDIIUVMRrOA3Qcqc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR10MB6830
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 adultscore=0 spamscore=0
 bulkscore=0 suspectscore=0 mlxscore=0 phishscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510240000
 definitions=main-2512010181
X-Proofpoint-GUID: PS7Ooz1g7t7eZqY-uMHsFfoB_YSwuhWA
X-Authority-Analysis: v=2.4 cv=AaW83nXG c=1 sm=1 tr=0 ts=692e186d cx=c_pps
 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:117 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=-ibLmwfWAAAA:8 a=xOd6jRPJAAAA:8 a=hSkVLCK3AAAA:8 a=VhY8sgGMXhmf-TpXrzQA:9
 a=QEXdDO2ut3YA:10 a=A6MkUVyZPcTV1i89ro0M:22 a=cQPPKAXgyycSBL8etih5:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAxMDE4MiBTYWx0ZWRfX7qt0XtkK2Scp
 S7c28NWnV+6R3oweVsqUfgP/xgnBsHCKSiK7n9lwyEdWtuCgjgI0wdMFEJia2+IB6WUNRJ6JIQD
 gayi/UNHvv61SYZ711Cn7Xbjk+zuJq3kBXBopN75peEhuqkbkI/tgWb/g10cGp70d7MHqY1pbhZ
 fUMVsgA0D3b/Ryz6o5IJw7Wych9lv5ZX9kv0BCL+qHwfSLdGW6REHCfLmXAYNhmOHArBDqcCvi9
 fLjX1p/KmZNFcyDIylEUdJGQp+Lp67qWAuO94hwRxrWDgLQ/XjeG3jkCBIDe8YHlqwmQ7VuaIJW
 xvQLUNpgFum/F0eUkI5pbw1obN06PD58VvIiqm7U133X7CCNxDNtUwrvrTVvUYYfEIOh4Ohmabu
 jNbzHDC6BuSJEMiLMpn52o4y5v6jyw==
X-Proofpoint-ORIG-GUID: PS7Ooz1g7t7eZqY-uMHsFfoB_YSwuhWA
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 12/1/25 7:20AM, Jori Koolstra wrote: > Below syzbot bug
 has not been fixed yet. If anyone has time I would > greatly appreciate a
 review of my patch, so it can be moved along. > It has been sitting [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 ARC_VALID              Message has a valid ARC signature
 0.0 ARC_SIGNED             Message has a ARC signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.220.177.32 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vQCVg-0006Kk-H0
Subject: Re: [Jfs-discussion] [PATCH] jfs: dtInsertEntry can result in
 buffer overflow on corrupted jfs filesystems
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
Cc: jfs-discussion@lists.sourceforge.net, skhan@linuxfoundation.org,
 linux-kernel@vger.kernel.org,
 syzbot+cd7590567cc388f064f3@syzkaller.appspotmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 12/1/25 7:20AM, Jori Koolstra wrote:
> Below syzbot bug has not been fixed yet. If anyone has time I would
> greatly appreciate a review of my patch, so it can be moved along.
> It has been sitting for quite a few weeks.

I've been busy with some other work as well as being out on vacation 
lately. I have several patches to review, but have not forgotten this. 
I'll try to get to it later this week.

Thanks,
Shaggy

> 
> Thanks,
> Jori.
> 
>> Op 29-10-2025 00:23 CET schreef Jori Koolstra <jkoolstra@xs4all.nl>:
>>
>>   
>> Syzbot reported a general protection fault in inode_set_ctime_current.
>> This resulted from the following circumstances: when creating a new file
>> via dtInsert, BT_GETSEARCH may yield a pointer to a dtroot which is
>> embedded directly in the jfs_inode_info. When finally dtInsertEntry is
>> called, if the freelist field or any next field of a slot of the dtpage
>> is corrupted, this may result in memory corruption of the parent
>> directory inode.
>>
>> In this case the i_sb field was corrupted, which raised the gpf when
>> in inode_set_ctime_current i_sb was dereferenced to access s_time_gran.
>>
>> I tested the patch using the syzbot reproducer and doing some basic
>> filesystem operations on a fresh jfs fs, such as "cp -r /usr/include/
>> /mnt/jfs/" and "rm -r /mnt/jfs/include/n*"
>>
>> Signed-off-by: Jori Koolstra <jkoolstra@xs4all.nl>
>> Reported-by: syzbot+cd7590567cc388f064f3@syzkaller.appspotmail.com
>> Closes: https://syzbot.org/bug?extid=cd7590567cc388f064f3



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
