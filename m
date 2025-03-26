Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AC4BA717A1
	for <lists+jfs-discussion@lfdr.de>; Wed, 26 Mar 2025 14:37:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1txQvn-0002N3-Uu;
	Wed, 26 Mar 2025 13:36:32 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1txQvm-0002Mv-Vc
 for jfs-discussion@lists.sourceforge.net;
 Wed, 26 Mar 2025 13:36:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HJoC2SsE/opfiFcZSXiDVgxdIAw+HFMxCcHwC9o28SA=; b=OqrSWdfvuC5pGeTc67YJDJkBPb
 kkgt1iBGoSVIop5wpSbILEQzpXdwg3zXTUt0KpJSUpf62OSRknbvGnDVKIdmLJyrylOUJfCWHsKVz
 fX5bD+cWw3vfx2ogXl7RfTqMTgUvAfUsOMm83K8LxZSx9cBJeyLPjBOhKqf3lMaU56kI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HJoC2SsE/opfiFcZSXiDVgxdIAw+HFMxCcHwC9o28SA=; b=Tqi9+ll4torAb9QRpSUJBE2u+U
 JSmOWmUmjYRuRxmSHaXfa/X/8Hx7ckfEk6qF1T1t/0k1l4NajmDOdCZzHntSeVR5zEY80PGnHIpaY
 2+bt8/rOPkV3j9eh1dz6PQWMF2KLembt+RsimyVwHL8jsqe5VniJjH5jSQ5gDUe7koLo=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1txQvm-0001OQ-EU for jfs-discussion@lists.sourceforge.net;
 Wed, 26 Mar 2025 13:36:31 +0000
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52QD271Y011575;
 Wed, 26 Mar 2025 13:36:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2023-11-20; bh=HJoC2SsE/opfiFcZSXiDVgxdIAw+HFMxCcHwC9o28SA=; b=
 dwIpa3yp8IIBJL7QyYz+UwBh45dGUESanPYknR/oG8Gh/yOTYchujRZd+f4Q5nDe
 AGbhBLdcJdR/Oe3q4KpBR4+Y4593XyI7vKupkARZmIHRAG7Usgfyiwfva6GmaEr2
 RaAWOqsYnRK3+DhUPrX1IGPGY9/99NgSdjHROxaSF08Pg3ykuv2pfZ1yfan5/Y4j
 PszxnxhvI2nCYAjqf2+/aywagOXELEuiCJtBbUqdiWtqSBmeVhnLIO4c9OOprhrg
 15NDc2gBPi+mn9yKPLq+KAC8QO87krKaUHrk0/p8bqUGZVrJxjVjB5Xy2uZicSEt
 9Pg7FF+2Z5FWON/WD1jkYQ==
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 45hnrshfw9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 26 Mar 2025 13:36:17 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 52QCgpV9028773; Wed, 26 Mar 2025 13:36:16 GMT
Received: from nam11-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2173.outbound.protection.outlook.com [104.47.58.173])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 45jj6txy2a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 26 Mar 2025 13:36:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YPgFUcgvPOEDoe0UPQZ6gWRlmD9g0dXieQgzeZ5thFZS60FkmPHSHBwsrDpzsU8l9TP7KKkK/ZOuKxQLGT1ajsd50YJgpiV442TjSTHWHOIyJgnHEZiFyOYmYtuAjMh6GlHZzts4n95M/cVtZiOWmwuA8gmVFSOH47POwwNmStlAg+KHqyRAYQHYsuKZhOllMwjVTLZO38C86/pmBJAx9mMXBGXoc1TSBtVFpG35oxM9kf7kgonSEd7WbtF7cZmyoRzt2GXJYPxKgh+Y7FsJ0rYT29OTfA3vFOcQAHVV+7bBRpfc20xueOuovOLTcdIiP9hvcErF0/CZ50X/1QLI4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HJoC2SsE/opfiFcZSXiDVgxdIAw+HFMxCcHwC9o28SA=;
 b=h59s/DXQG+ed00V4XLsiUw+5OgLxJTimZDyFrPcTACUMO5qmeVzbM8R2w7mv0H6lzDOWNwEjUvhInmGhhbcbrD9grd3gnVghZk+uVfgB7KICwUl/vstJ+/JXYbx7WNGP6MZ2NLvXW6K1zU3jXx3b9mjSJW7jvbu0dBACbTq1rezv0YLJ4vI5/eOgaWuEuhgkDxPs0D/yx9XEsxsk3GyWcDaaEevGLTF4c6TtLMEG1/1MvW/WuF16T25EB9nvdK7GE2rDW8aTMG4PXXb7bWqJGbgFMM/bRU3mUd6eq7Jd8bY4xhAE//+uVeaA/R2Txzkzr57v9E/QsO646f+Ue26f/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HJoC2SsE/opfiFcZSXiDVgxdIAw+HFMxCcHwC9o28SA=;
 b=t/iQtqBm9eYz8pTnJlhIhv6wnWskcOLUOv1lxKe8YQstwl5Yr9AsYCZjAloIUBOpXfAgEkwceub8FJUCx36sS6/D9DjoS7KMp0Ux9qPD9wxFpdOjNFSI+iZAixwmbI7kaUHLPcBDVVWRxyMyIVP3+YHLwArXdYT6js31UWU4HE4=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by SJ5PPFDEBD75B51.namprd10.prod.outlook.com
 (2603:10b6:a0f:fc02::7d7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Wed, 26 Mar
 2025 13:36:14 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb%6]) with mapi id 15.20.8534.040; Wed, 26 Mar 2025
 13:36:14 +0000
Message-ID: <160fdd56-d7d2-460c-a142-fa2c8434385c@oracle.com>
Date: Wed, 26 Mar 2025 08:36:12 -0500
User-Agent: Mozilla Thunderbird
To: Dylan Wolff <wolffd@comp.nus.edu.sg>, Dave Kleikamp <shaggy@kernel.org>
References: <CAJeEPu++aAiF=ybq+XHEdGad+RsxR8d=tmEe5LxCOnDjWY_OFg@mail.gmail.com>
 <CAJeEPu+0EttQaFYKhGUbn2j=_nLvT-wfdBS0wQjXDkBq962g6g@mail.gmail.com>
 <8548e6ad-c21d-481c-b9c5-bd0403ee26c1@oracle.com>
 <CAJeEPu+AgjJD--boaj79Hp-QKskOm2AMqVwor_k+cwqUg_X2BA@mail.gmail.com>
 <CAJeEPuJt6nhTQM7S=1A==C+5w04R2bWHAYiHgpve-AcL-1u98Q@mail.gmail.com>
Content-Language: en-US
In-Reply-To: <CAJeEPuJt6nhTQM7S=1A==C+5w04R2bWHAYiHgpve-AcL-1u98Q@mail.gmail.com>
X-ClientProxiedBy: CH2PR14CA0018.namprd14.prod.outlook.com
 (2603:10b6:610:60::28) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|SJ5PPFDEBD75B51:EE_
