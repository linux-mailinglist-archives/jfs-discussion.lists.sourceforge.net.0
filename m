Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A66F395D5E1
	for <lists+jfs-discussion@lfdr.de>; Fri, 23 Aug 2024 21:11:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1shZgl-0003fm-Uj;
	Fri, 23 Aug 2024 19:11:11 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1shZgj-0003fd-AY
 for jfs-discussion@lists.sourceforge.net;
 Fri, 23 Aug 2024 19:11:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yU+32jeVqZl9GxiP3ERNSkYRp/iWXlf0DzHWeSZX+/U=; b=OYH9n+en8wIpiThMxMEA79/UQw
 EBcx7zcjHszlv6oLat6BSxBdgocz3OzZBBSeHQ0NldRfwSpw3ssxpiY7R1IPGHx1yGu3DKehULEAo
 PjID2hRBo/aaaLDU7mgiFEPbatoqlmQiALOe1U14m5wlS9+PiyL6M/Qlsrwcf4DGCEaM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yU+32jeVqZl9GxiP3ERNSkYRp/iWXlf0DzHWeSZX+/U=; b=dBYgGBq9LEwheBn2opaiin3kke
 wjDB5Nf9N/BCqUt/p2PXpDMaZGY45GYvgGre6pJyaEgnmbKEAW3xmloLUic2xqRGyY84760ppe1tS
 nGja+NuLhC5nVueIpDw4xOn8oudhWiBtOfk38pAxHrfVa6VTAvh3PtjYLqA4SOFb3m20=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1shZgh-0001fU-5M for jfs-discussion@lists.sourceforge.net;
 Fri, 23 Aug 2024 19:11:08 +0000
Received: from pps.filterd (m0333521.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 47NH0XlO025149;
 Fri, 23 Aug 2024 19:10:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
 message-id:date:subject:to:cc:references:from:in-reply-to
 :content-type:content-transfer-encoding:mime-version; s=
 corp-2023-11-20; bh=yU+32jeVqZl9GxiP3ERNSkYRp/iWXlf0DzHWeSZX+/U=; b=
 MSJmjCrfyqf8tHdCtTnp6nobI8ftl4RjWiO7OnM8EPURZp38eYh6PT+fiIGffb94
 sGBpigHkXTLp6qWmE7GV/eaqH278TQLDpjb1FVnl5EuNAfj7ge3Y8PmkmSh3em7p
 QFWGQFi1zy4i4twRLKDrboF41PXnB8ixsJT3iI/H6e7IxmPYlXElarHtaZZD5JBD
 HD7YlO7oUBSOFXmAt+RhHhdCjqe2DnG+s4WRhI9tJCiO5x9sP7pdCJQThEfa/v6k
 sdvnbTaCjEh8Gh8e49W3B0tzE8cMb88ywjtEEog78AQJtOQjS5W1o+huO+Anea08
 mxfpzJVxpegwvtOuOhjnEg==
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 412m45n3jt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 23 Aug 2024 19:10:55 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 47NJ4auW020434; Fri, 23 Aug 2024 19:10:53 GMT
Received: from nam12-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam12lp2173.outbound.protection.outlook.com [104.47.59.173])
 by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 41708tg7hb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 23 Aug 2024 19:10:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=INYg37kx6XnYbhC9D8zPwCBUSUI3P7iBE/JKJNV8kgryWM1TG6rIlWmQMRQ/U0ho45YCPBQaYypy/ngNlu+dG4cVYw0e7JUJCQB7MsffzTl2gcP50cMZsPo0kREg3wAAqNTuy8PH+fjRfXmnvDb32HeTRyJ4/9XZohP4jLmSny8ZrRXsSqLz6hfLHFbqRg6ZifcgR7BwCeRMbJ4lIIoxNRXJQAuIgcr/mEqWHxMkRotWOa6647e+wQb+Pe8y5ENRgL1wscyHOdRJBGSQWJcwZJofFcex56P3FV60Zv0KBZk3WDNRUtIzVkD5TZtrc2UCPHFp1q212glYmLX2RTxwSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yU+32jeVqZl9GxiP3ERNSkYRp/iWXlf0DzHWeSZX+/U=;
 b=US8CduzjwQkrs7ZzOE23EbgDR2anxmXG55Zwk67ruB4Xa8Ce8I2x1Fwrrv6afwNfcVNLSp9IXxQhYQgMWTqf5CZIU5JjOBkLCzY4i1/FJh84ZjopjWZLH36NozWN/RtoBtbXuVHOJ8jIvNxotadKjrbq5HztazTAhSdKkZ2RT/jVr/HBlQfJ8vPx0VTxLKPk5Bjdh85JOm4Q0OS1I0az4eBvDSqBEswBs4N3lxiQLUH4rjQln8qHx83QmkKo9Pbj6ROGrhABmcEIiizleZoC+sRPF2m73OkBTjyiU/llwzomJDmN5wKl+oKy/1uXjJCue+B6dsgND5K1Kjx0k+Gpzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yU+32jeVqZl9GxiP3ERNSkYRp/iWXlf0DzHWeSZX+/U=;
 b=aEjOzT8b4ddT0djVxC0owODSAm8Os+LRIVp8QteLVNPuCfn0sKtZjriOvEXap4Pj9oyEaIMJJEaPq/CtqAymh2sIvpR60s8XJD1ZIclBlzdGx93VttUld7suoKzwKHRr5uyRrOKKhkEs+Z1nwhMaBdWfzOstRyr9o/ogmeFXQhc=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by CH3PR10MB7281.namprd10.prod.outlook.com (2603:10b6:610:12e::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.16; Fri, 23 Aug
 2024 19:10:51 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb%4]) with mapi id 15.20.7897.014; Fri, 23 Aug 2024
 19:10:51 +0000
