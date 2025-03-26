Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C5356A71BD6
	for <lists+jfs-discussion@lfdr.de>; Wed, 26 Mar 2025 17:26:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1txTZg-0000MI-HS;
	Wed, 26 Mar 2025 16:25:52 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1txTZe-0000MB-KN
 for jfs-discussion@lists.sourceforge.net;
 Wed, 26 Mar 2025 16:25:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :From:Subject:Cc:To:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=q44IhQoiJ87tBYOGfw//CMA14nUErhHf7YebS28ImDc=; b=BK641Kn1F8SGOiSbJRHVcEpuGF
 glIyA2/x7Cc2C2qXhF//qG5VihkTSc1X6cTd1fWAhliRsy5mjZ3AklsWNJA96zi4T88oH4i//dzPi
 EhLjPrjRVzFH0HlOqp1ZUK6DRqP67L8CyS0vZ+6FoVjmRVttGFkqrLxIxEpROdVOWP4o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:From:Subject:Cc:To:
 Date:Message-ID:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=q44IhQoiJ87tBYOGfw//CMA14nUErhHf7YebS28ImDc=; b=S
 D5Ee6UfQeECVcIqVSqtumPNvSxn8POF1IrTScSr8B+VbOk7wt67cwFQZOmLvOpxE9LBQJG4BvUzOt
 21M1i/T5WmapuGcwmxZWLFEzv7/bsti9X6M5P4Z6tWMzwl06pijSVIOPyzG+z6oDXCFaHciOgCC+y
 63LW4sgCIefET7aE=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1txTZT-0007rx-RX for jfs-discussion@lists.sourceforge.net;
 Wed, 26 Mar 2025 16:25:50 +0000
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52QGN2CA006107;
 Wed, 26 Mar 2025 16:25:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:message-id
 :mime-version:subject:to; s=corp-2023-11-20; bh=q44IhQoiJ87tBYOG
 fw//CMA14nUErhHf7YebS28ImDc=; b=KV5n0NNH1HHiwoCk7nUbBubHrL/ejeR3
 DephklduvOm3qshR153S8YB+w/BoWFRvb6E5KEbpsZDICNFVviMtLq9HqH3zO5GJ
 CVx+cnkQuDZbngtfs0aALaCYeqyERnO8QFBlMkIoP0pA3Z6LXAdPUlrmYQyNxxce
 arflvhWdo0EPhKm4CsxkutDc7vDaJhU+m/BDw+ix7GMGUjp4Sf69HMZZxVTmPZjV
 DJtpsFDgg3Nqfk0jd3gXes/WAEDK+Y16FY6ZKDlChwdpPNaxq7K4rg6LPUL6Ee9T
 9U5xKmvhbTluPPqgOdWQlBkZv8a9WoYuCzXXIDB9kiG9W29eu31CWg==
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 45hn871squ-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 26 Mar 2025 16:25:32 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 52QFKPHV036472; Wed, 26 Mar 2025 16:25:31 GMT
Received: from nam11-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2169.outbound.protection.outlook.com [104.47.58.169])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 45jj5e41jp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 26 Mar 2025 16:25:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=of6mqSrt1vQl1pFav6iOdlr2fHqBEmj0dBDSA9reNM+rMbsTPozkuppRx3BPmsrKR4lcd1x78Q43Y+dL5LaqQj+nAEykJ4FPdix6xGCrG+JnkTLruDbJ5Dde5pOxOpB9/pwITFkjBIPlOLuNGMg77D9dU9HY34VZSbZlRovbfTxc2pF7gjZakLiqhoIlMG8qqf/MHHCVCge6Gl8V0xMSOX17wFBKddVt+OA7jLDYVtEkMpSGeZnMzqQBzMbfWmA4G3/0nykIm/54kUe2rcPNhzZAcEbXmjCwM8/2HPUT2GaRnWJMyRpYLqw65HP2O4EeWZOTylMM0cAJJXEJPI2cWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q44IhQoiJ87tBYOGfw//CMA14nUErhHf7YebS28ImDc=;
 b=po6d+DrGmc9DcmDONPXaWsWYB9zOWYcY65ZE8aAzXuSvgobD1QLSX/qW2kbL/PsiseWBdOXWsKl5NDd/ZMJ9PykdLPDZjX93cST0iQ3bYGJxkwJ+MB728oiVe4ebu1/4cP/jw85BP0naEa8jfCTaeEa/envwRhJzkabE9gGWdwgsE4yIQS0ivn8dNyAbqzqgKzjLsV0FwnikrzsVFzLntBEBe4pcHtA35cJNrLz45dtjyejNid2iSPKVHBMrXfanbD1+owEF6Ddq7iKjJZ+1xPsy9rpe/dBO4ZKQno6LToOtlKMM6QLkLUk8+ITA6Cx7vRNnsv+vTuTgPI0uzMO+Jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q44IhQoiJ87tBYOGfw//CMA14nUErhHf7YebS28ImDc=;
 b=vN13CuxHgXrcBy+AiqtlSph9evAZ5JEpQbHHkP4EPNOB0gdZe2+GfJYCA7Tbm1WNWRmwee4kzbEh9yMIQHsxVHKB9m0O4PMXvJcExQDfwSvzmMcLne8XOzSd5a6iiXuw8BoN76lMy/VUejOjmoWLVdq2yQvvkgG8uG4HRoosUKM=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by IA1PR10MB6049.namprd10.prod.outlook.com (2603:10b6:208:38b::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.42; Wed, 26 Mar
 2025 16:25:29 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb%6]) with mapi id 15.20.8534.040; Wed, 26 Mar 2025
 16:25:29 +0000
