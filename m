Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D8B2A3CCB4
	for <lists+jfs-discussion@lfdr.de>; Wed, 19 Feb 2025 23:54:00 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tksw9-0003nJ-Cm;
	Wed, 19 Feb 2025 22:53:02 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1tksw8-0003n4-9C
 for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Feb 2025 22:53:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5BiqzcJtva0qQDB64O9/Iv5NYNwrFw0Akg4p3D3HZA0=; b=Jnr3jBRPdDYWIVrNi+vG5YbKr5
 qY+mdwuOH0ikLVdVvlJMxQ6uLtTFHBHkc3t99G0pJUIRafcdvqTWntBK+ckchUCT3QE1+H8+C3Oe2
 J6uc7FZSSs2Iw0PnrATkDlDhlbxlnrRZwUjPrAAP6B/o57KSGUOha70VdVJIoi3bqB4Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5BiqzcJtva0qQDB64O9/Iv5NYNwrFw0Akg4p3D3HZA0=; b=QeKEUCQTzEbtLQub5JwjvIoeyF
 D/njpzB1KUd9FXu9IR6tYemfMRyNnTkK7LW2b6CdR+cVUVApKQTGtuUvGjcStP66Qys1xa8h5M2Vw
 e6lexI9h1TruYcAmUHBTZzLC65wvWXG1SJBm2HHwFxEh2e9mg/W9Uz+PWE6HscihckQw=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tksw8-0004TV-6m for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Feb 2025 22:53:00 +0000
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51JMa0CL013273;
 Wed, 19 Feb 2025 22:52:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2023-11-20; bh=5BiqzcJtva0qQDB64O9/Iv5NYNwrFw0Akg4p3D3HZA0=; b=
 K9f8zfR+MZ4zaIEN5Sg3Y6ZIhKgkXTZUEWxcXfzRR2tUMmWOM88WRoD6ZpoRVov3
 S8QFU1BiXIYXgdnV6X4wOn8G1sPAYK8pVJJ+rrm0K7mle16UhWCP75Q4XC963eSQ
 MVEnjKiOIbD8P4nz51vgiG7j7r4YFAhTQTrsmEkwZZcV5N0mPVmpn6KGnEXVHKqn
 pIzkMG2tK6JY654CQRwIc9ICBm9fmW1+MezSutWbdIuOKJWnVKKiMJMUIwSzJx0S
 3ouYX4SBInmNCvIpc7q16wuSJA731V4FL6mrrFbiRfzTGu9df1y/fo4c6T8aOZXj
 M5p1pDsUt5SPPGjP/RHszw==
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 44w00kjxt2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 19 Feb 2025 22:52:48 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 51JLFEuN026322; Wed, 19 Feb 2025 22:52:48 GMT
Received: from nam04-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam04lp2040.outbound.protection.outlook.com [104.47.74.40])
 by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 44w0spmjeh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 19 Feb 2025 22:52:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vxv4ild2RkwCD07QAEdBCPX41BCU1UUbmlNFqRxSdktTltLrTPkV1hGnHyFpzwGVdhQVEjoLUk+lmpDEWoWJeAoJzvgp70lw3n2JOyT20Rg/71Fu4Aex1HLOXE4YPZ6uJFlMUP3RfPRaWhtxYrqN/EN7z1m2qndqiIO6ro/JZlN3cvusdECnmFJC4Ag74BMpSRN3mtcdCeKwLcmmqToWOqvunO0BpUiAIdmveA7fxeDktPFqPMvxHCij2Fh71kKf2jyfjt2B0FH/IlRN1qDT0iyjnkquF3DZvn5pSev8xIIy4QMQ19pFN8u/CbCu0lUE6cfomPuU5wimZPn0pbsPIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5BiqzcJtva0qQDB64O9/Iv5NYNwrFw0Akg4p3D3HZA0=;
 b=rLHAdRED5zAAswGQcWovxL7HK/NNCIJVbxG6SUSc1Qa5I8Y7Y7bejvRKDCOtNIlYbSjybLqzvpZP4UbeIIJp0NlvYeFhjM1XW/B/HEjYZGRF+a3mXp34pM1o8q8Kn/1M1HWZAjGYIZCEOFL2p7kIq7tveir80qIesKvSJ6QAykFE4m0VnXFhADAG29oHddFaqRf9N085JTFR130k1mDLsEcMne2gXHtUADpHzeTjZzYR3I6ezhH6dclvV1NGsRP3ueQXGr2sJ8+GQzSw14ujSwo97m/5cd3G1mTmGhDzuUY93XzFnR+BbcMvV2zxY7YGKYmRAvG4sznppZm2zpQVCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5BiqzcJtva0qQDB64O9/Iv5NYNwrFw0Akg4p3D3HZA0=;
 b=ONdvxlzh7HObJ8VQoSSEYPfvhxE1pm/yxK9PbeZ39VdX+zH0otN8T2BGVYrx5ADgr59pXFiMDQW8e6yfk5h9Li2gaDp/S283gWNXx3D72oLlbGqxVao33g/E9JpUYKseYvV92rBIwGi9ukm4uKTqGXZbxFRomo6629EYpq7WfHg=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by SJ0PR10MB5584.namprd10.prod.outlook.com (2603:10b6:a03:3d3::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.19; Wed, 19 Feb
 2025 22:52:46 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb%6]) with mapi id 15.20.8445.020; Wed, 19 Feb 2025
 22:52:46 +0000