X-MS-Office365-Filtering-Correlation-Id: f13abad7-f280-465f-c542-08dd6c6b2dcd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|13003099007|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZDVlaFNvTGx0d3NpaGJTQTRmalkvNHlCVlNmbEZuU3lHWXFkRDBVUm91dlJI?=
 =?utf-8?B?d3RlU1pNbzU4bU5rblA0S3YxV1k2cE9lclpvemh1dDZidEMzYVdIajJnWG9U?=
 =?utf-8?B?RHhSdTVnYzg5My93b1NLQ2tKU1hRWVVjU0V5UnowN2wzbk50RitLVGZrOEZo?=
 =?utf-8?B?QXAwM2NTVzJLZ2hwZWVDTFZGMVovY1pNMUt5ZDJDSFdrWlQ3eEh3WlNLWFpR?=
 =?utf-8?B?dG0vRzkyYkQwOWdIVE1MdHppL0lwYlZUeGtDMy8rS2N1Szhla3dIcXNkd0NI?=
 =?utf-8?B?R3FIWWcxY2lWR0hwMmJhZmRTSjNvM0gvV0dBNHUwNkhER05xYVFkZ1N1RTkw?=
 =?utf-8?B?dWFLQjQwZ05yNFREMUh1b1A5bWx6dDZ2YWp6NlFVY0twcGxaZm9vR1VkS1Bz?=
 =?utf-8?B?Q3lEUGdHcE5tc2o3UDRESzV0cWlxMlBGSVJlSkQ2L1BWZGZBdVJDa2Q4Skt3?=
 =?utf-8?B?b1JsUlFnQ3Zjc0xJVkZ2UFh1VDZzT2RueHhKaHVnNWM0WWdGOXB3bG52bmxi?=
 =?utf-8?B?K0ZhQm85dDVhMi9wa3dKYVQ2OXhoR0RPTG04dnRBZXQvenlkZlgxKzU5M2pt?=
 =?utf-8?B?cHdoODhENEI4QUZqS0VGVzFPSDgrbzIrSzI5d0NzeTFyQVJaYzc0VnFBYVBu?=
 =?utf-8?B?M0FvQWVGV2R2OCtUTnNSWVY3cGJneHlGWkVoOWVpZ1JKQk85T1pmVkUwTHBz?=
 =?utf-8?B?eGdwNS9BV1NFcmhGc0ljL3laT0NVaEVLckNCb2dLWFF2SndOQ2VnVEp4bVBv?=
 =?utf-8?B?LzUxaHRtbVM2UXZQTVBLVHlNaXAzYUJpMlVMQTZnK3RQelpnRm81dUk3L3ZB?=
 =?utf-8?B?Tm5EeG0ybWlTOXdSc3BQSHJDMXVkZ2NWMTRMOVVsTU1CZnN4UTdwY1BVOUcz?=
 =?utf-8?B?TUFFTnpyK1UzS3ZRalR3QlZWS2lqRkJCajlyNUx0S25INXcxK0l1YUlGOERr?=
 =?utf-8?B?VkUyWmprbVZ3RE0vKzVuOFhSalFwOEZ5OXNCVW9CeVg2QTNXVWJSeDFmTVox?=
 =?utf-8?B?TjBzQ1RIelUvVFZzVGJBOXVPUStuRXZJSHRoZUdBUGRvL2M1dWczc256VDUy?=
 =?utf-8?B?MVBaRkszaUxTU3YxaElJYy9USXBpc2Z0Z2dMRmxXQktFTy8zUjJ2ekJuVkdu?=
 =?utf-8?B?N29lUUZVY3puTHFqV2YvUGtZYWtLTWsxWDkvVGViTlF5VW5FNWsrb0gzSjA4?=
 =?utf-8?B?U1FOazZhL0NqQWZFang2elV3aWh5ZVBLM0dTZUdMNlBlUXd4OWVobmh3bFRF?=
 =?utf-8?B?RVpsdGVLelNVVUF3cEFyYWVpS0wxSkthSjE5cjBzbzc2WlZQMXhzdXRUblZ6?=
 =?utf-8?B?NmVqaWZLanRHVGcwMlA3azZxOExaeGhuSlcxWm90TGN0YS9yR3FjUlBHRm1O?=
 =?utf-8?B?NDhkeGNZaVlJTHZTWWNOZUVmWlVZTnI0Zk12WE42NDZSM08vc0VmSEQwWkRr?=
 =?utf-8?B?ZzZVQlNzYUg5UmZvS0Zzd0JqUmRFMlRNeHpvd05yZDJvbjhwK1UzSEtGSXVO?=
 =?utf-8?B?Z05EZHNsdFo4Rk4rT0pybFpDbG5MdFFPNndybkx5cUp4K1JVYWpVMHQybHA0?=
 =?utf-8?B?Q09Mb1J4Mm9GMzRhOVR2Qi8rWGZkUUsxZmQ4alQwQjdiK251L1g2RE9IcS8w?=
 =?utf-8?B?MGYwY2xPZkJtTVVQZExQVG16bEpQbzdtdW9MdkhqSm9UdlNvaWpZUjNjeEF3?=
 =?utf-8?B?OGI5UnYrUFNVckpzbjM2VVlwVnFyS2xHUXpLd2hpNnNueTdXbXBMVjROcmdI?=
 =?utf-8?B?SVRKZWQ0UnBmeWVCL0xXUFlGNnNIaVNuWHhET2pISTd3RUZMYWprSjhxdU1Y?=
 =?utf-8?B?NlFYT1g1RXFCN3RxNHlQUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(13003099007)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aHZYb004MTcrY29xWERNUndHbm9NSUxNQnd5ck5pbHJDNEVNd3U0SVp6ZGFI?=
 =?utf-8?B?ZUVNUEV3MlBWU0wwSWFUbVdDelpFWVo3RE1YV2poenhXVnA1THVhTWxMMCty?=
 =?utf-8?B?N1BRSFNDb0VZenJMRGV3RlpwUTNxRVNIYzVQeFNNWE4vOFVJam1tZGFOSEEx?=
 =?utf-8?B?SnZ4TWtlQ2drdGlnSkN4WTJvczF4bm5NRVk0TXJOY2VLYXNJaXNyUDRMa1VW?=
 =?utf-8?B?Q2dSeHdoa0N2a2FLVU5KRkdRUnJjL3pmTjdESXZDSVA4MVU0ZVRWZlEvUEth?=
 =?utf-8?B?eDR2MmREbjIxd3dXWXR0a2J4SFM1MFY5V2k4SXNkZGQxb2gxUDFxNGkvOW1D?=
 =?utf-8?B?TmtlbCsvUXNZK3JxbzB0WHoyUUpObDEyb1ZKRXBIN2VxcGxSMWlIdXRoamxG?=
 =?utf-8?B?TmkrbEwwVlhhV2RScVI1ekZqTGluRDNHV2k0a0hkaWErdUtBZk5PRThqQThv?=
 =?utf-8?B?SVh6RTBQcGxYN2dhcXdtbXdDSzZQRjhSOG1JRllKTHY5dmZ6YnpGV2Zzb3o1?=
 =?utf-8?B?R3A2MisvMGc1QWpSdExZbjIzSmJjRm1kL0FXdUV2alR0T2poMWpkMkhOSnhM?=
 =?utf-8?B?YzAvcEZyNDcraVFZKzJJYmVnRHlGQXk3ejI1S0xxcmxVVDJmaEdZR045R093?=
 =?utf-8?B?N2NQOGZVTEQxTGpoT2JkSXcvanI4MmJyeE56azdDa2hnK2twYjYrdjhUcFRy?=
 =?utf-8?B?TXBOY1NsQ2V5N0xlMVJDZDdKamluMzliNmdsK1ViRUVpYmVMNDk1NVBZS0Nl?=
 =?utf-8?B?WHVpc0dPeXpHM2lGRThhUWVqekwyUTRpK0NwbFpDeXdNVUNFb1RicnpzS2NP?=
 =?utf-8?B?UFNIT1RiZzdiLzdBdFhCYklNU0E3RUZWQXFleTRwVG9HWTdyTXRJV3VwUWJ3?=
 =?utf-8?B?YnM4Lzk3dlFjelM2RmdZK0VvcVF2eVlCMndnSnJYZUl4bzRFaHN2UFB4S0Vz?=
 =?utf-8?B?MFpzN21vMEN4WmhRb1NLeHlMaDRpaXBpS3RVdDZRRU5hZGZHcW40MklNMy9C?=
 =?utf-8?B?UHlyMHZidXNaNHdZSE05bVQ3bGhwUXUzWi9EUTZSZGo0QSt0cjVlMzBSVjlp?=
 =?utf-8?B?NUcwbE1oTGZZN3JiT0hTR1NNc3RrVkI2dVE2Z1BZSE9VT1VEckdUV0dMalpy?=
 =?utf-8?B?Y2ZpSFArbEhsamxuT3F4cktRam9CbTZEZXpNbnhmY2l5dE9wS0JRd0tReTdU?=
 =?utf-8?B?dmZ3VU13a2NuaVYxNS8wbGM5MFoxLzltYU5yUHcxTTZnY3BnRWd6RDNHa01m?=
 =?utf-8?B?aGNrdXgrWUN1Ly85eUp1OVBrdjRQdzhvMm1xaTZTbXh4dDc1bU9DOVFvcWhK?=
 =?utf-8?B?UEQxUGJMSzkvUHp6Q0w0dTRya3JhQ1k2S2FHeSs2M3psK0o1aW12eHVjRXhl?=
 =?utf-8?B?Z3ZKSmxXR2svcUxEYU5NOFYyM0ZiZWVNSDU1bnRPUThsWVJpalBnUkxTY2RZ?=
 =?utf-8?B?YlZzL0NhZGsySjlBR0tZcWhUd2tPcTVUM3dGMitaY0tGeTJzdnlXTXlMNmlh?=
 =?utf-8?B?aXFqanZ1RjF4S0owSDNHU2JFQWdqcy9JSG5Jd1RNYnUyRVJZbXczeTNQYVVn?=
 =?utf-8?B?L3B5Yk9vUVNOcEZaaGFyODhSMjlJZ21zVVpzOEJET3B5U2hLRlNuNWVGSEdi?=
 =?utf-8?B?eGFrS0tDR2lRc3NSdGExWTVjZHNnMGlsV1BrMkpCUGFkR2pOaTh6TXg5L1pG?=
 =?utf-8?B?Z2NaK1JDbXFNOEt0M0xwRE5lbjhPVnVLb215UmJPTjdOZk1lMU83R2M0a2tw?=
 =?utf-8?B?WUFOODBjR1FQOGp5VVFvUjZPMlV3Znd2dGtES0ZtSEg5VXRBdFhEUjVYUGRR?=
 =?utf-8?B?cSs1ajJMbkplenlJeGRyU2t1cmhtM2VIVkp0SjFGcnBkUTZRcHZ3Nm5IUlBy?=
 =?utf-8?B?b21aQ0dBdmcrV1JTRHZ3NlBIU2dacW9YT2FGL2dKQTc3ejFPNE9oUnMrVHNr?=
 =?utf-8?B?Y1dOOStBeTROSWkvNlhzSFFMdThXcFZGUllVTzNPNjdpcmZZcWFDZjk5Q0RP?=
 =?utf-8?B?UXdoWGhqekRCNncrQUtqRWxhV0JWa1QzVktLRWlWVWVZMmZVbVpETnU1Z1la?=
 =?utf-8?B?djdCTkw3OHN0NFNramM5UkR5cEZHTGdZaGt3WWUyeFNSdXBCMUpxQVk4NHkw?=
 =?utf-8?B?a2dVcjRaS2ZlTWk4cElpOFRtTWVFSms5dkNUYVBmMW1FUjU3NU1TdndPK1F4?=
 =?utf-8?B?UlE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: BWuE+0xSIXWXvm7Hn7HmNlhF3ptGUP0NqtxZJhaLyQB4JIHUfGP9NTXMaKqwPo3IW2GeM4Yvad0eAZMSL3aObJ/p8rN6gm0k0jP+AhnyyBzQJcsKuSTmc7rDbPtk6k5h23YW7d8tfd/7AA0YD9aF7ayr9d2SbP1METjYgmXxF5Lv8t/+3HfWgCskwvBUvUYLVdR3q059uMMWDg1RkPZYX9eKjbL+PECEc5SBUYWJOEuS1x41E27Ohq3dcfWdGdeB/Lb8+CJfI5YmA8AjyKQhbyYttkTf4LpiR0HJib2mhBtlkNrUyM7q+ra5p9rAw/9amqUGUgQbd1lPXAdGnlCTAHSAnEmdsyuL7sXFT6h2aNA022TbeOHj2InWKqBqbLieiISnTXvSR9tKoX8c1Dd3qP4Iu7rkmZ4nOu+Ap1iITfjriR7EzEm5FdVgTjzuT909HNjs5Aary9edjuUuzsBWPLn1ALMVLI3pdjY2PrLjA6IvLIeMtIhOaptU26wO5bwetZUY5laU6IybrrRoIfuFzrP+Mj5ScpwoktqIKbkR0T0jlDKhP7caDc5uPlp+yxgwrxwaqsfpzhOZxLat8KYV9NM6EOhN6I1qJ5JHhWYHmB8=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f13abad7-f280-465f-c542-08dd6c6b2dcd
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2025 13:36:14.3975 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9MS6PBeasGl+0W7t+r9sGofxzFGV67v2cImGPpg5Llk+2IMOHQ+CxhFZ8cbrHWtp9vGdCNRD94+E5Opo6wDpeM5+6kWyv1LbfXFhjHEwMDw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPFDEBD75B51
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-26_06,2025-03-26_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 bulkscore=0 suspectscore=0
 adultscore=0 malwarescore=0 spamscore=0 mlxlogscore=999 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2502280000
 definitions=main-2503260083
