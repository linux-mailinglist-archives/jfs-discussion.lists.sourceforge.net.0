Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C14A892AA
	for <lists+jfs-discussion@lfdr.de>; Tue, 15 Apr 2025 05:52:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u4XKk-0003yQ-Iu;
	Tue, 15 Apr 2025 03:51:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <shivankg@amd.com>) id 1u4K5M-00043t-CL
 for jfs-discussion@lists.sourceforge.net;
 Mon, 14 Apr 2025 13:42:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:In-Reply-To:From:References:Cc:To:
 Subject:Date:Message-ID:Content-Type:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jPpaI206MSTloPySdgshEF8rlzviFEyAUcmMeM6fUG4=; b=GYyhFVtoINjPlH37W3dihV4b1G
 C4sP5gntZvduD5arWsl1S2Z8a7er9sm5SZudVxyGfLkL0J05dcnDVwRKZb0uj9R2FiccDpBHqQW2g
 0AUYhMfVhPJzAWmPQsplw2KtsRp46qrwhyUN4oZw5eOCHh4KljpImLZIg6cWfH4rkfhc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:
 Content-Type:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jPpaI206MSTloPySdgshEF8rlzviFEyAUcmMeM6fUG4=; b=WettSzDsuyKlfGiaU6EMQvoUTY
 bX5D+HxxMAC5u0h+NB3phuECF0WNIsGxykyCARlFnPd4Zcfa1vjwpPhihQRI6bg4zbGS54n9twWN9
 wF0SQnS98CfBbhpLD2DjXer70WkeW1Odf48+idRPj61JGvH3G7uJA+x5ZRqJf0RvMgL8=;