Message-ID: <ab28ec2e-3576-4f7c-9157-9933b1fada89@oracle.com>
Date: Wed, 19 Feb 2025 16:52:42 -0600
User-Agent: Mozilla Thunderbird
To: Zhongqiu Han <quic_zhonhan@quicinc.com>, aha310510@gmail.com
References: <20250219140211.3912351-1-quic_zhonhan@quicinc.com>
Content-Language: en-US
In-Reply-To: <20250219140211.3912351-1-quic_zhonhan@quicinc.com>
X-ClientProxiedBy: CH5P223CA0005.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:610:1f3::17) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|SJ0PR10MB5584:EE_
X-MS-Office365-Filtering-Correlation-Id: a4fc501b-2777-4c8c-f628-08dd51382059
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RHREcGdOYjNYdWZzcXpHQWRrSW1FWmM1cG5QcFJFMm5wTXV1QmtEVGowUHc4?=
 =?utf-8?B?YnpSU2lIRHA0bk9yNXpzbjBYb3g0aXN4bHdVVGt5eWl0UmpuaVpKNUQ4Y2xH?=
 =?utf-8?B?ZlFVUWgwR21aR0RuK0ZOQy9HOTk5TUE3RXNCWkM4N0xBT3RoZzlrb1c3aDlh?=
 =?utf-8?B?dWlkeGFvUmZCU3lHc2hGSS9iR3ZIVHhhMEN2SVhyeDU1QXBMUUhSOG4wMDBK?=
 =?utf-8?B?cTJoMkI4QXBlWndRZWIvcXNMRW53Mm00bjZhSThkazZudm8ya1B2ZGlzZDNq?=
 =?utf-8?B?SDBJdmZpSmkvdHFoQUhkZlY4UlNyRkhISlRRcUhvVitTSUxuL1lWRXRRRElu?=
 =?utf-8?B?ZjdXQUZ4bUpUYmRONXlJWGhqS0M4UXNHY254KzBYcFM3alBVR1NOdVJMWGZQ?=
 =?utf-8?B?K05PZnVVaWlzOXlQMnZ5U2U5NGY1YzNYeWEvRERJZXBEZTd2NGd1YXJmcFJC?=
 =?utf-8?B?MDRpcFVibGVtaUV4RTRZd1JtQUsydi8wam1ubmJGTEo1UnlSUnNDRDFwbHV1?=
 =?utf-8?B?eWg2R3VodWlMK0M3SWNhK3JVT1ZrT0VvaVlPem5uNFJZU2YzYmQ5ajBKWFZY?=
 =?utf-8?B?NmZ5Ui9GM2ZCQ2d4VTRLdFFRc2FNOWZIbXdpOG9tZHNLaFFKbjh4cmdFd2NO?=
 =?utf-8?B?bUlIY1NpY1puOXhhZ1A1ekR1R3BZMmYvSXdMRlFEbGw1UWJzcEVKS2RhNCtq?=
 =?utf-8?B?MFQ1Q05sNXhrM0YrdlJQSXQraHN5Tk02T1pGNldHSDJXUFFYVVhuT29sQXMv?=
 =?utf-8?B?US9RMlRVMnAzczR4cnlrWG5ZbHVRT3VwdjJDTldzc0ZyazBDenZGK1pydk9J?=
 =?utf-8?B?UGNDRVBseXFnMVQyZlFaMENwVVdxVktwN3BRUWx5dWJ3aG50YkxwbkZ3UlQx?=
 =?utf-8?B?eWl6NmNFTjFicDFyVHM5aUdWVVRuY1NrbjdlYVFBWTMzUWtyV2ZHZTc3R3FP?=
 =?utf-8?B?RGZMeWF0L1BlSUdyUVkxMWhFK2x3eE5nZStZTjk5YnUzdUVBbG56RlpCaFJx?=
 =?utf-8?B?ZVZUOEFaUVJGV3dXemRvdEN0VXE1NFNlR1Y5N3Y4QVpZWGdUdzRsbWZlUXhx?=
 =?utf-8?B?T21qUm5BY29iU2JEYnZ3QTI5Z1VsM0dpODlvOVQxL0NVUUYwcjRkZ3VUMXVG?=
 =?utf-8?B?OUU4empPWFBrYS9MNUo2aVVGS1R3K0VlRDVsR2Q1eXZUdmM4UU9JZTRTUmdZ?=
 =?utf-8?B?bVRTMW04bWdaN3htZ1haZzU4aVNsNGVqQ0xvMWllcXJpV3BaWnlLdHIxVnRK?=
 =?utf-8?B?UHV3RDFsSzc2SHZTcWI4YjBpSDlSQnhJS2YzWFNwNllkR08veVR1cXhiRGtR?=
 =?utf-8?B?SkcyUWVMb1gxeng1c0xyTWM5NVNiK0hxZ0dTaHZjVkVFRDBrU05maG1MbkFC?=
 =?utf-8?B?anhxMk1WMmlTbEc4c2p4aXZsU0hYdEJEdEF5SHUyNXlQaTU1V0M4aVFwdVpE?=
 =?utf-8?B?RkRpdWlpVFdUQmVVWFZwTkMwSGgyTU83d1ZabTJvR01NWEpaVVRZenVvZlRj?=
 =?utf-8?B?NGRwQ1NaZUhMU1gwbXJmSVZMc2Y1WGZBN1l0UEJId1k0SXNoNTloMXJVVmhF?=
 =?utf-8?B?OHZDajVsdTlVMjg0VmdGcVNsdytDTXhFbmhFbTJUR3JUczhaRWhyVFJZaHR2?=
 =?utf-8?B?OU9vSmptbU12QVdoUm8weGpBYjYwY1JrdFZ6Y0M0Z3pab2pwQzNSNXlPWmZq?=
 =?utf-8?B?TDBXQzJxYTF6V1FrdG9LSE9BZmhoRURvNEpneUxTVGZtbkRIeDlBY3Z4Q1pz?=
 =?utf-8?B?NGtYSzlnVVkvL2U4OUdwT05VUkhCQzZNREdTUW9oMzd4Mk10c2R1M1JyeDVT?=
 =?utf-8?B?RFNKcWJWRTBtemljTnNhNHVMU1FPOGozUXdBMG5SL1JOQk5Sem9CbVkwekRD?=
 =?utf-8?Q?VF6yGSGLrasQv?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YmJNVzJ5djVOdmlteDdxS2lCVVVvQmlMSzRKRlpnMDR5L25JdTdHS21jUXMy?=
 =?utf-8?B?MG02c1ZsbE5zNVRMVmN3b2dwbWR6MWp4MlljSjdndERMU2hYR29FUXZhQjdq?=
 =?utf-8?B?ZElWNTc1Vy94Zjl0ZFY4bEpxWE5wSXEwdVoyQ3BXVEI0eFgxQ2xHaU5sNnBV?=
 =?utf-8?B?eVhPdkFnd3U0aEE5NXh4cys3c1ZsR2R2NEpBQk9UR0UxMjdBVmpxam9iVUQ0?=
 =?utf-8?B?UU1QME5SdkNncFFDTHVxRERjaS8zMnZ1cU40Nm96T3JCNml2Y0I5NlRxSjhE?=
 =?utf-8?B?ams4Qnk2blNiclRUeEpqWU9RS0lHZEc3dFN4R1cwY0piTHUxRUcvOWNvYWsy?=
 =?utf-8?B?MU8xTlVOQjJLZWZuUVZSZEZLSmFSSW1kN1dSaXNSMy9YdTRUZDcvVlpxZnlN?=
 =?utf-8?B?RHVxWjQycFVaNktRaG9aTVBvSG5JZkEvOTZFQ2ZoYk85OWFGMnNtRmpoaXdY?=
 =?utf-8?B?ZWl6Q3VjR0RpOFFQakJhQUdNbjVqaXYyWlcvRUVKNUZKTlp2Skp2UnpZd1B5?=
 =?utf-8?B?R2RJeGgrQ25GUituZWZnNFBUekk2QlhlYk5CWGt0dmdrS1krZFdnQzFrU0o2?=
 =?utf-8?B?TmhqZzBrUGtxbmZmRHR0Q2xVUEk0U0h2a3VrMFJFajVRTkl3angvR3FJWndL?=
 =?utf-8?B?Kzl0M1Q1eWwzK2FTUUZzckRhR0JTYXJxYVdpQzVRM2lpMDhnTWx2V0lDaEhD?=
 =?utf-8?B?UzNHMENXYTVMRXg0eVMvMitnSitXWVhZK2ZhOHRHcHJZZHZGaDBwbzdTTzhr?=
 =?utf-8?B?R0txdy85Y2x6enBJZzcyeFYrMFVPZnpnQXdVdTg2VFRmQ3hveXQ2RWtCOWRF?=
 =?utf-8?B?N0hoZytTUWozZk90WXhWTlp3YTFOZ1VZRm53d3RPQ3l2cjRsTk05RzQrMVd4?=
 =?utf-8?B?WTdOTEN5bktOeHNiRElrKy9PNWNIcGZwOHRsMEUyM0ltVXNvbGxoZ3hjYmJi?=
 =?utf-8?B?SEhrK20zK0c4MVdsMWFQdjN6cGt6WWxDZmx0TFc2U3hqT25IQkhTc1BaRFF4?=
 =?utf-8?B?empLNDQyUXZJeHU2cU94MjNBWUhuSmdZc3VBTUJlcW12enRYS0xralEzcVdY?=
 =?utf-8?B?TE14RFprdEZNRHhmVFhTV2hpQTVkNU5Hb0RObm80T05PekpxLzl0QlJKald3?=
 =?utf-8?B?WVZRV2NNUFlzNDU3QXhHQTY2UXQvS3VLbnFPSmtpcG5sYjNsb3Z5OTA2ZVJX?=
 =?utf-8?B?Z0hVcW83ampsWlpoVGhLdVhidE1icFBqdyt2emMzVHcxSGw0U2tLUDQyejd2?=
 =?utf-8?B?WC9jR2RzTk9RTmRlTXBmc1lGYklyRnQyRlY4MVZ6RkV1NjA5bWs1alFZZWc3?=
 =?utf-8?B?WE8wZzhLM0pZYzgvQ0pEc1BNRll3TEtqNjhHMU9IbWF2K2dnZjcreXNCbDhS?=
 =?utf-8?B?eU5tV2pqZGNVS29IZFJyOHFrNjVweFhQU2txM2ZhUys1M3JaeVJkQ2t2V2dP?=
 =?utf-8?B?dnRkamdPRlZxYVdqSnI2UFFuaithV3NiQUxOUTM4RFpjcndtRGlPZE9QYXp5?=
 =?utf-8?B?MlFzcDJRZnc2M3hvMmkxMzRtTXg3MXBOaDl3enNkb3ZnSkEwYUxRWENOd2pp?=
 =?utf-8?B?TTJ6Q3ZPZENraVhLdUhoVFZhemhLZDFqK2FDV0hYK2phcEc3K3B1MkxUWHNa?=
 =?utf-8?B?UTJ2Qm1UazBLK0NtU09hSDY5WXdFZ1g3eXllK2t3dFB6QllRaGhjSmMyc0hF?=
 =?utf-8?B?OXpKMHNsY0YvdkFLSGhIaHBUSENmZDFnQmgrQ3ZWclhIQ1dPZVBCVUtweHVF?=
 =?utf-8?B?a2YxeDZwVGQ1aHFxTWRzT0x6K1pXUFgwUS9HT1BiZDloSUZtZW95SGhCL2VF?=
 =?utf-8?B?cVEyZG1Lc1kvTkVubHdJZDJKUmJTaHF2aXkvenNkeVJ4YmdtRDJsbDZ0VG85?=
 =?utf-8?B?YzRKbFB1YzNORGV1M0lsc0NxWTFybm0yemxlVDdlVjk1S2dhRTcyRDJzRXIw?=
 =?utf-8?B?V0Y5L1hSbktRa0FvSTJMMVR0V1k5Y3l1MWlqTmhFZUxvNldEdzJMQWRQVXdT?=
 =?utf-8?B?TDVUUGpBVTZqNE5PQ2gwck9HV2xUWWV3MHJPRzgwY1FDSEdrNnBxQmkvbjZO?=
 =?utf-8?B?Y3FWQzZBSG15bFBINTlhYU5xaU5TeFgrU3hNMmtjVjFkUmFhVlRvSjhlU25p?=
 =?utf-8?B?MC8vdUxHNlJ2OEdnTWtDSkw3S1hBVFZvTTgvVWNkRjk5UXZadVdneHdDdmE5?=
 =?utf-8?B?S1E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: BWIasr5bvBbXiVPlPBW7+U8XFEeBJr6S8QoJ1IqK8zqcWmcmMrpLzFdS0Bc508PNbLGyV2H1/MHkzWg/g1qfJ5QRg9EkoPzwtXxXUnJpb4peCjJQS49BrNlGpI0OTYa4SGxtub+icxQz8Bo4o9VrjV7iLqHTeULYdklHNEBvI0oZF1vK7xvnCb7R6mfjgq72pWsG2gIkMwthrtLTvW5u1hFFb3GBvwgppcHK+YThdzVSa0d+JqDIu0nOMCD25sA90LRo/kYWf/Bj42W2gr1QEMBVCq4Ok4+x7g45WtcYAUvddjuRhUwD4WWV40K176j86RFuVtU5hH/LMp6fWp8cBBYlpCKI7Vml7Pfs+a8cM6HTisw2qOj2MhC0Q/QMVn11B4R70lQxX8MEg9f+2gf6YQVdO7xpOKB+3HT8Uyrt67i0F4N5YJu2PsWYa5wmxVPTH+ZWPybx235Ekjh0XDnoweibcCFzxFi6xk7vG5CYClUXz7+7Vh73KouOLlx8JCBbAWhHeEfjCXfa2gVliwF243G5vOVsIAtISaJ6gR0NTMAAmvFQbs3q3qP1adMHVivdx/sIjLkb4bo41estvzPueFO2Oe1mA7z9gr7dmoyT/YQ=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a4fc501b-2777-4c8c-f628-08dd51382059
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2025 22:52:46.1439 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Kg/67ME35UB5x8XPOZ6TWVtQxINTMLdmUuNPIcCC3TzAM8pN0mbg3roDtdmnR9hMIsSuFrZsjqXOfE5ZTBqNaqqtEYdPd5xoHw6/DJU12HU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB5584
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-19_10,2025-02-19_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 bulkscore=0
 mlxlogscore=999 phishscore=0 spamscore=0 malwarescore=0 mlxscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2502100000 definitions=main-2502190168
