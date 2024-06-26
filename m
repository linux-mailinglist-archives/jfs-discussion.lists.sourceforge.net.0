Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EEA2918A58
	for <lists+jfs-discussion@lfdr.de>; Wed, 26 Jun 2024 19:49:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sMWlo-0001gx-7f;
	Wed, 26 Jun 2024 17:49:24 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1sMWlk-0001gl-W4
 for jfs-discussion@lists.sourceforge.net;
 Wed, 26 Jun 2024 17:49:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:To:Subject:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4TuH571RJNkVrpH+N09PxvSpX0vglFthUzgied2b/Ys=; b=YsYqd3diCTq+Mj2fFmsavu97xA
 DioXD7UzIm5lp1n/bTv3xlaRZcVUlpvFI1fHwvdX/2AHUGz5Yto3un3BEPvxPvSK1UhVTQ9ra9bJf
 2rUjE9c/Pb965j7pjef3vZ2k76XNq+qgTIX8zCuTXGjoD8fAl11Chc1OXOQVK3USkvF4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:To:Subject:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4TuH571RJNkVrpH+N09PxvSpX0vglFthUzgied2b/Ys=; b=Kg+sZJDfdRNcUcKBlp88SpqpN0
 Ys4GxCb9TShpYIQ1Mzfo36tVyQiDq/G/fIqCCgIqKEuwJ7jHUvUFkDlR2L6IZEJzWiZhe2QYh917o
 PRjGmO3CVHY/Jc8RKMFMAbYYBZSf8rts5sQAFRXhM0TzuZphAnDLPxgmywBpvZS1TgOc=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sMWll-0005yc-B5 for jfs-discussion@lists.sourceforge.net;
 Wed, 26 Jun 2024 17:49:21 +0000
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 45QEtXaG016018;
 Wed, 26 Jun 2024 17:49:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
 message-id:date:subject:to:references:from:in-reply-to
 :content-type:content-transfer-encoding:mime-version; s=
 corp-2023-11-20; bh=4TuH571RJNkVrpH+N09PxvSpX0vglFthUzgied2b/Ys=; b=
 iAzZNHCpJ+Pga3r+t22M2K/J0sU8+zADqBrmvdPVO8CPFw+oyRM995i/bV1aQeqT
 2DKPhKhHx4khJYE8gbbqCFtZHMcKjd82gWimMtPMfXM3CSMRl4ZQRh6xdqFvzsi6
 raGxEQGVPgrpuTJgB2MmUE1Khaa7dV1X1vmaTa1R3ZGtAlI1+Ng9T64m9kv3riTh
 eEZap32RcnI6vGDP7Rx9JI/uXQx2rZOh8CoALLzhesLvyMSJozda5TtXZ21zF2sz
 WFzL5Wa26jb54o3NcCHmbHX1BwQpTyR2Kz0th2ASr644qD+nn0GjwGh8ODZA+Vlz
 /y8O4Sul2WJhbevjTiczJQ==
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3ywpg9bqrv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 26 Jun 2024 17:49:09 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.19/8.17.1.19)
 with ESMTP id 45QHFVZ7037078; Wed, 26 Jun 2024 17:49:08 GMT
