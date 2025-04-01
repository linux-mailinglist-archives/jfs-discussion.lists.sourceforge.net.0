Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 95777A782BB
	for <lists+jfs-discussion@lfdr.de>; Tue,  1 Apr 2025 21:25:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tzhEZ-0001tb-Lj;
	Tue, 01 Apr 2025 19:25:15 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1tzhEY-0001tM-1A
 for jfs-discussion@lists.sourceforge.net;
 Tue, 01 Apr 2025 19:25:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Cc:To:From:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YbXkIkQkCHFHUGCogOUYOTbL/mLLmL6UtvypCF1OteE=; b=AUnaciLxNq9CwudUsd+Q3DN9mO
 pm1mo1cXAZzckQsBTKHeAp+/nDVUZDG5b18BwhzDiEEpUE1T8y/qe+MHW0gXsz0AQwWThQkP+gvKG
 6/ua0BR1kPbJTN/L8UAiHnkqqo++pD18R2j9hmpw1OPOr66gS7iLD6yvsDl31BK+RPok=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Cc:To:From:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YbXkIkQkCHFHUGCogOUYOTbL/mLLmL6UtvypCF1OteE=; b=dlWWAXPcCzVRqCIX2RILv4uPeF
 esIFGidT+M4N1BAb2y0TEJsloj4XcLZY0bYsmaNczJETYnoEAyeXQrAmu+dMkq8yNl+8bPk2GhJ4z
 XmvDap2KaZObPngTIBYXLG6RKhpv/jJIRT3NpGmJUK5aplhj9FH+tYmQeZGmJLNDawgQ=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tzhEG-0006cP-0y for jfs-discussion@lists.sourceforge.net;
 Tue, 01 Apr 2025 19:25:12 +0000
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 531IJxkW030530;
 Tue, 1 Apr 2025 19:24:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2023-11-20; bh=YbXkIkQkCHFHUGCogOUYOTbL/mLLmL6UtvypCF1OteE=; b=
 a9Fp/5v9SG/7tT9Rp6+u0t1UJbaf5BnOPAe191nD0kNqmgct1fII0auzASF3TNrp
 RzwjfxB1FbK+eyhOL91mdi3fpmg/a7cbd1lFDv0oSml/4wgSNlVliI4BxFDI7VDz
 pbOugSVZjAz1/rTgTHrptvm6xiGK+h+G2U9OGqar/M3Mjewby8G2tV2qsLIqbhpe
 MziMgVe6/AasE/7BqNHmwmNfayz6gA1y/aCoaI4t2vSKeJzeF1Dx0leG6NDZTelq
 CLh+5qJ9dYIziHDSEE8YHJUd+ZCX9aj+5Hq1GNVrAs/OS9ACKM8ltjbvfUAKmTlU
 8avXdc4uABEmn7STUzj6Bg==
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 45p7f0gxum-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 01 Apr 2025 19:24:38 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 531Inaln016846; Tue, 1 Apr 2025 19:24:37 GMT
Received: from nam02-bn1-obe.outbound.protection.outlook.com
 (mail-bn1nam02lp2044.outbound.protection.outlook.com [104.47.51.44])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 45p7a9nq28-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 01 Apr 2025 19:24:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BqnZjBKesYQz2isf09QBMvIH8Scg4gypEmBDLOZPP4tAoJJs3KkVr6KGh3Pg+CVPvWbEy02928n7GM54jNn+DJ0EgGH52w0abAq2vemlGFSHlI+knG9rh+5wXDMLFF31pN2USZTRkueG9DHvu1DvB0w8GQ+TO69v8YKNeAzzYPFebS9/pHiy/E3QeGjxW6EKgzJWKXFUHocWFKexaa5IEJfW2CBZU0KnHE9DmNM2ytdfFtw0fxiWswaN198F3RAv6pyhFWktjLlimsQlZS5U260PMNdziVyE+bLUB05myoiO3Jua8heErytQKhlNHUA+iDlTgq6wZFsAgJwjUr3L+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YbXkIkQkCHFHUGCogOUYOTbL/mLLmL6UtvypCF1OteE=;
 b=n4vb67Cv8AnUpncYsjeYtPGfykd8v0oQNXQ49j5B/pjrmmglxYkRyY2i4Gi6LwpXyeccnHw5qK0932p0KuWmFUklPBWoW9FEcq7O66crAA6AXP8sBtBC1qXQ2OXvEthpb0qwvOg03LT93+mKe5Tcw4OiBAwezULWyoXg9ctSIcCfEOuH559X9KZYbuZ/ctYHz72rvk/SMftcTFPHh7FZh57M2xoc5ULsuo6V6KDGiWd0CSHWnL19/kgs681f+7daMrAs7GI4ZUUgcKWEa4bBQHAj15cefATlfCMing9IbZYEf/3iOX7L3z2KNbXMNy/WAEcR+mNyQXUNPjJy2JOmjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YbXkIkQkCHFHUGCogOUYOTbL/mLLmL6UtvypCF1OteE=;
 b=ZFoHPsZQ3GvN8CFw0urao5ZBeqKgf00NcJEaFIodmSpaRR9C8/iY+revw6rHdsR+J3o0YmiP/4ALf1xrBLCr1l03sDArT9aAv7php5S+DQXs/ffX3nE5pEFSM6cBbRNOGeOk69nddO5fydZtj2rNwzk7EiR5449iNYPngTkg2wk=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by CH0PR10MB7499.namprd10.prod.outlook.com (2603:10b6:610:182::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8583.41; Tue, 1 Apr
 2025 19:24:35 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb%6]) with mapi id 15.20.8583.033; Tue, 1 Apr 2025
 19:24:34 +0000
Message-ID: <bce70e74-2963-4d90-9c42-04a0247da94e@oracle.com>
Date: Tue, 1 Apr 2025 14:24:32 -0500
User-Agent: Mozilla Thunderbird
To: Dylan Wolff <wolffd@comp.nus.edu.sg>, Dave Kleikamp <shaggy@kernel.org>
References: <CAJeEPu++aAiF=ybq+XHEdGad+RsxR8d=tmEe5LxCOnDjWY_OFg@mail.gmail.com>
 <CAJeEPu+0EttQaFYKhGUbn2j=_nLvT-wfdBS0wQjXDkBq962g6g@mail.gmail.com>
 <8548e6ad-c21d-481c-b9c5-bd0403ee26c1@oracle.com>
 <CAJeEPu+AgjJD--boaj79Hp-QKskOm2AMqVwor_k+cwqUg_X2BA@mail.gmail.com>
 <CAJeEPuJt6nhTQM7S=1A==C+5w04R2bWHAYiHgpve-AcL-1u98Q@mail.gmail.com>
 <160fdd56-d7d2-460c-a142-fa2c8434385c@oracle.com>
Content-Language: en-US
In-Reply-To: <160fdd56-d7d2-460c-a142-fa2c8434385c@oracle.com>
X-ClientProxiedBy: CH0PR04CA0055.namprd04.prod.outlook.com
 (2603:10b6:610:77::30) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|CH0PR10MB7499:EE_
