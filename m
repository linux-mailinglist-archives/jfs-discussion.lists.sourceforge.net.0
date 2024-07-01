Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 387FE91E9BC
	for <lists+jfs-discussion@lfdr.de>; Mon,  1 Jul 2024 22:41:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sONpg-00052r-Nq;
	Mon, 01 Jul 2024 20:41:04 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1sONpf-00052l-3E
 for jfs-discussion@lists.sourceforge.net;
 Mon, 01 Jul 2024 20:41:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CNxuIQt7MJEG23B6h4Zgcd3QAGi5lJSRufOQXm3V2vQ=; b=avzKvDze8QYLA1SG031MgiARkR
 sv2L/9OzaNevwd1TqXX9QMzqCCCMCgtB/0UwFF4SJKJw/VqxmwKlRGQcWMjfu+SjUFHlsYlGMiApN
 gkM4Im41HgeA6wceaEYGbsjOMAaG9WKhGqOPXThobjM/bXCCTCnA0Go9qFXdLVh7PMQw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CNxuIQt7MJEG23B6h4Zgcd3QAGi5lJSRufOQXm3V2vQ=; b=im+k7o8+hJdiFSSNoFz92DpOQF
 qKmA/rGRH3suKZ+Dt9gCW8Aabzr8eam1a8fBn7vMz76eZ11sp1ZmB0YiLJ6BxYKFK9d1rF4AvR+Xf
 fjrnPN0GJ0oHKs4bjES7qPKRVbnELGNf4Iskfb+72gmyMJc3AXLCnhP3k3hyrWiZjY68=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sONpd-0006MX-WF for jfs-discussion@lists.sourceforge.net;
 Mon, 01 Jul 2024 20:41:02 +0000
Received: from pps.filterd (m0333521.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 461J9LMa016045;
 Mon, 1 Jul 2024 20:40:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
 message-id:date:subject:to:cc:references:from:in-reply-to
 :content-type:content-transfer-encoding:mime-version; s=
 corp-2023-11-20; bh=CNxuIQt7MJEG23B6h4Zgcd3QAGi5lJSRufOQXm3V2vQ=; b=
 fkUE1KISvgwhmTcZ4cSK3qu30VnCcDT3VKQ0gh+rft2LGFzsrkSVC8Oz/1G4aS2B
 sX0uNhBLGgbHzn7DOK7s30tGtEG/jTQ0xFNmLlKjp5tUV/qyh8WAp5C980HEt55K
 9WknZCR/2bgPlKOWVcMqI+W57QGWB+EDvlQifq38Jc7tFGMg0NrF2k0rYZXveSWj
 ZCzqe+3dtPw+bC0rWs/X2ncbRvGSjvtgP2aFwz2TnKM3HRSrDs1obcwFt22RQ0JD
 Ko2QEUDWAUA+IOynh6O7735rFTqBN00ysuWkR4dcwtYbjO04sLvF85BsKU12HQD/
 lLQjqIOYhFHeRoVc+KJrOw==
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 40296avjkf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 01 Jul 2024 20:40:37 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.19/8.17.1.19)
 with ESMTP id 461JUhWY019066; Mon, 1 Jul 2024 20:40:36 GMT
Received: from nam02-bn1-obe.outbound.protection.outlook.com
 (mail-bn1nam02lp2043.outbound.protection.outlook.com [104.47.51.43])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 4028qdacj5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 01 Jul 2024 20:40:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XhXOwB1jn1zvXLoYV59KRdCltQF5+l4IpRk4k3djvWeQEkSrR3zNfIRtQ4l12TST6RUrnuHdNC1vTa3mBgqGE0mG2V2eSzq0oQ8AnFuT5S1Um6PZiYuwzqlU9NVqrrl9/UAOyF4kZCOh0+5foFRUYBeOY5zb5GSyw2EnnlvEgut/K4PCG1ZSj9H26N8YxleQMcd+EdADkevDZ6gZOvX5HL2VYwfbwVe4Q/7TSrlO+44opBSxBfiXWjX2oaoWpCk6Kmh2lKKdfXJD93LuTZVM8tHmMGrJfiasjg5MMLn42HnK4FRddz/dLga0En/BTwzZqh7Rselj+Q8gOJ+f4E2nUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CNxuIQt7MJEG23B6h4Zgcd3QAGi5lJSRufOQXm3V2vQ=;
 b=JotAqY3pWjFzf7jAwvQc4bs05YXH98yhKBRoWDPtoxXU7fXzSVLZwYbwhtilG499vEJtRk3BBpIEPJuIEZ4dwX9DM5qxzEC3hLA+uVcJ64LKDYgIlFpe6fUnguepgma5KQw72XZ5SSPmEbTm96IV6F2ATZhbfC+7ZmN8ZNMqWybtvYxyF/2+9YvQgEyySwOOEset5M7CxMJSxJBPz9C1Gx6zVV/eKVywVLM+NGqXrhpCeOybK+db3QwQSFoI4THHgGicZW+Fsk6tdpe/7Deks0pX1Yb5HNwMXit8OMa4mS7o8vJZGNMh3SUUdrccUnrE3o0KJqnKkU1udy+Xz2URqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CNxuIQt7MJEG23B6h4Zgcd3QAGi5lJSRufOQXm3V2vQ=;
 b=MosawOrF8zdjScBbXOcTTNY0UxEt3HAK8IXlaZ45oCa0YNeAvaBuRL2YOM8nOKUbqdfQvvsNE3CZ7Xg6YKXi1SvRF2q9Jm4LU03XKoMJTyMhVh99IEWaHdORywwsEL4iFzVl84YsJl44YAeEuCUBcWi0QASjVj1p/E9X/Fi0mJE=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by LV3PR10MB8059.namprd10.prod.outlook.com (2603:10b6:408:290::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7719.33; Mon, 1 Jul
 2024 20:40:34 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb%3]) with mapi id 15.20.7719.029; Mon, 1 Jul 2024
 20:40:34 +0000
Message-ID: <4c9d4c00-1811-4100-89e7-5064e8bdc0ab@oracle.com>
Date: Mon, 1 Jul 2024 15:40:30 -0500
User-Agent: Mozilla Thunderbird
To: Divyaank Tiwari <dtiwari@cs.stonybrook.edu>,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 brauner@kernel.org, jack@suse.cz, axboe@kernel.dk,
 jinpu.wang@ionos.com, dchinner@redhat.com, lizhi.xu@windriver.com,
 johannes.thumshirn@wdc.com
References: <CALXmgOG=E7Yk+j7KY5w_OVMFQ5S69XX+0BkW_V0kZngCTkj54g@mail.gmail.com>
Content-Language: en-US
In-Reply-To: <CALXmgOG=E7Yk+j7KY5w_OVMFQ5S69XX+0BkW_V0kZngCTkj54g@mail.gmail.com>
X-ClientProxiedBy: CH0PR08CA0027.namprd08.prod.outlook.com
 (2603:10b6:610:33::32) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|LV3PR10MB8059:EE_
