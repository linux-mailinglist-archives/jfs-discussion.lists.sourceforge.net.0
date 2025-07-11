Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E10B4B02483
	for <lists+jfs-discussion@lfdr.de>; Fri, 11 Jul 2025 21:24:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:To:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x/1/nmBnAVDNbkXD0tQwOtF7Bi9BRyyluY74Yef+PKU=; b=CqTdriZcW7h6oVuTgsIbB+yHGT
	EBTCNhJOqGlVn7b0L5GIaQFZE4NOO03q46W7BlmL2o50gp1B5pq1EKHZMXGoJGj/rRTj5XWgUbk7u
	oC0kWHzokCSzxZrPWKWsvaob6cCEG9z8KQ8LtnKPiUziUeOUokNrwJGbBLpfFP9cxbfU=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uaJLc-00006U-La;
	Fri, 11 Jul 2025 19:23:52 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1uaJLb-00006O-6B
 for jfs-discussion@lists.sourceforge.net;
 Fri, 11 Jul 2025 19:23:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wO4bm5HBRYXKyMWNbBsZmtxayuONzIC54aQW0ZMDT40=; b=ijAock6pkigb1fM9GQSL7y5hHM
 mxeuPVpzHKnoYAyp/WOgtGBcobxfJeepquVM1zY4UalYeiBGVASDPP8jWPtgW27oOc5V3kZY+/peA
 H3TBEfkY85n7hyJaj/1N6PEz+htVWNNikD9EpsiMu4tKiXHSU1WC/92187yUg+Mr/96k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wO4bm5HBRYXKyMWNbBsZmtxayuONzIC54aQW0ZMDT40=; b=MPiAOmnBXJF/S6CAapWfnKbJT5
 tUmjJhSx0leGF4SyqSkSoBhb/aH3s6MfDI+Pbg8zkiDoUOMj2X+KiBQ4rFYUSUxCd4SxYaaxCoO2u
 /u/IuecdW96wbavAAZSOA/LUC03pM/gjcwc06NtDIdJGheRcQoLVhF4CD5wIx6jiFFME=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uaJLa-0000Xo-J3 for jfs-discussion@lists.sourceforge.net;
 Fri, 11 Jul 2025 19:23:51 +0000
Received: from pps.filterd (m0333521.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56BIq5bI003779;
 Fri, 11 Jul 2025 19:23:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2025-04-25; bh=wO4bm5HBRYXKyMWNbBsZmtxayuONzIC54aQW0ZMDT40=; b=
 avQ8EG+d/4OOmzYWfs/+oMwHX5GRxnrEj3gFRvny89kkedMbatzzaLCMGPoDgCmJ
 DI229Nvmb6HMigsQykIOkwLjR1XajCLWTo4EPn82HyE6gK6/HATb5b7m/QV8Ch7n
 cuAYQrumtGjSOPJ/kOcEzXskgTU7gzyiDbqTRdCNd/EbIUuy1LYXv9QOwsiJFX3O
 8lPFiYRGVcJ03+oatpHtQMYvdcTf+fEXKAnC+nDAVOc0M3aOkbLF+Nw8wz0259vc
 MVAsu5Vds5t9IIGMtUCzl0US7jgxDNIy6mWyqy3bNy5iN8byuxfRyga4qVBcZPVt
 iYP7TB/H/Bu4+af9wugudg==
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 47u88x01rk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 11 Jul 2025 19:23:32 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 56BJFn2X013590; Fri, 11 Jul 2025 19:23:31 GMT
Received: from nam11-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2062.outbound.protection.outlook.com [40.107.236.62])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 47ptger11k-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 11 Jul 2025 19:23:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=feqNFNUWznwmT3MgVIhiw8xfrBHspuc7Ou21m26Q86LLKy1A/UDqPrftSoc+q8rodG6juAZhcOW9T6i2YMSEQok4SAv6TjeTYp6e05PcrroRqb1BSgFo3oRJyRnid/5DIqiUp31H1FI+pDbcVOn+P+ANKXxe1KqavyKOxPeeWzSRe45aS/b+fi0x1XG4KFrmfUQUw6eHdDZH+jWHP+mkhft8npqSAXpwB6g4uouCz5RArUZdFRxqJOkZFHKTQK8xwY2aN5rFWHtK38ZV6D5jOPXLSQ33RsvyH4oZI15p9ab69rlzmPTD8sbKAzuZxm3NsecT9mEV0eM9i/YaAJlLhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wO4bm5HBRYXKyMWNbBsZmtxayuONzIC54aQW0ZMDT40=;
 b=ykMs1zbEUGoPWyL7iqL/ERPV7ft3IXFxbm58mj9AXYOOvRZsvunLB01TE2afmbd2cTkDFyCXscDM4m9VzT+VpiC86r1wGPQS6YY8wo4T++sEJbhmE2F3SlWCyqY7PW2Z1lRh1mY+u8Ad7lLRO1zocjc1kGb2tTL0zCH2p5EpdvSXo1vZrbLm+ahOm9eJdHdDyVHIA91d02EemH2myRICVGy8yEOzvrh9SNIihsjLjiqeJK6u2+8aeC9mK0imiLZLd+H4RZ+fTcA/OHJJXoDNbv8FpOOvN4QH9+9pZDuvuUlH8ABxvsJaLbmDcCNu2a5kXYdoft9HDYiuU7o7iyhJDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wO4bm5HBRYXKyMWNbBsZmtxayuONzIC54aQW0ZMDT40=;
 b=SEnCT/Yzn3CrQmnJUK1+e1U1Z8tudn2kut4Tws7VwU57cQ93q38B1Y4UqUISewhMX88J4Bv9AHpDI1o10C2pGFnRtRDmJBFiD9pzz/NPxv6vk9WCa9PaKCIVaYXe9nDpXrTkHXN1qsp4U3/TvAcXs5SofJ+bmfFNbG43PIVMyZw=
