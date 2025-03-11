Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F521A5CC6A
	for <lists+jfs-discussion@lfdr.de>; Tue, 11 Mar 2025 18:41:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ts3aY-0005ix-6w;
	Tue, 11 Mar 2025 17:40:22 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1ts1qI-0005vO-E7
 for jfs-discussion@lists.sourceforge.net;
 Tue, 11 Mar 2025 15:48:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:In-Reply-To:From:References:Cc:To:
 Subject:Date:Message-ID:Content-Type:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WFrnsV2elNpBiZfSdn9ba6XinV+xdxrPIrXox/Sofik=; b=VTMYNq1rHykXwlR7d4brtZISpa
 ZAbfunq/1p41DUxuNzy4xLOGBmEk2uGxUQBKOCk2u9+c0DdSfyWL2NMmKIKw0PLpTkKNJj2lNnuXH
 VLQ963ETrdw8qg+nlo+YAUt3FS+tyoW1iKFJIRmzMZKvDdEArV+jnE4KYJQG0azBmDWQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:
 Content-Type:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WFrnsV2elNpBiZfSdn9ba6XinV+xdxrPIrXox/Sofik=; b=Cwmy87GLocKP/aeq/YXiN24B/7
 sJY/QN4RwsfImg8U6DbOUQjHLUBeBKbh8Iy9H9sizNsUXy/Xy4j6gosTZ5/t5ahi320cMLFHWf50Z
 fsWDNEXFV3KbDyjQ+5tSxlTnuWnHy8cCUlnwQIXXDxwwf7RxK499t/FTIa83vsDw+G5E=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ts1q6-0005oS-AE for jfs-discussion@lists.sourceforge.net;
 Tue, 11 Mar 2025 15:48:30 +0000
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52BDMuer003196;
 Tue, 11 Mar 2025 15:48:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=corp-2023-11-20; bh=WFrnsV2elNpBiZfSdn
 9ba6XinV+xdxrPIrXox/Sofik=; b=hIRibd+mkPCNl9rzLQNgfkDCxdofUNZIWL
 WIa1VhJy9qEtlseWTE82dXJL5XhDdKR1DQF3ePUB6tSi5XIesRB+li24vN6/d4re
 4KST6x7YW0q2gNC3uHAHbgG/M+uszVQnQy+Kz+80y8nPmVZ6QuvuNfJtOvM0kmSm
 2Tle3uk4lixOpcYR93jYolfE86yfSoUDPne/f+T1nYY3zQ+wpPSGkTLNQXXOWDjb
 n3qrhodF9uSKVRl6hE/cpwis6ZXB6Bl48NXcmnvWAGNE7mQBj0yK34Zw8hf+JeEf
 YLPwVGPR3u6ogRyXf7WeknsJwn7f4JZtqspXBwNLOzqHdMoNMvxQ==
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 458cg0w7n2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 11 Mar 2025 15:48:08 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 52BEWU80021697; Tue, 11 Mar 2025 15:48:07 GMT
Received: from nam11-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2174.outbound.protection.outlook.com [104.47.58.174])
 by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 458wmpq6ca-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 11 Mar 2025 15:48:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Qk4GpPQu5bWqpHj5Omr/GeTk+nF+nxEZI8OklWBiVtzuBgsmGyotX5cE2zT+ouCqRTaKlsEBRhySF9vwe8YD931Ttz5Q48QYioH+K60wO+E/s3Sr4w+En6nUT/j0BBgZ11DFhX5nypiIxxw+dnYbsBeYGIXCOMpd54vJA5ja8QvWnbzNr9pL0vTz/MqBkc8EEP3ffMhaVG4v2s04g+LoEbENQSIMVxVCqKzTu8JGjXXgjPwS7Ooh1G+PZOWtH4WwtkZuHkBlcZCWD8uHqByUCOr7wrmFXnoJW3vq37Ml8fMdpXbXNF8K+g91kmluU4zP1nRB9BC6KZBGcLboTpwaKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WFrnsV2elNpBiZfSdn9ba6XinV+xdxrPIrXox/Sofik=;
 b=oCSfyvbakUlRjzvQsEyI2x0UzkFx3FROvT5H/Lf1xPJlOoY+2C+ys+R3M5KwLbf5Q+MjsHrmt421/wbB58OTWyrWByRVx6FHZm5YfOUPrZvvI1PMo2ITMIArg9JpVgBGiKFRRyity4qWeoYZ7K2UFfJJProH9bICpvbIQDaArVuszRvoB6n8rSSWtNByKqaXG1k1UI7zpkbzqejPxFiSn/5or38xpdZjMbRANURPlo0ut3kh7TZpA73r5agLNz2/DxoR1vVugVBhnq/bQbCAfInS95dPdIVcUU9A5Al+KxLRqEjYDXmCb17HXvuc08woX8abryWIHse9MERgpC1E6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WFrnsV2elNpBiZfSdn9ba6XinV+xdxrPIrXox/Sofik=;
 b=bm1sq+OJ8EX6v+0sEq4ZMK+v19TpGra/fvPP+AELAB0y2XxV3aWm6pMBQnNhOttPMCS492Ih7hlsC8UyBSKmfMiHLX9gyMaB0SDq9+JMHe3vDdJIfIsYRO3tNUbc91nVk+tHTVdwhMksDOfB/dGVvqBVqjs+woHDyNGte9C034g=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by PH8PR10MB6502.namprd10.prod.outlook.com (2603:10b6:510:22a::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Tue, 11 Mar
 2025 15:48:05 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb%5]) with mapi id 15.20.8511.026; Tue, 11 Mar 2025
 15:48:05 +0000