Message-ID: <94b4d641-ca23-4b1a-aacb-0870e1ac7b25@oracle.com>
Date: Wed, 26 Mar 2025 11:25:27 -0500
User-Agent: Mozilla Thunderbird
To: Linus Torvalds <torvalds@linux-foundation.org>
Content-Language: en-US
X-ClientProxiedBy: CH0PR03CA0276.namprd03.prod.outlook.com
 (2603:10b6:610:e6::11) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|IA1PR10MB6049:EE_
X-MS-Office365-Filtering-Correlation-Id: a1b1ed12-2493-41c5-fee8-08dd6c82d25c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OGk1Tm1XSmY5OWhqRFZuTTdZV0g2QXBJKzkrMlZYUFo2cEFpK0txSmp4VUQw?=
 =?utf-8?B?UVZZdGllZGxlN1p6c1pwZU54KzU0ZWJZSkZqRFVjaWN2dlVLMUNvV3Exb1R2?=
 =?utf-8?B?RVhwMzJVd1laQ0JlUjZ3dkxyTWQ3MUk0SXp4ZHdSL1hZYkZ4ZlQyZlNCZ3ZW?=
 =?utf-8?B?WFdZOUpzWkJyWG5ZTjZoQ0M0dElXVXFhTWlPL1QwUDROSmdlZjBiVk1qK2ZQ?=
 =?utf-8?B?STRhd3c2bEFyT0Y5MVVUUWorRTNRSytWeTBJWWJTeUh4L0hUUnFlNjB0aVE3?=
 =?utf-8?B?REZ2eUdIdlNNNVVoN055Rlh2T2pFVHllK0k3UGdyeDB2bXlPamxxcXJZVjNk?=
 =?utf-8?B?eDdqc2g5azhCTG1OQ1JMRmFDTjRBKy93WDhkRnBMMk50WWc2d080TTRjeERj?=
 =?utf-8?B?QU44MWE4M29WemdxMmJ1cTlxS0xEVXNkZmRHTDlhRGoweGs1OFFzZXR3ZFZt?=
 =?utf-8?B?b2FwWkl2dVlWQXdWUEdoRG5ac05RNVlwd0ZjZlRlNncwNWp3akgrSTUvNUlo?=
 =?utf-8?B?eHNpN3RVTC92bmJuZjBVZ3pMN1kycENDUFplek1uNkMrbmgrZ1FUM3BQSzlG?=
 =?utf-8?B?TkE2SGRXWlRHcXExSDFZMUI2Q0dCV3pjaWYvTzB2Tlk0Qi9MWmNWdDM0ei9m?=
 =?utf-8?B?SmFHd1o1TXlja1Q1WDNOdU9aMHBjaDIzZTRqR3VEQ0JiR09PWnI1L1hsdzFu?=
 =?utf-8?B?cTlHd2xyajF6U1h5VHZhYU1zU3dQMG9lOFNPSi8wdnJzUDJ4Ry9OWHdxUHo1?=
 =?utf-8?B?ZCt0OVM2RU9hamRmWFVtdXNBa1ZJN3VUa0JZMzczMnk2RDUyMkZySGtDNUd6?=
 =?utf-8?B?eFlkRDRWN21kdXh3RTZENTl0VlhnaUMxN1U3bWFmUytQeW0wd24raTNlQjAw?=
 =?utf-8?B?eGVNUWZibEpoWGJCVEJlNlY1eTMxRFU0SXVZZlA4ZHFuOWxrUlY3RTlaUUJs?=
 =?utf-8?B?YWFFN2NhRm1jTjlpSzZvSUVUSHR4cDdWdEl3ZHBTN2ZqTUxCN2V2QmVidStN?=
 =?utf-8?B?c2pOL3hocUdOT1Nmc1d4T1VuWWlQTjRMMnIvbnFKcTdzbm0rRDBlS0dXYU8x?=
 =?utf-8?B?OGRvcHBqTWNiYVJJcEt1Y0dQSk1YWUl1eENWLzNVWTUrL2xJVG9xeFUrWXp0?=
 =?utf-8?B?Rnc4a29UejN6dzVaQ1l4THdxNDRCZmpsRG1SdUJzRmF5cnhMdnFpNUFFUENJ?=
 =?utf-8?B?Um90UkVIcllHSTNqRDFhUlloOWZHUHV5TDlKeUU3QTI1TFAwZ3BSUXdYdWtL?=
 =?utf-8?B?TWM5eEFsQThUTUpmTVpYWjV6WHlpUEF4M2diQUcyMXgvSlBJWGQzR0o1L2Vm?=
 =?utf-8?B?Wklud0tyc2E5Z3NjNGNiN2xwSkNyL1hKdFk3ZGRVMVI1ajZ3czNIaXFiRnJr?=
 =?utf-8?B?Yit5ZEVzZ2VCcFJFaE5uSVRoOVdpd052WThvWjRPdnlNQUZtYm5kSmo0MmpE?=
 =?utf-8?B?OUlqYmZobnJtT0dIWi9NYkkvaTNjMjR5U0FqcVpHTU1wQW1qWWJpVWNTNEZN?=
 =?utf-8?B?V3ByN0F6c0dZSmE2U3VhM0pMMUplTVB1OXNQdTUxR3FJMzdlMDFWS3ZuQmVF?=
 =?utf-8?B?bkhSU1ZHR3Z4djlrSEFieHV5UVM1ajM0N3VwUVV0RkNCb0xURUh0M1NuVVdP?=
 =?utf-8?B?bzZuVUtmNE1DcERubGQzdXBpSDc1clF6NXFuTmtFUkIrb0d4bXh0TEhGMVZL?=
 =?utf-8?B?S0dteUgrTm5XdkowcDJLTzNucHMwT2pxNkVIR001d255NkNORDgvdUVrTkJ2?=
 =?utf-8?B?cXB6NFkxUS8rWUlGbFVZV1R2Qk1jcUUvelhLUStVaHc3M2dCUGlRZ08yeFZm?=
 =?utf-8?B?YkE1SnNQQkR3MVJFcG1mNHJDVGI0YWV4RDRzTmFtMnJRaWJDU2s1cXFFbStZ?=
 =?utf-8?Q?xNTDhEFcdDn9j?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ejhPRkdTcUVva1ZGbGhCT2dGY3UrSkN6aXB1Tm96azVoMHdHY08xRC9RYktY?=
 =?utf-8?B?NUJMT3hlREJIQmFjY2JFZ2g4WlFJSjNaRVFaYWZXZVFEMGFDN0VrTHJNWEN4?=
 =?utf-8?B?Q0VPbXlpRUJTcFlVWTNqaEdjczNEUE9yN3VDamxEd25VWVJPVmczREk1RjlC?=
 =?utf-8?B?RkREV3NEbElvUXhGRVIyUG4xQXdUc0dHQzI1dCtLZ3NtWHlTNDA5eldPYkta?=
 =?utf-8?B?Yms0NWRZR2NiVjQrU3lWMUh1aWJpcHI0dTB4S3J4YlkvM2YxUk5LdW41clpk?=
 =?utf-8?B?dHFOV1ZOVmxWZGhTcCsvWDFEM1dHS1VGc29xZWRBUko5eE1Bem8yRWZzMkZx?=
 =?utf-8?B?RzdURjZzamJuL0NQUDI2dnFsOThFSndMc1JZNkcwdGo5T2c0UTkwL21tTFdX?=
 =?utf-8?B?L01lMHlzbDAyY3FjL3RpOFJpeUFvNjYvWkl3dEM5dG0zTTNYOXdSOWVsSGJT?=
 =?utf-8?B?NmJjL1JYRC9EazUyL1lVQWIyUEFFZmNxRzFkUXRndTQrYzJyVkQrSTBTSjJQ?=
 =?utf-8?B?MTR1bVY1ZUx6MVM4MExBMGdYdWVmZmF3OXp6dmZPbkVNTHRsSGtDcDQ4VDI1?=
 =?utf-8?B?ZnlZc0xSTEdIQWxaZHVFZ3BUMXplTVE4UC92cktiYnYxL29GN0VsMUZ2a3hK?=
 =?utf-8?B?OE9HbFZpZ29VUkVmc2s2Z1VjR1JZNlp1a2MzL1pvYm5DK3BPVjZ5c0RadlNS?=
 =?utf-8?B?Q2plZmpSQlEyTVpNckxuRGRRbHhhQXVFaXRFQ0VxWElXaGZZSnZMS1pweVhX?=
 =?utf-8?B?YVJscUFMWTVRMWxOaTJ1dTE3Z2tkYmZXc2lXbzQ0cStxSzdXbVVMVUM3Y0Rh?=
 =?utf-8?B?eURuelNlQ01RdWFaZGowOStCL1hLam82TzU2UzRSMTg1dzdCQkJLSE1qbTNW?=
 =?utf-8?B?dFNkeThaM1piemwrMDVXbmNtanVuNkFjOUo0SnNXT0QrYitmME5pb013RVZi?=
 =?utf-8?B?R3dONTdiZ0YrZXoyeVJlY3A0aG54UDRZa2tSQ1YrTVRPY3lFVmRoYXU4ei9w?=
 =?utf-8?B?d09YSkl5UVZXbGtkVHAyRXRxU045NnhlZ214aVNobWwzRjJWMUVlNGk5REp6?=
 =?utf-8?B?U1hENEtyZCt2ODV0R0RaOHFycVRMVG1tVVUvbXBqWUtRbG9LOCt3d0dPVkdI?=
 =?utf-8?B?cnNlYW85Q2o1NXdiSTFKQ283ZXZ2dFhFVHZVQUlzd3pUTFMyY0lyOTdQZ3l6?=
 =?utf-8?B?REx5YWdjbS9ITVR3Z1RDeVZFV0habVVDUGVQdVUxR0dLNHdKS3MzVzFXQWxZ?=
 =?utf-8?B?bXQvUy96YVpGeFlSUDhTdFhBN0VHalhOaWY0eTd2SDE0ZUt4Y0Nzc2VBeWMx?=
 =?utf-8?B?TzdTNEVOTS9Ddm9DTTQ1MUZGUFVrRHV6emhMd2ZxZ3hYQ1IwemZEQ3o3TmFL?=
 =?utf-8?B?OWlwL25tTEJQcE9ZQmFnTHRqcG5XQ1laOXhMNkJXN0xJMUxEU1VKc2EvTkgw?=
 =?utf-8?B?eXVYdWlXcmNDL2F6NmhIcEJ6bUQ0ZHN0cFBRbzNoeStTemZGWEdDZEdaREQ2?=
 =?utf-8?B?RDRVMDdSaFBYZ0pRZ1NuN0JOTmtadFBHU1ZuZWpxblYzRGxiS0p2R2xZTm03?=
 =?utf-8?B?U2NFWnJjRmdSUGtHbXZwNUNHZ1FpSUFzRTNmUWh4TWx1T21HZVdicmRmQWly?=
 =?utf-8?B?M2d3RlhLRU03UElzT01ZcWUzUXlPSlpwUE8xcE9Hb0xDRlYxanRzckgvejVM?=
 =?utf-8?B?U2NqaHE0YXpqTm9vVWZCQW5nczBucS85ZmZNOTlQZnlwdERYWUlIUkIwNEcv?=
 =?utf-8?B?ME5rOGxtdytQVDBURHF5cGc1QWxNV2JqOHhNU2xOREtDY3ZkN0t2Ly8yZXFG?=
 =?utf-8?B?bVdLa3l2QklySlZYMGw5Wmk1aXhIazZjb1licEtoL2QyOFhoMzFjSHBLLzEr?=
 =?utf-8?B?dlZGb01NYndHODZkQjlGbXdJVE9xTmRBZ0NOZ1h5MUF3c3lCQzM1WUtFSVRt?=
 =?utf-8?B?SytGZzRtMmVnNzdJdEZZTEIrcHF5bWJDdmtmdFZXY0UyZWRBdWxRS2hQWTVV?=
 =?utf-8?B?L2lDZC9pM1Q1ejhNbk55NXVXZFphK290cm1DeXp3ZUVRRkZRNmJ5Ym5FVlhB?=
 =?utf-8?B?WkZuOGRlRG9GNU13QnVKSnROZnU2L2ZiVklIdlNtSVN4bFBuNy91RysvbVll?=
 =?utf-8?B?ME5wMFFtVE1lcURYZjcrWWhCaUwrc1YyWURhUkpyQkh1b1c5eVluUkw4aFpn?=
 =?utf-8?B?Tmc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: eXRpwW7XZegswvbvr3M8UAnUDX7XtyY/n6HyspuT9E8H5WfWI2OCV+dL/6G0sIM7htGeUPGNzSEx8ZsECGuZKaWDxnd9dKm5ZFDYWHYEYdRsINNdEOddEnW1tnknd3JdkQ2W5zkIZu0duudsJjm9icPlwnBzGyHanHdtuIXyQjwoX8hzaYAUcpAyw5Noyl5LW/P/TxSK6lfGgSoGqlscCt2KEsSHloUx5yp5DPY0DQy02eSheRTMlFbIOhsK18Ykm8hnrA7WfBdhJxuuGLF/MLu05e4er3QJm7ykhEX068ynKKw3mQ9flRKwU3v7OKT5NPnwxImkEbecX6m+5scoTSlPMTk+kOB0NkRsfYOQGwSdptwuKdb59DDfdOWMn91/QuYx20b+BQs7oUvgjUooczfCUR8l8vsiQRHvfAtAEov5axAzae1XjCCnaHZJwr7J3qUWMqNdffkX75937CJQinVVNFRu97axxYHszzKb4/RaKs+bhadU3EkPzZVCxzmY87gdXF+6+m00q33APUheKmX868y5XhxWOT3DHv03BEjnNsAsWRpoi9islHhibtSzKPI5sqr2iHX/3swQqGL4Vt/EzuH7papMSb6PswIVdt4=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a1b1ed12-2493-41c5-fee8-08dd6c82d25c
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2025 16:25:28.9282 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pxQqmpaUSrPdvsT8pyAAGRhahfKSgKD98mumidNdXDzpQ3itmWmehTr413RZRR8yA0/hf0gU6bpoY4Zcy4P/3sbVr+xIp/B4T1pZh5zbnTI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR10MB6049
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-26_08,2025-03-26_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 spamscore=0 bulkscore=0
 malwarescore=0 mlxlogscore=999 suspectscore=0 adultscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2502280000
 definitions=main-2503260100