Received: from PH3PPF517B7003F.namprd10.prod.outlook.com
 (2603:10b6:518:1::79d) by DS0PR10MB8053.namprd10.prod.outlook.com
 (2603:10b6:8:1f3::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.27; Fri, 11 Jul
 2025 19:23:29 +0000
Received: from PH3PPF517B7003F.namprd10.prod.outlook.com
 ([fe80::943c:5ede:5076:73d4]) by PH3PPF517B7003F.namprd10.prod.outlook.com
 ([fe80::943c:5ede:5076:73d4%6]) with mapi id 15.20.8922.025; Fri, 11 Jul 2025
 19:23:29 +0000
Message-ID: <e7b79c66-22b4-4d01-be5f-adfc5ba7e50b@oracle.com>
Date: Fri, 11 Jul 2025 14:23:27 -0500
User-Agent: Mozilla Thunderbird
To: Arnaud Lecomte <contact@arnaud-lcm.com>, Dave Kleikamp <shaggy@kernel.org>
References: <20250424-ubsan-jfs-v1-1-2eab57c1ac50@arnaud-lcm.com>
Content-Language: en-US
In-Reply-To: <20250424-ubsan-jfs-v1-1-2eab57c1ac50@arnaud-lcm.com>
X-ClientProxiedBy: CH2PR11CA0013.namprd11.prod.outlook.com
 (2603:10b6:610:54::23) To PH3PPF517B7003F.namprd10.prod.outlook.com
 (2603:10b6:518:1::79d)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH3PPF517B7003F:EE_|DS0PR10MB8053:EE_
X-MS-Office365-Filtering-Correlation-Id: 56b64f14-5df2-4ac7-a4cd-08ddc0b06ad6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?d0lNUm1vRU53aVRMUUZLM2NsR0ZyWkc5SnNaeFk3WnMxWVJ1Y21lOTEvY2ZK?=
 =?utf-8?B?dWdLaElPT1lWNUtWRDRSNG1MendBWWRjb1ZUazl0ZnMrdnQ1d0F1RHNmeTJn?=
 =?utf-8?B?RlNYNEx4OFlxaGJXQTFWbE5SbW92Y1pKNVplcjZwL3pvQjVPbG44cFlQd3pV?=
 =?utf-8?B?UXUwTmxYUms2djRlUEtnR2R3ZjJRZXQ5NXJ2UkQ1NVNGUWE5SzdRM0VLT1NN?=
 =?utf-8?B?aWhvRnVLcjdTNEpYTFlrVkx0Sm5YV0NhTmVBUi83SEdodnVoM2tiMFV5eUh3?=
 =?utf-8?B?ZGx0V1JJa1YrTG1ISDFPOHB0WmUwaERZQkRBZ0pMeEtJb3FsLzZ5RlZYREZ6?=
 =?utf-8?B?TVpvcHZqM0tYaEdhMlg2QkZtT3Y0WHFycTY4cTl6NnM1c2xyZDZFZEIrM1lV?=
 =?utf-8?B?d1ZnU3IxY0FhMmh3UHpRelJnWkswSi9FNG9JN2xpTStyaGdPbDN1MFcreGYx?=
 =?utf-8?B?MDNLUW1uTDhzSElVN2VNWHBBMmZ3WVdoY1oxZDNKR2dxQVQ5V0k3cjNocUdv?=
 =?utf-8?B?UVo1WEpVQnV5bExtT0R0MEl4R0E0NUx5akc0MDBwNHNrTWU1U2lzWkN2Z0ox?=
 =?utf-8?B?bktVaW5GcDg3L3RMZFBEaVYrQTN3dUQvS0N6WmRlVWNaeDYwS0FhNkNFYkZv?=
 =?utf-8?B?U0FRUVduRkZNQm9aRUVXRFdSY3dabmFjRENJYUJ4bFhzUWNwZ3RCZTJ4aVlM?=
 =?utf-8?B?VHgzdlVWOHY2VWhCZmFIb0pmTDJqYkNTaEhuZm1pakdqUUxjRFJteEJYRzcy?=
 =?utf-8?B?NEpFREVidUc3UTY2TFlyOWZEeWFBVjM1T2QrQzF2RDRMQURSTkVRMkhScU1R?=
 =?utf-8?B?ODdXbjRtNGFxN2U2M2xIMk1VVVNhT1grOHZvT3haMU0zVDdpUkQ2MzlrQkN5?=
 =?utf-8?B?Rk1pSDhzMDZFNkZodkhScVd1d1VhdCsxRUZIK0lGRXlXMzI0cWRxMkxqREdM?=
 =?utf-8?B?VGFra0VmbXlJL3hhUVdqN0QrWHNEN3ZPemxielc0N21pWG5qcFBWcFhwM2Zy?=
 =?utf-8?B?ZGJpV1dBbHJPZ1NpYk5SYm5EUmd5MXdUNUtGUUhWeE1nZ2F2cEFXcU85eTFu?=
 =?utf-8?B?SHlBcTFtNElKODU2OC9HWm5ubjRzVXg1ekw3VmRGbXNwTndJdnBPWDBmNi9M?=
 =?utf-8?B?QXBkSEJLM1E4ejdkZlJRQnFKSmFGNXBvT3FFc25qTDlmekdyMHNjdHowS0VH?=
 =?utf-8?B?a0I4eHU5ZDJaRXJNZHVFdU4xWTE1VGEyemwrcXk2ZEdteUF6Nyt3NnhtQVJI?=
 =?utf-8?B?bmNLTnlDMkZnYmVLMCtmd3JxS2J3MUZNaHhVUzRQNFBvaUxLZjZDU3E4Qmty?=
 =?utf-8?B?c3F6NWcwb1VjZXFKanJhUy9NYjliN0xhaHU1dzdmZVNQK1VtYVdsNXRaeUU2?=
 =?utf-8?B?eW9JUk1jRWpuNVE4MHFGclZsOW1BWm1MNS9abXAydnQwTlhoZm5DYkRzVFMr?=
 =?utf-8?B?eGJ5dU5rc1dQUEdZUzA0MG43Z2ZQdXBjR2luTXpWVUkraFhBR3V1cmlIeG82?=
 =?utf-8?B?OC9id3FYMXVKVTA4azZybFRUV1pwQnM1M0xKQXd3YVdDNVBmS3IweEwzZ2hx?=
 =?utf-8?B?NkcrUWtVWCs4VllOVXl4TVZPK3l6ZmFuRFZYZUQ4OVlTYnpVMy9USlFqQjhh?=
 =?utf-8?B?Qk5UQUpHN21DTy90ZEJoM3plV3BGVlNIN1JyOU4vaENDL0pVTlpUMHJvT1A0?=
 =?utf-8?B?RHNONzJNRVZWTHZNVjVHR0g2TXExeEg2ZkxObXdoSGFrQWhSU1BWV1JsUzJ4?=
 =?utf-8?B?Ulord09wMkhrajA5SVRlYk5Fdlg0ZHVEOWxvR0pPbmNzSWU1dDd0UWt3aTRJ?=
 =?utf-8?Q?rhQ7bPCS1r96c4CbfIrIfQEu5tOmDHABd9RPU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH3PPF517B7003F.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TCtzNWZCS0JYdnphUDF2c2VtYjB0RFJVejQ5eXNjanNnVkluUEs2d2NvNVdP?=
 =?utf-8?B?RWg5MFhIU09kaWtCRitQUWlLSGh2RlRQNzJWZm1nSXlIZmgwNnQ2bjIrUk1H?=
 =?utf-8?B?ZGVSUTArVDRya0NSUWRkVDVha1JaVnVTeExzQzRUU2pnbTdYbmk3V3lRbzFB?=
 =?utf-8?B?bHFMT2NycUNoTlZLVXNhRExaV3B6UHVQVFNwQXBBRyt0Zkh2ZDMzcE12OGNV?=
 =?utf-8?B?bG1keXlyLy9NWGNGaks4NFdYdVFPc0xIY0NGMlZFSVFzcHRGSlVYYWcyUk5E?=
 =?utf-8?B?TE1VdlJsSXUzaTFqU2tpZkFLanl4bHhVNVQyVkVEUEdITWxuTS9xZ1RESEVq?=
 =?utf-8?B?Q2Jwd002WWJBTURBWEVrQzFqZUZ1SWRadDR2Wktqd3M4K3lKbWRLbzdSNGRB?=
 =?utf-8?B?c1NYRUVodWVmNFZVTGNIdXZCeDEvZHlwVVB5b09jWmZVbTJjVTFPQmh3d1hK?=
 =?utf-8?B?L1dncmxCODZGVnFOUzZRZjBPb3VZZ1BReUI5WTZYazhqNkJEZXdnTm4rUHlr?=
 =?utf-8?B?SXlCSmxFWWZoWUhoYnFaT29HTE9McHc5WFptN2NWMjFmQi9jK2tlSHdpQWgy?=
 =?utf-8?B?YlhrQW5EMnRqUVNOclNITmdTSFcwWEJtcFgvamhOeHNDQVk0Qzl1MnJhVGVs?=
 =?utf-8?B?RlJPQVRyNWxzRld5MjEvZ29ncXh5aUNPMTJDVVQzcXRub3RFYTRpTUNhbkpY?=
 =?utf-8?B?akNwcUVkVHlpaHVmckxXNEREVGVxbVMzOHlUZ2RpU3UvZTlQZERqdGIrdVlz?=
 =?utf-8?B?dnY3NTg4VDY0WXBUK0l0eFBuZ24zOEZ0TTN1U3h3V1F2dysxM1duV2wrT1Zy?=
 =?utf-8?B?N2Zid2M3R1hZQzM3MUtwNi9BeEM0M0R4SkxraFAvbzhacVBXajQ1ZU40TG8z?=
 =?utf-8?B?UXF6UUtpR054b0EyVjVXQm5FMmtjS3RmNVJ4aUJNSTBhV0hCNFdpWGJCUWJs?=
 =?utf-8?B?RGJsN25yZDcwbHlSdjlGV3VEMnV3T2VTRmg2N2lVV3d4NlRSM0g0bWxyZlRq?=
 =?utf-8?B?TXUzbWtpaUVTcjA0N0tZNVgrcjNTUlhiam0xK1FYRExlMGprZ2I4S0VOeGxL?=
 =?utf-8?B?N2VBa29vbFUvZWh6emxuWjNPeDBMYVp5MnhEcWxTQS9CNWdNbzVERktPVkpw?=
 =?utf-8?B?TFNENFZIcnZJNGFaMDZzYnVnbVZTN3U5MUZwSCs1eXJDcXlRS0p5T2t3bUxo?=
 =?utf-8?B?RGhYYVA4R1JNMkRMVGZJZks1Q1NGWGozZTBMZzF5ZmwwMjJrV1VSU0Rwcm9u?=
 =?utf-8?B?QS9CeU5yWWttelFMZEVDalQ3Wnh0NnVCWkNjRWd2VXhCSW5uZW8vVERiSGU1?=
 =?utf-8?B?ZjM4d010K1ZFVnFibUFtdjR1dWErcjVYTkJubVlySWhPMFFoeUhkelJyTENO?=
 =?utf-8?B?SEZRazZ2Nis2MUF5eUlES0lPMno5L1Q4cmpqU2xDMHFhdjRuTjNnR1BOWXpi?=
 =?utf-8?B?dnRubTM4TUFSVWxJMUtCOVVTVjBZdFNHQ0hNRlg3K05TaWkrVk9NRDNLKzdP?=
 =?utf-8?B?cjQrNmNaaU0zb0lDVi9DNy9nL3Nma1JabG4wM2JJNkVPa01vQUpBMk5vcnpy?=
 =?utf-8?B?WGVsRkxoNGFweVVGc0RoeTA2N2xLOW1ndFZuTUJyUGNuL1NrUnpaUndaSCty?=
 =?utf-8?B?SnJWT1grRS95U0hML1c2QWZKcEttYXdyOHhRMlhsM2RFNlUzS21INS9hdDZ1?=
 =?utf-8?B?clZaNS9ZZjlISFJrNm1ZNW1WUDFMV0Y0SEJGUGhkQkE2QjBuN1NkSExLWito?=
 =?utf-8?B?Qi9aYTVOMFV3UVFoNnYzaXRWMVB2UmxZRWtpeXlPMHdVcmxLK2VnSEUrV0t3?=
 =?utf-8?B?U2piNkxBT2JzWE1BZmxNcjhkb0tTZFdBK2l1VEFYSU1IUHFCNXJxbUlySGhy?=
 =?utf-8?B?U0RNOEdWODE4ZFJ4c3dYZnFZT2xGUjlPdW5rSndKVkk3bTlzZ2J0Zi9TZWQr?=
 =?utf-8?B?VEN3NllvUjR6dUJ0TzlIZHpKcVBTN1Zab0MzUFRma1FReUxGRGtxUWFFcTBU?=
 =?utf-8?B?MlBvRFFmYjlZMU5KY2JweTAvUGhQNWQydnNnNWtkWkZid0ZzdDdMY0tPa1hh?=
 =?utf-8?B?YWh0YitqSVl0NFNaMTMvelpIdGhYc3FpOE5YQ1ZzOVhUaVpPNit3QlYvSXpB?=
 =?utf-8?B?bXAzVDB4UCttUXdXbTdJZFZGN2lKWGdtQkRhZmlwMWUrdGxycXhQVmJIbERv?=
 =?utf-8?B?eGc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 3UGALXttvyKjQSMo7dUzMl2WhrtjpufG/dyK2Qrf+2rE40xKP5WgyJMzJdugMrV7YtKiZSdllaO4TS7vm8ewN1s3TyoU1Yw6TDrGfGE04rGJKqJ7giTbldXbmJBc5ABmR4ZOjUz8/ZlVqg1wc8HX2xmttIXU2o929ieN1MXFxr1p+OSwvm+CplQiYiQn+aJakBlIa6rUsxiSSlXaejRFMTy3XWvAjkvSDjPLUMEAPhkIb1OshjWCFspTivIrsWoeZN6cdb0r8Z4uqwJf/0XddQFNEDLTsxit4q7RZVeQj8LRk7TAqAjNaT4pR4m23xL9imHdAyUuev8PHxQ8UIQoaIqvzoZLaS9KgfBsaOdEWiV+GnhTbUVorMcj6qYhHpIZAvPJxFLXkBUDQG9tDGkM3HS8pN+CI8gULHzPtm8BGaZqtQs1KMtnGvXgHhCoTqIO14ZZPsHs/BdNYiRAPOXGpUCUTWs9vl2nX+vylpbylvcX6DomNwp+LK4SEzMT3TYTF/7JGFXbzIjEr3D6nWnwk9p8iFZg9xCy14tNl0EmCFc/TlXTF6X7WJBpDvifqVXU4yd7ufsjVgFwa8XAmDHAhY91zuTTz+LZId3CpHv/X7o=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56b64f14-5df2-4ac7-a4cd-08ddc0b06ad6
X-MS-Exchange-CrossTenant-AuthSource: PH3PPF517B7003F.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2025 19:23:29.7543 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DvKeUoMiyCr8bcqNqtGx2PwuSWhd1DXhzlZxI3B5KOBg0AbiY1hf2pzLLLcRqUTx/Rb71/nJBwvJkJmRrWiYKKDNhtYWYt57MiAaD48oAJQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB8053
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-11_05,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 malwarescore=0 mlxscore=0
 phishscore=0 bulkscore=0 mlxlogscore=999 spamscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2505160000
 definitions=main-2507110144
X-Authority-Analysis: v=2.4 cv=BYbY0qt2 c=1 sm=1 tr=0 ts=687164b5 b=1 cx=c_pps
 a=e1sVV491RgrpLwSTMOnk8w==:117 a=e1sVV491RgrpLwSTMOnk8w==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19
 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Wb1JkmetP80A:10 a=GoEa3M9JfhUA:10 a=edf1wS77AAAA:8 a=hSkVLCK3AAAA:8
 a=WWoXvQQ0AAAA:8 a=XdHHFyE6wWtMDUGmxncA:9 a=QEXdDO2ut3YA:10
 a=DcSpbTIhAlouE1Uv7lRv:22 a=cQPPKAXgyycSBL8etih5:22
 a=jSEAb1kaveHxcfb6UDw8:22 cc=ntf awl=host:13600
X-Proofpoint-GUID: gJMofpak9O-B45JT-LcMeSL7SWW6Mg8q
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzExMDE0NCBTYWx0ZWRfX8VdnPMbVKgeM
 gWGMHagbdCQ8vnka+zP0sccw9boa75+d26WA2BYjXEzPN7zppnLECcN2CTMczRo4JSRKK4yXStD
 YSH6H6DRxrg95c46g26ZohoCoAqxTI3yGFtDwEDRqd6Nntq5ofUzlNcLWR17Q1OnAieT+Z3ogWO
 SYk7BpwhN+X4QsKcfeytXP2FyUl2AM5WOFEKHzmfVIGySDzWWAD3sTT2U4XqK/g1Yk1ATx+WtCG
 b5zaCNhRh5RYOWfqyeX+NYshZPcHu1InD2ybL+EeuIZl7bqSRvu7rHsxHcA7PKQa5Ti8R1UHBcC
 K7Bdj0weqlyeEfdAi+dzRL2ahKTwXNxQWXp0Q4PF5+TZSan5fdYRZVJZutv3LOYDa2LJapkLt7d
 8PXAjQyE91s8/gk3b+JWRcKjuXyuRrM/fRdxgFmTd03RBqW8Vhgs3ZPqc/eaIiAPRiw8cSzC
X-Proofpoint-ORIG-GUID: gJMofpak9O-B45JT-LcMeSL7SWW6Mg8q
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  I'm finally trying to catch up. On 4/23/25 5:13PM, Arnaud
 Lecomte via Jfs-discussion wrote: > When computing the tree index in dbAllocAG,
 we never check we are not > out of bounds from the size of the stree. > This
 could happen in a [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.0 ARC_VALID              Message has a valid ARC signature
 0.0 ARC_SIGNED             Message has a ARC signature
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.220.165.32 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uaJLa-0000Xo-J3
Subject: Re: [Jfs-discussion] [PATCH] jfs: upper bound check of tree index
 in dbAllocAG
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
 syzbot+cffd18309153948f3c3e@syzkaller.appspotmail.com,
 linux-kernel@vger.kernel.org, skhan@linuxfoundation.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

I'm finally trying to catch up.

On 4/23/25 5:13PM, Arnaud Lecomte via Jfs-discussion wrote:
> When computing the tree index in dbAllocAG, we never check we are not
> out of bounds from the size of the stree.
> This could happen in a scenario where the filesystem metadata are
> corrupted.

Looks good. I'll apply and test this.

> 
> Reported-by: syzbot+cffd18309153948f3c3e@syzkaller.appspotmail.com
> Closes: https://syzkaller.appspot.com/bug?extid=cffd18309153948f3c3e
> Tested-by: syzbot+cffd18309153948f3c3e@syzkaller.appspotmail.com
> Fixes: 263e55949d89 ("x86/cpu/amd: Fix workaround for erratum 1054")

Removing the Fixes: line. This doesn't make sense.

> Signed-off-by: Arnaud Lecomte <contact@arnaud-lcm.com>
> ---
>   fs/jfs/jfs_dmap.c | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
> index 26e89d0c69b6..7acebb9a21b0 100644
> --- a/fs/jfs/jfs_dmap.c
> +++ b/fs/jfs/jfs_dmap.c
> @@ -1385,6 +1385,12 @@ dbAllocAG(struct bmap * bmp, int agno, s64 nblocks, int l2nb, s64 * results)
>   	    (1 << (L2LPERCTL - (bmp->db_agheight << 1))) / bmp->db_agwidth;
>   	ti = bmp->db_agstart + bmp->db_agwidth * (agno & (agperlev - 1));
>   
> +	if (ti < 0 || ti >= le32_to_cpu(dcp->nleafs)) {
> +		jfs_error(bmp->db_ipbmap->i_sb, "Corrupt dmapctl page: ti out of bounds\n");
> +		release_metapage(mp);
> +		return -EIO;
> +	}
> +
>   	/* dmap control page trees fan-out by 4 and a single allocation
>   	 * group may be described by 1 or 2 subtrees within the ag level
>   	 * dmap control page, depending upon the ag size. examine the ag's
> 
> ---
> base-commit: 8560697b23dc2f405cb463af2b17256a9888129d
> change-id: 20250423-ubsan-jfs-3a58acae5e57
> 
> Best regards,



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