X-MS-Office365-Filtering-Correlation-Id: 56a2a0ba-f04a-4c41-6096-08dd7152d5e0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|13003099007|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZlZqbjVnYURnQnZ5ZG02UFZ3RGh6ZGUxd3ZVSEp6RTlWaFFIZXk0SmgwQmgr?=
 =?utf-8?B?VmNNY01iSzlYcXVGQ1RKQ05uN0ZVRlpVNWtUcUhhS3FqNVRtMWh0RUQ4Tndq?=
 =?utf-8?B?WW96ZVJ6V0UwMTcyMm9uRVJzMDc4Y2lydDMrNldraHlCUkUwSlJMQi80TlpM?=
 =?utf-8?B?MFZRMEJtM0x0SE5hUk8rc1pXQjNtWmd3azlGRTBnUjdxR0RUbWdZWSs5MFBR?=
 =?utf-8?B?Tkx0eTZDK21GZVVqbDhLRHkxLzJtMm1JaGFEWGlBQWlxRndwZStiNkovZnZy?=
 =?utf-8?B?ZHNwcGNrNHBxeWZlbXI1QnM4K0N6UEQrSDZNOENScGMrS0M3U3ltNzRTdldo?=
 =?utf-8?B?S29mY21sdCsxWjh3eFRka0x0em9ZaW92dkJVUGtpQU5udjZBNDk4c0RnMWRG?=
 =?utf-8?B?alhHdTQ5cGZoQWczVDZMQlI3MjRsTXRZVWlBVmNmUEVSamtLa3Znc25Ha3RR?=
 =?utf-8?B?bEJudmNIY2NQckZyS0x0SVgvdCtaMlcyL1lqdVlyYnNlQVBoTncwV0FqUGhB?=
 =?utf-8?B?c25vV1YrS3RGUGFTSHBzdjUxajFoUHR6MDRCNmtZSEZzekduM1dMWFUxcS9N?=
 =?utf-8?B?ZEtPZ2s0Q3p6Lzh3SElydzVGMk5jdjFBd0plVmYxR3FubklraXROSFl4UlFx?=
 =?utf-8?B?bGswQkZ2dUZaT1VxbUMvU2lqUHBoY0ljOUY4YjNuWmFJZ0xBbGdjS2I5TmdC?=
 =?utf-8?B?dzc1RXpKd3E0dGtTTDNhaHdxKytHNWJyRklUTkZscUxGUFYxOXFVSWxzalV6?=
 =?utf-8?B?NExUYVE2NUlibFl5NzRXSmhjM090d084UGJObVRKVGhpTjVwWkp3TGY1ejZV?=
 =?utf-8?B?UVpxQ1BwYkRIbWVvbkxWZmN6V1RTV2poa01xMHVoQTNCYmU2NENqRXRpMUtY?=
 =?utf-8?B?elZRdjNqdnZQN3JtdVQ3a2g2SzJXQmhxd0ZkUnAzOFBXNHo3bzhCRitlYmk0?=
 =?utf-8?B?Z0FQaHJpWGRuT29TalNNcDk0c3lMK0RnNlVHRHJqSU14TncvdWJuTzUyM2Mz?=
 =?utf-8?B?K2d3YTVHR0NqUEF3aHlFdUwxUkpEbWp4aFpRTGVzNGJHZ2w1eEhjVzV1dTk3?=
 =?utf-8?B?N1l4TlZDaWhNbXBhK3BZc3VxdXN4QWpnQTd0eFRMNkNFdC94Ui9mU0RVN1ll?=
 =?utf-8?B?NFJwem5EVE9keXFtOTZwZFFCdURGY0hwa1ZSdmNWVk9QaDErZjFMVTlYTFdM?=
 =?utf-8?B?UDdMTHoraG8ralVMNHFFVlhmemNrT0VyNURIdFpma3VuUGNWd1NCODdVR0Rm?=
 =?utf-8?B?TFVSdkYyY29YSFQwVW9wTklHZDZpUmdNWXlMKzg5QVhZNTBEVy8wVURZby9j?=
 =?utf-8?B?Q0JJbnNmZGRFd0diamNEUU4yMHpqaUlRdjZXdGlGdzlKam9oQUk3Rjg2K1pu?=
 =?utf-8?B?YU8vR0t0WFRURm5sbktvUnRMVUJVYnYyOU9TY21wVXZUTFJZcnZjd1dtaVZv?=
 =?utf-8?B?ckFIdHFqZTZUdWhWY3hyU01iMVE5Vy9UdDRHa3RTK0MrSUYrbHd4aDJUdTRu?=
 =?utf-8?B?ay9xY1Mzemp3MmRzMWxyVUpiRGk5SlNxRHJ5NWpyeC92cTlnNnM2WktodWtr?=
 =?utf-8?B?bkdDN0ZHSmNUTmJRVEVSRklkOENNdkRLSW9ZY2dNZit1UklhNUtMaTVRTUdY?=
 =?utf-8?B?L3BnSkFyTlRzK1BSdFZ4cm1KVjFxTUw1cVF1TmlrTWlPSjVaTDVOU1VGSGl3?=
 =?utf-8?B?TnVRM0ZaQlY4NmhaL3kwRDZSRUNaTG9Vc0RiOWJucVhxNXhBKzlZN0lISFRQ?=
 =?utf-8?B?bDZkeVNVRlQ4SUNVeUdrLytZSDRCTHcwMWtVZFVOd2tqOUFVVzFBRmE1S3Yy?=
 =?utf-8?B?VlhnTUNxaFYybTc5aXRPUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(13003099007)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R3d4VTk3OThTbmQ2YnoveFBkRDBXRHJreVFyUVc5bXJkOC9BMThFWDhlb3Nh?=
 =?utf-8?B?UjBwMmRqTFVWUW0rNmdJWHIvN3R3WG1RazlJUDZhekJDTkJTRHhrKzdTU3Qy?=
 =?utf-8?B?Yk9jMldtMDFoREpUWkVoUnpqcjIxU3FrNVU0Y2pVZEd0S2ZLR0ZIdUg1VzVQ?=
 =?utf-8?B?Ri9wMG5sWG1sOGp3Ymw1S1FON3R2SmNMN1loTVN1bkhaaGMraXUrV0pVY1kw?=
 =?utf-8?B?a1pRbDMrR2NlVmJPZzRYa0dJZnRYVFlnZk9ueUlYTEMvcXBSVEI4OFVVSS9s?=
 =?utf-8?B?MGwxZzN2VlJoM2MxeXM2MEdnbGllL2FJQXhkU1o1Rm56YTRiYVNtSnZLUU1o?=
 =?utf-8?B?MTFUakwvQlZ3Y3FreGZGdWpOUnowYjF5SUVnSWl5bUhYSlJJRDN5dTkrZGgw?=
 =?utf-8?B?QjdUeEJwRFNqVDAwOEppTUxYckNmM21vbkNDVmFNUWJ3bUFVZFdhZWNEcFRH?=
 =?utf-8?B?Mnpqc0gxRWNEaU1YQ1VlUitDTHY0bDlFTCs4R0R5dVVhMCsyd1dnQ2gyYk9z?=
 =?utf-8?B?UWpSNitkWW1sKzJSbFdFdkZGRjNlbDVuMHlvVkVwTjN1RnJ2bjcyUDFxVWVP?=
 =?utf-8?B?WC9GZXJFTWNlMGszVFFxaGlaOE9kTGxITVRUZU8rSncwUUZ2QWxTdnpvNzM2?=
 =?utf-8?B?TW85VGFMWE10S2RqcSsvQ1pSMU02UDJnV0dqbkpYMnFLaThtUG5uTFI5RzBj?=
 =?utf-8?B?aEVOcFFtdmRsWmpVSHZzR2M0aU5HV1I5a2ZZNXppdTNSWHg4c2M4dGw4UE1q?=
 =?utf-8?B?V0NsdlFxeVBCR2F3WTM0M3gxK1ppQXZOTTIrOFYyTzFObFdIakNVVTJYaEJS?=
 =?utf-8?B?TUpGOHFwM25sMys4dVBNbDN6MVVDUS9FR0dIZVo0TlNscWRZWUNvUTlIRi9n?=
 =?utf-8?B?Q0JvVGV4SEdXLzVlTFViZE13K0RtQkptM2lCR2MzMXdMWGZUMnV2UEtKYU9p?=
 =?utf-8?B?VnlnS3dLbmlCYUowWlNOcEg0V3RWSldJWTVvbmtjdzduVGo4Q1BWYkNacnJI?=
 =?utf-8?B?dVZYSWNWdVAxaVl2QWZYc3o5WVpTQ0VVK3NEWjlnT1F2aklDRGxaWW80V2V2?=
 =?utf-8?B?UGh0VXdXU1huUGUxMWVuVms3M0lteHAvVlBSWXROTTJlWllWWThZQjY4OVAz?=
 =?utf-8?B?K0JCdVZUeC9lR25HaGF0cWp4cU10emVhNlVtVWcrc293ZzNIWU1CSHhxSTQx?=
 =?utf-8?B?Z090TTUvOUE1REpIVUdqYVVlUVdEZjlyWXkxMFJuV3lldWFrL0srUzdFaGpj?=
 =?utf-8?B?ZHlPK3A5eXR0cVRpZkZ2T0hlanQzSmYyRnJLZ1MyaVNySnFxTUZKSTRuTUwz?=
 =?utf-8?B?QkJUd3lydlNqQVlHb0JhV1REOVE0US9SK0tFSDZWMjhYTXkzbjR0bzN6R0xZ?=
 =?utf-8?B?ZXQrczVqYzNBZVFVNGJ3QU9mczBGTU9taFVNejhMMSttVW9kWkRVQ3RiWTFp?=
 =?utf-8?B?TFltY2dYeTJsS01zcHdJRDNmaEw1eEt1NjRTNXZ6SFBqNERFbUsrSXJFaXRm?=
 =?utf-8?B?cXRwOTJUMEMvU3hibTNPUGRPMkJEMmFwRWdiVlhlbmg0dkkxamJYZlIxdVFL?=
 =?utf-8?B?UGdvejdmZFJtaUJMU2dSVXJsYzUxRG01UFJKOEZTeDNPTVVWaThsaFlmWDZB?=
 =?utf-8?B?Y0hmZWJYLzZtR1g5NEQ0b081dnpjUWNxaDFjNVRmLzNvT05LN0FGclYxR0hw?=
 =?utf-8?B?VE9ZeXM0encveW0wNUhFYzI1YkpFRm5LcXM0MTZMZ0hqNEhoWmV1RUhaMTU2?=
 =?utf-8?B?T3RvME9hcUJ1MkxUS0JBQ1BGRmJzN2NzaUFrbTE3NUIrNHpqazJGT0FSV3FN?=
 =?utf-8?B?dlVBMFh0MDJuT2cvVEJXNXRmVms0dGlZU2c2Wm94VFlNYXF0U2JMMTNvWitY?=
 =?utf-8?B?WWJYdHRtY0ZyMmVPT0R4S25DNEgvWkxMZENqRnVEZmtaK3oySUtvNUNBaTVk?=
 =?utf-8?B?Yk83cFRpdkIxd1FvTlU5V28xVUgrYmd0REIyUEVyT3NUQ29ET3JjekhBMWdL?=
 =?utf-8?B?QWhSQ0RHcDdyS1phdUJXTEZPTDlNTXFBQjdFMmU5c2RMMnp5TG0vUVZTakdB?=
 =?utf-8?B?RnlMOUNUVVI5L2ZnSFFJUFdJY21UUVRFNSsxOUJuUld2WEVLN1c2cWdGL2hh?=
 =?utf-8?B?NkRRbkE5KzhqSHlrS3Q1bko2Z1JLb2VkbkxKVGMzWUtmeGZ2TzhGQ1hXOHFh?=
 =?utf-8?B?ZXc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: Y/028sdWOnNmsYORq5U2+0pvKl1dHFEc3lBk0H+bYdsnl1p5zoDW6fBsFr14WtZoHnwHRyKwTUdSbdajiGst3Xx8DLLsLljSKo7llJ4Wrb8W67chH7hIce5FXHE9czu7sTo9nU8qiQBlcEcyTmaIORYtUfDJ1/1ocvZk+cptPO3pYI22x8mkCpzAWyO2tbpyqm7TT9QGTP76PwHgBZmMJQXfEeBzYNBuUqwYy+VpUc2ibYNXvBrO83XApNZjiPTlHy/4mO83waUAcF0wJRUtOhqG7kYw3NPsGBpLr4sH93mJy+9XGmMFFqx2gp6ooXHpkLj+BdFQPgSiASiT5EWDgZiT5bofp08D/4DuYD20wQfn+8ymfTEekkEw+W6RwexCcA816mC9XkQyB+F1aeQCAOvCbXa2Rc9PMH71m6qIBlmGZBeR6hgr00X2ex9/UJJCK/JUiFFDiGC38QKdh3NgfgPLVnAWt4wcFhNvV+Xh8LSgU3IkIydzJR3706mQR1KnTm/F2RNequDnt7HRazbw59DAItKgSbPO16YYXo3vLeR9cilJmQy8lwIZP7OUKfgxsIzEIbwsupELrCKCZLO7ISlFz3zde+MuA9O+BF9krgU=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56a2a0ba-f04a-4c41-6096-08dd7152d5e0
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Apr 2025 19:24:34.7423 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Qzw6hxGfp9sH5AT+pAmD1UTTjkCN7hBEAj7100WeogUA3utfxL2WTnDtDd6gCLCOMwfTK4UsUf/1HFeMPQf9nARjxNfxK5UYstjufublOVo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR10MB7499
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-01_08,2025-04-01_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 bulkscore=0 spamscore=0
 phishscore=0 mlxlogscore=999 suspectscore=0 adultscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2502280000
 definitions=main-2504010119