Received: from nam04-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam04lp2041.outbound.protection.outlook.com [104.47.73.41])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 3ywn29vb5s-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 26 Jun 2024 17:49:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gWHK0Te/Rl2tI2WeDAoL/+KMuY9935QB726lhjLDbqxTRHOKKRdg7zCCoE9azGSlp5Or3KU41R0+Y+q6CuEEBybGxIadbJ/p+KmzhoCzBvno6u3OOhAJROeuU6TSsdy/a+0IwqekVpIoFSLyw6ZD0EM3IwbdA2k9d34DZjh43AYSehlqzf5wBVmr5vIm3VcGUb2vlqHcBPjINfx7sMpAy/fz+dGSY2Y0Z94Un+zlngmhxa9z3vlo5y+LCr7cIgE1eomVc0iENS3cdFITdn/xGjgqB9b58Ti4/W3R4JMViEUU0+T3F8gShee2aR6bNmRl3SsFJ2A1vqfQwSVmA8A5sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4TuH571RJNkVrpH+N09PxvSpX0vglFthUzgied2b/Ys=;
 b=hW0FgRA8+2YbjZWgTtr/ACF+bdXXm/16Fjk0sLsLIOHpi5iyLkKvUhekUSrBwUuTMiotlvpNpULxKQPHU73IR/Zax3yVmbdNzgB8Vwb/NBOxCUbC06sIjg636r6vq9wsjAobDOPM0pg+r863EKY4YYaDvVNOAYyq1kJAUIZao1mLG5aL1uQuCV+2gvjMPu3kzxdrztI87SBBD2nK8iTl9qiRy9ijBeVPn/EmT94oNbEoRIBzbgHG3TUDyXRd6kD/vT8LtMcBYWzsZUb1Sn+GnpSMknUs+P3PyL/QU/Z/XzKKg0AccfXzS3Y/ffRg+xRfyxwH4BgtlX0oamOcX962hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4TuH571RJNkVrpH+N09PxvSpX0vglFthUzgied2b/Ys=;
 b=f6lJVH/WzU+oPjgDzzSYM311ufG8ax35Bu74lvH+y3KZDQWxbnDm1NQUT4Hkjufeaw3nkt0u3EObBv5hyXZp3T4KiKogoI4VmGGxRW16zA7PvckmrkKylzZJqGRwDxYA5dC72bhpbfZ9oWJVLm7EfSgVRYbKLDLjbbPIMwllaNc=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by SJ0PR10MB4560.namprd10.prod.outlook.com (2603:10b6:a03:2d3::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.34; Wed, 26 Jun
 2024 17:49:05 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb%3]) with mapi id 15.20.7698.025; Wed, 26 Jun 2024
 17:49:05 +0000
Message-ID: <4f617ca0-218c-443b-8293-07877422825f@oracle.com>
Date: Wed, 26 Jun 2024 12:49:03 -0500
User-Agent: Mozilla Thunderbird
To: lei lu <llfamsec@gmail.com>, jfs-discussion@lists.sourceforge.net
References: <20240528183040.17068-1-llfamsec@gmail.com>
Content-Language: en-US
In-Reply-To: <20240528183040.17068-1-llfamsec@gmail.com>
X-ClientProxiedBy: CH0PR03CA0254.namprd03.prod.outlook.com
 (2603:10b6:610:e5::19) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|SJ0PR10MB4560:EE_
