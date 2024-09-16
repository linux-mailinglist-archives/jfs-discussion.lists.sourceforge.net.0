Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 29BFA97A7EC
	for <lists+jfs-discussion@lfdr.de>; Mon, 16 Sep 2024 21:46:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sqHfa-0001t7-DJ;
	Mon, 16 Sep 2024 19:45:58 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1sqHfZ-0001sv-Bb
 for jfs-discussion@lists.sourceforge.net;
 Mon, 16 Sep 2024 19:45:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :From:Subject:Cc:To:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mvcdLYQU9o5Y5VrnADkEXmgwCjE7UCTdliJgBc77IGI=; b=FwD1pg1LBZsJJl0xB1iRJceuaW
 wcfGNHtgmOHZOg620DWBeGYB8SqqH3SI6fr9u4Hd0LwL6GRBzSphNGPpJanPNA5vH82GT734WQtOb
 iyFXpdPMHu+lKeYynhT10AUMp3/qsqcVE6Oi8yptMhm9bgjNwShUUjw0bQn3VkoXmv1k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:From:Subject:Cc:To:
 Date:Message-ID:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=mvcdLYQU9o5Y5VrnADkEXmgwCjE7UCTdliJgBc77IGI=; b=j
 OvB8JVEcaJEeT7dGiQvcQbELxx1D25tiCC3zYGoD9AYU6snAHjxKf5rzh2WGh8sshPehhmo3nfCqs
 DeEupdW34IdfRq0GFSyve2HZbWB28iPjtYfklVhD6LOsE0gvhl7EBLHrV15wIqGzZ4echudhTxN+O
 aFF4yAuH1w6WETk8=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sqHfX-0002o1-Ig for jfs-discussion@lists.sourceforge.net;
 Mon, 16 Sep 2024 19:45:57 +0000
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48GEMX7C001440;
 Mon, 16 Sep 2024 19:45:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
 message-id:date:to:cc:subject:from:content-type
 :content-transfer-encoding:mime-version; s=corp-2023-11-20; bh=m
 vcdLYQU9o5Y5VrnADkEXmgwCjE7UCTdliJgBc77IGI=; b=jwXlJdp28Rjoh51fX
 vuYxhcZpLzOponhxd9pdsv5b+rB2KaDgwNqJ9bT49PiE1Nlf9bSR2J/QVoiqzU/B
 rGfyHMnBG6Jqn3sL6ppbq6eTPWJQ/XnRLai2tSWPw5a+usYEANFn9oJk/Uo5bYif
 YflivPR3lVSOS8aFyPu/dRR/rrC+N6kXtd//BScbYoYC3jlHm0mwri8TjuuGInQG
 ZfdMHwK45PxDX59F76ql5IgzKS/JCIJa4f2p33o/GFcbF69muewzkRplWZ0TRYRE
 KhMQ9OuPiGHAtRHhojZ4WyH0V2aujn++lFbQP1dy0weiS8whVhJyI+IRuhTPYuq4
 36fTA==
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 41n3scvbau-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 16 Sep 2024 19:45:48 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 48GIeOCv010285; Mon, 16 Sep 2024 19:45:41 GMT
Received: from nam04-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam04lp2173.outbound.protection.outlook.com [104.47.73.173])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 41nyb61m5b-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 16 Sep 2024 19:45:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kkOAlfSTAI+4hrJTny+UQIlyK5RuNdkVAohqSAUMk6u5GE1mGnPa4Vm+cql7WBZK9DnyorXLw10hSED89WhiJyQF2sZ+BJZ3WPxNO1CpVJesBD3vXYD/tf54B4shWI/PEulqUJ5zBtJiHwjIdGLXr9ehqgRXGvk0hanh3amQvPWXrK7lsbDYbzJkJopbZBJfvSC+eS0U6XtLVnuNhaXjRL3Tti7n5iYhU5VCDnGF3iNIYAje7oBDdtUNLpcP51DeOJvMiHqjszbrqa1onOYJoLrpZIXACY9lnXqFT+OS8p3nAY+eHLqUbg8usKxT9CI9jRuAsHIrcOdl841Zn3ShXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mvcdLYQU9o5Y5VrnADkEXmgwCjE7UCTdliJgBc77IGI=;
 b=jjJvVkNGM/3/Q93L3M3OvRfas5D0EsRlcNs3MPYgyDQtCOG+ihpMrgXi4V8cmURYuJGQ9uSVjfvilfOPqWczgHA0da4rRGYgLhzdMK9tswJVXqwfJM0Bd8E4wGc3hehkXzxheIGI2ETFo99TJ3EUkuHu3jYEbmfxzyhDHKO86umwVuBJ+Xig7d9gCdpF3vu8vknW4+/8Cm3LxbWTzEghe+ijaIMVt9Gf1jqw7u763zcObFhintm6sSMBNHEDcgdf2tJ6VftrGfH/UK9BEh1BOSEvmebZj1P0lFlvED9sRolhzIZa8QYmUbxyZP3c65zKPGmVdK/cb4AJXgN8NyOoNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mvcdLYQU9o5Y5VrnADkEXmgwCjE7UCTdliJgBc77IGI=;
 b=VL6SGBodaci42vUsjGD4GdF8GmDafq59zyMC1szr8+ArhCN/tIrbfcnFaiD2nU87rEaHoBy6aS2X3kWOyDj3a4NIcmrOTKC4MqXgwhxvit1zwqXbcVrsVO1xF9U7mYEqiQCgxQQiSxXLj1zZh1wI9uXMwFPzlvfULq0qHyCbuVI=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by DM4PR10MB5920.namprd10.prod.outlook.com (2603:10b6:8:af::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7982.11; Mon, 16 Sep 2024 19:45:38 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb%5]) with mapi id 15.20.7982.011; Mon, 16 Sep 2024
 19:45:37 +0000