Message-ID: <8548e6ad-c21d-481c-b9c5-bd0403ee26c1@oracle.com>
Date: Tue, 11 Mar 2025 10:48:03 -0500
User-Agent: Mozilla Thunderbird
To: Dylan Wolff <wolffd@comp.nus.edu.sg>, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <CAJeEPu++aAiF=ybq+XHEdGad+RsxR8d=tmEe5LxCOnDjWY_OFg@mail.gmail.com>
 <CAJeEPu+0EttQaFYKhGUbn2j=_nLvT-wfdBS0wQjXDkBq962g6g@mail.gmail.com>
Content-Language: en-US
In-Reply-To: <CAJeEPu+0EttQaFYKhGUbn2j=_nLvT-wfdBS0wQjXDkBq962g6g@mail.gmail.com>
X-ClientProxiedBy: CH5P221CA0009.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:610:1f2::14) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|PH8PR10MB6502:EE_
X-MS-Office365-Filtering-Correlation-Id: 3509bba4-87f5-4b49-0bb8-08dd60b41d1f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|13003099007|8096899003|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VVlOUU0wTjVxNFAvekFEa2hsT21URmVkRWczZjdjOWR1OGhGeVg1SUx0bXQy?=
 =?utf-8?B?NXE4dVdNTnBuaEVURHdyQUp3OUlCckpPMG9WYm14aCs4ZkxobmN4WWczdHcr?=
 =?utf-8?B?YkFuS0ROZlBZN3Y4dFpwQ1ZNc3poS2xPZnBneEdrVnlST3RyanZsWVpjRWxV?=
 =?utf-8?B?SjRKSmhiaVFSWFRlZ2ZNcnpPbXIyNm5kaWRPUDFieXV1LzUySmlpRWZEYUZu?=
 =?utf-8?B?TzZhbDFUM3N6RnZYbU1aWEJ1SzhPMVBOWmlpbno0Tkt1RVlPV3hBOS9uU1px?=
 =?utf-8?B?YzZoSTF6R2FqeFNFVHBxWGFMZ0xFcUFpZXpOalBVL205Y3lLYVpRSnQxbEts?=
 =?utf-8?B?c0FnNExqNXFNSkNGaUZPWUtuWmpra1o4cXdVc1M1QlJ2T09hcEhkeFF2eHhZ?=
 =?utf-8?B?RVFBU2s4bkZZV2dLUVhJalphQVVBQlBWdE9Qa0ErLzJGczZPZ3NuamMvUzVD?=
 =?utf-8?B?STdlYTdHMThTWTREKyt5YmJrYzJTYlMwRkplTnp6MDlPYnF6MG1OOUNJWks1?=
 =?utf-8?B?UThhUWpoVEkvMm5IMGozSW5CZ0FqdjJxNVNURXZ1STVJZHhvSVZML2VOYU4y?=
 =?utf-8?B?M0ZiOXUwcVorZzlKenIrdXl3ekdIOEFxb3o1eldXMVlXeTQ0T2V4dnJPZUJC?=
 =?utf-8?B?aC9kaXNNdTAxRjdPQXZKeVZBN0pINGoyRlNoaTl6amVnNTNQTEgyR2NYUzJt?=
 =?utf-8?B?YlNqeElZdXhmVTFXQTMxZG5FbmNrc0NKR3NCbGs2aWFNd2NPbmNSYzRJUVJm?=
 =?utf-8?B?TlpBWDU0WCtkZFR0L3p0OVVCeU1wcXpKd25HZy9PTXlWWERad2dtVTBaOVpa?=
 =?utf-8?B?MGpBdmY0UVk4cTFPTEhEVVNSVTFQbmV3aitaZ0I5N2x0T2NuQTBsdDd4dVdw?=
 =?utf-8?B?S016K09QbFBMdEJUNDEyb3lJRFBzSDJVTjg5SlpyRlNCK1YybG9aOW1zcmI3?=
 =?utf-8?B?Nk5zUG4xVWxhVmgrekgrczdaK2FRYktMbVZ2dTZDQzZjSUhBOHl6OFMxbzM1?=
 =?utf-8?B?NWltclFLVmlPZDVteXBpVytDQU5QMldHMVJ5MGpJYkxFcmJTVmFNWkR2TUZL?=
 =?utf-8?B?bTZkSTJrUzE4M2tEUElXS0dHUThQanY5WXpuNEFhOG9rZGJKclZwUzNqQXg3?=
 =?utf-8?B?VUo5ZmtKQUxNMXVELzA2WDBUU0RrbFEwQ2EyMzhyd2w3bHVqZ3ozY0hYYzJQ?=
 =?utf-8?B?ODdSRXU3MlA0bllXU3lrcUl5TlIwTUdpYVNHck45b1c0WEJhQXRWb0FiK2pz?=
 =?utf-8?B?ZVUzN1R4UGFRdSt4c0w4MUw4YVVmZWhvNGJramNFclZTcXpFc3d6ei9pcUxW?=
 =?utf-8?B?TU1Xd1d3Y3kyNDFNVUwxMjg4RVkzVGxRaVU4MFFpTEFLNFYvNzFia25Rbnhu?=
 =?utf-8?B?TXpSL1NWQjAzVGlnd2NzKzFsVWNRaGlPZXB6YTJsOCtTRmtqVGNDVFhTWE1S?=
 =?utf-8?B?WE1aajNFK0wwK3BtcXNyMmFjU2lYUFRGblFyQ0ZrMVVTaSt4UmpvclQ4WDJN?=
 =?utf-8?B?YlpETTZnaWxPUFQ2Y1djMFN6SXpLV2Y2SW1xNHRidFd6VGpKU0JQOWNEckw5?=
 =?utf-8?B?SGl4K0NKSGViN3JaRkRtUmtxUWx6OTV1dEFUUGtNT1ovallMNkZGZGw3RzNh?=
 =?utf-8?B?Y3g4L1VEM1ZIelVVWUdMT1d6ekdydkg4bVJHUjFua0VRcjl6MjQ0aHBoQmI3?=
 =?utf-8?B?cEJYUmJPZlVYUUdZak1pZ2dJdk1VWFBRdC9CVW9zMWNOQkFjbVgwNjlZNXpM?=
 =?utf-8?B?QnJwVXltVmRXNTArZjh1bjRhRnNZUmpNTFZNbVAyNElJNVZjaTN4TFg1Z1RO?=
 =?utf-8?B?Vno1VmhicWJSNFc4Mk5vakZlQWlFbkU0Nmx5dlRxQy8zMTNVNnNvTjYva21Q?=
 =?utf-8?Q?EFZWWZHgsSXMG?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(13003099007)(8096899003)(7053199007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZFN4eDM1NzI4SWNMYTNrYzhzc1dsT1VQRzREVDBDb09RN0JRZ3BCQ1FKdEhO?=
 =?utf-8?B?ZnJPd2RlWFg2emJmSENWTFNtVXE5RmJBUkVqaDFsUDV6a0g0UERRYVpmUlNQ?=
 =?utf-8?B?Z0x0eXdla2VseklkVGVsc1F3ZGRxMXhjekdQV0UvQUtBNnJma2VBM1llWkx2?=
 =?utf-8?B?YVowNWI0RmVvaXhCaGVNeUpoMFNlK0NySjZOTkpURDU3dTJobXdmQzY1RHo3?=
 =?utf-8?B?Smh5ZEpwaUFzd3gyME4vVnpFU25JTW1WNVpQMlI0dzhwalZ6a05IU3JLYXg1?=
 =?utf-8?B?TWd6Y1pBMDFHV0U5MVVpaDl0eHlaVlNsMC8rZ3pObDQ2M2ZvZkRRdk01QkNy?=
 =?utf-8?B?Q093ZGpmSkdQb2REcUpMTHV4YkRLdEsyenZYYkpzSHVkRWs5bnV5WnpCRFlC?=
 =?utf-8?B?VFhlZUNjTHJWY2QrMS9BWVlIcVNKYjhyVGQ3Qnk3VXo5TUp5RUVzemtlWlZy?=
 =?utf-8?B?b0VING04Qm1vcTRneVlxakhQbXZnaFRmUjRpd2loNWt3RkFjV0UxWWtOZEdY?=
 =?utf-8?B?YVVsSmhjRFhsRS9OQjNXOU5uZDhTMEpGeXg1SWRnbHpBZ1RLTjBvK1ppMnox?=
 =?utf-8?B?aGp6eHArZ2tHQlNuckVNak91U2F6K2x6SjBLRnR2NjBDalc4N1pyOG9DNEYz?=
 =?utf-8?B?WXFRamgrTW5ObnVSSDZUYWNGeHlSeVVwT002NkdEazFaTGJFVE15MnlOa2I0?=
 =?utf-8?B?cjZIYmtSVkQ3dkZCTVR4S1NJNzJ3bEhRZ3oxVlRibjNXM1F4OXVnMTQvU3lY?=
 =?utf-8?B?YVRKWmFuVExEVEZIa1IwNHNuZ3A2b2ZXOVNtN1JNOVkrSC9jemRyR2N0U0U0?=
 =?utf-8?B?Z2JFUUNlcCtXVmZ2b09UV1Nma1Q0dUJKNUw3aHl5eHlkU2xjZ2lDMWI2RnhL?=
 =?utf-8?B?R29XdXUxdTBKZlczTUpESlJKMFJPck82QkovRmt1V2k3QmZta1c1elhmU3N1?=
 =?utf-8?B?Ny9GNTZ2QzZxM2hPemVwTkxDeXRwQW8xYUxubGo3RlFudml3ZGpZdWlQNG43?=
 =?utf-8?B?VnZOZFdaakN5UDZXZHZBY25uTmxGRVFHcStTQldLckg3c2VLSENEc053azg0?=
 =?utf-8?B?dnJvZ0JmZUFobGR4Q05sRG0yczZreTBHRDc2Nkk2VjhPNlpZT2VSZUZ6RjJj?=
 =?utf-8?B?NkNPY3MxK0pFaTNJcndlNzRDT3U4OVIwWHprZ0V1NG8rbnBvMHRBMXVpNy9p?=
 =?utf-8?B?bnZwWjl1cUhTMzJKZndvd0t6Zk1oeHJma1ovQXE4ZEt1MlBiMENYSlJsMFdx?=
 =?utf-8?B?UXVZS1VQU0dqRWc5WjVxWTBsejNKdnMxdjJLY3l2NlhvQWM2RVVMc2ErT2t3?=
 =?utf-8?B?eW4wQ3V0WDU3S1djQTZQL1A2Tkd1a08vdkdnL2JUV01lWFRaQys0SlVpT0xm?=
 =?utf-8?B?T1lsNy9qaFduZHRPalR5b1NFendDbTJJQjE2Q3FzaEhGMHVyRXg5a08yM3g5?=
 =?utf-8?B?UmtqTmtYYkFNWkYrS0lhMUU0Rkd4YUM4ZCsyeVJTRUtMQWhsZmd6R3djc1Ey?=
 =?utf-8?B?N3pIemlWNGRaRzRDb0JyNUVoVCszNHZrZkE4K252WDNEYnlyelljUUprOE50?=
 =?utf-8?B?bjlmQ2JibE90azVZOFMreEg4ZXc3c0JpUTlDdVBNU0FvcW1ITHczMnd4RUVD?=
 =?utf-8?B?SlIxVmYvNUFkNXk3T1AxdlFjcWRFYTdGeXczYTN3YjQ5L2MrT3hpOTJjSnlt?=
 =?utf-8?B?TFRoTGdWM1h3b0lGZ1pibTZzbW9RNGxYZWlEZks5b2JSZHcyWEI1YXBCdFZR?=
 =?utf-8?B?MSt1blhzRTYyTngvMHZtcnBibktEa2JUSUNOTkVhNFJtWk0rSEtrZWRzK3k4?=
 =?utf-8?B?V0V6cEdwUkkwYnBPK3dhM3Q2eWtRV25VbTBIbVp2dzZDcS9KeDE4RnZ6Z2xX?=
 =?utf-8?B?UGFDTTVEbHh1MVJHbjhwSUdUeVM0Zmp0ZjcvZXE4ZjhFQTl1RzlTN1JwNTNk?=
 =?utf-8?B?dXR4UkVYRU56VFovUERQL2ZlTmZ4ZGlPcVprTWJXTlZ5S0lhenNVZjNDdUxV?=
 =?utf-8?B?YUVQWVVSMTZrb0x1SEVsTEV0OFY3dVhmbUgzM2lLcGZVSDlKdjEyVUhQaFB0?=
 =?utf-8?B?YnR6QWlJWEp4a2loVk16MUFhdEJVK3BOaVZTa2NVMEdnNzdyYmNFdXYrenFw?=
 =?utf-8?B?UmdGOENzM095ZHc1OW9LQ0lYT1NESXlQR3JrUzNyWFFFeVNRbXlOQmo1TzA4?=
 =?utf-8?B?R1E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: iIGdJl1p1K+1RMxN5PRTFm2/VkuK5BHTOnRlwnx2HysD4iGfs1/qohIIY5olbGJSfjP5gK4+/cJOAzBct8eLEf23GQTegEzyty4IOHpPEhx6C2j/YhrTG7kqUQgjs2aQ2h72QNcDVLp9FfRUnypCae362ERlycwWm9jMpCmLUxayK4DMdcoQ4N0PftX12aZA5h9ReVC8HZJjrO0o2cE1APsgbE2MmgKpCDdrjFuprkjAZ7wIYxTzM8zFtQUtTzH5kuLi3xAKOHQNIT+UciUg/eUUExoUNiqehOASKehSpvg9mu9K8zmS6HYYgft9VDpNH1TLsv85Amr31NQglr1X+oIsF00qbI4ItMC5iyiGYe8khQEPEbOJcP+bTzFmp5Geu/kucaQ998o9Zwh+04Ka6ilVNZGTw178tQ/KOireHTixENApe96qd/RAHsSEkc6+lr6JKhcfB5FUEE99ie8Vg147OczyVdlpyd7XczGCVmtBI5TLeBy/jFi/kQF+hsWOhMKw0KWoUafm72k3PPyjO1RnAEUcrCwStUvLeV3NHnADSVfIKn7SAJaoo0dbgUuX3a655SHhX6GfTlt9Bhg8nT7AUHbtDEQxopunZ5FJYCI=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3509bba4-87f5-4b49-0bb8-08dd60b41d1f
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2025 15:48:05.7403 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aZJVW7o1103MhLwka0oiuNk6jvFnrpSB2+02VClFvbqrnxTbwscTLogxW6t3XPJY55HOArssaYSbazimYrn8OGBEbEt5+wfzVZ5IK/KG4ns=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR10MB6502
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-11_04,2025-03-11_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 spamscore=0 adultscore=0
 malwarescore=0 phishscore=0 mlxlogscore=999 bulkscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2502100000
 definitions=main-2503110100
X-Proofpoint-GUID: XkpEdUgqzcHO8t9lMzXtMkV08K8kFd3p
X-Proofpoint-ORIG-GUID: XkpEdUgqzcHO8t9lMzXtMkV08K8kFd3p
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 3/11/25 1:47AM, Dylan Wolff wrote: > Hi all,
 > > Just checking
 in on this report. Is there another email list I should > be using for this
 issue? Can anyone confirm whether or not our fix is > acce [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.165.32 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [205.220.165.32 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [205.220.165.32 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.220.165.32 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1ts1q6-0005oS-AE
X-Mailman-Approved-At: Tue, 11 Mar 2025 17:40:21 +0000
Subject: Re: [Jfs-discussion] General Protection Fault / KASAN:
 null-ptr-deref in jfs_ioc_trim
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
Cc: Jiacheng Xu <stitch@zju.edu.cn>
Content-Type: multipart/mixed; boundary="===============1492873618976690888=="
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

--===============1492873618976690888==
Content-Type: multipart/alternative;
 boundary="------------7OnQpVXy055yK7aw0gPbax0p"
Content-Language: en-US

--------------7OnQpVXy055yK7aw0gPbax0p
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 3/11/25 1:47AM, Dylan Wolff wrote:
> Hi all,
>
> Just checking in on this report. Is there another email list I should 
> be using for this issue? Can anyone confirm whether or not our fix is 
> acceptable?

This is the right list. Somehow I missed this one and/or forgot it.

The patch looks good to me. Can you re-send it with a Signed-off-by: ?

Thank you!

Shaggy

>
> Thanks again!
> Dylan
>
> On Tue, Jan 7, 2025 at 4:53 PM Dylan Wolff <wolffd@comp.nus.edu.sg> wrote:
>
>     Hello kernel developers!
>
>     We believe that we have found a concurrency bug in the `fs/jfs`
>     module that results in a null pointer dereference. There is a
>     closely related issue which has been fixed:
>
>     https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=d6c1b3599b2feb5c7291f5ac3a36e5fa7cedb234
>
>     ... but, unfortunately, the accepted patch appears to still be
>     susceptible to a null pointer dereference under some interleavings.
>
>     To trigger the bug, we think that `JFS_SBI(ipbmap->i_sb)->bmap` is
>     set to NULL in `dbFreeBits` and then dereferenced in
>     `jfs_ioc_trim`. This bug manifests quite rarely under normal
>     circumstances, but is triggereable with the attached syz program.
>     We've also attached a trace of an execution that leads to the
>     crash (thread id:location). If needed, we can share our setup in
>     detail which reproduces the bug with very high probability.
>
>     Here's a proposed patch:
>
>     ```
>     diff --git a/fs/jfs/jfs_discard.c b/fs/jfs/jfs_discard.c
>     index 5f4b30503..4b660296c 100644
>     --- a/fs/jfs/jfs_discard.c
>     +++ b/fs/jfs/jfs_discard.c
>     @@ -86,7 +86,8 @@ int jfs_ioc_trim(struct inode *ip, struct
>     fstrim_range *range)
>             down_read(&sb->s_umount);
>             bmp = JFS_SBI(ip->i_sb)->bmap;
>
>     -       if (minlen > bmp->db_agsize ||
>     +       if (bmp == NULL ||
>     +           minlen > bmp->db_agsize ||
>                 start >= bmp->db_mapsize ||
>                 range->len < sb->s_blocksize) {
>                     up_read(&sb->s_umount);
>     ```
>
>     Applying this patch to our kernel locally appears to resolve the
>     issue.
>
>     If this looks like it might be a security vulnerability, please
>     let us know if there is anything we need to provide for the CVE
>     process.
>
>     We would also appreciate attribution for the discovery / fix if
>     applicable:
>     >Reported-by: Jiacheng Xu<stitch@zju.edu.cn>, Dylan Wolff
>     <wolffd@comp.nus.edu.sg>
>
>     Environment:
>          Qemu (invocation attached) running a Syzkaller image on an
>     Ubuntu 22.04.4 LTS host
>     Kernel:
>          HEAD commit: fbfd64d25
>          tree: upstream
>          compiler toolchain: clang-17
>
>     Thanks!
>     Dylan
>
--------------7OnQpVXy055yK7aw0gPbax0p
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 3/11/25 1:47AM, Dylan Wolff wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:CAJeEPu+0EttQaFYKhGUbn2j=_nLvT-wfdBS0wQjXDkBq962g6g@mail.gmail.com">
      
      <div dir="ltr">Hi all,<br>
        <br>
        Just checking in on this report. Is there another email list I
        should be using for this issue? Can anyone confirm whether or
        not our fix is acceptable?<br>
      </div>
    </blockquote>
    <p>This is the right list. Somehow I missed this one and/or forgot
      it.<br>
      <br>
      The patch looks good to me. Can you re-send it with a
      Signed-off-by: ?</p>
    <p>Thank you!</p>
    <p>Shaggy</p>
    <blockquote type="cite" cite="mid:CAJeEPu+0EttQaFYKhGUbn2j=_nLvT-wfdBS0wQjXDkBq962g6g@mail.gmail.com">
      <div dir="ltr"><br>
        Thanks again!<br>
        Dylan</div>
      <br>
      <div class="gmail_quote gmail_quote_container">
        <div dir="ltr" class="gmail_attr">On Tue, Jan 7, 2025 at 4:53 PM
          Dylan Wolff &lt;<a href="mailto:wolffd@comp.nus.edu.sg" moz-do-not-send="true" class="moz-txt-link-freetext">wolffd@comp.nus.edu.sg</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir="ltr">Hello kernel developers!<br>
            <br>
            We believe that we have found a concurrency bug in the `<font face="monospace">fs/jfs</font>` module that results in a
            null pointer dereference. There is a closely related issue
            which has been fixed:<br>
            <br>
            <a href="https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=d6c1b3599b2feb5c7291f5ac3a36e5fa7cedb234" target="_blank" moz-do-not-send="true" class="moz-txt-link-freetext">https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=d6c1b3599b2feb5c7291f5ac3a36e5fa7cedb234</a><br>
            <br>
            ... but, unfortunately, the accepted patch appears to still
            be susceptible to a null pointer dereference under some
            interleavings.<br>
            <br>
            To trigger the bug, we think that `<font face="monospace">JFS_SBI(ipbmap-&gt;i_sb)-&gt;bmap</font>`
            is set to NULL in `<font face="monospace">dbFreeBits</font>`
            and then dereferenced in `<font face="monospace">jfs_ioc_trim</font>`.
            This bug manifests quite rarely under normal circumstances,
            but is triggereable with the attached syz program. We've
            also attached a trace of an execution that leads to the
            crash (thread id:location). If needed, we can share our
            setup in detail which reproduces the bug with very high
            probability.<br>
            <br>
            Here's a proposed patch:
            <div><br>
              ```<br>
              <font face="monospace">diff --git a/fs/jfs/jfs_discard.c
                b/fs/jfs/jfs_discard.c<br>
                index 5f4b30503..4b660296c 100644<br>
                --- a/fs/jfs/jfs_discard.c<br>
                +++ b/fs/jfs/jfs_discard.c<br>
                @@ -86,7 +86,8 @@ int jfs_ioc_trim(struct inode *ip,
                struct fstrim_range *range)<br>
                &nbsp; &nbsp; &nbsp; &nbsp; down_read(&amp;sb-&gt;s_umount);<br>
                &nbsp; &nbsp; &nbsp; &nbsp; bmp = JFS_SBI(ip-&gt;i_sb)-&gt;bmap;<br>
                <br>
                - &nbsp; &nbsp; &nbsp; if (minlen &gt; bmp-&gt;db_agsize ||<br>
                + &nbsp; &nbsp; &nbsp; if (bmp == NULL ||<br>
                + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; minlen &gt; bmp-&gt;db_agsize ||<br>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; start &gt;= bmp-&gt;db_mapsize ||<br>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; range-&gt;len &lt; sb-&gt;s_blocksize) {<br>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; up_read(&amp;sb-&gt;s_umount);</font><br>
              ```<br>
              <br>
              Applying this patch to our kernel locally appears to
              resolve&nbsp;the issue.
              <div><br>
                If this looks like it might be a security vulnerability,
                please let us know if there is anything we need to
                provide for the CVE process.<br>
                <br>
                We would also appreciate attribution for the discovery /
                fix if applicable:<br>
                &gt;Reported-by: Jiacheng Xu&lt;<a href="mailto:stitch@zju.edu.cn" target="_blank" moz-do-not-send="true" class="moz-txt-link-freetext">stitch@zju.edu.cn</a>&gt;,&nbsp;
                Dylan Wolff &lt;<a href="mailto:wolffd@comp.nus.edu.sg" target="_blank" moz-do-not-send="true" class="moz-txt-link-freetext">wolffd@comp.nus.edu.sg</a>&gt;<br>
                <br>
                Environment:<br>
                &nbsp; &nbsp; &nbsp;Qemu (invocation attached) running a Syzkaller
                image on an Ubuntu 22.04.4 LTS host
                <div>Kernel:<br>
                  &nbsp; &nbsp; &nbsp;HEAD commit: fbfd64d25<br>
                  &nbsp; &nbsp; &nbsp;tree: upstream<br>
                  &nbsp; &nbsp; &nbsp;compiler toolchain: clang-17</div>
                <div><br>
                  Thanks!<br>
                  Dylan<br>
                  <br>
                </div>
              </div>
            </div>
          </div>
        </blockquote>
      </div>
    </blockquote>
  </body>
</html>

--------------7OnQpVXy055yK7aw0gPbax0p--


--===============1492873618976690888==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1492873618976690888==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion

--===============1492873618976690888==--