X-MS-Office365-Filtering-Correlation-Id: 10930ca4-93b7-4216-84d0-08dc960845cd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230038|366014|1800799022|376012;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dmVxdEkwK21TcGthQzNHVkVWcTRxanVyRnZoQzlFUnJDZnY0VTN5VE9RKzI4?=
 =?utf-8?B?Ly8wOEdzaEJML0xLZ3FzODl6MlBwMk50akpmdE5CejRXNTc5bWs0TmJ4NktB?=
 =?utf-8?B?b2RJckwrOXpMcCszNVdvT1cxRVduNlpPTjlsNXFiVHVlaU1jVkxUYWJqTXBx?=
 =?utf-8?B?bVlPcWFmTS96cmpUUXNjQ3lCOWJ4M0p4Q1c2VlBwSW1Yc2tIRkFSMm0wcHJy?=
 =?utf-8?B?MWl2MVNQcy94d3lQQ29UK0E4ZVhvR1dDd2M1Ym5vWmhzLzNhcmdla25YYTdz?=
 =?utf-8?B?ZGlRdzhqRnp3ek5GL1FXbXFsRnN6azVvSzdFdjBjd3BudUFFcWl4dFhTVGha?=
 =?utf-8?B?cmowVVE5aHRpREhHb2JNZFlIZUtIV1RaTTFrQzk2Q25tSGEvTytVc3IxTFJI?=
 =?utf-8?B?R01PMHhhZlZLajc5SHJmcUk5Q3Q2cmVOUTlCV2FsTUNFdG56OGFRb2NJSG9D?=
 =?utf-8?B?UW1aVmcvaklWV2paM3hNb3IzdnBvZERCcVJUTkdpS3JYYUM2WFo2ZU51SFZE?=
 =?utf-8?B?TFBQTy9EUUd0WWRuY2NNQ3FXRGdySmdxODNseUN2Mi96dHM3YXpIc05JZjVs?=
 =?utf-8?B?THZwblhFRmdodjhubmVENHYxSGFJR2xnZDBqRDJNQm82RVRVN1VmQW9zcmF5?=
 =?utf-8?B?OXJnd2ZTbTRDOFNoRjdhdkVwYmdGVzhFTFBYSUNXeTQ4TzRVamlHbXlvYVIx?=
 =?utf-8?B?VGRDWm54NXVQTm1SdjhNQTk2YXRWcStaWGFKUVowakw1L1B4SncrQXpuZEZl?=
 =?utf-8?B?dnNTWXpFcjZwaFhVa1lvNHY0d1NNZGQ5eUl2K0x6dHQ4VmhKeEdRSnB2WXBh?=
 =?utf-8?B?UlRDZzl5Mk5sUjhpalQ4cjFVaWM1WjlDaHNDMTFJL25CcEorcktwcUhBZ2Z1?=
 =?utf-8?B?VEFuekh1d2ZZSGFndFk0dnVOQzJXdkdVQi9NSkdtL1g2RElpOEw5Q09VbXZJ?=
 =?utf-8?B?dlhEYjNRNG5LVkhRQlJZMUs3MTZaSE5uckVaU1N6ZlJYeDFWNC9sTm5hNDV6?=
 =?utf-8?B?T0RPQy9PalVMcUk0ZGpVNnN0N0JaWWxJYW5Fb3NicG81WjExazlpajh6SENm?=
 =?utf-8?B?YVdvdmZEMU1XWS80cWhoRUFiSVU0YkpOdjMwVmIvNzlzV2NNTUc0N0Q5Wnk0?=
 =?utf-8?B?ZG9vdmdraVpQcG5aU3B2ZVdxamdDUlIxM1htR3J3RHhnQjEycTZWNEJHL1pQ?=
 =?utf-8?B?THBENmJLZk55dzh4eHFXZ3ppNTAwUHJRVGlUc3RuSzBXSDNNd25aY1MvVkZM?=
 =?utf-8?B?T2l2NnpmZ20wdHlKWld5RmNhVTNWUDhzMjBnSXhHM21qZDFPdnlieFJYS3oz?=
 =?utf-8?B?bWc0TFJRV3R6OU9XTzc2L0FXZTFmUEpPRnVEWDFOeWQ1Y1ArVU9CMFQxcVNs?=
 =?utf-8?B?OEZmME5GQXJ1Vjc1N2lxUnZIa3kyT3poMWY0RXpLMjlwdUtnajYyMnllYjdx?=
 =?utf-8?B?bXNQSjJJeEhXVlF0Rnd1VHMyT1haeTVJQkFqVGhNVWY4RFo1alVXc1hKVnJV?=
 =?utf-8?B?WVlCRCsyeXI4TndTdWlFNWZYbkVvbms0MDFLMmQwOXhLODZVZjdFR1dqaGhz?=
 =?utf-8?B?a3dWVVllNDhGdlpacXBDV0JSaGhaTFZkckkxcmNHQlE0U01rK2JscDBCdkc5?=
 =?utf-8?B?VkVsQmpGeU04ZzlhaE40aXcybzMwa0E5Ty8yOXh0cXJKbzl1ejhSaExlV1Fo?=
 =?utf-8?B?MFFhbWZSK1Bsc3Ywb1RueG1tcjc2cjFUaGwrdU9FY0VPMGdxakNVVXJubmJ5?=
 =?utf-8?B?MDNzVk9qaU1mTVJPY3RmaCt0OHlzbDEyQVJianJvODhwNE1Rbm1HNTZBbGNw?=
 =?utf-8?B?Smp1WkQxTndjM1NVOHFkQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230038)(366014)(1800799022)(376012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?alFERlM0Wms1TTFaczhHd2ZRNmhOekVXMitpTnB2YTczZWlFeDFuLy9LRVhX?=
 =?utf-8?B?U3EwRWtCVGFudjdPSTJOVk9lTWt4QklTUXAvejhqRlJLc05CZ0tiVzQxTGY3?=
 =?utf-8?B?cTZBamJyVTJHNXNvZUZKZEJpcW1sblV3SXRYbW5jeHlZdkJ5ZklZWU14a0RQ?=
 =?utf-8?B?M1dWRllFUVBsT1lvVkx0b2ZMaExqdUNFVTdkL0YzSDRhd2xJMksxeURSTkJk?=
 =?utf-8?B?VkNReWFQNDRFc1N3R3QxcHMwbGFaMkdlaFhRYU13K25sUytkOHFBNFYyRjZ0?=
 =?utf-8?B?YjczenlLZlJIeGlBb09UdGE3WUhKQXNNU2pIcmtCOTJvS2lXcVVNMFh0eHQ0?=
 =?utf-8?B?d1l4S3ZQMHVyVWxtNzh5TFY4dk9qMVc4RHZyd1NhemdWYmpLSllTK3ZpdnlV?=
 =?utf-8?B?Z1QxWHhYc20yYlZ2ZVBUclJkSEtBWnlaQVJvVUhNZ2htSzU4aDFhMnVBUHE4?=
 =?utf-8?B?MFgyZ082L3FTTktRSmVCcWpNN1Zyam5CZUpBWnBQRzNtMmw3SGorS0ExbkJi?=
 =?utf-8?B?ZVhrR2pCdDlGb000UC83RHZ6eGVaTHlSaGs0S3ZUNFpCUFM5S0VyUCtGQUhu?=
 =?utf-8?B?OFRPMzUxa1dITGxhKzZ6UUkrN3lHL2FnbnJ6dkN4aHl5QUd3QXY1QStRUzBF?=
 =?utf-8?B?bmU4d1dyVXZIRklEYnhMUVpPRTlVOWRkRzR3YmxlR3Z3Tm5zcDh2UGlMU1hr?=
 =?utf-8?B?ZUVES2x3dzBYNjQrOUxaT1FpOGh2Z0krSHN1RE9FTzh5K1BkSWxQVmtXRVg5?=
 =?utf-8?B?Z3BuV2txVDIxNW9mcmlIeVpiMThwWUFwcktsQklEVng4MTFFclVjdUFyUFkr?=
 =?utf-8?B?VjN0MVJZaFF6dzBOSXhnVk42d0pySS9qY1hCOTMvOE9UL1psdDIwTjk5bkdW?=
 =?utf-8?B?TmttY1Z0OHFmU0hpUkJMT3NacHJrcmtkU01xL1ZjRVIrZGF2SWZPald3bkth?=
 =?utf-8?B?YmdYZitrd3lwcE0vb0ZVc2kwT1d3amk2Wmt0NllzcStmYUdmMklwcFF1V3RU?=
 =?utf-8?B?aUZRVkZ6VDB4dWVzVXpSc1oxOWtGMHltZGcxQzkrVkd1SXBoV3h6cTVUNjNn?=
 =?utf-8?B?VFEzOGcxNVlObHNnR2g4dzZSMm1HaVQ2UDdHOGYvM1hPWHkyZmFHb3hVVUZa?=
 =?utf-8?B?dE5IbUtXWHFGMG43MHBLelBKajl3T0pIRFRlREs4MnNrYWo2SWU5TWh4TVdC?=
 =?utf-8?B?THFVa25CallQYmZ0K0NMeXBMeHhnd3M2SDQrWjBsSVpZNEsvRGp5NzJvNVBt?=
 =?utf-8?B?USs2OWJiQXc1UTB6alo1RlhZaDRZbjVlYzhENFZuTmhBZnlmUFUxMnQ1QWxp?=
 =?utf-8?B?cFk0VEJTODR4WDVzNkJwVFVBMHBDYjVSc3lwcyswUTFBK2VYcVJ1ZEtTSXN0?=
 =?utf-8?B?RU95eHRyVXdDMjVBMTQ3QVZPMzkvOUxVNzNuWEJocWZndnlKcjR0SVF5THNj?=
 =?utf-8?B?cnBDck41aUtOZ3hPemVDU3h2NWVOMHk0RnVNL1o2TjJOMVNydi9BSTJ4cVRG?=
 =?utf-8?B?SFFmakJwaTROUGV5Y2JVRFFVU1lsMDk3dzBlM0NyNk9ENitteFI0dlRKcFJ1?=
 =?utf-8?B?SFZTQ3lKUHFBN3N2NWkwRG1LMENzMm4yQkltQVRRcjRXVk5rVVpWQ1h5d1NM?=
 =?utf-8?B?SjIwT1l6OW82M095ZmY0cWRyOTVnSEFTdGNsRElpVWhJNTZMbzlHbzh3SEVH?=
 =?utf-8?B?Q2ludDRaVjlBRFo2a0VBNWFSYkRiL3RMVDljam5Id2R4a1NoUlhjdW9GRVZO?=
 =?utf-8?B?UERwemhnUEhoYUxoSDFDdGdEaDdlcEU4SDVDUXZMczZxVzVGdzh3SDhydFph?=
 =?utf-8?B?VURUcEkzUCtWSUlzQmcvRlBGUWRrSGlHcGJyNjQzWGFzMzhNWXVqQ0RtY0tY?=
 =?utf-8?B?NHNtL3k4NlFiM2VEVzNvak5EYW9tRFA2bjlJU0hpZG1IWVdPQXNiTXhiQnNX?=
 =?utf-8?B?RXBuVThybmxxWkdXOXNIYWVXYVd5dll3d1kraWk5WjYweThidnRvOGJkSmRF?=
 =?utf-8?B?Qm1lbUI2ZHV0YXorMlhpTVJsVnlvNmE4UnNGT1lQaEFBWjJ3ZlkxRUpBeEtr?=
 =?utf-8?B?Y2dOVEdNQUk4UkZ4cDBZRGlFd3ZoWmV1ZDN3b3pGUnpSN0ZlZnZDeHpWbFJS?=
 =?utf-8?B?dVlkVU5aQjNMa2pQU0wvTzJYVnRBeTk4MTZyNlVGampFYzZJYS8rQVg3NWl5?=
 =?utf-8?B?Wnc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: PpHYqrcyx/JjdyXrWwmCjc+lAB2LehyTijSDWIWwDLgAAWtOVfXKIt4wpFaUesD3wCLFes1iYfNnbaztAJNRLRVcmx5AHcmlARTHd7R7v3qADTLRbYaZt5uxoG/b2Ak9yqyRlf8n+2naOm6o+KGzo6frRUaKiHnW8YcJDIddrIeaAm6Fm1i3cK91C39ognt0XGcNhixTHYecvcmtx4ElwVmoUJQYN6jG8Jj2plh/QlinxY0smYkrptqwNCAXkcHtTe992T+tfNf1NOfV7MsaSk4z3E1Qh67n/oF6/8EU6SqETbjvAIGlC6Ni1StLgMd6w44zsGy9IkRzuRkb1icWQp0vNtBanGu1Jbz8okDcxvX6OFE4LHO3iebFI6T1CEkb+Bz2UHiKZHIgXOfHMFOpEMzjwXAqEbBBcoILa2YwLzm8aImPbQn0y1uAq+YrFnYwmMOtVgSMvOfE/zKghwHU7vxV6V/sgUFklcn7nPZeJnuIPV2sPHftNQuAKL8YuuM2bXJCwl7yC7b35o2WWkCH8zWbwj1UD7+9aSyYM8mbDgNyzKFZcUYaVvhNbFzlg61VDHp0fqR0+hsg7aTPP2dKqrJPHc6pwEhC67ABqwj/ROo=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10930ca4-93b7-4216-84d0-08dc960845cd
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2024 17:49:05.6663 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lcnXO9jguzVOfLh4GX4JCrb/8HwB9ZlMZCr326WJxkzljTQGpbaKXmn/ibDUAIsAX9pcMEDDctcDQfHDXNkKSEEc3kL3CjgJXt/9Wq3oUqA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB4560
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-26_10,2024-06-25_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 mlxlogscore=999 mlxscore=0
 spamscore=0 malwarescore=0 adultscore=0 phishscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2406180000
 definitions=main-2406260131
X-Proofpoint-ORIG-GUID: GrfSiZVbbIdhbNBPZk89_zizmctfw4_R
X-Proofpoint-GUID: GrfSiZVbbIdhbNBPZk89_zizmctfw4_R
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 5/28/24 1:30PM,
 lei lu wrote: > Add a check before visiting
 the members of ea to > make sure each ea stays within the ealist. Sorry it's
 taken me so long to respond. I do still have one question, below. 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [205.220.165.32 listed in list.dnswl.org]
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.220.165.32 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sMWll-0005yc-B5
Subject: Re: [Jfs-discussion] [PATCH v2] jfs: don't walk off the end of
 ealist
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 5/28/24 1:30PM, lei lu wrote:
> Add a check before visiting the members of ea to
> make sure each ea stays within the ealist.

Sorry it's taken me so long to respond.

I do still have one question, below.

> 
> Signed-off-by: lei lu <llfamsec@gmail.com>
> ---
>   fs/jfs/xattr.c | 23 +++++++++++++++++++----
>   1 file changed, 19 insertions(+), 4 deletions(-)
> 
> diff --git a/fs/jfs/xattr.c b/fs/jfs/xattr.c
> index 0fb7afac298e..ab9b85ce7ff7 100644
> --- a/fs/jfs/xattr.c
> +++ b/fs/jfs/xattr.c
> @@ -795,7 +795,7 @@ ssize_t __jfs_getxattr(struct inode *inode, const char *name, void *data,
>   		       size_t buf_size)
>   {
>   	struct jfs_ea_list *ealist;
> -	struct jfs_ea *ea;
> +	struct jfs_ea *ea, *ealist_end;
>   	struct ea_buffer ea_buf;
>   	int xattr_size;
>   	ssize_t size;
> @@ -815,9 +815,16 @@ ssize_t __jfs_getxattr(struct inode *inode, const char *name, void *data,
>   		goto not_found;
>   
>   	ealist = (struct jfs_ea_list *) ea_buf.xattr;
> +	ealist_end = END_EALIST(ealist);
>   
>   	/* Find the named attribute */
> -	for (ea = FIRST_EA(ealist); ea < END_EALIST(ealist); ea = NEXT_EA(ea))
> +	for (ea = FIRST_EA(ealist); ea < ealist_end; ea = NEXT_EA(ea)) {
> +		if (unlikely(ea + 1 > ealist_end) ||

I still don't understand the first part of this test. The for loop will 
ensure that ea < ealist_end. It seems only the below part is needed.

> +		    unlikely(NEXT_EA(ea) > ealist_end)) {
> +			size = -EUCLEAN;
> +			goto release;
> +		}
> +
>   		if ((namelen == ea->namelen) &&
>   		    memcmp(name, ea->name, namelen) == 0) {
>   			/* Found it */
> @@ -832,6 +839,7 @@ ssize_t __jfs_getxattr(struct inode *inode, const char *name, void *data,
>   			memcpy(data, value, size);
>   			goto release;
>   		}
> +	}
>         not_found:
>   	size = -ENODATA;
>         release:
> @@ -859,7 +867,7 @@ ssize_t jfs_listxattr(struct dentry * dentry, char *data, size_t buf_size)
>   	ssize_t size = 0;
>   	int xattr_size;
>   	struct jfs_ea_list *ealist;
> -	struct jfs_ea *ea;
> +	struct jfs_ea *ea, *ealist_end;
>   	struct ea_buffer ea_buf;
>   
>   	down_read(&JFS_IP(inode)->xattr_sem);
> @@ -874,9 +882,16 @@ ssize_t jfs_listxattr(struct dentry * dentry, char *data, size_t buf_size)
>   		goto release;
>   
>   	ealist = (struct jfs_ea_list *) ea_buf.xattr;
> +	ealist_end = END_EALIST(ealist);
>   
>   	/* compute required size of list */
> -	for (ea = FIRST_EA(ealist); ea < END_EALIST(ealist); ea = NEXT_EA(ea)) {
> +	for (ea = FIRST_EA(ealist); ea < ealist_end; ea = NEXT_EA(ea)) {
> +		if (unlikely(ea + 1 > ealist_end) ||
> +		    unlikely(NEXT_EA(ea) > ealist_end)) {
> +			size = -EUCLEAN;
> +			goto release;
> +		}
> +
>   		if (can_list(ea))
>   			size += name_size(ea) + 1;
>   	}


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