Message-ID: <3bf9944a-3809-4a79-99e9-d3b797c25836@oracle.com>
Date: Mon, 16 Sep 2024 14:45:35 -0500
User-Agent: Mozilla Thunderbird
To: Linus Torvalds <torvalds@linux-foundation.org>
Content-Language: en-US
X-ClientProxiedBy: CH2PR14CA0016.namprd14.prod.outlook.com
 (2603:10b6:610:60::26) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|DM4PR10MB5920:EE_
X-MS-Office365-Filtering-Correlation-Id: bdbf4151-87f5-4209-1359-08dcd6882366
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aDI5V2l6cU9CZE8xV3cwNnp6R0ZZWjlSS3orZ01FK1JFaFNHNXZXQXM0NGdZ?=
 =?utf-8?B?ZUtiOXIzRWZPY3hhZHNXYUJYVFllY3k1Y3NpNlJJZUVkOTQ3L0RmSEk4UHVN?=
 =?utf-8?B?b2tOWnlrWVJUekpMZmFvUW9tZ1IyUUR5T0o3R1FjcGRxbmg0Ky85QndqYS9k?=
 =?utf-8?B?bFVIc0ZSbk5SVkFYL1ZLVG04OWR2MmJwNHRMUDZvbGFXNHpLSmhOTFhJY0l1?=
 =?utf-8?B?RGVqeGp3U0twMUNxcktrNzBpS0tJVDNwakNFc3Vma2FNVWswbTRqUjhOcWxX?=
 =?utf-8?B?SmxtVnliaUwrSkZ4SlRjaGRXdHNNbTlqUlhTR3BkTVNBTlJqaGlQaHJQcGFY?=
 =?utf-8?B?Zkt3cmU4WHM0Mjc4SW13ZGJMVjVQR2tKc0JuN1VEZGt3bTBGRTdxWXBLMUlq?=
 =?utf-8?B?VzJuMVZkR0kxU2Y0dUFpM0FUb2IwcHArZnRDdlVIa3R3c2dnNitnVytwOFNG?=
 =?utf-8?B?WWU4RWJCcFE3c1RzK0dhTXRrRC9xZW0vYy80YVl3L1BNaDRnMExSZENUWThq?=
 =?utf-8?B?UmRIdEF2M3lsODlyK2UyOHlacnV3ckIrdkNmdHhiVmNKVjlnM0Z0anBJRnli?=
 =?utf-8?B?M0R3a2dkdk5xVVk0aktQdVhoS2IwalJqYmRRMEVJSTVCYnFUZmRyMnB6c1Zm?=
 =?utf-8?B?UjNQQ0ZSN2p4VS9oYjRuQW02SS9SQTBJRXlIb2lQZzlrRGhBNjZRSHgyd0dZ?=
 =?utf-8?B?TGVXa1IydXNvNERyRUlwclRPTUsxTXZ6KzdEL1hGM1FIT0FwV05qdzE4VTds?=
 =?utf-8?B?QS9TYVV3MXRKSnpUWnF1WUFESXduWGc0Ry9xNW5PRlU4RGdBZWt5cVNSaXlN?=
 =?utf-8?B?ZnZVSkRyYzZnOUdCREhHV093Q1NSWFhVVndHMk16WjVtalFxVWUyMjNhRnZQ?=
 =?utf-8?B?STI2QWZLK0hkZU4xek93Q3F6ZlpTemlaRjZPK1ovUEMwVjhnSURSc0psSE5l?=
 =?utf-8?B?MnBJZEJYa2xJZHdEbzJCR0hXc0Y1SVk4QjJOUDRDR3piQUtxRkkwME5objVQ?=
 =?utf-8?B?V0JvMUJJTFVnRGJxcVRGNzU0Y3l2cWl2UXE0TFFuZU85ck1TNUJBY2gvNHNy?=
 =?utf-8?B?dkttcEFXMStITTYrdEtFZHIzUUlEUjZlS01veWFuVW1hNTVDWjhJYy8vZmxE?=
 =?utf-8?B?Q2ZWWksrU1psVkFhRzl3Z2h5NFA4WWlqVnBpS0VHVkJVS2x6NFVMSGpSajNR?=
 =?utf-8?B?UElxTmE2MFkxSGZaWThjd3dlTGNMSUFoZTlaWFY3NXhuSk9BbEZ0ZWQ0b2Qw?=
 =?utf-8?B?RnNnWFhCc1NUd2RhTVNUTHczMnVzblJzUGtOWWlsdTJqRzZUb2VVNzZSYnZx?=
 =?utf-8?B?L2Rqck1ybG5heGlqVkFsZUFaUG1qaXFIb3dWNlI1VW15TENKd0JRRnFLck82?=
 =?utf-8?B?YW5UWjN4ZzMrY3RVUHVxWW5aTXByaDRZM2UzM29wbG1YZlNubkg3R3B6WUxV?=
 =?utf-8?B?UUVyUkk0TW5QcDBaYTZrQmpHRkI1T2FtRDFpQzE4czg0dm53Sjcxc3FtMU9y?=
 =?utf-8?B?TGc3bTc5WnJZLzJLZkdaYVBFb1o1R3FwSWhObzJEU28xSkdGdGliYTlxRkV5?=
 =?utf-8?B?UkUxajgzZm9vSEowcEUxWjRvVjZ4MzJCSTU4OTd4K1lRMUtUdElvYXlsbllu?=
 =?utf-8?B?ODhEWTJYaGswTzJWZjVXNTRaanpCd1RVa0c1Mys0T1d1MnVXVzhtTjBCYlFF?=
 =?utf-8?B?cUkybzNnK0M3R1VJVkZGblc1bmRzUzFYSHJ2QlgvNjdqcXNacFhHcEhxVnFy?=
 =?utf-8?B?QkdqRlNlc2tSTTRKZURuSkhIWE1rWEI0dWtLWnZEY3pmSHlOclRBazQ1YlNM?=
 =?utf-8?B?S0h1UnNjZnJDNTJRbkVGQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TXFlTU9rZXRnNHpWbnJWU3pybytFSk5XcDlieXVhL2hjZktrc2ZCa3U5ZTV6?=
 =?utf-8?B?aThnMU12aFJMM3dCaHB2TE9ya2o3em5PcDk2anR6NitEb0pFcGRJbDJLRkVJ?=
 =?utf-8?B?b1o3QnpKRUVqMjdDaU5VSk1Xdm5xQ2xxcTUzM05JTEZDL1ZKRUo3RUlaSCtm?=
 =?utf-8?B?S0pIRmcxdytPbktUTzN0WmgyaVc1STVGRk5jOHBxYkMrYTZtSmY5ZnJqNzJt?=
 =?utf-8?B?d0o0QVFlZHl3ajVRKzdFd3pPaVl6Y0pkanY3RFpNMmxpcHJ6NUIzVm5VeCtP?=
 =?utf-8?B?SlhpMExrQjVqbVVJOWZ3cUNyTXZ4TkZhMWZKZy9wM3FGMXp0aExMa201TmpY?=
 =?utf-8?B?ZGxzSHBUdHVxODBneHJFL1VHQmlrN2VZWmFMallQY0V6QW4yTTRreFF2Z2dO?=
 =?utf-8?B?RDBmTjdsOURISGNsREVsazFqRmVHL1k1M0FXcitQcFRvRVpDSE4wRThuS3l1?=
 =?utf-8?B?SmZXYkxzWWtCcUl2K3ZpK01MOWhtNDQ5enI1K244L01EUHRZYUlBTTJNcWh1?=
 =?utf-8?B?QlZ2OU9saUhFbHNlcU9VdnRpUUhWRUtpa1FzSXIzblh5Q1NiU3RMRkw5aHVL?=
 =?utf-8?B?aXpITmt5WTNOcml0ZFlEU0lyaTFwMmpzTVROKzZqR1FDcGVwWEZJZlBlcTFD?=
 =?utf-8?B?T0RFZ0hlNFpwNWQvOERmZ0czaDIzN2FNNW9BajdrU090ZXM5TGpSSTlCTE5B?=
 =?utf-8?B?c3pBbnRqMzRWN0xPN0pGbDFEK0VsQ3psUlFCZWN3Z05pOVpsdm4ydy9HS29C?=
 =?utf-8?B?NWNzbWRFNUZTZWRsczJ5Lzh2M1NZaU4xYng2Q0RxQllSTlJpUFlxR2dnczhM?=
 =?utf-8?B?eURPRVJKbnFvdTM2Z0k1SlpFSm0wM00yek84Qkp1TGdwcXA4b0pEUW5ZZUxN?=
 =?utf-8?B?d204NE9pVGpsc0EwWE1EdHB5czZST09iaVROYU5CVkhQNWRtOWNYejRTTnpM?=
 =?utf-8?B?TkpjSXJPeGd0QUQ3ZERHdUhKbmd2clpWaEw2SGFHbGpsczhUU1Jlc2d0R3ZG?=
 =?utf-8?B?clpCRXZ6b1orTkZQdU5nUnVIa1NkVUlyRkMxaXNiemVSNTc1UDdqdFB5Um9B?=
 =?utf-8?B?ZFFxTWtmRTRFQjlWMDdiTGFCNGlGc1oxdFp0RmpDNVVQOTVvZ1BHelpmM0Nt?=
 =?utf-8?B?SmNDWE5hY01QRitPenNvc01LbVU4bGhMQm5sVEo4bE9XeWdiUWVwK3M1STVv?=
 =?utf-8?B?b0R1aUJ0b2lLNkpuMW9zQ2l3eWdpMkU4WnZ5NHMwRStTNkx3bHR3Z2xJbFFL?=
 =?utf-8?B?d3NBbDVQZ3pCazQzQ2dOblNmWm9rY0N2Z1RVRlZpWS8zWG5xMGxEcG9NUVg5?=
 =?utf-8?B?SWUzcUl6dElGREpKd21QUmxsSkxSNk1TZ2FKZVdCS3RFUTBjUlNwQlQweGll?=
 =?utf-8?B?L1JjRWtTMndkcHVDNVlvUGxhVEJPeStSSzZPT051Rk1PTWI5Tm1mSjZHWGRa?=
 =?utf-8?B?YVdZTlBKYTAzZzNNTytZbXVxODJ2cUVFSnJ0ajhiSkRYcXU1V2s2U3E2Wjhr?=
 =?utf-8?B?cm5IT3BoN1B2dURQZlcycGh3Y3B5Z0QvUm92WVhyZnFCTndFL2FNdjRMOFRU?=
 =?utf-8?B?K09vS0xjVzlHK3VRd3RYbGhKeUQrQW14a2RYaVFtVXhWSmhXUURBZXI5U0VW?=
 =?utf-8?B?Q1BCTzF2NDVVVVhDZGFWNTZxZGZVYVZVM0JvRGtlSVRwcjEvWXAyQ1U0dDJF?=
 =?utf-8?B?VkQ4MmhKa2dMZi9rbERVVEtOQ3JSYXV3aTdPKzgzOWlMRU5IM1BibkZOSm5j?=
 =?utf-8?B?U3hIeld4Y1JCdStjN1hMWHJtWjhCS3VUb2d1dnZmYVdFbERIcGgwWmFRdEMr?=
 =?utf-8?B?RVhEYWhwT0JJU1pOMkpjSC9qTnhORW5Sb2V1MGtHcThHWGYvOEtOUXo3SEJD?=
 =?utf-8?B?WWhaUlZsR2F5NnBnUDVUUGlXQUhlajQxVjVsM1pkeEM1Y0UrNGJ5eDRVa1dw?=
 =?utf-8?B?K0FGaTZNVXFyUDRtdWw2SnB3em5rczZ5SGcyTHpaRGttUXJ1b0FxZU9QMldZ?=
 =?utf-8?B?dmUxZGVCRTNEYUkyVE5keW1hWFlXZEo3ZTc3cFRqVGFoOVRGNTNrOGNQcXZ3?=
 =?utf-8?B?L3pPRUhLbVBXQ2ZUcUVWWVRMbFNWNHFreU0xTUpWblFBUWk0UTdxZDd1Y0dK?=
 =?utf-8?B?dEJqN1Nvd1VnUXVCa3Q3enBuTHFWb3g3eUdrOW0yYVA0M05WOENHTDVIS1o4?=
 =?utf-8?B?eGc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: bXl/kv+ydwk/XxoD1TPt6h0a/HfDzzTSO111xjeYnXJTi1+evvoBWNaIo0rSbqPgowkLGCk9h4bPcPN8UUn6BNCj7ReUAWW4J6jOJH3pepIpszWKYSl1aJiPdWuimgmeNRXhahWoMluJjIIdCvFb0BTnrjWY1aGVeN5akPaG02ssZRz1Bs2mL7cmSD5+krudAsNzZTQtoEMzCjrfVsON2qVlh2yuIhCv0KeJNIiJH7+HbiplsTHz+lu40CfWSmRU6tbNcRZo0NxABJPBqb7SANE0H7r63c9e8qHr0hJ3a8+uIvWyMrZGok72j7AO+rr4EaO7xM0Cw2EyHYPtmm+QjknMzQc9RCXfH4x+kM2/eA7xUA+JgcZmT7NJ3u+4tc+EhgbtJEyrGHbG3sJiKuSdUOYi/D1IBsQSLmzXBLOBFoxBZzUIFSn9j1Ju01pLWwtvTFJHu3h5jFJ98LncDZniK9hzV30qWv32H/x3bQ8TjrkyiVAq8y3/V61DhlO4P4oSi4HTng4Rn45RTX5oFcpx4S/2UQNyX8DLk9eAr4cnCbVMiEB+x/D/ANz94phVQYa76wNclhvlZ734ad2MKo9rwObPO1Wq1jN7nW7YcMeEbOA=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bdbf4151-87f5-4209-1359-08dcd6882366
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2024 19:45:37.8984 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eg97TAijJmSoPFlJVDwM/L6rAG/b/QnPruPEyyfZHo/xxr69GWTL2nWpj0uY6UUl0w7dh0N7CQ4HUyD4eOvSrhDu2J5IZKV4hihc8MCoE+A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR10MB5920
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-16_14,2024-09-16_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 bulkscore=0
 adultscore=0 malwarescore=0 suspectscore=0 phishscore=0 spamscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2408220000 definitions=main-2409160134