X-Proofpoint-ORIG-GUID: Gnz6VA7fhv4zSYQdfwqR7773Z49egiQa
X-Proofpoint-GUID: Gnz6VA7fhv4zSYQdfwqR7773Z49egiQa
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 3/26/25 8:36AM, Dave Kleikamp wrote: > On 3/25/25 9:23PM, 
 Dylan Wolff wrote: >> Hey Shaggy, >> >> Just following up -- is there anything
 else you need from me on this? > > No. I've just gotten behi [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.165.32 listed in list.dnswl.org]
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
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [205.220.165.32 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1tzhEG-0006cP-0y
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

T24gMy8yNi8yNSA4OjM2QU0sIERhdmUgS2xlaWthbXAgd3JvdGU6Cj4gT24gMy8yNS8yNSA5OjIz
UE0sIER5bGFuIFdvbGZmIHdyb3RlOgo+PiBIZXkgU2hhZ2d5LAo+Pgo+PiBKdXN0IGZvbGxvd2lu
ZyB1cCAtLSBpcyB0aGVyZSBhbnl0aGluZyBlbHNlIHlvdSBuZWVkIGZyb20gbWUgb24gdGhpcz8K
PiAKPiBOby4gSSd2ZSBqdXN0IGdvdHRlbiBiZWhpbmQuIEknbGwgdHJ5IHRvIHRha2UgY2FyZSBv
ZiB0aGlzIHNob3J0bHkuCgpKdXN0IGFuIHVwZGF0ZS4gVGhlIHBhdGNoIGxvb2tzIGdvb2QgdG8g
bWUuIEknbGwgcnVuIGl0IHRocm91Z2ggc29tZSAKdGVzdGluZyBhbmQgcHVzaCBpdC4KClRoYW5r
cyEKClNoYWdneQoKPiAKPj4KPj4gQmVzdCwKPj4gRHlsYW4KPj4KPj4gT24gV2VkLCBNYXIgMTIs
IDIwMjUgYXQgNDowMuKAr1BNIER5bGFuIFdvbGZmIDx3b2xmZmRAY29tcC5udXMuZWR1LnNnIAo+
PiA8bWFpbHRvOndvbGZmZEBjb21wLm51cy5lZHUuc2c+PiB3cm90ZToKPj4KPj4gwqDCoMKgIFRo
YW5rcyBTaGFnZ3khCj4+Cj4+IMKgwqDCoCBJJ3ZlIGluY2x1ZGVkIGEgc3VtbWFyeSB3aXRoIHNp
Z24tb2ZmIGJlbG93LiBMZXQgbWUga25vdyBpZiBJIGFtCj4+IMKgwqDCoCBtaXNzaW5nIGFueXRo
aW5nIGVsc2UhCj4+Cj4+IMKgwqDCoCBBbHNvLCB3ZSBhcmVuJ3Qgc3VyZSBpZiB0aGVyZSBhcmUg
c2VjdXJpdHkgaW1wbGljYXRpb25zIGZvciB0aGlzCj4+IMKgwqDCoCBpc3N1ZS4gSXMgaXQgcG9z
c2libGUgdGhhdCBpbmR1Y2VkIGxvYWQgY291bGQgcmVzdWx0IGluIERlbmlhbCBvZgo+PiDCoMKg
wqAgU2VydmljZT8gQ291bGQgeW91IGNvbW1lbnQgb24gd2hldGhlciB3ZSBzaG91bGQgaW5pdGlh
dGUgdGhlIHByb2Nlc3MKPj4gwqDCoMKgIGZvciBhIENWRT8KPiAKPiBJIGRvbid0IHRoaW5rIGEg
Q1ZFIGlzIG5lY2Vzc2FyeS4gSWYgYW55b25lIHVzZXMgSkZTIGluIGEgY3JpdGljYWwgCj4gZW52
aXJvbm1lbnQsIGl0J3MgbmV3cyB0byBtZS4KPiAKPiBTaGFnZ3kKPiAKPj4KPj4gwqDCoMKgIFRo
YW5rcyEKPj4gwqDCoMKgIER5bGFuCj4+Cj4+IMKgwqDCoCBgYGAKPj4gwqDCoMKgIFsgU3l6a2Fs
bGVyIFJlcG9ydCBdCj4+Cj4+IMKgwqDCoCBPb3BzOiBnZW5lcmFsIHByb3RlY3Rpb24gZmF1bHQs
IHByb2JhYmx5IGZvciBub24tY2Fub25pY2FsIGFkZHJlc3MKPj4gwqDCoMKgIDB4ZGZmZmZjMDAw
MDAwMDA4NzogMDAwMCBbIzEKPj4gwqDCoMKgIEtBU0FOOiBudWxsLXB0ci1kZXJlZiBpbiByYW5n
ZSAKPj4gWzB4MDAwMDAwMDAwMDAwMDQzOC0weDAwMDAwMDAwMDAwMDA0M2ZdCj4+IMKgwqDCoCBD
UFU6IDIgVUlEOiAwIFBJRDogMTA2MTQgQ29tbTogc3l6LWV4ZWN1dG9yLjAgTm90IHRhaW50ZWQK
Pj4gwqDCoMKgIDYuMTMuMC1yYzYtZ2ZiZmQ2NGQyNWM3YS1kaXJ0eSAjMQo+PiDCoMKgwqAgSGFy
ZHdhcmUgbmFtZTogUUVNVSBTdGFuZGFyZCBQQyAoaTQ0MEZYICsgUElJWCwgMTk5NiksIEJJT1Mg
MS4xNS4wLTEKPj4gwqDCoMKgIDA0LzAxLzIwMTQKPj4gwqDCoMKgIFNjaGVkX2V4dDogc2VyaWFs
aXNlIChlbmFibGVkK2FsbCksIHRhc2s6IHJ1bm5hYmxlX2F0PS0zMG1zCj4+IMKgwqDCoCBSSVA6
IDAwMTA6amZzX2lvY190cmltKzB4MzRiLzB4OGYwCj4+IMKgwqDCoCBDb2RlOiBlNyBlOCA1OSBh
NCA4NyBmZSA0ZCA4YiAyNCAyNCA0ZCA4ZCBiYyAyNCAzOCAwNCAwMCAwMCA0OCA4ZCA5Mwo+PiDC
oMKgwqAgOTAgODIgZmUgZmYgNGMgODkgZmYgMzEgZjYKPj4gwqDCoMKgIFJTUDogMDAxODpmZmZm
YzkwMDA1NWY3Y2QwIEVGTEFHUzogMDAwMTAyMDYKPj4gwqDCoMKgIFJBWDogMDAwMDAwMDAwMDAw
MDA4NyBSQlg6IDAwMDA1ODY2YTllNjdmZjggUkNYOiAwMDAwMDAwMDAwMDAwMDBhCj4+IMKgwqDC
oCBSRFg6IDAwMDAwMDAwMDAwMDAwMDEgUlNJOiAwMDAwMDAwMDAwMDAwMDA0IFJESTogMDAwMDAw
MDAwMDAwMDAwMQo+PiDCoMKgwqAgUkJQOiBkZmZmZmMwMDAwMDAwMDAwIFIwODogZmZmZjg4ODA3
YzE4MDAwMyBSMDk6IDFmZmZmMTEwMGY4MzAwMDAKPj4gwqDCoMKgIFIxMDogZGZmZmZjMDAwMDAw
MDAwMCBSMTE6IGZmZmZlZDEwMGY4MzAwMDEgUjEyOiAwMDAwMDAwMDAwMDAwMDAwCj4+IMKgwqDC
oCBSMTM6IDAwMDAwMDAwMDAwMDAwMDAgUjE0OiAwMDAwMDAwMDAwMDAwMDAxIFIxNTogMDAwMDAw
MDAwMDAwMDQzOAo+PiDCoMKgwqAgRlM6wqAgMDAwMDdmZTUyMDIyNTY0MCgwMDAwKSBHUzpmZmZm
ODg4MGI3ZTgwMDAwKDAwMDApCj4+IMKgwqDCoCBrbmxHUzowMDAwMDAwMDAwMDAwMDAwCj4+IMKg
wqDCoCBDUzrCoCAwMDEwIERTOiAwMDAwIEVTOiAwMDAwIENSMDogMDAwMDAwMDA4MDA1MDAzMwo+
PiDCoMKgwqAgQ1IyOiAwMDAwNTU5M2M5MWIyYzg4IENSMzogMDAwMDAwMDE0OTI3YzAwMCBDUjQ6
IDAwMDAwMDAwMDAwMDA2ZjAKPj4gwqDCoMKgIERSMDogMDAwMDAwMDAwMDAwMDAwMCBEUjE6IDAw
MDAwMDAwMDAwMDAwMDAgRFIyOiAwMDAwMDAwMDAwMDAwMDAwCj4+IMKgwqDCoCBEUjM6IDAwMDAw
MDAwMDAwMDAwMDAgRFI2OiAwMDAwMDAwMGZmZmUwZmYwIERSNzogMDAwMDAwMDAwMDAwMDQwMAo+
PiDCoMKgwqAgQ2FsbCBUcmFjZToKPj4gwqDCoMKgIDxUQVNLPgo+PiDCoMKgwqAgPyBfX2RpZV9i
b2R5KzB4NjEvMHhiMAo+PiDCoMKgwqAgPyBkaWVfYWRkcisweGIxLzB4ZTAKPj4gwqDCoMKgID8g
ZXhjX2dlbmVyYWxfcHJvdGVjdGlvbisweDMzMy8weDUxMAo+PiDCoMKgwqAgPyBhc21fZXhjX2dl
bmVyYWxfcHJvdGVjdGlvbisweDI2LzB4MzAKPj4gwqDCoMKgID8gamZzX2lvY190cmltKzB4MzRi
LzB4OGYwCj4+IMKgwqDCoCBqZnNfaW9jdGwrMHgzYzgvMHg0ZjAKPj4gwqDCoMKgID8gX19wZnhf
amZzX2lvY3RsKzB4MTAvMHgxMAo+PiDCoMKgwqAgPyBfX3BmeF9qZnNfaW9jdGwrMHgxMC8weDEw
Cj4+IMKgwqDCoCBfX3NlX3N5c19pb2N0bCsweDI2OS8weDM1MAo+PiDCoMKgwqAgPyBfX3BmeF9f
X3NlX3N5c19pb2N0bCsweDEwLzB4MTAKPj4gwqDCoMKgID8gZG9fc3lzY2FsbF82NCsweGZiLzB4
MjEwCj4+IMKgwqDCoCBkb19zeXNjYWxsXzY0KzB4ZWUvMHgyMTAKPj4gwqDCoMKgID8gc3lzY2Fs
bF9leGl0X3RvX3VzZXJfbW9kZSsweDFlMC8weDMzMAo+PiDCoMKgwqAgZW50cnlfU1lTQ0FMTF82
NF9hZnRlcl9od2ZyYW1lKzB4NzcvMHg3Zgo+PiDCoMKgwqAgUklQOiAwMDMzOjB4N2ZlNTFmNDkw
M2FkCj4+IMKgwqDCoCBDb2RlOiBjMyBlOCBhNyAyYiAwMCAwMCAwZiAxZiA4MCAwMCAwMCAwMCAw
MCBmMyAwZiAxZSBmYSA0OCA4OSBmOCA0OAo+PiDCoMKgwqAgODkgZjcgNDggODkgZDYgNDggODkg
Y2EgNGQKPj4gwqDCoMKgIFJTUDogMDAyYjowMDAwN2ZlNTIwMjI1MGM4IEVGTEFHUzogMDAwMDAy
NDYgT1JJR19SQVg6IAo+PiAwMDAwMDAwMDAwMDAwMDEwCj4+IMKgwqDCoCBSQVg6IGZmZmZmZmZm
ZmZmZmZmZGEgUkJYOiAwMDAwN2ZlNTFmNWNiZjgwIFJDWDogMDAwMDdmZTUxZjQ5MDNhZAo+PiDC
oMKgwqAgUkRYOiAwMDAwMDAwMDIwMDAwNjgwIFJTSTogMDAwMDAwMDBjMDE4NTg3OSBSREk6IDAw
MDAwMDAwMDAwMDAwMDUKPj4gwqDCoMKgIFJCUDogMDAwMDAwMDAwMDAwMDAwMCBSMDg6IDAwMDAw
MDAwMDAwMDAwMDAgUjA5OiAwMDAwMDAwMDAwMDAwMDAwCj4+IMKgwqDCoCBSMTA6IDAwMDAwMDAw
MDAwMDAwMDAgUjExOiAwMDAwMDAwMDAwMDAwMjQ2IFIxMjogMDAwMDdmZTUyMDIyNTY0MAo+PiDC
oMKgwqAgUjEzOiAwMDAwMDAwMDAwMDAwMDBlIFIxNDogMDAwMDdmZTUxZjQ0ZmNhMCBSMTU6IDAw
MDA3ZmU1MjAyMWQwMDAKPj4gwqDCoMKgIDwvVEFTSz4KPj4gwqDCoMKgIE1vZHVsZXMgbGlua2Vk
IGluOgo+PiDCoMKgwqAgLS0tWyBlbmQgdHJhY2UgMDAwMDAwMDAwMDAwMDAwMCBdLS0tCj4+IMKg
wqDCoCBSSVA6IDAwMTA6amZzX2lvY190cmltKzB4MzRiLzB4OGYwCj4+IMKgwqDCoCBDb2RlOiBl
NyBlOCA1OSBhNCA4NyBmZSA0ZCA4YiAyNCAyNCA0ZCA4ZCBiYyAyNCAzOCAwNCAwMCAwMCA0OCA4
ZCA5Mwo+PiDCoMKgwqAgOTAgODIgZmUgZmYgNGMgODkgZmYgMzEgZjYKPj4gwqDCoMKgIFJTUDog
MDAxODpmZmZmYzkwMDA1NWY3Y2QwIEVGTEFHUzogMDAwMTAyMDYKPj4gwqDCoMKgIFJBWDogMDAw
MDAwMDAwMDAwMDA4NyBSQlg6IDAwMDA1ODY2YTllNjdmZjggUkNYOiAwMDAwMDAwMDAwMDAwMDBh
Cj4+IMKgwqDCoCBSRFg6IDAwMDAwMDAwMDAwMDAwMDEgUlNJOiAwMDAwMDAwMDAwMDAwMDA0IFJE
STogMDAwMDAwMDAwMDAwMDAwMQo+PiDCoMKgwqAgUkJQOiBkZmZmZmMwMDAwMDAwMDAwIFIwODog
ZmZmZjg4ODA3YzE4MDAwMyBSMDk6IDFmZmZmMTEwMGY4MzAwMDAKPj4gwqDCoMKgIFIxMDogZGZm
ZmZjMDAwMDAwMDAwMCBSMTE6IGZmZmZlZDEwMGY4MzAwMDEgUjEyOiAwMDAwMDAwMDAwMDAwMDAw
Cj4+IMKgwqDCoCBSMTM6IDAwMDAwMDAwMDAwMDAwMDAgUjE0OiAwMDAwMDAwMDAwMDAwMDAxIFIx
NTogMDAwMDAwMDAwMDAwMDQzOAo+PiDCoMKgwqAgRlM6wqAgMDAwMDdmZTUyMDIyNTY0MCgwMDAw
KSBHUzpmZmZmODg4MGI3ZTgwMDAwKDAwMDApCj4+IMKgwqDCoCBrbmxHUzowMDAwMDAwMDAwMDAw
MDAwCj4+IMKgwqDCoCBDUzrCoCAwMDEwIERTOiAwMDAwIEVTOiAwMDAwIENSMDogMDAwMDAwMDA4
MDA1MDAzMwo+PiDCoMKgwqAgQ1IyOiAwMDAwNTU5M2M5MWIyYzg4IENSMzogMDAwMDAwMDE0OTI3
YzAwMCBDUjQ6IDAwMDAwMDAwMDAwMDA2ZjAKPj4gwqDCoMKgIERSMDogMDAwMDAwMDAwMDAwMDAw
MCBEUjE6IDAwMDAwMDAwMDAwMDAwMDAgRFIyOiAwMDAwMDAwMDAwMDAwMDAwCj4+IMKgwqDCoCBE
UjM6IDAwMDAwMDAwMDAwMDAwMDAgRFI2OiAwMDAwMDAwMGZmZmUwZmYwIERSNzogMDAwMDAwMDAw
MDAwMDQwMAo+PiDCoMKgwqAgS2VybmVsIHBhbmljIC0gbm90IHN5bmNpbmc6IEZhdGFsIGV4Y2Vw
dGlvbgo+Pgo+PiDCoMKgwqAgWyBBbmFseXNpcyBdCj4+Cj4+IMKgwqDCoCBXZSBiZWxpZXZlIHRo
YXQgd2UgaGF2ZSBmb3VuZCBhIGNvbmN1cnJlbmN5IGJ1ZyBpbiB0aGUgYGZzL2pmc2AgCj4+IG1v
ZHVsZQo+PiDCoMKgwqAgdGhhdCByZXN1bHRzIGluIGEgbnVsbCBwb2ludGVyIGRlcmVmZXJlbmNl
LiBUaGVyZSBpcyBhIGNsb3NlbHkgCj4+IHJlbGF0ZWQKPj4gwqDCoMKgIGlzc3VlIHdoaWNoIGhh
cyBiZWVuIGZpeGVkOgo+Pgo+PiDCoMKgwqAgaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2Nt
L2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0Lwo+PiDCoMKgwqAgY29tbWl0Lz9p
ZD1kNmMxYjM1OTliMmZlYjVjNzI5MWY1YWMzYTM2ZTVmYTdjZWRiMjM0IDxodHRwczovLwo+PiDC
oMKgwqAgZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xp
bnV4LmdpdC9jb21taXQvPwo+PiDCoMKgwqAgaWQ9ZDZjMWIzNTk5YjJmZWI1YzcyOTFmNWFjM2Ez
NmU1ZmE3Y2VkYjIzND4KPj4KPj4gwqDCoMKgIC4uLiBidXQsIHVuZm9ydHVuYXRlbHksIHRoZSBh
Y2NlcHRlZCBwYXRjaCBhcHBlYXJzIHRvIHN0aWxsIGJlCj4+IMKgwqDCoCBzdXNjZXB0aWJsZSB0
byBhIG51bGwgcG9pbnRlciBkZXJlZmVyZW5jZSB1bmRlciBzb21lIGludGVybGVhdmluZ3MuCj4+
Cj4+IMKgwqDCoCBUbyB0cmlnZ2VyIHRoZSBidWcsIHdlIHRoaW5rIHRoYXQgYEpGU19TQkkoaXBi
bWFwLT5pX3NiKS0+Ym1hcGAgaXMgCj4+IHNldAo+PiDCoMKgwqAgdG8gTlVMTCBpbiBgZGJGcmVl
Qml0c2AgYW5kIHRoZW4gZGVyZWZlcmVuY2VkIGluIGBqZnNfaW9jX3RyaW1gLiBUaGlzCj4+IMKg
wqDCoCBidWcgbWFuaWZlc3RzIHF1aXRlIHJhcmVseSB1bmRlciBub3JtYWwgY2lyY3Vtc3RhbmNl
cywgYnV0IGlzCj4+IMKgwqDCoCB0cmlnZ2VyZWFibGUgZnJvbSBhIHN5ei1wcm9ncmFtLgo+Pgo+
PiDCoMKgwqAgUmVwb3J0ZWQtYW5kLXRlc3RlZC1ieTogRHlsYW4gSi4gV29sZmY8d29sZmZkQGNv
bXAubnVzLmVkdS5zZwo+PiDCoMKgwqAgPG1haWx0bzp3b2xmZmRAY29tcC5udXMuZWR1LnNnPj4K
Pj4gwqDCoMKgIFJlcG9ydGVkLWFuZC10ZXN0ZWQtYnk6IEppYWNoZW5nIFh1IDxzdGl0Y2hAemp1
LmVkdS5jbgo+PiDCoMKgwqAgPG1haWx0bzpzdGl0Y2hAemp1LmVkdS5jbj4+Cj4+IMKgwqDCoCBT
aWduZWQtb2ZmLWJ5OiBEeWxhbiBKLiBXb2xmZjx3b2xmZmRAY29tcC5udXMuZWR1LnNnCj4+IMKg
wqDCoCA8bWFpbHRvOndvbGZmZEBjb21wLm51cy5lZHUuc2c+Pgo+PiDCoMKgwqAgU2lnbmVkLW9m
Zi1ieTogSmlhY2hlbmcgWHUgPHN0aXRjaEB6anUuZWR1LmNuCj4+IMKgwqDCoCA8bWFpbHRvOnN0
aXRjaEB6anUuZWR1LmNuPj4KPj4gwqDCoMKgIC0tLQo+PiDCoMKgwqDCoCDCoGZzL2pmcy9qZnNf
ZGlzY2FyZC5jIHwgMyArKy0KPj4gwqDCoMKgwqAgwqAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRp
b25zKCspLCAxIGRlbGV0aW9ucygtKQo+Pgo+PiDCoMKgwqAgZGlmZiAtLWdpdCBhL2ZzL2pmcy9q
ZnNfZGlzY2FyZC5jIGIvZnMvamZzL2pmc19kaXNjYXJkLmMKPj4gwqDCoMKgIGluZGV4IDVmNGIz
MDUwMy4uNGI2NjAyOTZjIDEwMDY0NAo+PiDCoMKgwqAgLS0tIGEvZnMvamZzL2pmc19kaXNjYXJk
LmMKPj4gwqDCoMKgICsrKyBiL2ZzL2pmcy9qZnNfZGlzY2FyZC5jCj4+IMKgwqDCoCBAQCAtODYs
NyArODYsOCBAQCBpbnQgamZzX2lvY190cmltKHN0cnVjdCBpbm9kZSAqaXAsIHN0cnVjdAo+PiDC
oMKgwqAgZnN0cmltX3JhbmdlICpyYW5nZSkKPj4gwqDCoMKgwqAgwqAgwqAgwqAgwqAgZG93bl9y
ZWFkKCZzYi0+c191bW91bnQpOwo+PiDCoMKgwqDCoCDCoCDCoCDCoCDCoCBibXAgPSBKRlNfU0JJ
KGlwLT5pX3NiKS0+Ym1hcDsKPj4KPj4gwqDCoMKgIC3CoCDCoCDCoCDCoGlmIChtaW5sZW4gPiBi
bXAtPmRiX2Fnc2l6ZSB8fAo+PiDCoMKgwqAgK8KgIMKgIMKgIMKgaWYgKGJtcCA9PSBOVUxMIHx8
Cj4+IMKgwqDCoCArwqAgwqAgwqAgwqAgwqAgwqBtaW5sZW4gPiBibXAtPmRiX2Fnc2l6ZSB8fAo+
PiDCoMKgwqDCoCDCoCDCoCDCoCDCoCDCoCDCoCBzdGFydCA+PSBibXAtPmRiX21hcHNpemUgfHwK
Pj4gwqDCoMKgwqAgwqAgwqAgwqAgwqAgwqAgwqAgcmFuZ2UtPmxlbiA8IHNiLT5zX2Jsb2Nrc2l6
ZSkgewo+PiDCoMKgwqDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCB1cF9yZWFkKCZzYi0+c191
bW91bnQpOwo+PiDCoMKgwqAgYGBgCj4+Cj4+Cj4+IMKgwqDCoCBPbiBUdWUsIE1hciAxMSwgMjAy
NSBhdCAxMTo0OOKAr1BNIERhdmUgS2xlaWthbXAKPj4gwqDCoMKgIDxkYXZlLmtsZWlrYW1wQG9y
YWNsZS5jb20gPG1haWx0bzpkYXZlLmtsZWlrYW1wQG9yYWNsZS5jb20+PiB3cm90ZToKPj4gwqDC
oMKgwqAgPgo+PiDCoMKgwqDCoCA+IE9uIDMvMTEvMjUgMTo0N0FNLCBEeWxhbiBXb2xmZiB3cm90
ZToKPj4gwqDCoMKgwqAgPgo+PiDCoMKgwqDCoCA+IEhpIGFsbCwKPj4gwqDCoMKgwqAgPgo+PiDC
oMKgwqDCoCA+IEp1c3QgY2hlY2tpbmcgaW4gb24gdGhpcyByZXBvcnQuIElzIHRoZXJlIGFub3Ro
ZXIgZW1haWwgbGlzdCBJCj4+IMKgwqDCoCBzaG91bGQgYmUgdXNpbmcgZm9yIHRoaXMgaXNzdWU/
IENhbiBhbnlvbmUgY29uZmlybSB3aGV0aGVyIG9yIG5vdAo+PiDCoMKgwqAgb3VyIGZpeCBpcyBh
Y2NlcHRhYmxlPwo+PiDCoMKgwqDCoCA+Cj4+IMKgwqDCoMKgID4gVGhpcyBpcyB0aGUgcmlnaHQg
bGlzdC4gU29tZWhvdyBJIG1pc3NlZCB0aGlzIG9uZSBhbmQvb3IgZm9yZ290IAo+PiBpdC4KPj4g
wqDCoMKgwqAgPgo+PiDCoMKgwqDCoCA+IFRoZSBwYXRjaCBsb29rcyBnb29kIHRvIG1lLiBDYW4g
eW91IHJlLXNlbmQgaXQgd2l0aCBhIFNpZ25lZC1vZmYtCj4+IMKgwqDCoCBieTogPwo+PiDCoMKg
wqDCoCA+Cj4+IMKgwqDCoMKgID4gVGhhbmsgeW91IQo+PiDCoMKgwqDCoCA+Cj4+IMKgwqDCoMKg
ID4gU2hhZ2d5Cj4+IMKgwqDCoMKgID4KPj4gwqDCoMKgwqAgPgo+PiDCoMKgwqDCoCA+IFRoYW5r
cyBhZ2FpbiEKPj4gwqDCoMKgwqAgPiBEeWxhbgo+PiDCoMKgwqDCoCA+Cj4+IMKgwqDCoMKgID4g
T24gVHVlLCBKYW4gNywgMjAyNSBhdCA0OjUz4oCvUE0gRHlsYW4gV29sZmYKPj4gwqDCoMKgIDx3
b2xmZmRAY29tcC5udXMuZWR1LnNnIDxtYWlsdG86d29sZmZkQGNvbXAubnVzLmVkdS5zZz4+IHdy
b3RlOgo+PiDCoMKgwqDCoCA+Pgo+PiDCoMKgwqDCoCA+PiBIZWxsbyBrZXJuZWwgZGV2ZWxvcGVy
cyEKPj4gwqDCoMKgwqAgPj4KPj4gwqDCoMKgwqAgPj4gV2UgYmVsaWV2ZSB0aGF0IHdlIGhhdmUg
Zm91bmQgYSBjb25jdXJyZW5jeSBidWcgaW4gdGhlIGBmcy9qZnNgCj4+IMKgwqDCoCBtb2R1bGUg
dGhhdCByZXN1bHRzIGluIGEgbnVsbCBwb2ludGVyIGRlcmVmZXJlbmNlLiBUaGVyZSBpcyBhCj4+
IMKgwqDCoCBjbG9zZWx5IHJlbGF0ZWQgaXNzdWUgd2hpY2ggaGFzIGJlZW4gZml4ZWQ6Cj4+IMKg
wqDCoMKgID4+Cj4+IMKgwqDCoMKgID4+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9s
aW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzLwo+PiDCoMKgwqAgbGludXguZ2l0L2NvbW1pdC8/aWQ9
ZDZjMWIzNTk5YjJmZWI1YzcyOTFmNWFjM2EzNmU1ZmE3Y2VkYjIzNAo+PiDCoMKgwqAgPGh0dHBz
Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4
LmdpdC8KPj4gwqDCoMKgIGNvbW1pdC8/aWQ9ZDZjMWIzNTk5YjJmZWI1YzcyOTFmNWFjM2EzNmU1
ZmE3Y2VkYjIzND4KPj4gwqDCoMKgwqAgPj4KPj4gwqDCoMKgwqAgPj4gLi4uIGJ1dCwgdW5mb3J0
dW5hdGVseSwgdGhlIGFjY2VwdGVkIHBhdGNoIGFwcGVhcnMgdG8gc3RpbGwgYmUKPj4gwqDCoMKg
IHN1c2NlcHRpYmxlIHRvIGEgbnVsbCBwb2ludGVyIGRlcmVmZXJlbmNlIHVuZGVyIHNvbWUgaW50
ZXJsZWF2aW5ncy4KPj4gwqDCoMKgwqAgPj4KPj4gwqDCoMKgwqAgPj4gVG8gdHJpZ2dlciB0aGUg
YnVnLCB3ZSB0aGluayB0aGF0IGBKRlNfU0JJKGlwYm1hcC0+aV9zYiktPmJtYXBgCj4+IMKgwqDC
oCBpcyBzZXQgdG8gTlVMTCBpbiBgZGJGcmVlQml0c2AgYW5kIHRoZW4gZGVyZWZlcmVuY2VkIGlu
Cj4+IMKgwqDCoCBgamZzX2lvY190cmltYC4gVGhpcyBidWcgbWFuaWZlc3RzIHF1aXRlIHJhcmVs
eSB1bmRlciBub3JtYWwKPj4gwqDCoMKgIGNpcmN1bXN0YW5jZXMsIGJ1dCBpcyB0cmlnZ2VyZWFi
bGUgd2l0aCB0aGUgYXR0YWNoZWQgc3l6IHByb2dyYW0uCj4+IMKgwqDCoCBXZSd2ZSBhbHNvIGF0
dGFjaGVkIGEgdHJhY2Ugb2YgYW4gZXhlY3V0aW9uIHRoYXQgbGVhZHMgdG8gdGhlIGNyYXNoCj4+
IMKgwqDCoCAodGhyZWFkIGlkOmxvY2F0aW9uKS4gSWYgbmVlZGVkLCB3ZSBjYW4gc2hhcmUgb3Vy
IHNldHVwIGluIGRldGFpbAo+PiDCoMKgwqAgd2hpY2ggcmVwcm9kdWNlcyB0aGUgYnVnIHdpdGgg
dmVyeSBoaWdoIHByb2JhYmlsaXR5Lgo+PiDCoMKgwqDCoCA+Pgo+PiDCoMKgwqDCoCA+PiBIZXJl
J3MgYSBwcm9wb3NlZCBwYXRjaDoKPj4gwqDCoMKgwqAgPj4KPj4gwqDCoMKgwqAgPj4gYGBgCj4+
IMKgwqDCoMKgID4+IGRpZmYgLS1naXQgYS9mcy9qZnMvamZzX2Rpc2NhcmQuYyBiL2ZzL2pmcy9q
ZnNfZGlzY2FyZC5jCj4+IMKgwqDCoMKgID4+IGluZGV4IDVmNGIzMDUwMy4uNGI2NjAyOTZjIDEw
MDY0NAo+PiDCoMKgwqDCoCA+PiAtLS0gYS9mcy9qZnMvamZzX2Rpc2NhcmQuYwo+PiDCoMKgwqDC
oCA+PiArKysgYi9mcy9qZnMvamZzX2Rpc2NhcmQuYwo+PiDCoMKgwqDCoCA+PiBAQCAtODYsNyAr
ODYsOCBAQCBpbnQgamZzX2lvY190cmltKHN0cnVjdCBpbm9kZSAqaXAsIHN0cnVjdAo+PiDCoMKg
wqAgZnN0cmltX3JhbmdlICpyYW5nZSkKPj4gwqDCoMKgwqAgPj7CoCDCoCDCoCDCoCDCoGRvd25f
cmVhZCgmc2ItPnNfdW1vdW50KTsKPj4gwqDCoMKgwqAgPj7CoCDCoCDCoCDCoCDCoGJtcCA9IEpG
U19TQkkoaXAtPmlfc2IpLT5ibWFwOwo+PiDCoMKgwqDCoCA+Pgo+PiDCoMKgwqDCoCA+PiAtwqAg
wqAgwqAgwqBpZiAobWlubGVuID4gYm1wLT5kYl9hZ3NpemUgfHwKPj4gwqDCoMKgwqAgPj4gK8Kg
IMKgIMKgIMKgaWYgKGJtcCA9PSBOVUxMIHx8Cj4+IMKgwqDCoMKgID4+ICvCoCDCoCDCoCDCoCDC
oCDCoG1pbmxlbiA+IGJtcC0+ZGJfYWdzaXplIHx8Cj4+IMKgwqDCoMKgID4+wqAgwqAgwqAgwqAg
wqAgwqAgwqBzdGFydCA+PSBibXAtPmRiX21hcHNpemUgfHwKPj4gwqDCoMKgwqAgPj7CoCDCoCDC
oCDCoCDCoCDCoCDCoHJhbmdlLT5sZW4gPCBzYi0+c19ibG9ja3NpemUpIHsKPj4gwqDCoMKgwqAg
Pj7CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHVwX3JlYWQoJnNiLT5zX3Vtb3VudCk7Cj4+IMKg
wqDCoMKgID4+IGBgYAo+PiDCoMKgwqDCoCA+Pgo+PiDCoMKgwqDCoCA+PiBBcHBseWluZyB0aGlz
IHBhdGNoIHRvIG91ciBrZXJuZWwgbG9jYWxseSBhcHBlYXJzIHRvIHJlc29sdmUgdGhlCj4+IMKg
wqDCoCBpc3N1ZS4KPj4gwqDCoMKgwqAgPj4KPj4gwqDCoMKgwqAgPj4gSWYgdGhpcyBsb29rcyBs
aWtlIGl0IG1pZ2h0IGJlIGEgc2VjdXJpdHkgdnVsbmVyYWJpbGl0eSwgcGxlYXNlCj4+IMKgwqDC
oCBsZXQgdXMga25vdyBpZiB0aGVyZSBpcyBhbnl0aGluZyB3ZSBuZWVkIHRvIHByb3ZpZGUgZm9y
IHRoZSBDVkUgCj4+IHByb2Nlc3MuCj4+IMKgwqDCoMKgID4+Cj4+IMKgwqDCoMKgID4+IFdlIHdv
dWxkIGFsc28gYXBwcmVjaWF0ZSBhdHRyaWJ1dGlvbiBmb3IgdGhlIGRpc2NvdmVyeSAvIGZpeCBp
Zgo+PiDCoMKgwqAgYXBwbGljYWJsZToKPj4gwqDCoMKgwqAgPj4gPlJlcG9ydGVkLWJ5OiBKaWFj
aGVuZyBYdTxzdGl0Y2hAemp1LmVkdS5jbgo+PiDCoMKgwqAgPG1haWx0bzpzdGl0Y2hAemp1LmVk
dS5jbj4+LMKgIER5bGFuIFdvbGZmIDx3b2xmZmRAY29tcC5udXMuZWR1LnNnCj4+IMKgwqDCoCA8
bWFpbHRvOndvbGZmZEBjb21wLm51cy5lZHUuc2c+Pgo+PiDCoMKgwqDCoCA+Pgo+PiDCoMKgwqDC
oCA+PiBFbnZpcm9ubWVudDoKPj4gwqDCoMKgwqAgPj7CoCDCoCDCoCBRZW11IChpbnZvY2F0aW9u
IGF0dGFjaGVkKSBydW5uaW5nIGEgU3l6a2FsbGVyIGltYWdlIG9uIGFuCj4+IMKgwqDCoCBVYnVu
dHUgMjIuMDQuNCBMVFMgaG9zdAo+PiDCoMKgwqDCoCA+PiBLZXJuZWw6Cj4+IMKgwqDCoMKgID4+
wqAgwqAgwqAgSEVBRCBjb21taXQ6IGZiZmQ2NGQyNQo+PiDCoMKgwqDCoCA+PsKgIMKgIMKgIHRy
ZWU6IHVwc3RyZWFtCj4+IMKgwqDCoMKgID4+wqAgwqAgwqAgY29tcGlsZXIgdG9vbGNoYWluOiBj
bGFuZy0xNwo+PiDCoMKgwqDCoCA+Pgo+PiDCoMKgwqDCoCA+PiBUaGFua3MhCj4+IMKgwqDCoMKg
ID4+IER5bGFuCj4+IMKgwqDCoMKgID4+Cj4+Cj4gCgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdApKZnMt
ZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1c3Npb24K