Message-ID: <1ea4fe05-c6e0-472a-a01b-ab6a0c4c9f76@oracle.com>
Date: Fri, 23 Aug 2024 14:10:49 -0500
User-Agent: Mozilla Thunderbird
To: Edward Adam Davis <eadavis@qq.com>,
 syzbot+3c010e21296f33a5dc16@syzkaller.appspotmail.com
References: <00000000000012a63d061fccab65@google.com>
 <tencent_964B0C7439761367DC3D5337CA968C369E09@qq.com>
Content-Language: en-US
In-Reply-To: <tencent_964B0C7439761367DC3D5337CA968C369E09@qq.com>
X-ClientProxiedBy: CH0PR03CA0017.namprd03.prod.outlook.com
 (2603:10b6:610:b0::22) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|CH3PR10MB7281:EE_
X-MS-Office365-Filtering-Correlation-Id: 157219f6-07db-469f-a438-08dcc3a74dd6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VCtVRUJrRklMdzRvOWZubURVa1FLakM3M05PL216UjV0a2Izclcxc0hnOUh2?=
 =?utf-8?B?Y3Y4L09Jd1FMRVIzMU1ScXpHY01kcHdmMmc1aEVCak5aeXVZSlFsTkpTVXVW?=
 =?utf-8?B?Q0hsdEpOeHRIbmZDSHVFa1Ftb21zM0RZZ3BiM0NKaXZyUUFyNUdyd3MxM1M5?=
 =?utf-8?B?QXFMbkY2TUczMGVWSVR0b0x3K1FDZW13S3FOU1RqbGtBQzdvSVFQNkhVd2tD?=
 =?utf-8?B?QXA5M0NCWGw0YTFQTkFnT21zNjgwMVBBcmxSRm1tM3BkazkySHV0c3BPUyty?=
 =?utf-8?B?TWhMcHgrSXNoYXRPZ3lJNGdBQTVXWXVZcHNScTJBczlPN00rbFVrOHNBS05L?=
 =?utf-8?B?bFFqd3lQck5pWjVGVnBSREJpb0l3RHA3Rlc2MUJkVGNvWGtKT1VUcWdFYWJT?=
 =?utf-8?B?Rk15cTJHWTZ1bWM5bkZQcnpWc1NaNzVHYTJqMGZkSUNkYVZROGE3akUyQnNs?=
 =?utf-8?B?UUF2UW1kMU1mWjFMczRmUlNvQUt3Y3c4bEpxVW8xMGYrYTQrcHZLREVMd0k4?=
 =?utf-8?B?aStRdFZMVFNaTWxtRHRFMkZMMWx3ODZkQllQQlkwMkNrUktzcm1Ob3U4djhJ?=
 =?utf-8?B?bjc0ZEhrYndJUEUyU0pVWnplYW9oeG00d2tLT0FUa213dzN1VXIwei9yYi9M?=
 =?utf-8?B?RVd6MTU3Wk1yR005NUljQnVUSXRlaGdvQXpuMWpwWm1jclp0Y3FXL2VuL1Ir?=
 =?utf-8?B?SFJIdDVRS1FwVWYzOThWM24yakcrekRMK1lGeGxIMGFrY2tCQlFmYXZuZUox?=
 =?utf-8?B?aHBmMDB1cHZoYUFHWUJLaWJrSGxXdFhRY3FRellTdHZNd3BPdG9tRWZwbnFq?=
 =?utf-8?B?cStFeUdTYWNBaW8xWmFtV1hJdi9nNWE2QjRFN3RldjhZUmpJTGtFTXBodkVp?=
 =?utf-8?B?TXc2RHp1UFpRY1ViWExRSm1UZmVFQVFuMGhxTXJPeHNmaEtjWC96NVZ4ZEJX?=
 =?utf-8?B?aDhSNXMyRjJka0VkTEN1MG1tdVZZQ3JPWGRoUk9kV2dPSEFqdEpEODRBZ1Z5?=
 =?utf-8?B?VnQ3c3E3WjVCQkR4bVBPOEZhTHlqcmpoWXBMSGNwTkdxZkd3YUpkZkZHUVcr?=
 =?utf-8?B?T3RscWFLb2tHN0hFSkpYemlwQW5rSHBFUktVQ1VJR04vUzQ3RDkzSDd0elp3?=
 =?utf-8?B?VXJjLzg5aTF2MHJBREpHNndxUGoyamZiTVV0Qk15OHdUZ3k4bW1xeEx4SmNs?=
 =?utf-8?B?V2d2TU1CV0VWWkhhYVNFaGJlTTBwdTRLRyswWkh0ejU2cExhTFZDcHJUWVdz?=
 =?utf-8?B?OElRbFJDaFMxRElBU2JkanVvSkkrK09YZFNIeHRXZFd4Kzhnc2cwTDNNRldQ?=
 =?utf-8?B?UFpjNHA2ZEVYa2hnYVl5L0FEVjhzRHRVL0IzelBKcUxnaGk4THRNK2dxUFZm?=
 =?utf-8?B?VmJ4emVnQkdIWHQ5TGVjaDgrK1A0UFZmemFMZ1dIdXZuQ3Y5SjVoMzh5QTRZ?=
 =?utf-8?B?bUhScXRZOU5Hc29NYVV4QStHVHIreTgxSFVEYkxqR2V6UDhQS041Z3dobVVn?=
 =?utf-8?B?ZmtMNU5ZN0piaEY0WVFNOEZVQUd3N29yWFdsSlBZZFNQakxRSHc4ZkNkTXNz?=
 =?utf-8?B?Mk9WN2ptakxYbW0vQ1FBVFhyWWk4Q1d2TWhwanpwRHRZR2g0anlTS25YYW9p?=
 =?utf-8?B?Tk1yWjcvRUJjaFJmRDJ6ZVkvOWpMREZhcGlBMmxic2ZxRWI0dDZmbTlaZ1hs?=
 =?utf-8?B?M3Zkd3lJczRMZjNMTk5taEVmYjE4ald5anJjNk9mbUFnM1Q1TDVZZzFBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bnMyNXJURlN5YVNnNkp5MUxnL3NaeWVvcmxTV0hqdGxHMUpzL3E3eFJ1K1Fi?=
 =?utf-8?B?Z1Nyb1JWY1haeVJFWUcrd2pabTN4VnA2SFU2Y0o2eUE4Smx2RnMrUExvMmNZ?=
 =?utf-8?B?Rk1YYXRpZWdydDNobUR3UjhnbUV4b29iNGprK0EybGlyMzZYSE1HVndIY01u?=
 =?utf-8?B?YW5oY1dFVTkxQk52WXk1YklGM0FOVngyMjBzMFpodk1oQlNibTQrWkEzdEh5?=
 =?utf-8?B?aTFmeGlSQmhsenNjYzlzUHhiQnd4RHMwbkVFZHlPQVQ2ZUd2WnpwVmRKU2lx?=
 =?utf-8?B?eEFOYnZyby9XMmpFL3RVdUxKREFuOEJGQWRudTB6ZmdZck9FVEFUclFXUjVI?=
 =?utf-8?B?VGExaHV3YkpVcUNZN3FFdDdUK3daV1c5YWJrOEtPKzBMMDJySlphQTVXWkpn?=
 =?utf-8?B?dDNqVmNjR2ZJOUpYRTNLRk16WGtibTM1aVZva0hVY2cyYVJ6OFFUVldQS00w?=
 =?utf-8?B?NUI1UTZhQitSUEVyUWJXUDBXN0FhK2JxUUVNQ2xOc2dKWUlCaU9SdzVNZ3Rp?=
 =?utf-8?B?WXNMaGtRNnY4MUpobVNEOGJRek5wb09vZEZoemJUblhEMHFsRjZka1IxaGJB?=
 =?utf-8?B?Yk5POXExVGw0SEpyUWNjeEJlcDdkMGwxUlFlL3E3K3JrNU1waktna0tQcXZ3?=
 =?utf-8?B?RytIT24rbTAvOTJCVkdndHN1YUppYkdVWUNpRTRISzF1VlJrZk9tODY4QXZC?=
 =?utf-8?B?Z2F1bDhTVUJWRDh5UUpFNnlIMGJueFlCZXJNc1k3ZHlzRSt4K3lsRnFwaTNm?=
 =?utf-8?B?UmFIODd4SlY1azNwL21neDAwRExZMHJYeTQ5dVlidTVNbzNvakdIZEkvdnlk?=
 =?utf-8?B?bnRFa2lzQVFQYVRsWGFlRUVvMmt5WUkza2tISndPSlI3SWQrS0FNWXBUTHQz?=
 =?utf-8?B?eDAzN0F3NkF4algzWElnaTBabDlUaVpTQ0lJYzhQSDlJb3ZSR0FySngrQlZQ?=
 =?utf-8?B?Slp4ZzgrZFVGNkZwalBUd29DREZDcjZ5RzhLRFo3K2RNdStkdzlXcDJjNjVx?=
 =?utf-8?B?Ny9xbzNLbHVzc1BiSUw2ZmpDSFpNUXR4SXVZb1lEMjZOZnk4SzJYZ0F0QWZQ?=
 =?utf-8?B?b1JPNldSM0FrRVdaTWVmNHdRS0VXRng2d091NVJuM0pvYXA0Z0xmd1QyL0xl?=
 =?utf-8?B?WDlrbVd0NHdMT1lkSm9xQmNFbjd0SitlcUZMSzF6YWpCakx3YVp3RVF3RXo4?=
 =?utf-8?B?VTdBK3FBMVRTcHdXTDdtRnZuUjRJRFB5a2F4aFU1K1dmbDYvQXhlZWlyWW5L?=
 =?utf-8?B?K0VFUlZjNE1vRkE0cDBySXRpbnpGc1pULzJwK1NEVDZ2K3ZKNjFlVDd0MGpw?=
 =?utf-8?B?SmlHS0dGcEFoRTV3eEMwQjJ3YUhxRHlwSGFkbHZyWThvRlF3bHM3d2FmUGVU?=
 =?utf-8?B?UnBnRVdLUHZxMWxyQlZzekZObEhEaVo4Z0V4eDBjZGVpekZGa1VobGYrcE1u?=
 =?utf-8?B?djM4MnNETERISFBqbHA1RGNJbW5rajdLUW90RllUMVBlbnJOVURoNFZqVDBv?=
 =?utf-8?B?SmR5RG9WMzlkeEFNMDlKVlY4WGtFNFVnaktwUXRMb3p0NGtnVWNmTTIwSUh5?=
 =?utf-8?B?UTFCQm81Z1d2MENROHcvdXBSS0tkQ1RYdFpNdHFvSlpQRm01dkdpV2JwK1JP?=
 =?utf-8?B?QWVBZDI2bXFoUy83Q1VnOFhwSUxjcHErOU1WN2lqMnBwUDA2WUhPZGNLdFFE?=
 =?utf-8?B?L2F2bWRDbno4S1BFbnpyYWVwWThSSGU3VWdWK0s5ckxTM3hJV1R3WlRUcWY5?=
 =?utf-8?B?amwyRnhJYXdJN3RsQzNmNTBLSEQ0T21EL2w4WjZlL0x4OUYwYlowWTFTT1Ey?=
 =?utf-8?B?ZEdwbmdqT1BUQjN1WXk5bFd6Mkg0QTRpVjdYUmVDdGNwcUI5N2VHY2R0dkhU?=
 =?utf-8?B?cFpUKzFYNGhxOS9aTkhUT0dJQWw2RFBOczhFV1plZ1VIV0lvMHNGbUpkNXNY?=
 =?utf-8?B?M0ZQRzZMa1hhbWxwaVRrQUdVTXcxaXhOVDdYZ0k0Z09PTThXMXJzZWJ0NkpX?=
 =?utf-8?B?cUdlREplck5iL0w2R2pRZ0VpUDJLQThqOFpVZlBnTWN4cGk5TmlJYlNmWlow?=
 =?utf-8?B?ZmtxbjBvbHFBVTJ2L0h5NTF4dU44cmUwKytKaGJIWndTS1EvQWxOTVVicWpn?=
 =?utf-8?B?VUNvcVhnTjQrOERjQUx1TGxvU1ZsN2JvaHhZdHRJS2taUmJ6VDdRNjhxTTF5?=
 =?utf-8?B?VWc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 1SHmQTiT3wqVmtAIrlM9UMZH+WuN9bmJuafY0Mcryopqw91REs6j6lShp7Zn7jLonkxU1qOR2W1Bh1CspQ+avBMbAQIW6FzgqVY/m6ex30Ak4R2TMIVNagyD1KbKiPkq/WVZ8pruMMVB85K4s+LneAZ103nmdsMBs6YNA7dnij8aDDNWLHH+Jqx5YAZiheumx2b5/5Z2haD51Msl9StGyGEZXrxG7gaXLrkXj+rY2xkEzZnNogc1BwkRu3sRW0Z0NjmQXXQLY9Eo3FEanLBDjZWBZRoDCE7GZZ4WeY2vY/9R0/z093juH2RfsBfLHCVlD3x76osgUtx+6z7RIWsHvMlFH1fKkowlpd5MfvnbxGG+oU0YFR7dqWIpaPPTgk+23UkX3Lkzi+ytmRLoR+WgatgBQ8CkUXtT4MC8fvw6aLymVkMJYKLgoWlHheQEXviQRMslaYZLLuz06g536UrK7zemDEmo0Hb65rbrU0naQhIyoqpuEVfq9QPme7V/pvwwv3jZBfCnNLWXPsx8rTp24U3pjVnv0SIhIOsYuUE9g4SvF97ciuB9QXR3pWKOTlT0PBGCq24NsgVfW3GlzebNlrioZtVBd9P81v8XF4WvU7M=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 157219f6-07db-469f-a438-08dcc3a74dd6
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2024 19:10:51.4705 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0qOFKnAAhAb9AsCKf3ttqZ3pHenN5Ur1E7ouVZRo2wfUZmqNoU8KKk4TUr41rewibziMlEeYJNs5zh71s4tiMEDkrBM4w0TL/momqFieyWY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR10MB7281
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-23_14,2024-08-23_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 malwarescore=0 mlxscore=0
 adultscore=0 suspectscore=0 mlxlogscore=999 bulkscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2407110000
 definitions=main-2408230140