X-Proofpoint-GUID: XOJ72ds6lBH-CKWdsKCRwB0lk-b9wqll
X-Proofpoint-ORIG-GUID: XOJ72ds6lBH-CKWdsKCRwB0lk-b9wqll
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 3/25/25 9:23PM, Dylan Wolff wrote: > Hey Shaggy, > > Just
    following up -- is there anything else you need from me on this? No. I've
    just gotten behind. I'll try to take care of this shortly. > > Best, > Dylan
    > > On Wed, Mar 12, 2025 at 4:02 PM Dylan Wolff <wolffd@comp.nus.edu.sg
    > <mailto:wolffd@comp.nus.edu.sg>> wrote: > > Thanks Shaggy! > > I've included
    a summary with sign-off below [...] 
 
 Content analysis details:   (-0.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                            [205.220.165.32 listed in bl.score.senderscore.com]
  0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
                             The query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [205.220.165.32 listed in sa-accredit.habeas.com]
  0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [205.220.165.32 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [205.220.165.32 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
X-Headers-End: 1txQvm-0001OQ-EU
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
Cc: jfs-discussion@lists.sourceforge.net, Jiacheng Xu <stitch@zju.edu.cn>,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gMy8yNS8yNSA5OjIzUE0sIER5bGFuIFdvbGZmIHdyb3RlOgo+IEhleSBTaGFnZ3ksCj4gCj4g
SnVzdCBmb2xsb3dpbmcgdXAgLS0gaXMgdGhlcmUgYW55dGhpbmcgZWxzZSB5b3UgbmVlZCBmcm9t
IG1lIG9uIHRoaXM/CgpOby4gSSd2ZSBqdXN0IGdvdHRlbiBiZWhpbmQuIEknbGwgdHJ5IHRvIHRh
a2UgY2FyZSBvZiB0aGlzIHNob3J0bHkuCgo+IAo+IEJlc3QsCj4gRHlsYW4KPiAKPiBPbiBXZWQs
IE1hciAxMiwgMjAyNSBhdCA0OjAy4oCvUE0gRHlsYW4gV29sZmYgPHdvbGZmZEBjb21wLm51cy5l
ZHUuc2cgCj4gPG1haWx0bzp3b2xmZmRAY29tcC5udXMuZWR1LnNnPj4gd3JvdGU6Cj4gCj4gICAg
IFRoYW5rcyBTaGFnZ3khCj4gCj4gICAgIEkndmUgaW5jbHVkZWQgYSBzdW1tYXJ5IHdpdGggc2ln
bi1vZmYgYmVsb3cuIExldCBtZSBrbm93IGlmIEkgYW0KPiAgICAgbWlzc2luZyBhbnl0aGluZyBl
bHNlIQo+IAo+ICAgICBBbHNvLCB3ZSBhcmVuJ3Qgc3VyZSBpZiB0aGVyZSBhcmUgc2VjdXJpdHkg
aW1wbGljYXRpb25zIGZvciB0aGlzCj4gICAgIGlzc3VlLiBJcyBpdCBwb3NzaWJsZSB0aGF0IGlu
ZHVjZWQgbG9hZCBjb3VsZCByZXN1bHQgaW4gRGVuaWFsIG9mCj4gICAgIFNlcnZpY2U/IENvdWxk
IHlvdSBjb21tZW50IG9uIHdoZXRoZXIgd2Ugc2hvdWxkIGluaXRpYXRlIHRoZSBwcm9jZXNzCj4g
ICAgIGZvciBhIENWRT8KCkkgZG9uJ3QgdGhpbmsgYSBDVkUgaXMgbmVjZXNzYXJ5LiBJZiBhbnlv
bmUgdXNlcyBKRlMgaW4gYSBjcml0aWNhbCAKZW52aXJvbm1lbnQsIGl0J3MgbmV3cyB0byBtZS4K
ClNoYWdneQoKPiAKPiAgICAgVGhhbmtzIQo+ICAgICBEeWxhbgo+IAo+ICAgICBgYGAKPiAgICAg
WyBTeXprYWxsZXIgUmVwb3J0IF0KPiAKPiAgICAgT29wczogZ2VuZXJhbCBwcm90ZWN0aW9uIGZh
dWx0LCBwcm9iYWJseSBmb3Igbm9uLWNhbm9uaWNhbCBhZGRyZXNzCj4gICAgIDB4ZGZmZmZjMDAw
MDAwMDA4NzogMDAwMCBbIzEKPiAgICAgS0FTQU46IG51bGwtcHRyLWRlcmVmIGluIHJhbmdlIFsw
eDAwMDAwMDAwMDAwMDA0MzgtMHgwMDAwMDAwMDAwMDAwNDNmXQo+ICAgICBDUFU6IDIgVUlEOiAw
IFBJRDogMTA2MTQgQ29tbTogc3l6LWV4ZWN1dG9yLjAgTm90IHRhaW50ZWQKPiAgICAgNi4xMy4w
LXJjNi1nZmJmZDY0ZDI1YzdhLWRpcnR5ICMxCj4gICAgIEhhcmR3YXJlIG5hbWU6IFFFTVUgU3Rh
bmRhcmQgUEMgKGk0NDBGWCArIFBJSVgsIDE5OTYpLCBCSU9TIDEuMTUuMC0xCj4gICAgIDA0LzAx
LzIwMTQKPiAgICAgU2NoZWRfZXh0OiBzZXJpYWxpc2UgKGVuYWJsZWQrYWxsKSwgdGFzazogcnVu
bmFibGVfYXQ9LTMwbXMKPiAgICAgUklQOiAwMDEwOmpmc19pb2NfdHJpbSsweDM0Yi8weDhmMAo+
ICAgICBDb2RlOiBlNyBlOCA1OSBhNCA4NyBmZSA0ZCA4YiAyNCAyNCA0ZCA4ZCBiYyAyNCAzOCAw
NCAwMCAwMCA0OCA4ZCA5Mwo+ICAgICA5MCA4MiBmZSBmZiA0YyA4OSBmZiAzMSBmNgo+ICAgICBS
U1A6IDAwMTg6ZmZmZmM5MDAwNTVmN2NkMCBFRkxBR1M6IDAwMDEwMjA2Cj4gICAgIFJBWDogMDAw
MDAwMDAwMDAwMDA4NyBSQlg6IDAwMDA1ODY2YTllNjdmZjggUkNYOiAwMDAwMDAwMDAwMDAwMDBh
Cj4gICAgIFJEWDogMDAwMDAwMDAwMDAwMDAwMSBSU0k6IDAwMDAwMDAwMDAwMDAwMDQgUkRJOiAw
MDAwMDAwMDAwMDAwMDAxCj4gICAgIFJCUDogZGZmZmZjMDAwMDAwMDAwMCBSMDg6IGZmZmY4ODgw
N2MxODAwMDMgUjA5OiAxZmZmZjExMDBmODMwMDAwCj4gICAgIFIxMDogZGZmZmZjMDAwMDAwMDAw
MCBSMTE6IGZmZmZlZDEwMGY4MzAwMDEgUjEyOiAwMDAwMDAwMDAwMDAwMDAwCj4gICAgIFIxMzog
MDAwMDAwMDAwMDAwMDAwMCBSMTQ6IDAwMDAwMDAwMDAwMDAwMDEgUjE1OiAwMDAwMDAwMDAwMDAw
NDM4Cj4gICAgIEZTOsKgIDAwMDA3ZmU1MjAyMjU2NDAoMDAwMCkgR1M6ZmZmZjg4ODBiN2U4MDAw
MCgwMDAwKQo+ICAgICBrbmxHUzowMDAwMDAwMDAwMDAwMDAwCj4gICAgIENTOsKgIDAwMTAgRFM6
IDAwMDAgRVM6IDAwMDAgQ1IwOiAwMDAwMDAwMDgwMDUwMDMzCj4gICAgIENSMjogMDAwMDU1OTNj
OTFiMmM4OCBDUjM6IDAwMDAwMDAxNDkyN2MwMDAgQ1I0OiAwMDAwMDAwMDAwMDAwNmYwCj4gICAg
IERSMDogMDAwMDAwMDAwMDAwMDAwMCBEUjE6IDAwMDAwMDAwMDAwMDAwMDAgRFIyOiAwMDAwMDAw
MDAwMDAwMDAwCj4gICAgIERSMzogMDAwMDAwMDAwMDAwMDAwMCBEUjY6IDAwMDAwMDAwZmZmZTBm
ZjAgRFI3OiAwMDAwMDAwMDAwMDAwNDAwCj4gICAgIENhbGwgVHJhY2U6Cj4gICAgIDxUQVNLPgo+
ICAgICA/IF9fZGllX2JvZHkrMHg2MS8weGIwCj4gICAgID8gZGllX2FkZHIrMHhiMS8weGUwCj4g
ICAgID8gZXhjX2dlbmVyYWxfcHJvdGVjdGlvbisweDMzMy8weDUxMAo+ICAgICA/IGFzbV9leGNf
Z2VuZXJhbF9wcm90ZWN0aW9uKzB4MjYvMHgzMAo+ICAgICA/IGpmc19pb2NfdHJpbSsweDM0Yi8w
eDhmMAo+ICAgICBqZnNfaW9jdGwrMHgzYzgvMHg0ZjAKPiAgICAgPyBfX3BmeF9qZnNfaW9jdGwr
MHgxMC8weDEwCj4gICAgID8gX19wZnhfamZzX2lvY3RsKzB4MTAvMHgxMAo+ICAgICBfX3NlX3N5
c19pb2N0bCsweDI2OS8weDM1MAo+ICAgICA/IF9fcGZ4X19fc2Vfc3lzX2lvY3RsKzB4MTAvMHgx
MAo+ICAgICA/IGRvX3N5c2NhbGxfNjQrMHhmYi8weDIxMAo+ICAgICBkb19zeXNjYWxsXzY0KzB4
ZWUvMHgyMTAKPiAgICAgPyBzeXNjYWxsX2V4aXRfdG9fdXNlcl9tb2RlKzB4MWUwLzB4MzMwCj4g
ICAgIGVudHJ5X1NZU0NBTExfNjRfYWZ0ZXJfaHdmcmFtZSsweDc3LzB4N2YKPiAgICAgUklQOiAw
MDMzOjB4N2ZlNTFmNDkwM2FkCj4gICAgIENvZGU6IGMzIGU4IGE3IDJiIDAwIDAwIDBmIDFmIDgw
IDAwIDAwIDAwIDAwIGYzIDBmIDFlIGZhIDQ4IDg5IGY4IDQ4Cj4gICAgIDg5IGY3IDQ4IDg5IGQ2
IDQ4IDg5IGNhIDRkCj4gICAgIFJTUDogMDAyYjowMDAwN2ZlNTIwMjI1MGM4IEVGTEFHUzogMDAw
MDAyNDYgT1JJR19SQVg6IDAwMDAwMDAwMDAwMDAwMTAKPiAgICAgUkFYOiBmZmZmZmZmZmZmZmZm
ZmRhIFJCWDogMDAwMDdmZTUxZjVjYmY4MCBSQ1g6IDAwMDA3ZmU1MWY0OTAzYWQKPiAgICAgUkRY
OiAwMDAwMDAwMDIwMDAwNjgwIFJTSTogMDAwMDAwMDBjMDE4NTg3OSBSREk6IDAwMDAwMDAwMDAw
MDAwMDUKPiAgICAgUkJQOiAwMDAwMDAwMDAwMDAwMDAwIFIwODogMDAwMDAwMDAwMDAwMDAwMCBS
MDk6IDAwMDAwMDAwMDAwMDAwMDAKPiAgICAgUjEwOiAwMDAwMDAwMDAwMDAwMDAwIFIxMTogMDAw
MDAwMDAwMDAwMDI0NiBSMTI6IDAwMDA3ZmU1MjAyMjU2NDAKPiAgICAgUjEzOiAwMDAwMDAwMDAw
MDAwMDBlIFIxNDogMDAwMDdmZTUxZjQ0ZmNhMCBSMTU6IDAwMDA3ZmU1MjAyMWQwMDAKPiAgICAg
PC9UQVNLPgo+ICAgICBNb2R1bGVzIGxpbmtlZCBpbjoKPiAgICAgLS0tWyBlbmQgdHJhY2UgMDAw
MDAwMDAwMDAwMDAwMCBdLS0tCj4gICAgIFJJUDogMDAxMDpqZnNfaW9jX3RyaW0rMHgzNGIvMHg4
ZjAKPiAgICAgQ29kZTogZTcgZTggNTkgYTQgODcgZmUgNGQgOGIgMjQgMjQgNGQgOGQgYmMgMjQg
MzggMDQgMDAgMDAgNDggOGQgOTMKPiAgICAgOTAgODIgZmUgZmYgNGMgODkgZmYgMzEgZjYKPiAg
ICAgUlNQOiAwMDE4OmZmZmZjOTAwMDU1ZjdjZDAgRUZMQUdTOiAwMDAxMDIwNgo+ICAgICBSQVg6
IDAwMDAwMDAwMDAwMDAwODcgUkJYOiAwMDAwNTg2NmE5ZTY3ZmY4IFJDWDogMDAwMDAwMDAwMDAw
MDAwYQo+ICAgICBSRFg6IDAwMDAwMDAwMDAwMDAwMDEgUlNJOiAwMDAwMDAwMDAwMDAwMDA0IFJE
STogMDAwMDAwMDAwMDAwMDAwMQo+ICAgICBSQlA6IGRmZmZmYzAwMDAwMDAwMDAgUjA4OiBmZmZm
ODg4MDdjMTgwMDAzIFIwOTogMWZmZmYxMTAwZjgzMDAwMAo+ICAgICBSMTA6IGRmZmZmYzAwMDAw
MDAwMDAgUjExOiBmZmZmZWQxMDBmODMwMDAxIFIxMjogMDAwMDAwMDAwMDAwMDAwMAo+ICAgICBS
MTM6IDAwMDAwMDAwMDAwMDAwMDAgUjE0OiAwMDAwMDAwMDAwMDAwMDAxIFIxNTogMDAwMDAwMDAw
MDAwMDQzOAo+ICAgICBGUzrCoCAwMDAwN2ZlNTIwMjI1NjQwKDAwMDApIEdTOmZmZmY4ODgwYjdl
ODAwMDAoMDAwMCkKPiAgICAga25sR1M6MDAwMDAwMDAwMDAwMDAwMAo+ICAgICBDUzrCoCAwMDEw
IERTOiAwMDAwIEVTOiAwMDAwIENSMDogMDAwMDAwMDA4MDA1MDAzMwo+ICAgICBDUjI6IDAwMDA1
NTkzYzkxYjJjODggQ1IzOiAwMDAwMDAwMTQ5MjdjMDAwIENSNDogMDAwMDAwMDAwMDAwMDZmMAo+
ICAgICBEUjA6IDAwMDAwMDAwMDAwMDAwMDAgRFIxOiAwMDAwMDAwMDAwMDAwMDAwIERSMjogMDAw
MDAwMDAwMDAwMDAwMAo+ICAgICBEUjM6IDAwMDAwMDAwMDAwMDAwMDAgRFI2OiAwMDAwMDAwMGZm
ZmUwZmYwIERSNzogMDAwMDAwMDAwMDAwMDQwMAo+ICAgICBLZXJuZWwgcGFuaWMgLSBub3Qgc3lu
Y2luZzogRmF0YWwgZXhjZXB0aW9uCj4gCj4gICAgIFsgQW5hbHlzaXMgXQo+IAo+ICAgICBXZSBi
ZWxpZXZlIHRoYXQgd2UgaGF2ZSBmb3VuZCBhIGNvbmN1cnJlbmN5IGJ1ZyBpbiB0aGUgYGZzL2pm
c2AgbW9kdWxlCj4gICAgIHRoYXQgcmVzdWx0cyBpbiBhIG51bGwgcG9pbnRlciBkZXJlZmVyZW5j
ZS4gVGhlcmUgaXMgYSBjbG9zZWx5IHJlbGF0ZWQKPiAgICAgaXNzdWUgd2hpY2ggaGFzIGJlZW4g
Zml4ZWQ6Cj4gCj4gICAgIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJu
ZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC8KPiAgICAgY29tbWl0Lz9pZD1kNmMxYjM1OTliMmZl
YjVjNzI5MWY1YWMzYTM2ZTVmYTdjZWRiMjM0IDxodHRwczovLwo+ICAgICBnaXQua2VybmVsLm9y
Zy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L2NvbW1pdC8/Cj4g
ICAgIGlkPWQ2YzFiMzU5OWIyZmViNWM3MjkxZjVhYzNhMzZlNWZhN2NlZGIyMzQ+Cj4gCj4gICAg
IC4uLiBidXQsIHVuZm9ydHVuYXRlbHksIHRoZSBhY2NlcHRlZCBwYXRjaCBhcHBlYXJzIHRvIHN0
aWxsIGJlCj4gICAgIHN1c2NlcHRpYmxlIHRvIGEgbnVsbCBwb2ludGVyIGRlcmVmZXJlbmNlIHVu
ZGVyIHNvbWUgaW50ZXJsZWF2aW5ncy4KPiAKPiAgICAgVG8gdHJpZ2dlciB0aGUgYnVnLCB3ZSB0
aGluayB0aGF0IGBKRlNfU0JJKGlwYm1hcC0+aV9zYiktPmJtYXBgIGlzIHNldAo+ICAgICB0byBO
VUxMIGluIGBkYkZyZWVCaXRzYCBhbmQgdGhlbiBkZXJlZmVyZW5jZWQgaW4gYGpmc19pb2NfdHJp
bWAuIFRoaXMKPiAgICAgYnVnIG1hbmlmZXN0cyBxdWl0ZSByYXJlbHkgdW5kZXIgbm9ybWFsIGNp
cmN1bXN0YW5jZXMsIGJ1dCBpcwo+ICAgICB0cmlnZ2VyZWFibGUgZnJvbSBhIHN5ei1wcm9ncmFt
Lgo+IAo+ICAgICBSZXBvcnRlZC1hbmQtdGVzdGVkLWJ5OiBEeWxhbiBKLiBXb2xmZjx3b2xmZmRA
Y29tcC5udXMuZWR1LnNnCj4gICAgIDxtYWlsdG86d29sZmZkQGNvbXAubnVzLmVkdS5zZz4+Cj4g
ICAgIFJlcG9ydGVkLWFuZC10ZXN0ZWQtYnk6IEppYWNoZW5nIFh1IDxzdGl0Y2hAemp1LmVkdS5j
bgo+ICAgICA8bWFpbHRvOnN0aXRjaEB6anUuZWR1LmNuPj4KPiAgICAgU2lnbmVkLW9mZi1ieTog
RHlsYW4gSi4gV29sZmY8d29sZmZkQGNvbXAubnVzLmVkdS5zZwo+ICAgICA8bWFpbHRvOndvbGZm
ZEBjb21wLm51cy5lZHUuc2c+Pgo+ICAgICBTaWduZWQtb2ZmLWJ5OiBKaWFjaGVuZyBYdSA8c3Rp
dGNoQHpqdS5lZHUuY24KPiAgICAgPG1haWx0bzpzdGl0Y2hAemp1LmVkdS5jbj4+Cj4gICAgIC0t
LQo+ICAgICAgwqBmcy9qZnMvamZzX2Rpc2NhcmQuYyB8IDMgKystCj4gICAgICDCoDEgZmlsZSBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb25zKC0pCj4gCj4gICAgIGRpZmYgLS1n
aXQgYS9mcy9qZnMvamZzX2Rpc2NhcmQuYyBiL2ZzL2pmcy9qZnNfZGlzY2FyZC5jCj4gICAgIGlu
ZGV4IDVmNGIzMDUwMy4uNGI2NjAyOTZjIDEwMDY0NAo+ICAgICAtLS0gYS9mcy9qZnMvamZzX2Rp
c2NhcmQuYwo+ICAgICArKysgYi9mcy9qZnMvamZzX2Rpc2NhcmQuYwo+ICAgICBAQCAtODYsNyAr
ODYsOCBAQCBpbnQgamZzX2lvY190cmltKHN0cnVjdCBpbm9kZSAqaXAsIHN0cnVjdAo+ICAgICBm
c3RyaW1fcmFuZ2UgKnJhbmdlKQo+ICAgICAgwqAgwqAgwqAgwqAgZG93bl9yZWFkKCZzYi0+c191
bW91bnQpOwo+ICAgICAgwqAgwqAgwqAgwqAgYm1wID0gSkZTX1NCSShpcC0+aV9zYiktPmJtYXA7
Cj4gCj4gICAgIC3CoCDCoCDCoCDCoGlmIChtaW5sZW4gPiBibXAtPmRiX2Fnc2l6ZSB8fAo+ICAg
ICArwqAgwqAgwqAgwqBpZiAoYm1wID09IE5VTEwgfHwKPiAgICAgK8KgIMKgIMKgIMKgIMKgIMKg
bWlubGVuID4gYm1wLT5kYl9hZ3NpemUgfHwKPiAgICAgIMKgIMKgIMKgIMKgIMKgIMKgIHN0YXJ0
ID49IGJtcC0+ZGJfbWFwc2l6ZSB8fAo+ICAgICAgwqAgwqAgwqAgwqAgwqAgwqAgcmFuZ2UtPmxl
biA8IHNiLT5zX2Jsb2Nrc2l6ZSkgewo+ICAgICAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgdXBf
cmVhZCgmc2ItPnNfdW1vdW50KTsKPiAgICAgYGBgCj4gCj4gCj4gICAgIE9uIFR1ZSwgTWFyIDEx
LCAyMDI1IGF0IDExOjQ44oCvUE0gRGF2ZSBLbGVpa2FtcAo+ICAgICA8ZGF2ZS5rbGVpa2FtcEBv
cmFjbGUuY29tIDxtYWlsdG86ZGF2ZS5rbGVpa2FtcEBvcmFjbGUuY29tPj4gd3JvdGU6Cj4gICAg
ICA+Cj4gICAgICA+IE9uIDMvMTEvMjUgMTo0N0FNLCBEeWxhbiBXb2xmZiB3cm90ZToKPiAgICAg
ID4KPiAgICAgID4gSGkgYWxsLAo+ICAgICAgPgo+ICAgICAgPiBKdXN0IGNoZWNraW5nIGluIG9u
IHRoaXMgcmVwb3J0LiBJcyB0aGVyZSBhbm90aGVyIGVtYWlsIGxpc3QgSQo+ICAgICBzaG91bGQg
YmUgdXNpbmcgZm9yIHRoaXMgaXNzdWU/IENhbiBhbnlvbmUgY29uZmlybSB3aGV0aGVyIG9yIG5v
dAo+ICAgICBvdXIgZml4IGlzIGFjY2VwdGFibGU/Cj4gICAgICA+Cj4gICAgICA+IFRoaXMgaXMg
dGhlIHJpZ2h0IGxpc3QuIFNvbWVob3cgSSBtaXNzZWQgdGhpcyBvbmUgYW5kL29yIGZvcmdvdCBp
dC4KPiAgICAgID4KPiAgICAgID4gVGhlIHBhdGNoIGxvb2tzIGdvb2QgdG8gbWUuIENhbiB5b3Ug
cmUtc2VuZCBpdCB3aXRoIGEgU2lnbmVkLW9mZi0KPiAgICAgYnk6ID8KPiAgICAgID4KPiAgICAg
ID4gVGhhbmsgeW91IQo+ICAgICAgPgo+ICAgICAgPiBTaGFnZ3kKPiAgICAgID4KPiAgICAgID4K
PiAgICAgID4gVGhhbmtzIGFnYWluIQo+ICAgICAgPiBEeWxhbgo+ICAgICAgPgo+ICAgICAgPiBP
biBUdWUsIEphbiA3LCAyMDI1IGF0IDQ6NTPigK9QTSBEeWxhbiBXb2xmZgo+ICAgICA8d29sZmZk
QGNvbXAubnVzLmVkdS5zZyA8bWFpbHRvOndvbGZmZEBjb21wLm51cy5lZHUuc2c+PiB3cm90ZToK
PiAgICAgID4+Cj4gICAgICA+PiBIZWxsbyBrZXJuZWwgZGV2ZWxvcGVycyEKPiAgICAgID4+Cj4g
ICAgICA+PiBXZSBiZWxpZXZlIHRoYXQgd2UgaGF2ZSBmb3VuZCBhIGNvbmN1cnJlbmN5IGJ1ZyBp
biB0aGUgYGZzL2pmc2AKPiAgICAgbW9kdWxlIHRoYXQgcmVzdWx0cyBpbiBhIG51bGwgcG9pbnRl
ciBkZXJlZmVyZW5jZS4gVGhlcmUgaXMgYQo+ICAgICBjbG9zZWx5IHJlbGF0ZWQgaXNzdWUgd2hp
Y2ggaGFzIGJlZW4gZml4ZWQ6Cj4gICAgICA+Pgo+ICAgICAgPj4gaHR0cHM6Ly9naXQua2VybmVs
Lm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvCj4gICAgIGxpbnV4LmdpdC9j
b21taXQvP2lkPWQ2YzFiMzU5OWIyZmViNWM3MjkxZjVhYzNhMzZlNWZhN2NlZGIyMzQKPiAgICAg
PGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRz
L2xpbnV4LmdpdC8KPiAgICAgY29tbWl0Lz9pZD1kNmMxYjM1OTliMmZlYjVjNzI5MWY1YWMzYTM2
ZTVmYTdjZWRiMjM0Pgo+ICAgICAgPj4KPiAgICAgID4+IC4uLiBidXQsIHVuZm9ydHVuYXRlbHks
IHRoZSBhY2NlcHRlZCBwYXRjaCBhcHBlYXJzIHRvIHN0aWxsIGJlCj4gICAgIHN1c2NlcHRpYmxl
IHRvIGEgbnVsbCBwb2ludGVyIGRlcmVmZXJlbmNlIHVuZGVyIHNvbWUgaW50ZXJsZWF2aW5ncy4K
PiAgICAgID4+Cj4gICAgICA+PiBUbyB0cmlnZ2VyIHRoZSBidWcsIHdlIHRoaW5rIHRoYXQgYEpG
U19TQkkoaXBibWFwLT5pX3NiKS0+Ym1hcGAKPiAgICAgaXMgc2V0IHRvIE5VTEwgaW4gYGRiRnJl
ZUJpdHNgIGFuZCB0aGVuIGRlcmVmZXJlbmNlZCBpbgo+ICAgICBgamZzX2lvY190cmltYC4gVGhp
cyBidWcgbWFuaWZlc3RzIHF1aXRlIHJhcmVseSB1bmRlciBub3JtYWwKPiAgICAgY2lyY3Vtc3Rh
bmNlcywgYnV0IGlzIHRyaWdnZXJlYWJsZSB3aXRoIHRoZSBhdHRhY2hlZCBzeXogcHJvZ3JhbS4K
PiAgICAgV2UndmUgYWxzbyBhdHRhY2hlZCBhIHRyYWNlIG9mIGFuIGV4ZWN1dGlvbiB0aGF0IGxl
YWRzIHRvIHRoZSBjcmFzaAo+ICAgICAodGhyZWFkIGlkOmxvY2F0aW9uKS4gSWYgbmVlZGVkLCB3
ZSBjYW4gc2hhcmUgb3VyIHNldHVwIGluIGRldGFpbAo+ICAgICB3aGljaCByZXByb2R1Y2VzIHRo
ZSBidWcgd2l0aCB2ZXJ5IGhpZ2ggcHJvYmFiaWxpdHkuCj4gICAgICA+Pgo+ICAgICAgPj4gSGVy
ZSdzIGEgcHJvcG9zZWQgcGF0Y2g6Cj4gICAgICA+Pgo+ICAgICAgPj4gYGBgCj4gICAgICA+PiBk
aWZmIC0tZ2l0IGEvZnMvamZzL2pmc19kaXNjYXJkLmMgYi9mcy9qZnMvamZzX2Rpc2NhcmQuYwo+
ICAgICAgPj4gaW5kZXggNWY0YjMwNTAzLi40YjY2MDI5NmMgMTAwNjQ0Cj4gICAgICA+PiAtLS0g
YS9mcy9qZnMvamZzX2Rpc2NhcmQuYwo+ICAgICAgPj4gKysrIGIvZnMvamZzL2pmc19kaXNjYXJk
LmMKPiAgICAgID4+IEBAIC04Niw3ICs4Niw4IEBAIGludCBqZnNfaW9jX3RyaW0oc3RydWN0IGlu
b2RlICppcCwgc3RydWN0Cj4gICAgIGZzdHJpbV9yYW5nZSAqcmFuZ2UpCj4gICAgICA+PsKgIMKg
IMKgIMKgIMKgZG93bl9yZWFkKCZzYi0+c191bW91bnQpOwo+ICAgICAgPj7CoCDCoCDCoCDCoCDC
oGJtcCA9IEpGU19TQkkoaXAtPmlfc2IpLT5ibWFwOwo+ICAgICAgPj4KPiAgICAgID4+IC3CoCDC
oCDCoCDCoGlmIChtaW5sZW4gPiBibXAtPmRiX2Fnc2l6ZSB8fAo+ICAgICAgPj4gK8KgIMKgIMKg
IMKgaWYgKGJtcCA9PSBOVUxMIHx8Cj4gICAgICA+PiArwqAgwqAgwqAgwqAgwqAgwqBtaW5sZW4g
PiBibXAtPmRiX2Fnc2l6ZSB8fAo+ICAgICAgPj7CoCDCoCDCoCDCoCDCoCDCoCDCoHN0YXJ0ID49
IGJtcC0+ZGJfbWFwc2l6ZSB8fAo+ICAgICAgPj7CoCDCoCDCoCDCoCDCoCDCoCDCoHJhbmdlLT5s
ZW4gPCBzYi0+c19ibG9ja3NpemUpIHsKPiAgICAgID4+wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqB1cF9yZWFkKCZzYi0+c191bW91bnQpOwo+ICAgICAgPj4gYGBgCj4gICAgICA+Pgo+ICAgICAg
Pj4gQXBwbHlpbmcgdGhpcyBwYXRjaCB0byBvdXIga2VybmVsIGxvY2FsbHkgYXBwZWFycyB0byBy
ZXNvbHZlIHRoZQo+ICAgICBpc3N1ZS4KPiAgICAgID4+Cj4gICAgICA+PiBJZiB0aGlzIGxvb2tz
IGxpa2UgaXQgbWlnaHQgYmUgYSBzZWN1cml0eSB2dWxuZXJhYmlsaXR5LCBwbGVhc2UKPiAgICAg
bGV0IHVzIGtub3cgaWYgdGhlcmUgaXMgYW55dGhpbmcgd2UgbmVlZCB0byBwcm92aWRlIGZvciB0
aGUgQ1ZFIHByb2Nlc3MuCj4gICAgICA+Pgo+ICAgICAgPj4gV2Ugd291bGQgYWxzbyBhcHByZWNp
YXRlIGF0dHJpYnV0aW9uIGZvciB0aGUgZGlzY292ZXJ5IC8gZml4IGlmCj4gICAgIGFwcGxpY2Fi
bGU6Cj4gICAgICA+PiA+UmVwb3J0ZWQtYnk6IEppYWNoZW5nIFh1PHN0aXRjaEB6anUuZWR1LmNu
Cj4gICAgIDxtYWlsdG86c3RpdGNoQHpqdS5lZHUuY24+PizCoCBEeWxhbiBXb2xmZiA8d29sZmZk
QGNvbXAubnVzLmVkdS5zZwo+ICAgICA8bWFpbHRvOndvbGZmZEBjb21wLm51cy5lZHUuc2c+Pgo+
ICAgICAgPj4KPiAgICAgID4+IEVudmlyb25tZW50Ogo+ICAgICAgPj7CoCDCoCDCoCBRZW11IChp
bnZvY2F0aW9uIGF0dGFjaGVkKSBydW5uaW5nIGEgU3l6a2FsbGVyIGltYWdlIG9uIGFuCj4gICAg
IFVidW50dSAyMi4wNC40IExUUyBob3N0Cj4gICAgICA+PiBLZXJuZWw6Cj4gICAgICA+PsKgIMKg
IMKgIEhFQUQgY29tbWl0OiBmYmZkNjRkMjUKPiAgICAgID4+wqAgwqAgwqAgdHJlZTogdXBzdHJl
YW0KPiAgICAgID4+wqAgwqAgwqAgY29tcGlsZXIgdG9vbGNoYWluOiBjbGFuZy0xNwo+ICAgICAg
Pj4KPiAgICAgID4+IFRoYW5rcyEKPiAgICAgID4+IER5bGFuCj4gICAgICA+Pgo+IAoKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lv
biBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBz
Oi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