X-Proofpoint-GUID: JDiReivk0-u1-4rYJ9aU0PiI55_ismhh
X-Proofpoint-ORIG-GUID: JDiReivk0-u1-4rYJ9aU0PiI55_ismhh
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The following changes since commit
 ab68d7eb7b1a64f3f4710da46cc5f93c6c154942:
 Merge tag 'loongarch-fixes-6.14-1' of
 git://git.kernel.org/pub/scm/linux/kernel/git/chenhuacai/linux-loongson
 (2025-02-13 08:43:46 -0800) 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.165.32 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
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
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.220.165.32 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1txTZT-0007rx-RX
Subject: [Jfs-discussion] [GIT PULL] jfs updates for v6.14
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
Cc: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The following changes since commit ab68d7eb7b1a64f3f4710da46cc5f93c6c154942:

   Merge tag 'loongarch-fixes-6.14-1' of 
git://git.kernel.org/pub/scm/linux/kernel/git/chenhuacai/linux-loongson 
(2025-02-13 08:43:46 -0800)

are available in the Git repository at:

   git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.14

for you to fetch changes up to a8dfb2168906944ea61acfc87846b816eeab882d:

   jfs: add index corruption check to DT_GETPAGE() (2025-03-11 11:53:40 
-0500)

----------------------------------------------------------------
Various bug fixes and cleanups for JFS