X-Proofpoint-ORIG-GUID: x3YBZQ5pILIyfkLABGVmlAgRsfjDxfl7
X-Proofpoint-GUID: x3YBZQ5pILIyfkLABGVmlAgRsfjDxfl7
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2/19/25 8:02AM, Zhongqiu Han wrote: > syzbot reports that
 hex_dump_to_buffer is using uninit-value: > >
 =====================================================
 > BUG: KMSAN: uninit-value in hex_dump_ [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.177.32 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [205.220.177.32 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [205.220.177.32 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.220.177.32 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1tksw8-0004TV-6m
Subject: Re: [Jfs-discussion] [PATCH] jfs: Fix uninit-value access of imap
 allocated in the diMount() function
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
 syzbot+df6cdcb35904203d2b6d@syzkaller.appspotmail.com,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 2/19/25 8:02AM, Zhongqiu Han wrote:
> syzbot reports that hex_dump_to_buffer is using uninit-value:
> 
> =====================================================
> BUG: KMSAN: uninit-value in hex_dump_to_buffer+0x888/0x1100 lib/hexdump.c:171
> hex_dump_to_buffer+0x888/0x1100 lib/hexdump.c:171
> print_hex_dump+0x13d/0x3e0 lib/hexdump.c:276
> diFree+0x5ba/0x4350 fs/jfs/jfs_imap.c:876
> jfs_evict_inode+0x510/0x550 fs/jfs/inode.c:156
> evict+0x723/0xd10 fs/inode.c:796
> iput_final fs/inode.c:1946 [inline]
> iput+0x97b/0xdb0 fs/inode.c:1972
> txUpdateMap+0xf3e/0x1150 fs/jfs/jfs_txnmgr.c:2367
> txLazyCommit fs/jfs/jfs_txnmgr.c:2664 [inline]
> jfs_lazycommit+0x627/0x11d0 fs/jfs/jfs_txnmgr.c:2733
> kthread+0x6b9/0xef0 kernel/kthread.c:464
> ret_from_fork+0x6d/0x90 arch/x86/kernel/process.c:148
> ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:244
> 
> Uninit was created at:
> slab_post_alloc_hook mm/slub.c:4121 [inline]
> slab_alloc_node mm/slub.c:4164 [inline]
> __kmalloc_cache_noprof+0x8e3/0xdf0 mm/slub.c:4320
> kmalloc_noprof include/linux/slab.h:901 [inline]
> diMount+0x61/0x7f0 fs/jfs/jfs_imap.c:105
> jfs_mount+0xa8e/0x11d0 fs/jfs/jfs_mount.c:176
> jfs_fill_super+0xa47/0x17c0 fs/jfs/super.c:523
> get_tree_bdev_flags+0x6ec/0x910 fs/super.c:1636
> get_tree_bdev+0x37/0x50 fs/super.c:1659
> jfs_get_tree+0x34/0x40 fs/jfs/super.c:635
> vfs_get_tree+0xb1/0x5a0 fs/super.c:1814
> do_new_mount+0x71f/0x15e0 fs/namespace.c:3560
> path_mount+0x742/0x1f10 fs/namespace.c:3887
> do_mount fs/namespace.c:3900 [inline]
> __do_sys_mount fs/namespace.c:4111 [inline]
> __se_sys_mount+0x71f/0x800 fs/namespace.c:4088
> __x64_sys_mount+0xe4/0x150 fs/namespace.c:4088
> x64_sys_call+0x39bf/0x3c30 arch/x86/include/generated/asm/syscalls_64.h:166
> do_syscall_x64 arch/x86/entry/common.c:52 [inline]
> do_syscall_64+0xcd/0x1e0 arch/x86/entry/common.c:83
> entry_SYSCALL_64_after_hwframe+0x77/0x7f
> =====================================================
> 
> The reason is that imap is not properly initialized after memory
> allocation. It will cause the snprintf() function to write uninitialized
> data into linebuf within hex_dump_to_buffer().
> 
> Fix this by using kzalloc instead of kmalloc to clear its content at the
> beginning in diMount().

Looks good. I'll add it to jfs-next.

> 
> Signed-off-by: Zhongqiu Han <quic_zhonhan@quicinc.com>
> Reported-by: syzbot+df6cdcb35904203d2b6d@syzkaller.appspotmail.com
> Closes: https://lore.kernel.org/lkml/67b5d07e.050a0220.14d86d.00e6.GAE@google.com/
> ---
>   fs/jfs/jfs_imap.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
> index a360b24ed320..cf16655cd26b 100644
> --- a/fs/jfs/jfs_imap.c
> +++ b/fs/jfs/jfs_imap.c
> @@ -102,7 +102,7 @@ int diMount(struct inode *ipimap)
>   	 * allocate/initialize the in-memory inode map control structure
>   	 */
>   	/* allocate the in-memory inode map control structure. */
> -	imap = kmalloc(sizeof(struct inomap), GFP_KERNEL);
> +	imap = kzalloc(sizeof(struct inomap), GFP_KERNEL);
>   	if (imap == NULL)
>   		return -ENOMEM;
>   



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