X-MS-Office365-Filtering-Correlation-Id: 194fb9d7-c835-4918-2e22-08dc9a0e0e3b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|921020; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bFBMMStmbjdmdFE4WjNKb21KTjFYemVUTmJOdWlxUzZia2ZJRUFUSVdpSHF6?=
 =?utf-8?B?Zi8xUWIvYmZtOHFFYi84a0xoRDlROHFjanVMcWlFa2hvakJ2ZlFUTDNYUVBZ?=
 =?utf-8?B?L2V2OEdoQmFhSE53bktBbTlKWU52K0Q3UjYxMHZhaG8xMlRmOThvN1V6UnBZ?=
 =?utf-8?B?Wm4ycDVzcjFtWHlFeEZaaWIzUXpkRDlZKzFFc0FXeE1CeHA5aFNQS1FBZWs1?=
 =?utf-8?B?WXFVb21CbldXU3Bjc2ZTTjBoUXp3NEUrWGh3ci9DSEFlSlpmc3d1ZS8vQjRX?=
 =?utf-8?B?QS9mQmFPNVdDWEppL1lWL0JVWUZCejlRakVSSWladmxtNTYrOFBNWDExRHVH?=
 =?utf-8?B?WXJMV0d5cFZuWUVPZnJTbFEybmdvcTZXT1pqTGZaZkxyc0M2WWl2d2Erckdl?=
 =?utf-8?B?L0lhMExqSE5rN1ZSNXdhOUM5Rmk1cmpKNEVlVk9lMC9uSm1JN29HOUtOazRH?=
 =?utf-8?B?WEIzcmt0YWFiQnppY1ZsUnZyVUtmaTQxQ2ZKMmNjRXZFR3lScUU4RXVyT2Qz?=
 =?utf-8?B?SGo3bEVNc284NFk1ZDdwOXphNGl1cUtVaVJ1RndoeVRrclY3Tmk0cm1ra1Zi?=
 =?utf-8?B?SkdDUFZ3M3V0RGdjQldKTVlmYUl1Z1I5SGNLaXJyeGYyUGZsa2RuOFhBWStJ?=
 =?utf-8?B?dTBrYUFnbHNhNmMvVzk0eXNHU2Fvb2szaWlLVUFTekxLRDBIWG9BQlpMQlZI?=
 =?utf-8?B?RElDaHJ4VmJaM08rQmdwNmh2Tk4yQlVyZ2luYjEwRVlIeWFiRHJGWEtWazFv?=
 =?utf-8?B?Q3I5bWFaK1Z0UUxVdHFBN2hNTmxzU1R2STEzZFpMS3RxVVZtMm9CS2NCZEEw?=
 =?utf-8?B?YVFWcjlOcFd5R1FwTkRXakx3aC9EOTB1bmo2NWYxb1pwQnh0Sk5TdlhQRWVX?=
 =?utf-8?B?SHlsNER5Q3dtRmY0ZEx6ejRSNHdVZWozeUlIeHFuNlg2SEtsazh0dG9QaFB6?=
 =?utf-8?B?V21NYlJEWnZKWjk5Q1BsSm1LQzk5MXRTS0Q3dE1yUS8wc1EvRzdyTURPa2xV?=
 =?utf-8?B?cDdXU1lwTC93RXRtMDhiTDJlVmlVb2pnekg0cjZoRm9yS2ZVbTV6VlRLR2Vo?=
 =?utf-8?B?R2ZldGVDMjJyQ1pyb0dWQ3RRc1ByV3BZTTNFMG96Mm9vZGRPbmt2M2hiWmgv?=
 =?utf-8?B?U2tza3R4Rm02ZDV6SnBSVkJoMGZOanhyT0Jib0VER1MwZ2xYb1VCVklVbWZs?=
 =?utf-8?B?OHdXSTZ5eHBnS3NrbnpPbFdpTVpQWG5vYUZNWWl4NHJOR0ZIYllkWFVUdTBo?=
 =?utf-8?B?UzMxV3RVOUVWZ1ZPUlFXdmxWQmV2MTJJWWkwQWN6WXVWd3BVSjREeDRGN0pI?=
 =?utf-8?B?a0hNdWl6RXdzUnZCQytRWnRhQ0V5T05FQm5DVmZ0cDgwWnNSRDVvTS9YNzAr?=
 =?utf-8?B?eklXQTVaTkhKMHdYcjFiWkJSOC9sMk9GV2Q5dUJHbzdiMzZvdkxjMS9RcmZs?=
 =?utf-8?B?RFlMYjRXaHdDUVAzaldCMnJVRUJtSG9XQWpRTkN2Q0o4dWpiVFcwL3UrTXJN?=
 =?utf-8?B?OXYranFaT01EekxXanZlV3VuODBJNkowVDc2NTlLOUhTaWRCOUEvK0U0Q0N1?=
 =?utf-8?B?Z3Bic1hkUHo4bkxDeCtHVUZsMHBYN2VLKzh1OGV0UGUzcGV2ejlWclpJMngx?=
 =?utf-8?B?bVVXMmRXb24rVm9lYWNQdk1qQTErVzRod1JsbEJQTHp5ejdxM1c1QmRqRGIv?=
 =?utf-8?B?NEUyRU9NYjlscjhONEpXZDA2VjE3L2pWZEw4YUxYUnZWUGF4RXVoTkhNNmw4?=
 =?utf-8?B?aUljTVBWVDllbzhmYUpTT2JRMVl1NFJScmVaSStnMkZpdWx4V0hsK05INzFR?=
 =?utf-8?Q?laoZzIKYFxo0p6nlr8Kpj2JFVNr8MV0cMCMt4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(921020); DIR:OUT; SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TS9XSENDNzV4ZTlOSXBxc2hPK3Y4Z1NDNlZycDA1ZHlad2NZSUtnTGhCMXBM?=
 =?utf-8?B?c0RxY1Z0dWNoRWJqOWp5a05laFM5aUFpTTJyQ3p1V21Xc0d6Z1ZYT3RBd1NY?=
 =?utf-8?B?ZG9JRTZxQ1oya3cybnl5TzhYOHVNcjNRK3VMUTBib1NLMVdMZHZlLy8zcUlR?=
 =?utf-8?B?ZHlZQnRuZjhOcG5laE8wUU53WVNVQWtHODJjbmVYSEJrOWw2YWJvNHYrajNl?=
 =?utf-8?B?eDl0dmd1L3pzVlZ2OVJybndwSkdncDM2NnF1ay8zaStzTlZYY2g0aW9mR1JR?=
 =?utf-8?B?YW40Z1dzR1R6dkw3VU5aeXJRc3hsK1dESWlPckM5QUtCem9WMjlZZTBhc3pm?=
 =?utf-8?B?WWpZWDNITWphSVA4T2JwZG5qNkhaOThnM3NEVllzTGpNMnRETmRWdFNpUmF3?=
 =?utf-8?B?TnFxMmJGZHo3U1pCYjdZdktENjZYVXVvSG1rNzhXWGVXUmNVbG1qNzhGWXhO?=
 =?utf-8?B?UlhXOW5WU2pUVmxud1R3VmFoT09oK0hsOTFRMklUekJXNVpxMmljcnpqTHZO?=
 =?utf-8?B?Rnp0T1c2OU94eTlNOU1rWXJkcjlEbnozbjNXdnM0VUlqakdGc2NwRkVFR0Vz?=
 =?utf-8?B?Unp6N0YrZXNzVE5Sa2s1RVpkQWZDTzl4a3RKb0xYbEdDbDd1N203TnJoaW1n?=
 =?utf-8?B?OXJqQjJsNDBvV3dsUm5odGJQMkJwMEJaaDZDK1dsaGZPUnRKczZ6ODI5YWhu?=
 =?utf-8?B?WlhBUzB4S2tYTkhqQmYrd3JKbW5mNTBmSU02VzBGaThwVnpjcFU1V003Sk9G?=
 =?utf-8?B?eFVTM1VDZVcvUHF6bnZtYjVQWTViOFVCaCtlRFh2OUdheXZNdnA2TU1IRkNI?=
 =?utf-8?B?ZTE5YW5zKzl0YlBBNXR4THBZcXJjQk4velRmVmZqcUwrZXo2bDJjTkZTNWdN?=
 =?utf-8?B?UWF1RzhLQ2I3bk15aFh6ZHdNSERXeExlUVpRQS9jdTI2TWVnaEsxQTVsdCtK?=
 =?utf-8?B?bkJJc1E2SVpnMGZsSDhKditQWENZTnkyZXIxb0N5c01BSkRHbEU1eUtBTElo?=
 =?utf-8?B?L1BFcGRqa0c2NTV5amVuWVJvaGh0S0l3aldwWklhaXJyRWlBaFp4bm9rTVZT?=
 =?utf-8?B?Yll0R2pFb2R2cmxBa1dwYjhFYWl0b1U3TWc5OFNKcUZ2dUdzYXc0VFVML3cv?=
 =?utf-8?B?VzZUeUFrdE1OQXdlOEJTK2ROWFJ4dnk4dlpwTWdhUi9uZ29JRkU2RUd3VWpl?=
 =?utf-8?B?Q1RXREUxOUdMdGNkNTNIeW9VK2dWbnYzVTJLR3NJRzlxOUVaNWdlUFowbXRr?=
 =?utf-8?B?ckxqSVEreEZCTUJiVnpubzRraXUxU2laZ1dhTlRRUUlQM0lqRHFGMXU0cUNu?=
 =?utf-8?B?SzhiQW5XWWFocFlLOXZJUSt3QkZpZS92ajNwbE9zQVhPVDF3Q0NFVUsxZzlM?=
 =?utf-8?B?OTMwa0Zrd3BpeURHV0NoU3pya3VabGZ5dVRkbW1jT05pdHpZeVFSbElDMlJC?=
 =?utf-8?B?UU53R3FYVzJvTTZMay9COTVpNWRxY2cva2lvWkNQWlJSR2gxQzVKOGtoVzg4?=
 =?utf-8?B?TlhYYUJ0MHVwMGZqQ0FJVEtFalpjQzl1dnJnbDNrajlEdk4wMGdtVHFYTys1?=
 =?utf-8?B?Sm5OZVRqVnZPMU1CYWIxS1F6eWwxQXcvanRRQ3dTaXVBbDhEaHJqVVhCaEl1?=
 =?utf-8?B?a2FLTE1vczBGRktBUVNHbmhMNWJ3UGZUKytuK09ZU2h1cHh2WGl6TXlOclhp?=
 =?utf-8?B?T1NQZ3gwcE42REx2WW05STByVWJ3VENwR1FudGpLSFVUSXE0end4b24zZTRz?=
 =?utf-8?B?ZTNTb2xhUm56Zi9zV09BOHFiL0ttb0I2YlFVZnRMU1RwMjAyVEVzTDdkQ0N6?=
 =?utf-8?B?NUpaTlFFSjBBNFdiYVd5UlNIQzlmVXp5RGRYaXpvNld2UmIvUUlad2UzTUUw?=
 =?utf-8?B?VEZRZldpUmFjNnNUa1VwVXZWaGs3VEh5VFF0eXU0L1pzek4vRG5oSWs4VUlY?=
 =?utf-8?B?OTE1M0VFTk5sdG1ZS25wQUFWb3pETlVhOEE2VlJ6ZFVZQ2VDeXcxWDByY2tm?=
 =?utf-8?B?anlveUxUODhvbFBUSFVONVAyY1A1TGpOR0RVTnNILzVZN0JQTjB3MEJ4NWxj?=
 =?utf-8?B?TGlHcDMyVFlUT1lTdDhOeXNOUXAvc0xNcTBDRnlBUXNQQ2EwRkhHTUJGUENG?=
 =?utf-8?B?ejVHOFArR1JlSWhUVVAvdDZ1SldGSmNORmlRUHBRM2twS1hlZzh6Z2Vhd1VD?=
 =?utf-8?B?cVE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: /atbpzA6p1U8oigWmb3HZsN7DFN7A1B0QUwRuzHnfJ5iD+3CX0hNV1qsFnU0yqK1ZtjD0KqQ7Wm0X7PdrqNj6C+n7h48DO7/ZemX8skEksH/cD8fywUCByRHCifbhdwL9Gm0yoaAmcKTRQarxnv+A95c/0kqq+gs2KSHrSgifeUDI+/81mOUxvyMRAiM37Q/4j9TpxuH/FDcuJ8bkq8bimssnXXgULYrz1ar5MYzfoAkPZn50fGsHl4qRqvwIFi2J6j4j6DHchMAhwtbuk76asJsm0QIG8mr3Pd4dIJCuVHHVPkoJVZgnuSophxM7h6kzYkCF9AHWQ0887O6HikDNIIrOF6ctm63mRjcHHTDCoUTK0Oi4s+3FxlvWW73JRrQ9EsrnGhtHytbepKrm8/gst0Am4gmgAY5tYvoSNH92NGqqXdWTB6tOh8THjQQfJ2w9pMilQS9HJF6bQvckv3IcBjTBDdDo3VJyEuCSM2t4nPdCr6tZl84ksd++074jjuKs9u+CbfJwwUpldUtTndjCsF4kNQhzRTkWcM9OWAAGHxow7ef2UEvIHjJ9V8E8do+6Tz+NbuB+AWdc0bkzvwew8RTjpIQDE4tEBOW6z3ZD/I=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 194fb9d7-c835-4918-2e22-08dc9a0e0e3b
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2024 20:40:34.0385 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X/t0xL5r7XX3LOfjJkezojKgnnnP5Bj4U21c/RSh/q3ysf3ZeMIdqxG9DLNuI0Kj0/cStib0guqdcf6uYY0ungsO5jksFTxve86D1z9V8hs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR10MB8059
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-07-01_20,2024-07-01_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 adultscore=0 bulkscore=0 mlxlogscore=999 phishscore=0 spamscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2406180000 definitions=main-2407010152
X-Proofpoint-GUID: -eXWX_JnkaPEspFdfRvGjlU7xntspTCB
X-Proofpoint-ORIG-GUID: -eXWX_JnkaPEspFdfRvGjlU7xntspTCB
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: I appreciate the time and effort you've put into this so far.
 Though I'm the only maintainer of jfs, I still don't have a lot of time right
 now to put into investigating this. I will keep track of the issue and try
 to find the time to look into it, but I can't p [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lkml.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [205.220.165.32 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [205.220.165.32 listed in bl.score.senderscore.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [205.220.165.32 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.220.165.32 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sONpd-0006MX-WF