----------------------------------------------------------------
Dan Carpenter (1):
       jfs: Delete a couple tabs in jfs_reconfigure()

Dave Kleikamp (1):
       fs/jfs: consolidate sanity checking in dbMount

Dmitry Antipov (1):
       jfs: reject on-disk inodes of an unsupported type

Edward Adam Davis (2):
       jfs: Prevent copying of nlink with value 0 from disk inode
       jfs: add sanity check for agwidth in dbMount

Matthew Wilcox (Oracle) (1):
       jfs: Remove reference to bh->b_page

Qasim Ijaz (1):
       jfs: fix slab-out-of-bounds read in ea_get()

Rand Deeb (2):
       fs/jfs: cast inactags to s64 to prevent potential overflow
       fs/jfs: Prevent integer overflow in AG size calculation

Roman Smirnov (1):
       jfs: add index corruption check to DT_GETPAGE()

Vasiliy Kovalev (2):
       jfs: add check read-only before txBeginAnon() call
       jfs: add check read-only before truncation in jfs_truncate_nolock()

Zhongqiu Han (1):
       jfs: Fix uninit-value access of imap allocated in the diMount() 
function

  fs/jfs/inode.c      |  2 +-
  fs/jfs/jfs_dmap.c   | 39 ++++++++++++---------------------------
  fs/jfs/jfs_dtree.c  |  3 ++-
  fs/jfs/jfs_extent.c | 10 ++++++++++
  fs/jfs/jfs_imap.c   | 17 +++++++++++++----
  fs/jfs/super.c      |  6 +++---
  fs/jfs/xattr.c      | 15 ++++++++++-----
  7 files changed, 51 insertions(+), 41 deletions(-)


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