Received: from mail-sn1nam02on2078.outbound.protection.outlook.com
 ([40.107.96.78] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1u4K56-00086X-6S for jfs-discussion@lists.sourceforge.net;
 Mon, 14 Apr 2025 13:42:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sIpSH9z+twnBVOz1ddN5EszjC7UO00151zWR6nhNH3/uoKitJLqldRS5wCmrXR2f9Jp9dqNGbugly3HyguhOrMS/uOfmqlFlvh9veKcJjr3jlP2K9OpMmVCuV+4A9F0YmxA9z9uz1hiAp/qYg4AtLJsG4b5oXieP0Qcst2W9A7mH4jpl2+GyRZT1sPo8ItOlEa/AkTX7LF6Y+7gzauCDCsaFaDTJKNhvELFo4AIDaJx5/EMyhqifQwJHTwa3pwY+HPVjqts3w4OLEObR2lt9lL+4SW1goybCJcRZZiPsXYbdI3DdhWIi8vMtukMLayYBAZZRUHvzt/fzFjTC/nceQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jPpaI206MSTloPySdgshEF8rlzviFEyAUcmMeM6fUG4=;
 b=tYKvljsDsZMAqJROYZOsB4K2pndDeCqODjlx3DHReUqPxZpphODBSknlTlWg1q3BgWDX0SqNunAirqhtPzG25dsLRR15RHHdxSleAxAUm6tJmVx6C6l9lT5Bgjj7Cezopj6CvZSx1JfnXy9frPx8J8imwVDKURyCE+w8kKn9D0sDPqvv3Ypx2He/flD/BAYb5TuhGtVwpNox9iu4P2iT4Z5e7WgR7/il4hOjUq+vjGdiQbqF8WooVhZ6IvEkzqse1HqlHPIepZTchMTGKXzDDxkI1FGraqgz92YsDyWdDfoArihRZOJiAKzGH0dDVDUf8hUcqgvcAHpjmvptOj2Pdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jPpaI206MSTloPySdgshEF8rlzviFEyAUcmMeM6fUG4=;
 b=iPd8iud/W9SJCLdVnI/5xSAw76X2qcFNBHZPVFvekzP16YlFbO/eFO0ETQsKBGI7F7yXEl0h63jLhoaRhRG3BCn3eIaXJX/RaoenXgSxBLH7bXqCSdIh4WIok9RyLhl6Qf7audBwmFgY3xHJXArcUPxKziKqNjY12PliHeGRbss=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from CH2PR12MB4262.namprd12.prod.outlook.com (2603:10b6:610:af::8)
 by PH0PR12MB8149.namprd12.prod.outlook.com (2603:10b6:510:297::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.32; Mon, 14 Apr
 2025 13:10:54 +0000
Received: from CH2PR12MB4262.namprd12.prod.outlook.com
 ([fe80::3bdb:bf3d:8bde:7870]) by CH2PR12MB4262.namprd12.prod.outlook.com
 ([fe80::3bdb:bf3d:8bde:7870%5]) with mapi id 15.20.8632.030; Mon, 14 Apr 2025
 13:10:52 +0000
Content-Type: multipart/mixed; boundary="------------HqhnUjAWHZMhFZ2NQuN632wi"
Message-ID: <a54778fd-576e-4344-b2c9-88625ee29919@amd.com>
Date: Mon, 14 Apr 2025 18:40:45 +0530
User-Agent: Mozilla Thunderbird
To: Matthew Wilcox <willy@infradead.org>, shaggy@kernel.org
References: <20250413172356.561544-1-shivankg@amd.com>
 <Z_whZHPR64FHq6ve@casper.infradead.org>
Content-Language: en-US
In-Reply-To: <Z_whZHPR64FHq6ve@casper.infradead.org>
X-ClientProxiedBy: PN3PR01CA0152.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:c8::16) To CH2PR12MB4262.namprd12.prod.outlook.com
 (2603:10b6:610:af::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH2PR12MB4262:EE_|PH0PR12MB8149:EE_
X-MS-Office365-Filtering-Correlation-Id: e8bd122e-6038-4681-582b-08dd7b55c7cb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|4053099003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?b3F1d1RUMDJzbm9LZUFrZzFNeC8rWkVTcXAwZnA3RTdUdU54NHJVL1NHd0tK?=
 =?utf-8?B?T3JxMXRsbG5iQU1GUE5Yd2xDbEZudXF5SWlYQkE4bzBZZ2NxVll3dS9Gbmhp?=
 =?utf-8?B?VkI2TzZlSjd3RWo1SWdERE9KYis0N2RXakJKTDNkVWJ6dHlCOHpMdG15RkJZ?=
 =?utf-8?B?d1hpZXNLck9sc2dnZGdjWGhubzQ3R1pUOVlSZ1JFU2ViQWtXNlpPTkx3eFBu?=
 =?utf-8?B?cWdXemJIMVZZQ09WK01xK01meUZlWHVXT1dia0NKbzF6R0ExYjJCbFVXQ2NH?=
 =?utf-8?B?L3RIZys0ZHJmVGpKMEMrMUpSNzVCcTh2cndybi82djlKMXIrVVFTdm5UQzZu?=
 =?utf-8?B?dnhzMFBIM1NXMUgxZVd1MmhhNnJwVTJHVERvMm1kTEo1UmN4SDVUdld2WWxB?=
 =?utf-8?B?cVJ6VFhSQlNYNXFIbzZLT2tRUmpjU3diQkhhd0tjTWVMNS9DVmVCUzR4Y0Rq?=
 =?utf-8?B?Nm8wcTBCeEtxVGgxUWtsK2JQV2g4UU42elNqcjg2U24yQlVLRFNoUFIydS9M?=
 =?utf-8?B?R3hrUGE1cjBlOVhPZHVBS2t2M09xYXAyZW1mWVBuRG9FeWxCWis2RjNHUlVS?=
 =?utf-8?B?U0k4YVlpeG4rdi9oejBvZGErdzRNbTJhZytsY3VvaFVROHhVdWFGOVE5ZGFU?=
 =?utf-8?B?SU5hWWx4bzdMQU9rUVA4eEREbU1MNVA4R0RRWGFHWjRoWjloV3NsZkNUMWtI?=
 =?utf-8?B?VldQMVVsckIvazFCdU5WbUJBYWlMVkd6YWd2SEFTSCtqdlFkK3FYNkhmQi9p?=
 =?utf-8?B?TmZuNDZYdVV1RzltMzFLbzF4Vmp4QnQ5L3BhUDN5OG5PY1dtVkZUYTk3bmQ5?=
 =?utf-8?B?WDNkY0kwdTBOMEVYTlArelhTSEhrNkdHbnRJeGxyQVVBTVh5d24zQ3VUYW1i?=
 =?utf-8?B?d3drelJDTGllTUhqaktFRXV5MnF4S0ZHbHlTWnNwSUwrUVRVWE84RUZGRXR6?=
 =?utf-8?B?cllIMVVFMkxUTzNFLzN6UmhJZEQ4TmZ2MDFCaEJ1T1lQd2xiVmtOZjN2M1hM?=
 =?utf-8?B?UHJic1JQd0htY2xjMGZyQVNTU0gxOFNKNzgzenZUaEpEbDFVZDJUUSs1MEN0?=
 =?utf-8?B?TFdlRStLNmNjQVFWNTdyODZ1VDZmUFhPRVU4V0luOUVmKzJ4MEJzNktYTEpZ?=
 =?utf-8?B?ZGJldXVRWElKT1lIMURpSlFWRjVkZ1BwL0d3aHhUSmVHNm9zcHpETUJZREI2?=
 =?utf-8?B?aWl1WjZVZ2J3djBqaVpWN2ZwaGN6ekpqd1lFY3U5UlE1YjBFZGFZOTFGQUZT?=
 =?utf-8?B?Nm5EK1FQTXJtZjZVc0RoRjYxcStLNk15SXBvTWdIV3dUYTFDZFJKRm9yQWhQ?=
 =?utf-8?B?UTN3dFZ0YVoxQks4Y2JlczhtK0Y3allCVUY4UVRNRVA2Vmh2UjdNaTZYV0Za?=
 =?utf-8?B?VUZ3WEh3S3d1OGh6M1lhR3dzL05CWmRYSnl1b1dGYUNub2x6RUFyblpub0Qx?=
 =?utf-8?B?YVkrbTcvL2lCa3NCd1M2dTVZaEExUldYZk83SnY4dlRUMEJoTlNVNHFrcGd6?=
 =?utf-8?B?UEFvOHpxMk51aHJkaDhrUTFWd0crWnNrWXFvTzdSWGZvZVBNSjY5SDMrM1c3?=
 =?utf-8?B?NnY4VHhVenJjNmxRVmxMK1YrOE5ZS3NxZXlQbG44ME5ucWxQS0xqS29CRlph?=
 =?utf-8?B?MzlVeHdraUlnVHhoZDh1RnNTS3hkUWNWcUsxR0pTT3ljNDVyZU9zbzNaSEFv?=
 =?utf-8?B?T1JTbmZtTVQ1ZThRb1FmdUxHMkVxSCtTL09Mdzdvd0xZM3VNTHNaZjkwNHRt?=
 =?utf-8?B?RU1OYkl0c25CRDJYYlBsaFZEejdzTzNKY2s4MGVWc3o4cnlTTkpUd2JiZzB1?=
 =?utf-8?B?b1ZtQUZPMldTMjR4TGV3K0oySndXTmpzTCtHaWRnQVFZc1VjM2UrMmtQcnhv?=
 =?utf-8?B?b1dZclZqckZWdGNBT2JmcDk2SlpLOGlRRUtOb1lERTY1NTQwVHI0L0dCd3NN?=
 =?utf-8?Q?w4HrRaJv5RM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR12MB4262.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(4053099003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VG1WMnpuZFk4Q1lyWHo5SCtPckpad1RyM3loZmNqZDRjOXdpTXhrdE4rMEtp?=
 =?utf-8?B?bnhXcUkyZWtaWGJFQWc3NHY3Y212eFFiRXJoek01ZDEwMEtBZ1hZZmVENTJ4?=
 =?utf-8?B?WTkyMEx5emtHZml0UThIQlJmY0tTSldoeFIyQjVkQ2NxM2U3T0JUcklSbEJj?=
 =?utf-8?B?SXZCSStFLzhqRlphejY0dWdpRTFPbmRKV3NFaGE2OEZjbnJWRzA5cHBkL3Zi?=
 =?utf-8?B?VGc5MEI5elNVNWhwV1phYU1CcHV3YnhKWEgzNm5OQTFLZjFsNkR6bVpwRk12?=
 =?utf-8?B?eVRQNUx1a1V6SkNBNDdOSTY2QTkxZ1o3bUpXakl4clhPTU5PNlB6T254Z2FH?=
 =?utf-8?B?dzFDbS9LSVY3eDlWL0NEV0s4VnY4M29mU2FkYUZKUnlHRElRMlpONlo0M1Yr?=
 =?utf-8?B?RHh2ek45VmdWQ0R0M2cxeWxMMmtJNXE2UC9GZDFnM0prZy9FRFBCQkErTnla?=
 =?utf-8?B?c1pHanpKYkswMHZObzExYmpvWVJSVlFsM1Z2amVHdE0zSEE5c0tyYjlCY05k?=
 =?utf-8?B?bEN2Qzh1cGtVT0VDR3hycjA2enBERzhIQXJ2SWN6Y1FKajRvS0xOVFRFVmNt?=
 =?utf-8?B?UGFPVEsxaVhqVUpqTjgwb2Q1WWFYNTZSMVBjWGNaYWtaRGJITTExZGFEbGFS?=
 =?utf-8?B?dlZ0TWFuT2pBUnhrL3ZGUnFFWjFmSkU5TysrckxXMURLdTdEcVpPcGRhU2Zv?=
 =?utf-8?B?UGxDTjB5eld0Umw4b0FHSFVxVkl3RmdzN0RrWU11V2hGVlVVa015SW5uZGpL?=
 =?utf-8?B?aFgvNnF3cThLeEUvS2FVaU1JNGtxb0tkMWIwbTlCY2c5alJjeWZUdDdNRUFp?=
 =?utf-8?B?ZGhaY2RPR2lKMEhLcXgwQnh6STdUb2hjeXp0Mi9TWWtNeTdoSUtGQml5d2Mz?=
 =?utf-8?B?WDVVeElMK2xWK3BscVpIWFJSTkpiUVZhRksxSHFENldVOGpOMitYblJ0K2lH?=
 =?utf-8?B?REZaS01PMHVXMlRuTkhMOEpWTEpPWEttTGlMM1hmbUdUU1NrZWlxUUtPYWNO?=
 =?utf-8?B?aTAxdFM1N0dCeHdEcS96STNPV0s3UkdWaFJuK0pKZFdMVUtBQ0FFMk4vSzB5?=
 =?utf-8?B?SGxnbE1HNVpvOVQ5bnVvdndrMW5HT3UzK2NodkIwY1c0WGJEaURaSjJNcWFU?=
 =?utf-8?B?RGNlNFozWEFsWGNsb2F0UzZYU1RkaWlBc1U0WDNydzV0QUVqRTVTRnRBa21s?=
 =?utf-8?B?dlhLZTgvOWVwNlNzNzdGbFBtZUZPdERiakl4aUFLTlE1Uk1kY3NiVDA4WXVy?=
 =?utf-8?B?TVVFTlgwMXFyNkVRdER2QURSMnZrVkVxMStONEZIRVRUdGN6NkQ1REhvejA4?=
 =?utf-8?B?MzV0VHBCV0VEbUJWNFZDRk5sWHhPOVBQQXljbDdXS2N2aE5YOUppeERiU2dB?=
 =?utf-8?B?NDhKQytUcVZMK0xQVjR1Zm9pMktTQ2xPNVVvK1FKeWNDTmdxOHJ0VFRRc1dt?=
 =?utf-8?B?Z3QzYURNSUowdEtTOUNqdnQya0FHb1p2RzQrN2ZxK1U3d2hEbDdUa0hMSmZX?=
 =?utf-8?B?a2JnTERNVnR3S2xpVGhyWFJmUGlFZzREdllIVGRnTXFIVTNsY0dvYXVqbmtt?=
 =?utf-8?B?TGhCUWx2ZXNMaUdIZjFWUWZhNEJUTEtsM2xsVUtuUE1jOTVGZk5IMTJaNFpp?=
 =?utf-8?B?UWROc0dzT01abzVUMHgvOTNHUUV1NzNyWk5YbW16V1JQYldZTThCVENuZFB3?=
 =?utf-8?B?U2VpMmNPekx5L2k1Tm1JMnpIa0lONFJsaGVNQTlMM08xL3hZNjZGSVM4dWRn?=
 =?utf-8?B?ZnFBczJlSlNnVkMzaEQrTEl6eXBxVTZuQ0hvRm5GdmRMSDRqbDhMa0Qvdjdm?=
 =?utf-8?B?SEtHRkdTV1dmL2tISG4wMzBzQktKb3FCUy9EbFZJc3lDZ00wdFBxSFYzcHlE?=
 =?utf-8?B?Um0yUllab0E2OFZaa0h2eU91TnZCWkpOTW1hQnFTcnIrc0VqM2g2d2owOXAw?=
 =?utf-8?B?MEs0N0RXdHJoOVZ3K20xaWQzbFY5UU9GMGMvSm1wVFpzZ3hTWW9qTjJpbGVS?=
 =?utf-8?B?R2NYYWhVQ3ZEcUM4OFdMYTcvcGdEVUtYOXE2MHpjazdFdXdHb0s0d3IvMnk5?=
 =?utf-8?B?Nk9sU1ByQWNlQTN1Q0tYcTc2WG5NelRwNGpOYkFUSGpKOEpremJudDdzbGlj?=
 =?utf-8?Q?VpcvwbrWnjwXTMNV2WwGbaHkD?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e8bd122e-6038-4681-582b-08dd7b55c7cb
X-MS-Exchange-CrossTenant-AuthSource: CH2PR12MB4262.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2025 13:10:51.8575 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CiTJjRkV4jayF+D2BcoXq34x1WCQghsSrK89VFYa43RWZlxJq7f88R0jJQjz1upvRT8ptywC1MH/GUNaUAyHvQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR12MB8149
X-Spam-Score: 0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 4/14/2025 2:11 AM, Matthew Wilcox wrote: > On Sun, Apr
 13, 2025 at 05:23:57PM +0000,
 Shivank Garg wrote: >> +++ b/fs/jfs/jfs_metapage.c
 >> @@ -570,6 +570,7 @@ const struct address_space_operations [...] 
 Content analysis details:   (0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.96.78 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.96.78 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.96.78 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.96.78 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FORGED_SPF_HELO        No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1u4K56-00086X-6S
X-Mailman-Approved-At: Tue, 15 Apr 2025 03:51:36 +0000
Subject: Re: [Jfs-discussion] [PATCH] jfs: implement migrate_folio for
 jfs_metapage_aops
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
From: Shivank Garg via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Shivank Garg <shivankg@amd.com>
Cc: syzbot+8bb6fd945af4e0ad9299@syzkaller.appspotmail.com,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

--------------HqhnUjAWHZMhFZ2NQuN632wi
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 4/14/2025 2:11 AM, Matthew Wilcox wrote:
> On Sun, Apr 13, 2025 at 05:23:57PM +0000, Shivank Garg wrote:
>> +++ b/fs/jfs/jfs_metapage.c
>> @@ -570,6 +570,7 @@ const struct address_space_operations jfs_metapage_aops = {
>>  	.release_folio	= metapage_release_folio,
>>  	.invalidate_folio = metapage_invalidate_folio,
>>  	.dirty_folio	= filemap_dirty_folio,
>> +	.migrate_folio	= filemap_migrate_folio,
>>  };
> 
> Ooh, damn, I think we're going to need more than this ;-(
> 
> static inline struct metapage *folio_to_mp(struct folio *folio, int offset)
> {
>         return folio->private;
> }
> 
> struct metapage {
> ...
>         void *data;             /* Data pointer */
> 
> So we're going to need something like buffer_migrate_folio(), but
> specialised to jfs metadata.  And when we come up with it, that'll
> be Fixes: 35474d52c605

I'm able to come up with a revised patch but testing seem tricky.
I'm not sure how to trigger the metapage migration.
--------------HqhnUjAWHZMhFZ2NQuN632wi
Content-Type: text/plain; charset=UTF-8;
 name="0001-jfs-implement-migrate_folio-for-jfs_metapage_aops.patch"
Content-Disposition: attachment;
 filename*0="0001-jfs-implement-migrate_folio-for-jfs_metapage_aops.patch"
Content-Transfer-Encoding: base64

RnJvbSAwY2Q1N2QxMDJhMDdmNDUzZDRhNzIyMjE1Y2U4YWUzNGZmODFjMGExIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBTaGl2YW5rIEdhcmcgPHNoaXZhbmtnQGFtZC5jb20+CkRhdGU6
IFN1biwgMTMgQXByIDIwMjUgMTY6NDA6NTMgKzAwMDAKU3ViamVjdDogW1BBVENIXSBqZnM6IGlt
cGxlbWVudCBtaWdyYXRlX2ZvbGlvIGZvciBqZnNfbWV0YXBhZ2VfYW9wcwoKQWRkIHRoZSBtaXNz
aW5nIG1pZ3JhdGVfZm9saW8gb3BlcmF0aW9uIHRvIGpmc19tZXRhcGFnZV9hb3BzIHRvIGZpeAp3
YXJuaW5ncyBkdXJpbmcgbWVtb3J5IGNvbXBhY3Rpb24uIFRoZXNlIHdhcm5pbmdzIHdlcmUgaW50
cm9kdWNlZCBieQpjb21taXQgN2VlMzY0NzI0M2U1ICgibWlncmF0ZTogUmVtb3ZlIGNhbGwgdG8g
LT53cml0ZXBhZ2UiKSB3aGljaAphZGRlZCBleHBsaWNpdCB3YXJuaW5ncyB3aGVuIGZpbGVzeXN0
ZW1zIGRvbid0IGltcGxlbWVudCBtaWdyYXRlX2ZvbGlvLgoKU3lzdGVtIHJlcG9ydHMgZm9sbG93
aW5nIHdhcm5pbmdzOgogIGpmc19tZXRhcGFnZV9hb3BzIGRvZXMgbm90IGltcGxlbWVudCBtaWdy
YXRlX2ZvbGlvCiAgV0FSTklORzogQ1BVOiAwIFBJRDogNjg3MCBhdCBtbS9taWdyYXRlLmM6OTU1
IGZhbGxiYWNrX21pZ3JhdGVfZm9saW8gbW0vbWlncmF0ZS5jOjk1MyBbaW5saW5lXQogIFdBUk5J
Tkc6IENQVTogMCBQSUQ6IDY4NzAgYXQgbW0vbWlncmF0ZS5jOjk1NSBtb3ZlX3RvX25ld19mb2xp
bysweDcwZS8weDg0MCBtbS9taWdyYXRlLmM6MTAwNwoKSW1wbGVtZW50IG1ldGFwYWdlX21pZ3Jh
dGVfZm9saW8gd2hpY2ggaGFuZGxlcyBib3RoIHNpbmdsZSBhbmQgbXVsdGlwbGUKbWV0YXBhZ2Vz
IHBlciBwYWdlIGNvbmZpZ3VyYXRpb25zLgoKRml4ZXM6IDM1NDc0ZDUyYzYwNSAoImpmczogQ29u
dmVydCBtZXRhcGFnZV93cml0ZXBhZ2UgdG8gbWV0YXBhZ2Vfd3JpdGVfZm9saW8iKQpSZXBvcnRl
ZC1ieTogc3l6Ym90KzhiYjZmZDk0NWFmNGUwYWQ5Mjk5QHN5emthbGxlci5hcHBzcG90bWFpbC5j
b20KQ2xvc2VzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvNjdmYWZmNTIuMDUwYTAyMjAu
Mzc5ZDg0LjAwMWIuR0FFQGdvb2dsZS5jb20KU2lnbmVkLW9mZi1ieTogU2hpdmFuayBHYXJnIDxz
aGl2YW5rZ0BhbWQuY29tPgotLS0KIGZzL2pmcy9qZnNfbWV0YXBhZ2UuYyAgIHwgOTQgKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKIGluY2x1ZGUvbGludXgvbWlncmF0
ZS5oIHwgIDEgKwogbW0vbWlncmF0ZS5jICAgICAgICAgICAgfCAgMyArLQogMyBmaWxlcyBjaGFu
Z2VkLCA5NyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZnMvamZz
L2pmc19tZXRhcGFnZS5jIGIvZnMvamZzL2pmc19tZXRhcGFnZS5jCmluZGV4IGRmNTc1YTg3M2Vj
Ni4uNTA3NTlhODQ2ZTIyIDEwMDY0NAotLS0gYS9mcy9qZnMvamZzX21ldGFwYWdlLmMKKysrIGIv
ZnMvamZzL2pmc19tZXRhcGFnZS5jCkBAIC0xNSw2ICsxNSw3IEBACiAjaW5jbHVkZSA8bGludXgv
bWVtcG9vbC5oPgogI2luY2x1ZGUgPGxpbnV4L3NlcV9maWxlLmg+CiAjaW5jbHVkZSA8bGludXgv
d3JpdGViYWNrLmg+CisjaW5jbHVkZSA8bGludXgvbWlncmF0ZS5oPgogI2luY2x1ZGUgImpmc19p
bmNvcmUuaCIKICNpbmNsdWRlICJqZnNfc3VwZXJibG9jay5oIgogI2luY2x1ZGUgImpmc19maWxz
eXMuaCIKQEAgLTE1MSw2ICsxNTIsNTQgQEAgc3RhdGljIGlubGluZSB2b2lkIGRlY19pbyhzdHJ1
Y3QgZm9saW8gKmZvbGlvLCBibGtfc3RhdHVzX3Qgc3RhdHVzLAogCQloYW5kbGVyKGZvbGlvLCBh
bmNob3ItPnN0YXR1cyk7CiB9CiAKK3N0YXRpYyBpbnQgX19tZXRhcGFnZV9taWdyYXRlX2ZvbGlv
KHN0cnVjdCBhZGRyZXNzX3NwYWNlICptYXBwaW5nLCBzdHJ1Y3QgZm9saW8gKmRzdCwKKwkJCQkg
ICAgc3RydWN0IGZvbGlvICpzcmMsIGVudW0gbWlncmF0ZV9tb2RlIG1vZGUpCit7CisJc3RydWN0
IG1ldGFfYW5jaG9yICpzcmNfYW5jaG9yID0gc3JjLT5wcml2YXRlOworCXN0cnVjdCBtZXRhcGFn
ZSAqbXBzW01QU19QRVJfUEFHRV0gPSB7MH07CisJc3RydWN0IG1ldGFwYWdlICptcDsKKwlpbnQg
aSwgcmM7CisKKwlmb3IgKGkgPSAwOyBpIDwgTVBTX1BFUl9QQUdFOyBpKyspIHsKKwkJbXAgPSBz
cmNfYW5jaG9yLT5tcFtpXTsKKwkJaWYgKG1wICYmIG1ldGFwYWdlX2xvY2tlZChtcCkpCisJCQly
ZXR1cm4gLUVBR0FJTjsKKwl9CisKKwlyYyA9IGZpbGVtYXBfbWlncmF0ZV9mb2xpbyhtYXBwaW5n
LCBkc3QsIHNyYywgbW9kZSk7CisJaWYgKHJjICE9IE1JR1JBVEVQQUdFX1NVQ0NFU1MpCisJCXJl
dHVybiByYzsKKworCWZvciAoaSA9IDA7IGkgPCBNUFNfUEVSX1BBR0U7IGkrKykgeworCQltcCA9
IHNyY19hbmNob3ItPm1wW2ldOworCQlpZiAoIW1wKQorCQkJY29udGludWU7CisJCWlmICh1bmxp
a2VseShpbnNlcnRfbWV0YXBhZ2UoZHN0LCBtcCkpKSB7CisJCQkvKiBJZiBlcnJvciwgcm9sbC1i
YWNrIHByZXZpb3NseSBpbnNlcnRlZCBwYWdlcyAqLworCQkJZm9yIChpbnQgaiA9IDAgOyBqIDwg
aTsgaisrKSB7CisJCQkJaWYgKG1wc1tqXSkKKwkJCQkJcmVtb3ZlX21ldGFwYWdlKGRzdCwgbXBz
W2pdKTsKKwkJCX0KKwkJCXJldHVybiAtRUFHQUlOOworCQl9CisJCW1wc1tpXSA9IG1wOworCX0K
KworCS8qIFVwZGF0ZSB0aGUgbWV0YXBhZ2UgYW5kIHJlbW92ZSBpdCBmcm9tIHNyYyAqLworCWZv
ciAoaW50IGkgPSAwOyBpIDwgTVBTX1BFUl9QQUdFOyBpKyspIHsKKwkJbXAgPSBtcHNbaV07CisJ
CWlmIChtcCkgeworCQkJaW50IHBhZ2Vfb2Zmc2V0ID0gbXAtPmRhdGEgLSBmb2xpb19hZGRyZXNz
KHNyYyk7CisKKwkJCW1wLT5kYXRhID0gZm9saW9fYWRkcmVzcyhkc3QpICsgcGFnZV9vZmZzZXQ7
CisJCQltcC0+Zm9saW8gPSBkc3Q7CisJCQlyZW1vdmVfbWV0YXBhZ2Uoc3JjLCBtcCk7CisJCX0K
Kwl9CisKKwlyZXR1cm4gTUlHUkFURVBBR0VfU1VDQ0VTUzsKK30KKwogI2Vsc2UKIHN0YXRpYyBp
bmxpbmUgc3RydWN0IG1ldGFwYWdlICpmb2xpb190b19tcChzdHJ1Y3QgZm9saW8gKmZvbGlvLCBp
bnQgb2Zmc2V0KQogewpAQCAtMTc1LDYgKzIyNCwzMiBAQCBzdGF0aWMgaW5saW5lIHZvaWQgcmVt
b3ZlX21ldGFwYWdlKHN0cnVjdCBmb2xpbyAqZm9saW8sIHN0cnVjdCBtZXRhcGFnZSAqbXApCiAj
ZGVmaW5lIGluY19pbyhmb2xpbykgZG8ge30gd2hpbGUoMCkKICNkZWZpbmUgZGVjX2lvKGZvbGlv
LCBzdGF0dXMsIGhhbmRsZXIpIGhhbmRsZXIoZm9saW8sIHN0YXR1cykKIAorc3RhdGljIGludCBf
X21ldGFwYWdlX21pZ3JhdGVfZm9saW8oc3RydWN0IGFkZHJlc3Nfc3BhY2UgKm1hcHBpbmcsIHN0
cnVjdCBmb2xpbyAqZHN0LAorCQkJCSAgICBzdHJ1Y3QgZm9saW8gKnNyYywgZW51bSBtaWdyYXRl
X21vZGUgbW9kZSkKK3sKKwlzdHJ1Y3QgbWV0YXBhZ2UgKm1wOworCWludCBwYWdlX29mZnNldDsK
KwlpbnQgcmM7CisKKwltcCA9IGZvbGlvX3RvX21wKHNyYywgMCk7CisJaWYgKG1wICYmIG1ldGFw
YWdlX2xvY2tlZChtcCkpCisJCXJldHVybiAtRUFHQUlOOworCisJcmMgPSBmaWxlbWFwX21pZ3Jh
dGVfZm9saW8obWFwcGluZywgZHN0LCBzcmMsIG1vZGUpOworCWlmIChyYyAhPSBNSUdSQVRFUEFH
RV9TVUNDRVNTKQorCQlyZXR1cm4gcmM7CisKKwlpZiAodW5saWtlbHkoaW5zZXJ0X21ldGFwYWdl
KHNyYywgbXApKSkKKwkJcmV0dXJuIC1FQUdBSU47CisKKwlwYWdlX29mZnNldCA9IG1wLT5kYXRh
IC0gZm9saW9fYWRkcmVzcyhzcmMpOworCW1wLT5kYXRhID0gZm9saW9fYWRkcmVzcyhkc3QpICsg
cGFnZV9vZmZzZXQ7CisJbXAtPmZvbGlvID0gZHN0OworCXJlbW92ZV9tZXRhcGFnZShzcmMsIG1w
KTsKKworCXJldHVybiBNSUdSQVRFUEFHRV9TVUNDRVNTOworfQorCiAjZW5kaWYKIAogc3RhdGlj
IGlubGluZSBzdHJ1Y3QgbWV0YXBhZ2UgKmFsbG9jX21ldGFwYWdlKGdmcF90IGdmcF9tYXNrKQpA
QCAtNTU0LDYgKzYyOSwyNCBAQCBzdGF0aWMgYm9vbCBtZXRhcGFnZV9yZWxlYXNlX2ZvbGlvKHN0
cnVjdCBmb2xpbyAqZm9saW8sIGdmcF90IGdmcF9tYXNrKQogCXJldHVybiByZXQ7CiB9CiAKKy8q
KgorICogbWV0YXBhZ2VfbWlncmF0ZV9mb2xpbyAtIE1pZ3JhdGlvbiBmdW5jdGlvbiBmb3IgSkZT
IG1ldGFwYWdlcworICovCitzdGF0aWMgaW50IG1ldGFwYWdlX21pZ3JhdGVfZm9saW8oc3RydWN0
IGFkZHJlc3Nfc3BhY2UgKm1hcHBpbmcsIHN0cnVjdCBmb2xpbyAqZHN0LAorCQkJCSAgc3RydWN0
IGZvbGlvICpzcmMsIGVudW0gbWlncmF0ZV9tb2RlIG1vZGUpCit7CisJaW50IGV4cGVjdGVkX2Nv
dW50OworCisJaWYgKCFzcmMtPnByaXZhdGUpCisJCXJldHVybiBmaWxlbWFwX21pZ3JhdGVfZm9s
aW8obWFwcGluZywgZHN0LCBzcmMsIG1vZGUpOworCisJLyogQ2hlY2sgd2hldGhlciBwYWdlIGRv
ZXMgbm90IGhhdmUgZXh0cmEgcmVmcyBiZWZvcmUgd2UgZG8gbW9yZSB3b3JrICovCisJZXhwZWN0
ZWRfY291bnQgPSBmb2xpb19leHBlY3RlZF9yZWZzKG1hcHBpbmcsIHNyYyk7CisJaWYgKGZvbGlv
X3JlZl9jb3VudChzcmMpICE9IGV4cGVjdGVkX2NvdW50KQorCQlyZXR1cm4gLUVBR0FJTjsKKwly
ZXR1cm4gX19tZXRhcGFnZV9taWdyYXRlX2ZvbGlvKG1hcHBpbmcsIGRzdCwgc3JjLCBtb2RlKTsK
K30KKwogc3RhdGljIHZvaWQgbWV0YXBhZ2VfaW52YWxpZGF0ZV9mb2xpbyhzdHJ1Y3QgZm9saW8g
KmZvbGlvLCBzaXplX3Qgb2Zmc2V0LAogCQkJCSAgICBzaXplX3QgbGVuZ3RoKQogewpAQCAtNTcw
LDYgKzY2Myw3IEBAIGNvbnN0IHN0cnVjdCBhZGRyZXNzX3NwYWNlX29wZXJhdGlvbnMgamZzX21l
dGFwYWdlX2FvcHMgPSB7CiAJLnJlbGVhc2VfZm9saW8JPSBtZXRhcGFnZV9yZWxlYXNlX2ZvbGlv
LAogCS5pbnZhbGlkYXRlX2ZvbGlvID0gbWV0YXBhZ2VfaW52YWxpZGF0ZV9mb2xpbywKIAkuZGly
dHlfZm9saW8JPSBmaWxlbWFwX2RpcnR5X2ZvbGlvLAorCS5taWdyYXRlX2ZvbGlvCT0gbWV0YXBh
Z2VfbWlncmF0ZV9mb2xpbywKIH07CiAKIHN0cnVjdCBtZXRhcGFnZSAqX19nZXRfbWV0YXBhZ2Uo
c3RydWN0IGlub2RlICppbm9kZSwgdW5zaWduZWQgbG9uZyBsYmxvY2ssCmRpZmYgLS1naXQgYS9p
bmNsdWRlL2xpbnV4L21pZ3JhdGUuaCBiL2luY2x1ZGUvbGludXgvbWlncmF0ZS5oCmluZGV4IGFh
YTIxMTQ0OThkNi4uY2IzMWM1YjFlYjZhIDEwMDY0NAotLS0gYS9pbmNsdWRlL2xpbnV4L21pZ3Jh
dGUuaAorKysgYi9pbmNsdWRlL2xpbnV4L21pZ3JhdGUuaApAQCAtNjAsNiArNjAsNyBAQCBzdHJ1
Y3QgbW92YWJsZV9vcGVyYXRpb25zIHsKIC8qIERlZmluZWQgaW4gbW0vZGVidWcuYzogKi8KIGV4
dGVybiBjb25zdCBjaGFyICptaWdyYXRlX3JlYXNvbl9uYW1lc1tNUl9UWVBFU107CiAKK2ludCBm
b2xpb19leHBlY3RlZF9yZWZzKHN0cnVjdCBhZGRyZXNzX3NwYWNlICptYXBwaW5nLCBzdHJ1Y3Qg
Zm9saW8gKmZvbGlvKTsKICNpZmRlZiBDT05GSUdfTUlHUkFUSU9OCiAKIHZvaWQgcHV0YmFja19t
b3ZhYmxlX3BhZ2VzKHN0cnVjdCBsaXN0X2hlYWQgKmwpOwpkaWZmIC0tZ2l0IGEvbW0vbWlncmF0
ZS5jIGIvbW0vbWlncmF0ZS5jCmluZGV4IDZlMjQ4OGU1ZGJlNC4uMGYwMWI4YTg3ZGVjIDEwMDY0
NAotLS0gYS9tbS9taWdyYXRlLmMKKysrIGIvbW0vbWlncmF0ZS5jCkBAIC00NDUsNyArNDQ1LDcg
QEAgdm9pZCBwbWRfbWlncmF0aW9uX2VudHJ5X3dhaXQoc3RydWN0IG1tX3N0cnVjdCAqbW0sIHBt
ZF90ICpwbWQpCiB9CiAjZW5kaWYKIAotc3RhdGljIGludCBmb2xpb19leHBlY3RlZF9yZWZzKHN0
cnVjdCBhZGRyZXNzX3NwYWNlICptYXBwaW5nLAoraW50IGZvbGlvX2V4cGVjdGVkX3JlZnMoc3Ry
dWN0IGFkZHJlc3Nfc3BhY2UgKm1hcHBpbmcsCiAJCXN0cnVjdCBmb2xpbyAqZm9saW8pCiB7CiAJ
aW50IHJlZnMgPSAxOwpAQCAtNDU4LDYgKzQ1OCw3IEBAIHN0YXRpYyBpbnQgZm9saW9fZXhwZWN0
ZWRfcmVmcyhzdHJ1Y3QgYWRkcmVzc19zcGFjZSAqbWFwcGluZywKIAogCXJldHVybiByZWZzOwog
fQorRVhQT1JUX1NZTUJPTF9HUEwoZm9saW9fZXhwZWN0ZWRfcmVmcyk7CiAKIC8qCiAgKiBSZXBs
YWNlIHRoZSBmb2xpbyBpbiB0aGUgbWFwcGluZy4KLS0gCjIuMzQuMQoK

--------------HqhnUjAWHZMhFZ2NQuN632wi
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--------------HqhnUjAWHZMhFZ2NQuN632wi
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion

--------------HqhnUjAWHZMhFZ2NQuN632wi--