Subject: Re: [Jfs-discussion] fs/jfs: Reproduction of kernel oops bug in JFS
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
Cc: Yifei Liu <yifeliu@cs.stonybrook.edu>, Erez Zadok <ezk@cs.stonybrook.edu>,
 Scott Smolka <sas@cs.stonybrook.edu>, Geoff Kuenning <geoff@cs.hmc.edu>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

SSBhcHByZWNpYXRlIHRoZSB0aW1lIGFuZCBlZmZvcnQgeW91J3ZlIHB1dCBpbnRvIHRoaXMgc28g
ZmFyLgoKVGhvdWdoIEknbSB0aGUgb25seSBtYWludGFpbmVyIG9mIGpmcywgSSBzdGlsbCBkb24n
dCBoYXZlIGEgbG90IG9mIHRpbWUgCnJpZ2h0IG5vdyB0byBwdXQgaW50byBpbnZlc3RpZ2F0aW5n
IHRoaXMuIEkgd2lsbCBrZWVwIHRyYWNrIG9mIHRoZSBpc3N1ZSAKYW5kIHRyeSB0byBmaW5kIHRo
ZSB0aW1lIHRvIGxvb2sgaW50byBpdCwgYnV0IEkgY2FuJ3QgcHJvbWlzZSBob3cgc29vbiAKdGhh
dCB3aWxsIGJlLgoKQWdhaW4sIHRoYW5rcyEgSSBkbyBhcHByZWNpYXRlIHRoZSBlZmZvcnQuCgpT
aGFnZ3kKCk9uIDcvMS8yNCAyOjU0UE0sIERpdnlhYW5rIFRpd2FyaSB3cm90ZToKPiBPbiAxMHRo
IEFwcmlsLCAyMDI0IHdlIHN1Ym1pdHRlZCBhIHBhdGNoIHRvIHRoZSBKRlMgbWFpbGluZyBsaXN0
IGZvcgo+IHRoZSBsbUxvZ09wZW4oKSBmdW5jdGlvbiBpbiB0aGUgamZzX2xvZ21nci5jIGZpbGUu
IFRoZSBwYXRjaCBtb3ZlZCBhCj4gTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlIG9mIGEgbG9nIHBv
aW50ZXIgaW4gdGhlIHR4RW5kKCkgZnVuY3Rpb24gaW4KPiBqZnNfdHhubWdyLmMsIGZyb20gYmVp
bmcgYmVmb3JlIGEgbXV0ZXhfdW5sb2NrIHRvIGFmdGVyIHRoZQo+IG11dGV4X3VubG9jaywgZWZm
ZWN0aXZlbHkgcG9zdHBvbmluZyBhIGtlcm5lbCBvb3BzLiBUaGlzIHdhcyBjb25maXJtZWQKPiBi
eSB1cyB0aHJvdWdoIG91ciBmaWxlIHN5c3RlbSBNb2RlbCBDaGVja2luZyB0b29sLCBNZXRpcyAo
TGluazoKPiBodHRwczovL2dpdGh1Yi5jb20vc2J1LWZzbC9NZXRpcykuIChSZWZlcmVuY2UgdG8g
b3VyIG9sZGVyIHBhdGNoOgo+IGh0dHBzOi8vbGttbC5vcmcvbGttbC8yMDI0LzQvMTAvMTM5Ni4p
Cj4gCj4gSW4gcmVzcG9uc2UgdG8gdGhhdCBwYXRjaCwgRGF2ZSBLbGVpa2FtcCBpbmZvcm1lZCB1
cyB0aGF0IHdoaWxlIHRoZQo+IGFib3ZlIHBhdGNoIGxvb2tlZCBjb21wbGV0ZWx5IHNhZmUsIGl0
IHdhcyB1bmNsZWFyIHdoZXRoZXIgaXQgZml4ZWQKPiBhbnl0aGluZywgYXMgcmVsZWFzaW5nIHRo
ZSBsb2NrIHNob3VsZG4ndCBsZWF2ZSBhbnkgcmVmZXJlbmNlcyB0byB0aGUKPiBzYmktPmxvZyBk
YXRhIHN0cnVjdHVyZS4gKFdlIG5vdGVkIHRoYXQgYWxsIG90aGVyIGluc3RhbmNlcyBvZiBrZnJl
ZQo+IG9mIHRoYXQgbG9nIHBvaW50ZXIgaGFwcGVuZWQgYmVmb3JlIHRoZSBtdXRleCB1bmxvY2s7
IGhlbmNlIHdlIGZlbHQKPiBvdXIgcGF0Y2ggd2FzIGF0IGxlYXN0IHBhcnRpYWxseSDigJxjb3Jy
ZWN0LuKAnSkgSGUgY2xhcmlmaWVkIHRoYXQgY2FsbGluZwo+IGtmcmVlKCkgaXMgdW5yZWxhdGVk
IHRvIHRoZSB2YWx1ZSBvZiBzYmktPmxvZyAod2hpY2ggd291bGQgYmUgdGhlCj4gY2F1c2Ugb2Yg
dGhlIE5VTEwgZGVyZWZlcmVuY2UgaXNzdWUpLiBMYXN0bHksIHRoZSBwYXRjaCBtaWdodCBvbmx5
Cj4gYWx0ZXIgdGhlIHRpbWluZyBieSBob2xkaW5nIHRoZSBsb2NrIGxvbmdlciwgYnV0IHNpbmNl
IG5vdGhpbmcgc2hvdWxkCj4gcmVmZXJlbmNlIHRoZSBsb2cgYW55bW9yZSwgaG9sZGluZyB0aGUg
bG9jayB3aGlsZSBjYWxsaW5nIGtmcmVlKCkgbWF5Cj4gbm90IHByZXZlbnQgYSB1c2UtYWZ0ZXIt
ZnJlZSBpc3N1ZS4gUmVnYXJkaW5nIERhdmUncyBwcmV2aW91cyBpbnF1aXJ5Cj4gYWJvdXQgb3Vy
IGV4cGVyaW1lbnRzLCB3ZSBjb25maXJtZWQgdGhhdCB3ZSBhcmUgbm90IHVzaW5nIGFuIGV4dGVy
bmFsCj4gam91cm5hbCBmb3IgSkZTLCBub3IgZG9lcyBhbnkgZmlsZSBzeXN0ZW0gc2hhcmUgYSBq
b3VybmFsLgo+IAo+IEFsdGhvdWdoIHdlIGhhdmUgc3RpbGwgbm90IGJlZW4gYWJsZSB0byBwaW5w
b2ludCB0aGUgZXhhY3Qgc291cmNlIG9mCj4gdGhlIGFmb3JlbWVudGlvbmVkIGJ1Zywgd2UgaGF2
ZSBkZXZlbG9wZWQgYSBwcm9ncmFtIHRoYXQgY2FuIHJlcHJvZHVjZQo+IGl0IHdpdGggaGlnaCBw
cm9iYWJpbGl0eSBvbiB0aGUgbGF0ZXN0IHJlbGVhc2Ugb2YgTGludXggS2VybmVsCj4gKHY2Ljku
NCkuIFRoaXMgcHJvZ3JhbSwgd2hpY2ggd2UgY2FsbCBhICBSZXBsYXllciwgaXMgb3Blbi1zb3Vy
Y2VkLAo+IGFuZCB3ZSBoYXZlIGV4dGVuc2l2ZWx5IGRvY3VtZW50ZWQgaXRzIHVzYWdlLiAoTGlu
ayB0byB0aGUgcmVwb3NpdG9yeToKPiBodHRwczovL2dpdGh1Yi5jb20vc2J1LWZzbC9NZXRpcy1S
ZXBsYXllci90cmVlL21haW4uKQo+IAo+IFRvIGJyaWVmbHkgc3VtbWFyaXplIG91ciBSZXBsYXll
cjogZnJvbSBhbiBleGVjdXRpb24gb2YgTWV0aXMgdGhhdAo+IGNhdXNlZCBhIGtlcm5lbCBvb3Bz
IGluIEpGUywgd2UgZmlyc3QgZXh0cmFjdGVkIHR3byBsb2dz4oCUb25lCj4gY29udGFpbmluZyBh
IHNlcXVlbmNlIG9mIGFsbCBvcGVyYXRpb25zIHVwIHRvIHRoYXQgcG9pbnQgYW5kIHRoZSBvdGhl
cgo+IGxpc3RpbmcgdGhlIHJlbGF0aXZlIHBhdGhzIG9mIHRoZSBpbml0aWFsIGZpbGVzIGFuZCBk
aXJlY3RvcmllcyBpbiB0aGUKPiBtb3VudGVkIGZpbGUgc3lzdGVtLiBXZSB3cm90ZSBhIHNpbXBs
ZSBzY3JpcHQsIHNldHVwX2pmcy5zaCwgdG8gY3JlYXRlCj4gYSBKRlMgZmlsZSBzeXN0ZW0gb24g
YSAxNiBNaUIgcmFtZGlzay4gKEEgcmFtZGlzayBoYXMgYSBtdWNoIGZhc3Rlcgo+IEkvTyByYXRl
IHRoYW4gYSByZWd1bGFyIGRldmljZS4pICBPdXIgUmVwbGF5ZXIgKHJlcGxheS5jKSwgaW1wbGVt
ZW50ZWQKPiBpbiBhYm91dCA3MDAgbGluZXMgb2YgQyBjb2RlLCBwcmUtcG9wdWxhdGVzIHRoZSBm
aWxlcyBhbmQgZGlyZWN0b3JpZXMKPiBhbmQgdGhlbiBleGVjdXRlcyBlYWNoIG9wZXJhdGlvbiBm
cm9tIHRoZSBzZXF1ZW5jZSBsb2cKPiAoamZzX29wX3NlcXVlbmNlLmxvZykgbGluZSBieSBsaW5l
Lgo+IAo+IFdlIHN1c3BlY3QgdGhlIGJ1ZyBpcyBhIHJhY2Ugb2Ygc29ydHMuICBTcGVjaWZpY2Fs
bHksIHRoZSBSZXBsYXllcgo+IGFsd2F5cyB1bm1vdW50cyBhbmQgcmVtb3VudHMgSkZTIGluIGJl
dHdlZW4gRUFDSCBmaWxlIHN5c3RlbSBvcGVyYXRpb24KPiAocHJlc2VudCBpbiB0aGUgc2VxdWVu
Y2UgZmlsZSBnZW5lcmF0ZWQgYnkgTWV0aXMsIHdoaWxlIG1vZGVsIGNoZWNraW5nCj4gYSBmaWxl
IHN5c3RlbSkuICAgIFdlIGFyZSB1bmFibGUgdG8gcmVwcm9kdWNlIHRoaXMgYnVnIHdpdGhvdXQg
dGhlCj4gcGFpciBvZiB1bm1vdW50K21vdW50IGluIGJldHdlZW4gZWFjaCBmaWxlIHN5c3RlbSBv
cGVyYXRpb24uICBIZW5jZQo+IG91ciBzdXNwaWNpb24gaXMgdGhhdCB0aGUgYnVnIGlzIGEgcmFj
ZSBiZXR3ZWVuICgxKSBzb21lIGZpbGUgc3lzdGVtCj4gb3BlcmF0aW9uIGFkZGluZyBhIHJlY29y
ZCB0byB0aGUgbG9nLCB3aGlsZSAoMikgdGhlIGZpbGUgc3lzdGVtIGlzCj4gYmVpbmcgdW5tb3Vu
dGVkIGFuZCB0aGUgdHhuIGxvZyBpcyBiZWluZyBzaHV0LWRvd24uCj4gCj4gRHVlIHRvIHRoZSBi
dWcncyBub25kZXRlcm1pbmlzdGljIG5hdHVyZSwgd2UgaGF2ZSBmb3VuZCB0aGF0IHJ1bm5pbmcK
PiBhbGwgb3BlcmF0aW9ucyAoODIzLDE3OCBpbiB0b3RhbCkgZnJvbSB0aGUgbG9nIGZpbGUgaW4g
YSBsb29wIGZvciA1MDAKPiBpdGVyYXRpb25zLCByZXN1bHRzIGluIGEgaGlnaCBwcm9iYWJpbGl0
eSBvZiByZXByb2R1Y2luZyB0aGUgYnVnCj4gd2l0aGluIGEgZGF5LiBJbiBvdXIgZXhwZXJpbWVu
dHMsIHdlIGVuY291bnRlcmVkIHRoZSBidWcgYWZ0ZXIgYWJvdXQKPiA2MC0zMDAgaXRlcmF0aW9u
cy4gQ29ycmVzcG9uZGluZ2x5LCB0aGUgdGltZSB0YWtlbiB0byB0cmlnZ2VyIHRoZSBidWcKPiBy
YW5nZWQgZnJvbSBhYm91dCA5IHRvIDc1IGhvdXJzIChvbiBvdXIgVk0pLiBGb3IgcmVmZXJlbmNl
LCBvdXIKPiByZXBvc2l0b3J5IGluY2x1ZGVzIGEgZG1lc2cgdHJhY2UgKGRtZXNnX2pmc19rZXJu
ZWxfb29wc190cmFjZS50eHQsCj4gcmVwcm9kdWNlZCBiZWxvdykgY2FwdHVyZWQgd2hlbiB0aGUg
a2VybmVsIGNyYXNoIHdhcyB0cmlnZ2VyZWQgZHVyaW5nCj4gb25lIG9mIG91ciBleHBlcmltZW50
cyB1c2luZyBvdXIgcmVwbGF5ZXIuCj4gCj4gSnVuIDIyIDAzOjU2OjA4IGhvc3RuYW1lIGtlcm5l
bDogQlVHOiBrZXJuZWwgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlLAo+IGFkZHJlc3M6IDAwMDAw
MDAwMDAwMDAwYTQKPiBKdW4gMjIgMDM6NTY6MDggaG9zdG5hbWUga2VybmVsOiAjUEY6IHN1cGVy
dmlzb3Igd3JpdGUgYWNjZXNzIGluIGtlcm5lbCBtb2RlCj4gSnVuIDIyIDAzOjU2OjA4IGhvc3Ru
YW1lIGtlcm5lbDogI1BGOiBlcnJvcl9jb2RlKDB4MDAwMikgLSBub3QtcHJlc2VudCBwYWdlCj4g
SnVuIDIyIDAzOjU2OjA4IGhvc3RuYW1lIGtlcm5lbDogUEdEIDAgUDREIDAKPiBKdW4gMjIgMDM6
NTY6MDggaG9zdG5hbWUga2VybmVsOiBPb3BzOiAwMDAyIFsjMV0gUFJFRU1QVCBTTVAgTk9QVEkK
PiBKdW4gMjIgMDM6NTY6MDggaG9zdG5hbWUga2VybmVsOiBDUFU6IDMgUElEOiA1ODIgQ29tbTog
amZzQ29tbWl0IE5vdAo+IHRhaW50ZWQgNi45LjQgIzEKPiBKdW4gMjIgMDM6NTY6MDggaG9zdG5h
bWUga2VybmVsOiBIYXJkd2FyZSBuYW1lOiBWTXdhcmUsIEluYy4gVk13YXJlCj4gVmlydHVhbCBQ
bGF0Zm9ybS80NDBCWCBEZXNrdG9wIFJlZmVyZW5jZSBQbGF0Zm9ybSwgQklPUyA2LjAwCj4gMTEv
MTIvMjAyMAo+IEp1biAyMiAwMzo1NjowOCBob3N0bmFtZSBrZXJuZWw6IFJJUDogMDAxMDp0eEVu
ZCsweDhkLzB4MWUwIFtqZnNdCj4gSnVuIDIyIDAzOjU2OjA4IGhvc3RuYW1lIGtlcm5lbDogQ29k
ZTogMDMgMDEgMGYgODUgODggMDAgMDAgMDAgODMgM2QKPiBhZSBhZiAwMCAwMCAwMyA3ZiA2YSA2
NiA4MyA3YiAyOCAwMCAwZiA4NSAzYiAwMSAwMCAwMCA4YiAwNSBiYiAxNiAwMQo+IDAwIDY2IDg5
IDQzIDI4IDQxIDBmIGI3IGM1IDw0MT4gODMgYWMgMjQgYTQgMDAgMDAgMDAgMDEgODkgMDUgYTQg
MTYgMDEKPiAwMCA3NSAxNCBmMCA0MSA4MCA2NCAyNAo+IEp1biAyMiAwMzo1NjowOCBob3N0bmFt
ZSBrZXJuZWw6IFJTUDogMDAxODpmZmZmYWY5MzAwYWRiZTUwIEVGTEFHUzogMDAwMTAyNDYKPiBK
dW4gMjIgMDM6NTY6MDggaG9zdG5hbWUga2VybmVsOiBSQVg6IDAwMDAwMDAwMDAwMDAwMDggUkJY
Ogo+IGZmZmZhZjkzMDEyMTM1MDAgUkNYOiAwMDAwMDAwMDAwMDAwMDAwCj4gSnVuIDIyIDAzOjU2
OjA4IGhvc3RuYW1lIGtlcm5lbDogUkRYOiAwMDAwMDAwMDAwMDAwMDAwIFJTSToKPiAwMDAwMDAw
MDAwMDAwMjQ2IFJESTogZmZmZmFmOTMwMTIxMzUzMAo+IEp1biAyMiAwMzo1NjowOCBob3N0bmFt
ZSBrZXJuZWw6IFJCUDogZmZmZmFmOTMwMGFkYmU2OCBSMDg6Cj4gMDAwMDAwMDAwMDAwMDAwMCBS
MDk6IGZmZmY5NGMzZmZiYTM2NDAKPiBKdW4gMjIgMDM6NTY6MDggaG9zdG5hbWUga2VybmVsOiBS
MTA6IDAwMDAwMDAwMDAwMDAwMDEgUjExOgo+IDAwMDAwMDAwMDAwMDAwMDAgUjEyOiAwMDAwMDAw
MDAwMDAwMDAwCj4gSnVuIDIyIDAzOjU2OjA4IGhvc3RuYW1lIGtlcm5lbDogUjEzOiAwMDAwMDAw
MDAwMDAwMDA4IFIxNDoKPiBmZmZmOTQ4NWQyOGNiY2YwIFIxNTogZmZmZmFmOTMwMTIxMzUwMAo+
IEp1biAyMiAwMzo1NjowOCBob3N0bmFtZSBrZXJuZWw6IEZTOiAgMDAwMDAwMDAwMDAwMDAwMCgw
MDAwKQo+IEdTOmZmZmY5NGMzZmZiODAwMDAoMDAwMCkga25sR1M6MDAwMDAwMDAwMDAwMDAwMAo+
IEp1biAyMiAwMzo1NjowOCBob3N0bmFtZSBrZXJuZWw6IENTOiAgMDAxMCBEUzogMDAwMCBFUzog
MDAwMCBDUjA6Cj4gMDAwMDAwMDA4MDA1MDAzMwo+IEp1biAyMiAwMzo1NjowOCBob3N0bmFtZSBr
ZXJuZWw6IENSMjogMDAwMDAwMDAwMDAwMDBhNCBDUjM6Cj4gMDAwMDAwMDFkN2YxYzAwNCBDUjQ6
IDAwMDAwMDAwMDA3NzBlZjAKPiBKdW4gMjIgMDM6NTY6MDggaG9zdG5hbWUga2VybmVsOiBQS1JV
OiA1NTU1NTU1NAo+IEp1biAyMiAwMzo1NjowOCBob3N0bmFtZSBrZXJuZWw6IENhbGwgVHJhY2U6
Cj4gSnVuIDIyIDAzOjU2OjA4IGhvc3RuYW1lIGtlcm5lbDogIDxUQVNLPgo+IEp1biAyMiAwMzo1
NjowOCBob3N0bmFtZSBrZXJuZWw6ICA/IHNob3dfcmVncysweDZkLzB4ODAKPiBKdW4gMjIgMDM6
NTY6MDggaG9zdG5hbWUga2VybmVsOiAgPyBfX2RpZSsweDI5LzB4NzAKPiBKdW4gMjIgMDM6NTY6
MDggaG9zdG5hbWUga2VybmVsOiAgPyBwYWdlX2ZhdWx0X29vcHMrMHgxNTEvMHg1MjAKPiBKdW4g
MjIgMDM6NTY6MDggaG9zdG5hbWUga2VybmVsOiAgPyBkb191c2VyX2FkZHJfZmF1bHQrMHgzMjUv
MHg2YjAKPiBKdW4gMjIgMDM6NTY6MDggaG9zdG5hbWUga2VybmVsOiAgPyBleGNfcGFnZV9mYXVs
dCsweDdjLzB4MTkwCj4gSnVuIDIyIDAzOjU2OjA4IGhvc3RuYW1lIGtlcm5lbDogID8gYXNtX2V4
Y19wYWdlX2ZhdWx0KzB4MmIvMHgzMAo+IEp1biAyMiAwMzo1NjowOCBob3N0bmFtZSBrZXJuZWw6
ICA/IHR4RW5kKzB4OGQvMHgxZTAgW2pmc10KPiBKdW4gMjIgMDM6NTY6MDggaG9zdG5hbWUga2Vy
bmVsOiAgamZzX2xhenljb21taXQrMHgyOTIvMHgzODAgW2pmc10KPiBKdW4gMjIgMDM6NTY6MDgg
aG9zdG5hbWUga2VybmVsOiAgPyBfX3BmeF9kZWZhdWx0X3dha2VfZnVuY3Rpb24rMHgxMC8weDEw
Cj4gSnVuIDIyIDAzOjU2OjA4IGhvc3RuYW1lIGtlcm5lbDogID8gX19wZnhfamZzX2xhenljb21t
aXQrMHgxMC8weDEwIFtqZnNdCj4gSnVuIDIyIDAzOjU2OjA4IGhvc3RuYW1lIGtlcm5lbDogIGt0
aHJlYWQrMHhmNS8weDEzMAo+IEp1biAyMiAwMzo1NjowOCBob3N0bmFtZSBrZXJuZWw6ICA/IF9f
cGZ4X2t0aHJlYWQrMHgxMC8weDEwCj4gSnVuIDIyIDAzOjU2OjA4IGhvc3RuYW1lIGtlcm5lbDog
IHJldF9mcm9tX2ZvcmsrMHgzZC8weDYwCj4gSnVuIDIyIDAzOjU2OjA4IGhvc3RuYW1lIGtlcm5l
bDogID8gX19wZnhfa3RocmVhZCsweDEwLzB4MTAKPiBKdW4gMjIgMDM6NTY6MDggaG9zdG5hbWUg
a2VybmVsOiAgcmV0X2Zyb21fZm9ya19hc20rMHgxYS8weDMwCj4gSnVuIDIyIDAzOjU2OjA4IGhv
c3RuYW1lIGtlcm5lbDogIDwvVEFTSz4KPiBKdW4gMjIgMDM6NTY6MDggaG9zdG5hbWUga2VybmVs
OiBNb2R1bGVzIGxpbmtlZCBpbjogdGxzIGJyZAo+IHZzb2NrX2xvb3BiYWNrIHZtd192c29ja192
aXJ0aW9fdHJhbnNwb3J0X2NvbW1vbiBpbnRlbF9yYXBsX21zcgo+IGludGVsX3JhcGxfY29tbW9u
IHZtd192c29ja192bWNpX3RyYW5zcG9ydCB2c29jayBzdW5ycGMKPiBpbnRlbF91bmNvcmVfZnJl
cXVlbmN5X2NvbW1vbiBiaW5mbXRfbWlzYyBuZml0IHJhcGwgdm13X2JhbGxvb24gam95ZGV2Cj4g
aW5wdXRfbGVkcyBzZXJpb19yYXcgdm13X3ZtY2kgbWFjX2hpZCBzY2hfZnFfY29kZWwgZG1fbXVs
dGlwYXRoCj4gc2NzaV9kaF9yZGFjIHNjc2lfZGhfZW1jIGpmcyBzY3NpX2RoX2FsdWEgbmxzX3Vj
czJfdXRpbHMgbXNyCj4gZWZpX3BzdG9yZSBpcF90YWJsZXMgeF90YWJsZXMgYXV0b2ZzNCBidHJm
cyBibGFrZTJiX2dlbmVyaWMgcmFpZDEwCj4gcmFpZDQ1NiBhc3luY19yYWlkNl9yZWNvdiBhc3lu
Y19tZW1jcHkgYXN5bmNfcHEgYXN5bmNfeG9yIGFzeW5jX3R4IHhvcgo+IHJhaWQ2X3BxIGxpYmNy
YzMyYyByYWlkMSByYWlkMCB2bXdnZnggZHJtX3R0bV9oZWxwZXIgdHRtCj4gZHJtX2ttc19oZWxw
ZXIgY3JjdDEwZGlmX3BjbG11bCBjcmMzMl9wY2xtdWwgZ2hhc2hfY2xtdWxuaV9pbnRlbAo+IHNo
YTUxMl9zc3NlMyBzaGEyNTZfc3NzZTMgZHJtIHNoYTFfc3NzZTMgYWhjaSBtcHRzcGkgcHNtb3Vz
ZSBtcHRzY3NpaAo+IG1wdGJhc2Ugdm14bmV0MyBpMmNfcGlpeDQgbGliYWhjaSBzY3NpX3RyYW5z
cG9ydF9zcGkgcGF0YV9hY3BpCj4gYWVzbmlfaW50ZWwgY3J5cHRvX3NpbWQgY3J5cHRkIFtsYXN0
IHVubG9hZGVkOiBicmRdCj4gSnVuIDIyIDAzOjU2OjA4IGhvc3RuYW1lIGtlcm5lbDogQ1IyOiAw
MDAwMDAwMDAwMDAwMGE0Cj4gSnVuIDIyIDAzOjU2OjA4IGhvc3RuYW1lIGtlcm5lbDogLS0tWyBl
bmQgdHJhY2UgMDAwMDAwMDAwMDAwMDAwMCBdLS0tCj4gSnVuIDIyIDAzOjU2OjA4IGhvc3RuYW1l
IGtlcm5lbDogUklQOiAwMDEwOnR4RW5kKzB4OGQvMHgxZTAgW2pmc10KPiBKdW4gMjIgMDM6NTY6
MDggaG9zdG5hbWUga2VybmVsOiBDb2RlOiAwMyAwMSAwZiA4NSA4OCAwMCAwMCAwMCA4MyAzZAo+
IGFlIGFmIDAwIDAwIDAzIDdmIDZhIDY2IDgzIDdiIDI4IDAwIDBmIDg1IDNiIDAxIDAwIDAwIDhi
IDA1IGJiIDE2IDAxCj4gMDAgNjYgODkgNDMgMjggNDEgMGYgYjcgYzUgPDQxPiA4MyBhYyAyNCBh
NCAwMCAwMCAwMCAwMSA4OSAwNSBhNCAxNiAwMQo+IDAwIDc1IDE0IGYwIDQxIDgwIDY0IDI0Cj4g
SnVuIDIyIDAzOjU2OjA4IGhvc3RuYW1lIGtlcm5lbDogUlNQOiAwMDE4OmZmZmZhZjkzMDBhZGJl
NTAgRUZMQUdTOiAwMDAxMDI0Ngo+IEp1biAyMiAwMzo1NjowOCBob3N0bmFtZSBrZXJuZWw6IFJB
WDogMDAwMDAwMDAwMDAwMDAwOCBSQlg6Cj4gZmZmZmFmOTMwMTIxMzUwMCBSQ1g6IDAwMDAwMDAw
MDAwMDAwMDAKPiBKdW4gMjIgMDM6NTY6MDggaG9zdG5hbWUga2VybmVsOiBSRFg6IDAwMDAwMDAw
MDAwMDAwMDAgUlNJOgo+IDAwMDAwMDAwMDAwMDAyNDYgUkRJOiBmZmZmYWY5MzAxMjEzNTMwCj4g
SnVuIDIyIDAzOjU2OjA4IGhvc3RuYW1lIGtlcm5lbDogUkJQOiBmZmZmYWY5MzAwYWRiZTY4IFIw
ODoKPiAwMDAwMDAwMDAwMDAwMDAwIFIwOTogZmZmZjk0YzNmZmJhMzY0MAo+IEp1biAyMiAwMzo1
NjowOCBob3N0bmFtZSBrZXJuZWw6IFIxMDogMDAwMDAwMDAwMDAwMDAwMSBSMTE6Cj4gMDAwMDAw
MDAwMDAwMDAwMCBSMTI6IDAwMDAwMDAwMDAwMDAwMDAKPiBKdW4gMjIgMDM6NTY6MDggaG9zdG5h
bWUga2VybmVsOiBSMTM6IDAwMDAwMDAwMDAwMDAwMDggUjE0Ogo+IGZmZmY5NDg1ZDI4Y2JjZjAg
UjE1OiBmZmZmYWY5MzAxMjEzNTAwCj4gSnVuIDIyIDAzOjU2OjA4IGhvc3RuYW1lIGtlcm5lbDog
RlM6ICAwMDAwMDAwMDAwMDAwMDAwKDAwMDApCj4gR1M6ZmZmZjk0YzNmZmI4MDAwMCgwMDAwKSBr
bmxHUzowMDAwMDAwMDAwMDAwMDAwCj4gSnVuIDIyIDAzOjU2OjA4IGhvc3RuYW1lIGtlcm5lbDog
Q1M6ICAwMDEwIERTOiAwMDAwIEVTOiAwMDAwIENSMDoKPiAwMDAwMDAwMDgwMDUwMDMzCj4gSnVu
IDIyIDAzOjU2OjA4IGhvc3RuYW1lIGtlcm5lbDogQ1IyOiAwMDAwMDAwMDAwMDAwMGE0IENSMzoK
PiAwMDAwMDAwMWQ3ZjFjMDA0IENSNDogMDAwMDAwMDAwMDc3MGVmMAo+IEp1biAyMiAwMzo1Njow
OCBob3N0bmFtZSBrZXJuZWw6IFBLUlU6IDU1NTU1NTU0Cj4gSnVuIDIyIDAzOjU2OjA4IGhvc3Ru
YW1lIGtlcm5lbDogbm90ZTogamZzQ29tbWl0WzU4Ml0gZXhpdGVkIHdpdGggaXJxcyBkaXNhYmxl
ZAo+IEp1biAyMiAwMzo1NjowOCBob3N0bmFtZSBrZXJuZWw6IG5vdGU6IGpmc0NvbW1pdFs1ODJd
IGV4aXRlZCB3aXRoCj4gcHJlZW1wdF9jb3VudCAxCj4gSnVuIDIyIDAzOjU2OjMyIGhvc3RuYW1l
IGtlcm5lbDogd2F0Y2hkb2c6IEJVRzogc29mdCBsb2NrdXAgLSBDUFUjNgo+IHN0dWNrIGZvciAy
NnMhIFtyZXBsYXk6MjU3NTc3XQo+IAo+IEZ1cnRoZXIgZGV0YWlscyBhYm91dCBzZXR0aW5nIHVw
IHRoZSBlbnZpcm9ubWVudCBhbmQgY29uZHVjdGluZyB0aGUKPiBleHBlcmltZW50IGFyZSBhdmFp
bGFibGUgaW4gb3VyIHJlcG9zaXRvcnnigJlzIFJFQURNRS4gV2UgaG9wZSB0aGF0IG91cgo+IHJl
cGxheWVyIHdpbGwgYXNzaXN0IHRoZSBKRlMgbWFpbnRhaW5lcnMgaW4gZGVidWdnaW5nIGFuZCBy
ZXNvbHZpbmcKPiB0aGlzIGtlcm5lbCBvb3BzIGJ1Zy4KPiAKPiBOb3RlOiBBbGwgb2Ygb3VyIGV4
cGVyaW1lbnRzIHdlcmUgcGVyZm9ybWVkIG9uIExpbnV4IGtlcm5lbHMgdjYuNi4xIGFuZCB2Ni45
LjQKPiAKPiBTaWduZWQtb2ZmLWJ5OiBEaXZ5YWFuayBUaXdhcmkgPGR0aXdhcmlAY3Muc3Rvbnli
cm9vay5lZHU+Cj4gU2lnbmVkLW9mZi1ieTogWWlmZWkgTGl1IDx5aWZlbGl1QGNzLnN0b255YnJv
b2suZWR1Pgo+IFNpZ25lZC1vZmYtYnk6IEVyZXogWmFkb2sgPGV6a0Bjcy5zdG9ueWJyb29rLmVk
dT4KPiBTaWduZWQtb2ZmLWJ5OiBTY290dCBTbW9sa2EgPHNhc0Bjcy5zdG9ueWJyb29rLmVkdT4K
PiBTaWduZWQtb2ZmLWJ5OiBHZW9mZiBLdWVubmluZyA8Z2VvZmZAY3MuaG1jLmVkdT4KCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lv
biBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBz
Oi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