X-Proofpoint-ORIG-GUID: iFaPitynUNmoMlG2I2DN30mClObFFghu
X-Proofpoint-GUID: iFaPitynUNmoMlG2I2DN30mClObFFghu
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The following changes since commit
 3d5f968a177d468cd13568ef901c5be84d83d32b:
 Merge tag 'pwrseq-fixes-for-v6.11-rc5' of
 git://git.kernel.org/pub/scm/linux/kernel/git/brgl/linux
 (2024-08-23 17:48:27 +0800) 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.165.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.220.165.32 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sqHfX-0002o1-Ig
Subject: [Jfs-discussion] [GIT PULL] jfs updates for v6.12
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
Cc: "jfs-discussion@lists.sourceforge.net"
 <jfs-discussion@lists.sourceforge.net>, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The following changes since commit 3d5f968a177d468cd13568ef901c5be84d83d32b:

   Merge tag 'pwrseq-fixes-for-v6.11-rc5' of git://git.kernel.org/pub/scm/linux/kernel/git/brgl/linux (2024-08-23 17:48:27 +0800)

are available in the Git repository at:

   git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.12

for you to fetch changes up to 2b59ffad47db1c46af25ccad157bb3b25147c35c:

   jfs: Fix uninit-value access of new_ea in ea_buffer (2024-09-04 10:28:08 -0500)

----------------------------------------------------------------
A few fixes for jfs

----------------------------------------------------------------
Edward Adam Davis (2):
       jfs: Fix uaf in dbFreeBits
       jfs: check if leafidx greater than num leaves per dmap tree

Jeongjun Park (1):
       jfs: fix out-of-bounds in dbNextAG() and diAlloc()

Remington Brasga (1):
       jfs: UBSAN: shift-out-of-bounds in dbFindBits

Zhao Mengmeng (1):
       jfs: Fix uninit-value access of new_ea in ea_buffer

  fs/jfs/jfs_discard.c | 11 +++++++++--
  fs/jfs/jfs_dmap.c    | 11 +++++++----
  fs/jfs/jfs_imap.c    |  2 +-
  fs/jfs/xattr.c       |  2 ++
  4 files changed, 19 insertions(+), 7 deletions(-)


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