X-Proofpoint-ORIG-GUID: XTMvV7nvl0DFdGtl7YRjHVWbMRiu1bYM
X-Proofpoint-GUID: XTMvV7nvl0DFdGtl7YRjHVWbMRiu1bYM
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 8/16/24 10:55PM,
 Edward Adam Davis via Jfs-discussion wrote:
 > [syzbot reported] >
 ==================================================================
 > BUG: KASAN: slab-use-after-free in __mutex_lo [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [205.220.165.32 listed in list.dnswl.org]
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
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.220.165.32 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1shZgh-0001fU-5M
Subject: Re: [Jfs-discussion] [PATCH] jfs: Fix uaf in dbFreeBits
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
Cc: jfs-discussion@lists.sourceforge.net, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net



On 8/16/24 10:55PM, Edward Adam Davis via Jfs-discussion wrote:
> [syzbot reported]
> ==================================================================
> BUG: KASAN: slab-use-after-free in __mutex_lock_common kernel/locking/mutex.c:587 [inline]
> BUG: KASAN: slab-use-after-free in __mutex_lock+0xfe/0xd70 kernel/locking/mutex.c:752
> Read of size 8 at addr ffff8880229254b0 by task syz-executor357/5216
> 
> CPU: 0 UID: 0 PID: 5216 Comm: syz-executor357 Not tainted 6.11.0-rc3-syzkaller-00156-gd7a5aa4b3c00 #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 06/27/2024
> Call Trace:
>   <TASK>
>   __dump_stack lib/dump_stack.c:93 [inline]
>   dump_stack_lvl+0x241/0x360 lib/dump_stack.c:119
>   print_address_description mm/kasan/report.c:377 [inline]
>   print_report+0x169/0x550 mm/kasan/report.c:488
>   kasan_report+0x143/0x180 mm/kasan/report.c:601
>   __mutex_lock_common kernel/locking/mutex.c:587 [inline]
>   __mutex_lock+0xfe/0xd70 kernel/locking/mutex.c:752
>   dbFreeBits+0x7ea/0xd90 fs/jfs/jfs_dmap.c:2390
>   dbFreeDmap fs/jfs/jfs_dmap.c:2089 [inline]
>   dbFree+0x35b/0x680 fs/jfs/jfs_dmap.c:409
>   dbDiscardAG+0x8a9/0xa20 fs/jfs/jfs_dmap.c:1650
>   jfs_ioc_trim+0x433/0x670 fs/jfs/jfs_discard.c:100
>   jfs_ioctl+0x2d0/0x3e0 fs/jfs/ioctl.c:131
>   vfs_ioctl fs/ioctl.c:51 [inline]
>   __do_sys_ioctl fs/ioctl.c:907 [inline]
>   __se_sys_ioctl+0xfc/0x170 fs/ioctl.c:893
>   do_syscall_x64 arch/x86/entry/common.c:52 [inline]
>   do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
> 
> Freed by task 5218:
>   kasan_save_stack mm/kasan/common.c:47 [inline]
>   kasan_save_track+0x3f/0x80 mm/kasan/common.c:68
>   kasan_save_free_info+0x40/0x50 mm/kasan/generic.c:579
>   poison_slab_object+0xe0/0x150 mm/kasan/common.c:240
>   __kasan_slab_free+0x37/0x60 mm/kasan/common.c:256
>   kasan_slab_free include/linux/kasan.h:184 [inline]
>   slab_free_hook mm/slub.c:2252 [inline]
>   slab_free mm/slub.c:4473 [inline]
>   kfree+0x149/0x360 mm/slub.c:4594
>   dbUnmount+0x11d/0x190 fs/jfs/jfs_dmap.c:278
>   jfs_mount_rw+0x4ac/0x6a0 fs/jfs/jfs_mount.c:247
>   jfs_remount+0x3d1/0x6b0 fs/jfs/super.c:454
>   reconfigure_super+0x445/0x880 fs/super.c:1083
>   vfs_cmd_reconfigure fs/fsopen.c:263 [inline]
>   vfs_fsconfig_locked fs/fsopen.c:292 [inline]
>   __do_sys_fsconfig fs/fsopen.c:473 [inline]
>   __se_sys_fsconfig+0xb6e/0xf80 fs/fsopen.c:345
>   do_syscall_x64 arch/x86/entry/common.c:52 [inline]
>   do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
>   entry_SYSCALL_64_after_hwframe+0x77/0x7f
> 
> [Analysis]
> There are two paths (dbUnmount and dbDiscardAG) that generate race
> condition when accessing bmap, which leads to the occurrence of uaf.
> 
> Use the lock s_umount to synchronize them, in order to avoid uaf caused
> by race condition.

I'm afraid this is insufficient. dbUnmount() will actually free 
JFS_SBI(ipbmap->i_sb)->bmap and set the pointer to NULL.

I think we need to serialize the entire function jfs_ioc_trim(), even 
before initializing bmp. I don't know what other codepaths might run 
into the same issue though.

Shaggy

> 
> Reported-and-tested-by: syzbot+3c010e21296f33a5dc16@syzkaller.appspotmail.com
> Closes: https://syzkaller.appspot.com/bug?extid=3c010e21296f33a5dc16
> Signed-off-by: Edward Adam Davis <eadavis@qq.com>
> ---
>   fs/jfs/jfs_dmap.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
> index cb3cda1390ad..a409ae18454a 100644
> --- a/fs/jfs/jfs_dmap.c
> +++ b/fs/jfs/jfs_dmap.c
> @@ -1645,7 +1645,9 @@ s64 dbDiscardAG(struct inode *ip, int agno, s64 minlen)
>   		 * call jfs_issue_discard() itself */
>   		if (!(JFS_SBI(sb)->flag & JFS_DISCARD))
>   			jfs_issue_discard(ip, tt->blkno, tt->nblocks);
> +		down_read(&sb->s_umount);
>   		dbFree(ip, tt->blkno, tt->nblocks);
> +		up_read(&sb->s_umount);
>   		trimmed += tt->nblocks;
>   	}
>   	kfree(totrim);


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
