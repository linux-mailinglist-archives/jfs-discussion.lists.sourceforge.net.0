Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 459C891A7EE
	for <lists+jfs-discussion@lfdr.de>; Thu, 27 Jun 2024 15:34:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sMpGI-00014i-7T;
	Thu, 27 Jun 2024 13:34:07 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1sMpGF-00014a-Jn
 for jfs-discussion@lists.sourceforge.net;
 Thu, 27 Jun 2024 13:34:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sYkrNejdUQ6dQY50IBYgVN6tB4s3RaA+4iV7DeGvDw4=; b=SQVA3qqCVybOSSMr5KQGwkLkuv
 8TEfHHS4OIf34m0asr6Na49GtTomuaf/+N3zf1vDzAOD+CV165ecHho+MpgEshU9MQIdgWRXbEbHh
 GCb3o3xv88AD4AvSsXFAPfQ7swC66w/XHUWh0qj4vt7ZXcNyn6tEGNUuxk5g47ou80FE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sYkrNejdUQ6dQY50IBYgVN6tB4s3RaA+4iV7DeGvDw4=; b=MP80YMT/4CXtHyxUORfABbJlny
 9N8o8uVDsiXLyAXJuGVsYzDaJHJ8ZlOAVnoCwXEBNObZpSqs/ks9cYDgS1Ymof3JY7VIeXSJX29fi
 kTOTqGj2N2AD73hk3MtAcP7A2ZZ/5DepT/dKlxqWGfLSkmvkXpBfL36MtQKncT28EA6M=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sMpGG-0002RL-NK for jfs-discussion@lists.sourceforge.net;
 Thu, 27 Jun 2024 13:34:04 +0000
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 45RDMX28028137;
 Thu, 27 Jun 2024 13:33:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
 message-id:date:subject:to:cc:references:from:in-reply-to
 :content-type:content-transfer-encoding:mime-version; s=
 corp-2023-11-20; bh=sYkrNejdUQ6dQY50IBYgVN6tB4s3RaA+4iV7DeGvDw4=; b=
 k/Gdo+gR2auDyGtePebYTjKqQY8oETvMwevYT/pD+DmfAXdfc555rRwackgy+yZB
 EVSM1OiJnIrudA/Jr+Whb2gKnSazULE4We6PpQbURiN+me6MfXSUjSmMe7Otgb1t
 3v+Ze6H/6ZRnPCXKmdYlZv4X1Q8X7E6xs1gm0q5/ADXOrSwHPqXnfRj0ydnufKm+
 UOpEi/R9VSC6hJ6tEolE4o7/ZKyyqIEwbqzco38flPxTDwrNGSzoqnOiRnoVNsvR
 oL35VdeKLEMIwLDeBq7cMhZALxN1OCJhJmI1Gr2kr8RAyzRBmzYcleCjagF9XXdE
 8O/Q6ESjqu56dPQ1bQQhhQ==
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3ywpg9dqs3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 27 Jun 2024 13:33:52 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.19/8.17.1.19)
 with ESMTP id 45RD4XnM017796; Thu, 27 Jun 2024 13:33:52 GMT
Received: from nam11-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2173.outbound.protection.outlook.com [104.47.58.173])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 3ywn2abp9d-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 27 Jun 2024 13:33:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lEtTuv//OAbSPxA13Z5g/CHKqYPbpET5uMqL3sy/YezkWmrhRj6lqGUBONC4MXfyvKmAnHASaSyePCQpfWK8qtI/2/tHsDzETr0Y/+r0iTpDohyrtKPCfJPoRF/0cT50MvArqPavhdiiY1+bYAc7wjQCdes6hbSqVlgt4t1bj8BA5vV6RKtQrHAPHgZjQmjaX9UEgywSNCAN8EQaDYPjVJbMP6uxMZo3SD81qV/I6171CUwGsmUNqeYcrGStU0fxTkNZo9AsUX5eJxoL77SmTSj2+NQZViV/kSoYFd/QYAWI3sZqXzUVrhZQevm6Ll1Vmncys2GuVeMnCoY5qwrcWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sYkrNejdUQ6dQY50IBYgVN6tB4s3RaA+4iV7DeGvDw4=;
 b=bJl/FrQwNWWuI0Yl5gorQGnGvaBfw5XY1TU+spkAUvio46L1REwdcD1GYyLA9fLOS2cgN0Ak2xMH69aUMH16feCgVJB5vGaHVhTm8mhYltgBK/8+eFnze0M1ltZsvVtFM7VBMZrsNkVNyXi925e6tD5PYyi9251x1uI3LnhsOTuRxl4cF+6JnYz/IA8oEUsqGCkXgJO8//rA98g29jW6gtBh5Kg0YCiKD91fJcf/3r69qZ8XWyMUquwAWmpAR/RmhJlFSKgLX96WtsAMlye864PzIB+Ey88U9rF0d/o64j7E5hoxZLbObE+7tLd9nzfQhejXjigjA7Kx5wgVwma0ZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sYkrNejdUQ6dQY50IBYgVN6tB4s3RaA+4iV7DeGvDw4=;
 b=Nw10KQ80VxJBr4MlVOE6duEeZyY+x4JMVjzWVAQg/KNZIz1ZMc+vk5USECoQJY5RM2jCip2S1ojqTDX/Vsnli/tIxhsXceMM28JFHdQD3XmXYMkRTfMOl0MAuf5emRcEXw7wNtVwrlNjlou8UHMuB7vIcWRRwJEo4VTf0ebifgY=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by DM4PR10MB6719.namprd10.prod.outlook.com (2603:10b6:8:111::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.32; Thu, 27 Jun
 2024 13:33:49 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb%3]) with mapi id 15.20.7698.025; Thu, 27 Jun 2024
 13:33:49 +0000
Message-ID: <fb45ca82-6602-4b9f-a403-b1df92413f1b@oracle.com>
Date: Thu, 27 Jun 2024 08:33:46 -0500
User-Agent: Mozilla Thunderbird
To: lei lu <llfamsec@gmail.com>
References: <20240528183040.17068-1-llfamsec@gmail.com>
 <4f617ca0-218c-443b-8293-07877422825f@oracle.com>
 <CAEBF3_ZmMLbijYs=5SSMnyd2X3nzV0TJ_kMF_Kghvu6rDf+UMA@mail.gmail.com>
Content-Language: en-US
In-Reply-To: <CAEBF3_ZmMLbijYs=5SSMnyd2X3nzV0TJ_kMF_Kghvu6rDf+UMA@mail.gmail.com>
X-ClientProxiedBy: CH3P221CA0022.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:610:1e7::12) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|DM4PR10MB6719:EE_
X-MS-Office365-Filtering-Correlation-Id: fed81cfc-8c31-4aaf-8125-08dc96adc6d5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aUh0ZlZ5ZWIxdFlwSjZWMWNJN20yZklOUmlEOEo0M3ptLzFvOVRkbTYwVzNx?=
 =?utf-8?B?ME5GenJRRlRxdk1OL3Y0N2NpUVh1ZGhqelJNa3d4RjM3R01YaUsxYS9Ednlw?=
 =?utf-8?B?VWRmYnNCOENKMFVsMkF0NFFhN01wMWdYeDNNckoybE0xaDZQSXliaHllT1Mx?=
 =?utf-8?B?VS9WaXBUU2xtT09qR2dzUkQyMUZBMDR4Y0V3WVpaMk1xT3JtSVd4M1BWYnRU?=
 =?utf-8?B?NE5yNnRVWXhPcTJieUNEdy9kQzdJS0g0U21JaVVuK0Ftc3J3ZFJYYmJQWHJF?=
 =?utf-8?B?TFZtZ3hmS2VGSHhzejh6NVRhSVoxOGNURi9kZG5uMWZhVjRmSkt4eGl2UE5W?=
 =?utf-8?B?UWl5KzJDVXlUdFRPamVjSkxoM3dLeWZWanN4VTh5cGR5dzc3c0RoS21qamlv?=
 =?utf-8?B?M0NNbVE2dUpFRGJjQm1TTytzdWNGVjhIaHFzVTNEbGRUWkJHWkxra0NROXF4?=
 =?utf-8?B?VDBsSVlrTWt1S1JoWFVPazRZM0N4NklOSnZCQjF6ZDBqa2hBQW5CdlBnMkw4?=
 =?utf-8?B?NWNtVGpZMmZsdEM5dFB3ekpjQjdBK3F3TVl1VVdOWjA3eHQyM1h4RlUwYno2?=
 =?utf-8?B?dWE3TnBrVjY3TDJLTnlHUkV3c1lvcWxLU1lYaEtpdWVtNWNVdUdYTTNPM2ZH?=
 =?utf-8?B?MDU4dXZQcDEvQ1JmU2JsNlh6d2lTN2FGc3JXOG5BRVFIeXY4dXNzSzluZVhG?=
 =?utf-8?B?N3IrT1ZwcU12VmtXK3RtQjNLNEJiR1dsZGdjVUtSd05KMk53cjZMQjlsNmhk?=
 =?utf-8?B?L3BqS1d2VE5iU3B4N0gxbjhwdzZiRkxlZ3l6OGpZeFR4VWVrK054bGxUMjNP?=
 =?utf-8?B?U0Y5N1dZZFhXaEhLOHBBZE5Xamo0YUpyZGRqUGdxTzErS2tkdVd2UEdsbkw2?=
 =?utf-8?B?N3dNU1BJa21uSUJtT1lDbnBYNFBvN2EwSzNkMjRTNUdMaVdBZ2lHdjJXeElO?=
 =?utf-8?B?ZXVTbTNYeWYyRFFkSW5mTTNJcjZiSjZ5Q0Y2WDd4M2NGOFNLOVgwQmFlUkNP?=
 =?utf-8?B?bTc1Tkhab05PYjV4QzMxbklqMkFUdksySlVJSjV2ZFNMTjFpRjIyaVV3cnpL?=
 =?utf-8?B?TnFzZlBQUXZod0k5ZEZzZnFTOG4xSzVQNGZCYmdhSVlsRmF1WlBRcllKYzhS?=
 =?utf-8?B?dFRwUWZFamtCbzdsZmRTQnMrQUF6cHI4NGFmNEcrUFZIaDdyZmN4bGs5Yk85?=
 =?utf-8?B?SnVLYlJhWE1xUTk3VXBnOHBiYkNUNk5DSk5iTjM4NG91MGNKWERVZ2V6aFJZ?=
 =?utf-8?B?WDhmSndMMWI5K3dWZ1FkWTZxdnRzUGFpcXNkWCtWbjM0Wkg5V1ZSZFkrQ1Z3?=
 =?utf-8?B?dGdCWmZiTDh1UWFIekpYeVRGL1RrLy9FMFJ0UWZQTkM2K3hrcXhHUlIrLzVp?=
 =?utf-8?B?RjlpdHRkQzlEcmo0YkRCM1Q0VkpVQUJGNzZ6cldCcUNQWStmRHRNSDVpS0Zx?=
 =?utf-8?B?bzZyM0NQMlAvZzl3eDU1aktvb2RhNWxWZ3JHN3ZCSjdLaTJscTNyMlJlRDFN?=
 =?utf-8?B?b0MxcS9JR3ZBd3NoeHpSQjRwT3dlL2tCOVVQWjZQSkxhdHF0UkpNcTRPTEFU?=
 =?utf-8?B?MFU1b1QzUlhhQ1RRb3l6OWZENFhOMGQySENsbWRPektFeU9rU09Gdk9mdFNI?=
 =?utf-8?B?U2U2VzBlcVZ0MFUyRWd0c1hzUVJSRUtDVy83VkdySEI5RndrWEY4TTVYMDln?=
 =?utf-8?B?MGd0R3pSRUFFcGVTb2d1a2hIankvSkRmNVN3blNhejZWM0FjSVJzYXpxbjlN?=
 =?utf-8?B?ZHdjUTh0anNwaHk5bDVVYUlnM3BYektmRTJieURDaXdhMDExazgvREM0bTdD?=
 =?utf-8?B?bEJacmoyS1F1ckpRTG5nQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZW1kbC9nRFpXVU9iQ0FranBHbUZ5Y2RmYmdRRlVRZFkzdDlBS0RiN2dUSXlW?=
 =?utf-8?B?WnpRTXRSbGRGUVBDTTlhVG0vNjZSekc1S1dFbnVOdUNnQzNHaU0xZXhkYlRL?=
 =?utf-8?B?bk04czc0Q3RhVm9DblN5WVEycDZUcUdIQkFqUmNIOHV5MmFmWHJoTkoxbXJO?=
 =?utf-8?B?anUrb3RMNzRsMHZsLzBMcTVRK2ZNVVdkcFM1a3hmYUY3cGwwdjNBSDBHWExK?=
 =?utf-8?B?S1lVUldhZEdpalNzbzVwcTRSZVZIWVBGV3hEeC96TkRwU3FmUmpZcXo0UlJD?=
 =?utf-8?B?SEM4SW5xTWZvNEpQNENwK000dHB6aWc5YWI2b0V0eGJBVzZhNVdsa3JON2Vy?=
 =?utf-8?B?QzRSRkMzd3IvNzBWYVpIeW5kbW94YjVKYUdVWE1VT2RlZGFwYkNvMldvWEtu?=
 =?utf-8?B?SEdKKzh5SGw4NXAwRVdzUkEzZzdkOEs2V01ORU83ZW1rRm5wZENCZGo0OWZo?=
 =?utf-8?B?aE5tY2FLdXFNOWxpakFrRHhPMGpHL3hhTW55VDlva1V0ZXdFZStDcjN4VHlE?=
 =?utf-8?B?aEhNMzd2RGtQa1hhVHY3U2VPM3E3NE1iVGN1bGc5cjhpY2dNMFJJMVpVRFBN?=
 =?utf-8?B?aDErQ0x2SUlQQXRmY2luOWlPN3RPVTYyazgyS09SVWtxMDVsZ0FiVVZsSjV3?=
 =?utf-8?B?d2F2M3EwUVVjbHdDMldseGhkL1JoMzRwS0NRZWZuMWVuRUhiVXJuSDlYUTN4?=
 =?utf-8?B?dHloOWwraTZSM2xEelZmNHpXSWw4NzA3SnQ0ZVREam5yMENnbGcrd2RUNTk5?=
 =?utf-8?B?L3RYcUh1MHBWYnNjRk1sL3gvVlR6akdHaUFrZHcxN2lsL0ZHdE9EZ2xDcUsr?=
 =?utf-8?B?ZjBqdGFKVUg0b0taMmdjQVhncUplcnZQUlJ1Q2duZE5ITG01Uk8vWXBENDR0?=
 =?utf-8?B?QkFHMDU4Y0NtT3BwWDVTQ3FxK2Zhc2h2Q1E0S2FTUURSL2VwUC82ZjdsQStU?=
 =?utf-8?B?NEhYK25FVmdEdGhKTUFrbGRQTU1YZmZpanNMUWp2czhtbm9DWWhlL3lKVDVS?=
 =?utf-8?B?em5tRTJoSkpRYkFxdlpEZEJDY2VsU0s4UFdkaDUwUnozNHdTdFJwTkorRzhK?=
 =?utf-8?B?U3VKc1phN3l6RDVBdiswbHJvZnBTK25uSmZPUWlzU2txNS9uY2pzT0NqQWV5?=
 =?utf-8?B?Z3JkYTU5ZFVjcjZteTdxRXJjcFl1eDZxUmhXY1NMdjZTckZqeGduYWdWZ3B1?=
 =?utf-8?B?VGpwbW1lT3MzNGlGNGFRR1hQMGNETnIwclNUQVB5MFcvcGZFeVB0OWRPbVp1?=
 =?utf-8?B?NUhranQ5WStNRWg0TWIzVmY4SzIzSzFuaDVEZmZTUVdORXZtT01tTnJzQ1RZ?=
 =?utf-8?B?VmxBZkJWNHF5YVl1eEwvVFFEZXc0SnV6NmJveG1oVWluV2h4bGErSG9EQlJV?=
 =?utf-8?B?TXBmQ1FqK0hRNWFOVzhHWHBTYlh3bStyVmZMckhjZlJ4em1uQStxZWZqeU1B?=
 =?utf-8?B?WmdqSEtVMEVRUGhjUEgxNUZNYmdCS3pXV0l1RVFTZ1FJUU9iWTFGZk5JdXNP?=
 =?utf-8?B?R3dJb20xWmtsMkFTdDE4alU0V1J2ZmJTVENtN1UwbkwzZk5hRThSRG04Sk5E?=
 =?utf-8?B?VUJ3cWowVEhpNkV3NWtUejRYendJYkxCSjhJcGJtN3J3Z1hqdVgzdjQxY3pW?=
 =?utf-8?B?YmRuZVZTa1krMHpZNGxaR3VBd2JNQVBNY3VpU0tOY0lKdHBIcVl5MjRHaHQy?=
 =?utf-8?B?YjBveXR6aUNScEJMdTdqVnYwK3hCS1hYZHZmazF2RXhNMTJtNmM4U2ZsUmFI?=
 =?utf-8?B?VFluakw5dXUzVWR3alIxQ3Nhb04wOTlqdmRQK1dkQWdMTVl1VWxRanNqWk9h?=
 =?utf-8?B?akJncFFFbHVhcWhsUVQ2U2JtM1lzWVd3VTV2Y3p5SXZuVTlqQWJCNW5LZlZq?=
 =?utf-8?B?SGc5ZUU3aEJtdXl4MXZNN01HRjdveXJzMHFyVWtpU1NmS3pHM09WeWRYWFJZ?=
 =?utf-8?B?Ry9zMkVMRUt0MnBmV0U1bCtKeXZpcGRmMzhFb1ZEWXRwYW9qRjJKTndXRk5s?=
 =?utf-8?B?TFRNMWRLdnVvUnRyN2VCdFc3ZnprOHZlZlF3Y3g3VUV0b2RnSFFkZmIxU1Ir?=
 =?utf-8?B?M3lEd0dJdDA4Vjlya0V4ckJOcDVpZ2VVNzBBT3Y2ZUJDQVBTcTdCZkxESDdw?=
 =?utf-8?B?SUZIUmlaMlVGVU8xTUdmaVg3ZUEySGRHeUtVOTNMWjBkSmhialJPR2owYkky?=
 =?utf-8?B?U1E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: WHIhw9MERO8FexYQQgbSj8BkLeoiR3h8X0ToNw4xXR62Hqg9qhuhi/D8AfFpCtXA8qHwnnYVhVTTnPBsSLLWTLzRGHSzZsjoLcg/VTxakdeziroDCaFYgFsSIyv28Tzf9iaCWtnuml2WMw8HcUMZSmWVrYPIseUV7AQM/Nv9YZ3FMiqVOw1jnvBnC9X7Hq/9m1tLM4XY3HuZVX7vRTDSDGWIRPB96obI4vj0xn6/8LaqiHRS9BFHZwf9r7Hg+kJmoT2H/rsM8AXhoZ/MO3rOZPQ5nz3dStTQTeFRFp/Om2jWgbDF52Hmae+TNwU0zyTJppvaJDVgbMF/0zb3WzKT5aBLM4nxH5Iq7d/SmxVwC56LZ/lF72TYBDCOA/LdX5OUW52XWRRBBotIhmushHO0HnyT9pe/s8bIV48Iqy7PmIHSRcw/Pbo1CDdVvBOHbtQhhnX71UHmvqBmZ6hV1HjGab/J63qK3bh7sHMH/fFGybiJh6uGTC7MSC7VPQ8WGL8ALm5zTXvaZeS2y1kXxH3LEOv30qXIhzpnKB95dLzNU78OKP8L56oYaDZoQcpBW9OwQzrFDfBkfkFh8mc06mGjHRkOLxPaBJ7JqGsJeL+WR5w=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fed81cfc-8c31-4aaf-8125-08dc96adc6d5
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2024 13:33:49.0312 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FlfiVeFX2bDhHt0g/k3clpK604Jrb/iqIdkdHGH7+RIWfG6xh6bLJ4cgVXZlTpCk9m7NS1UdNrD+dQ5pK7S5BybPhkdVz1J4ldvOewYzgjc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR10MB6719
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-27_08,2024-06-27_03,2024-05-17_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 malwarescore=0 adultscore=0
 phishscore=0 bulkscore=0 mlxlogscore=999 suspectscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2406180000
 definitions=main-2406270102
X-Proofpoint-ORIG-GUID: tMHG03NClG2plbJq6kUR4xN7o0n4xWIt
X-Proofpoint-GUID: tMHG03NClG2plbJq6kUR4xN7o0n4xWIt
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 6/26/24 9:52PM, lei lu wrote: > On Thu, Jun 27, 2024 at
    1:49 AM Dave Kleikamp <dave.kleikamp@oracle.com> wrote: >> >> On 5/28/24
    1:30PM, lei lu wrote: >>> Add a check before visiting the members [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
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
                         [205.220.165.32 listed in sa-trusted.bondedsender.org]
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [205.220.165.32 listed in wl.mailspike.net]
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sMpGG-0002RL-NK
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
Cc: jfs-discussion@lists.sourceforge.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gNi8yNi8yNCA5OjUyUE0sIGxlaSBsdSB3cm90ZToKPiBPbiBUaHUsIEp1biAyNywgMjAyNCBh
dCAxOjQ54oCvQU0gRGF2ZSBLbGVpa2FtcCA8ZGF2ZS5rbGVpa2FtcEBvcmFjbGUuY29tPiB3cm90
ZToKPj4KPj4gT24gNS8yOC8yNCAxOjMwUE0sIGxlaSBsdSB3cm90ZToKPj4+IEFkZCBhIGNoZWNr
IGJlZm9yZSB2aXNpdGluZyB0aGUgbWVtYmVycyBvZiBlYSB0bwo+Pj4gbWFrZSBzdXJlIGVhY2gg
ZWEgc3RheXMgd2l0aGluIHRoZSBlYWxpc3QuCj4+Cj4+IFNvcnJ5IGl0J3MgdGFrZW4gbWUgc28g
bG9uZyB0byByZXNwb25kLgo+Pgo+PiBJIGRvIHN0aWxsIGhhdmUgb25lIHF1ZXN0aW9uLCBiZWxv
dy4KPiAKPiBUaGFua3MgZm9yIHlvdXIgdGltZS4KPiAKPj4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5
OiBsZWkgbHUgPGxsZmFtc2VjQGdtYWlsLmNvbT4KPj4+IC0tLQo+Pj4gICAgZnMvamZzL3hhdHRy
LmMgfCAyMyArKysrKysrKysrKysrKysrKysrLS0tLQo+Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDE5
IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2ZzL2pm
cy94YXR0ci5jIGIvZnMvamZzL3hhdHRyLmMKPj4+IGluZGV4IDBmYjdhZmFjMjk4ZS4uYWI5Yjg1
Y2U3ZmY3IDEwMDY0NAo+Pj4gLS0tIGEvZnMvamZzL3hhdHRyLmMKPj4+ICsrKyBiL2ZzL2pmcy94
YXR0ci5jCj4+PiBAQCAtNzk1LDcgKzc5NSw3IEBAIHNzaXplX3QgX19qZnNfZ2V0eGF0dHIoc3Ry
dWN0IGlub2RlICppbm9kZSwgY29uc3QgY2hhciAqbmFtZSwgdm9pZCAqZGF0YSwKPj4+ICAgICAg
ICAgICAgICAgICAgICAgICBzaXplX3QgYnVmX3NpemUpCj4+PiAgICB7Cj4+PiAgICAgICAgc3Ry
dWN0IGpmc19lYV9saXN0ICplYWxpc3Q7Cj4+PiAtICAgICBzdHJ1Y3QgamZzX2VhICplYTsKPj4+
ICsgICAgIHN0cnVjdCBqZnNfZWEgKmVhLCAqZWFsaXN0X2VuZDsKPj4+ICAgICAgICBzdHJ1Y3Qg
ZWFfYnVmZmVyIGVhX2J1ZjsKPj4+ICAgICAgICBpbnQgeGF0dHJfc2l6ZTsKPj4+ICAgICAgICBz
c2l6ZV90IHNpemU7Cj4+PiBAQCAtODE1LDkgKzgxNSwxNiBAQCBzc2l6ZV90IF9famZzX2dldHhh
dHRyKHN0cnVjdCBpbm9kZSAqaW5vZGUsIGNvbnN0IGNoYXIgKm5hbWUsIHZvaWQgKmRhdGEsCj4+
PiAgICAgICAgICAgICAgICBnb3RvIG5vdF9mb3VuZDsKPj4+Cj4+PiAgICAgICAgZWFsaXN0ID0g
KHN0cnVjdCBqZnNfZWFfbGlzdCAqKSBlYV9idWYueGF0dHI7Cj4+PiArICAgICBlYWxpc3RfZW5k
ID0gRU5EX0VBTElTVChlYWxpc3QpOwo+Pj4KPj4+ICAgICAgICAvKiBGaW5kIHRoZSBuYW1lZCBh
dHRyaWJ1dGUgKi8KPj4+IC0gICAgIGZvciAoZWEgPSBGSVJTVF9FQShlYWxpc3QpOyBlYSA8IEVO
RF9FQUxJU1QoZWFsaXN0KTsgZWEgPSBORVhUX0VBKGVhKSkKPj4+ICsgICAgIGZvciAoZWEgPSBG
SVJTVF9FQShlYWxpc3QpOyBlYSA8IGVhbGlzdF9lbmQ7IGVhID0gTkVYVF9FQShlYSkpIHsKPj4+
ICsgICAgICAgICAgICAgaWYgKHVubGlrZWx5KGVhICsgMSA+IGVhbGlzdF9lbmQpIHx8Cj4+Cj4+
IEkgc3RpbGwgZG9uJ3QgdW5kZXJzdGFuZCB0aGUgZmlyc3QgcGFydCBvZiB0aGlzIHRlc3QuIFRo
ZSBmb3IgbG9vcCB3aWxsCj4+IGVuc3VyZSB0aGF0IGVhIDwgZWFsaXN0X2VuZC4gSXQgc2VlbXMg
b25seSB0aGUgYmVsb3cgcGFydCBpcyBuZWVkZWQuCj4gCj4gVGhlIGxvb3AganVzdCBzaW1wbHkg
Y2hlY2tzIHRoYXQgdGhlIHN0YXJ0IG9mZnNldCBvZiBlYSBpcyB3aXRoaW4gdGhlIHJhbmdlLgo+
IFNvIHdlIG5lZWQgdG8gZW5zdXJlIHRoZSBmb2xsb3dpbmcgdHdvIHN0dWZmczoKPiAgICAgICAg
ICAxKSAiZWEgKyAxID4gZWFsaXN0X2VuZCI6IE1ha2Ugc3VyZSBmaXhlZCBtZW1iZXJzIGlzIHdp
dGhpbiB0aGUKPiAgICAgICAgICAgICAgIHJhbmdlIGJlZm9yZSBhY2Nlc3NpbmcgKE5FWFRfRUEg
bWFjcm8gd2lsbCBhY2Nlc3MgZWEtPm5hbWVsZW4KPiAgICAgICAgICAgICAgIGFuZCBlYS0+dmFs
dWVsZW4pCgpJIHNlZS4gSSBoYWRuJ3QgY29uc2lkZXJlZCB0aGF0IGNhbGN1bGF0aW5nIE5FWFRf
RUEoKSBjb3VsZCBiZSB1bnNhZmUuCgpUaGFua3MuIEknbGwgYXBwbHkgeW91ciBwYXRjaC4KCj4g
ICAgICAgICAgMikgIk5FWFRfRUEoZWEpID4gZWFsaXN0X2VuZCIgTWFrZSBzdXJlIHZhcmlhYmxl
IG1lbWJlcnMgKGVhLT5uYW1lKQo+ICAgICAgICAgICAgICAgaXMgd2l0aGluIHRoZSByYW5nZSBi
ZWZvcmUgYWNjZXNzaW5nCj4gCj4gVGhhbmtzLAo+IExMCj4gCj4+Cj4+PiArICAgICAgICAgICAg
ICAgICB1bmxpa2VseShORVhUX0VBKGVhKSA+IGVhbGlzdF9lbmQpKSB7Cj4+PiArICAgICAgICAg
ICAgICAgICAgICAgc2l6ZSA9IC1FVUNMRUFOOwo+Pj4gKyAgICAgICAgICAgICAgICAgICAgIGdv
dG8gcmVsZWFzZTsKPj4+ICsgICAgICAgICAgICAgfQo+Pj4gKwo+Pj4gICAgICAgICAgICAgICAg
aWYgKChuYW1lbGVuID09IGVhLT5uYW1lbGVuKSAmJgo+Pj4gICAgICAgICAgICAgICAgICAgIG1l
bWNtcChuYW1lLCBlYS0+bmFtZSwgbmFtZWxlbikgPT0gMCkgewo+Pj4gICAgICAgICAgICAgICAg
ICAgICAgICAvKiBGb3VuZCBpdCAqLwo+Pj4gQEAgLTgzMiw2ICs4MzksNyBAQCBzc2l6ZV90IF9f
amZzX2dldHhhdHRyKHN0cnVjdCBpbm9kZSAqaW5vZGUsIGNvbnN0IGNoYXIgKm5hbWUsIHZvaWQg
KmRhdGEsCj4+PiAgICAgICAgICAgICAgICAgICAgICAgIG1lbWNweShkYXRhLCB2YWx1ZSwgc2l6
ZSk7Cj4+PiAgICAgICAgICAgICAgICAgICAgICAgIGdvdG8gcmVsZWFzZTsKPj4+ICAgICAgICAg
ICAgICAgIH0KPj4+ICsgICAgIH0KPj4+ICAgICAgICAgIG5vdF9mb3VuZDoKPj4+ICAgICAgICBz
aXplID0gLUVOT0RBVEE7Cj4+PiAgICAgICAgICByZWxlYXNlOgo+Pj4gQEAgLTg1OSw3ICs4Njcs
NyBAQCBzc2l6ZV90IGpmc19saXN0eGF0dHIoc3RydWN0IGRlbnRyeSAqIGRlbnRyeSwgY2hhciAq
ZGF0YSwgc2l6ZV90IGJ1Zl9zaXplKQo+Pj4gICAgICAgIHNzaXplX3Qgc2l6ZSA9IDA7Cj4+PiAg
ICAgICAgaW50IHhhdHRyX3NpemU7Cj4+PiAgICAgICAgc3RydWN0IGpmc19lYV9saXN0ICplYWxp
c3Q7Cj4+PiAtICAgICBzdHJ1Y3QgamZzX2VhICplYTsKPj4+ICsgICAgIHN0cnVjdCBqZnNfZWEg
KmVhLCAqZWFsaXN0X2VuZDsKPj4+ICAgICAgICBzdHJ1Y3QgZWFfYnVmZmVyIGVhX2J1ZjsKPj4+
Cj4+PiAgICAgICAgZG93bl9yZWFkKCZKRlNfSVAoaW5vZGUpLT54YXR0cl9zZW0pOwo+Pj4gQEAg
LTg3NCw5ICs4ODIsMTYgQEAgc3NpemVfdCBqZnNfbGlzdHhhdHRyKHN0cnVjdCBkZW50cnkgKiBk
ZW50cnksIGNoYXIgKmRhdGEsIHNpemVfdCBidWZfc2l6ZSkKPj4+ICAgICAgICAgICAgICAgIGdv
dG8gcmVsZWFzZTsKPj4+Cj4+PiAgICAgICAgZWFsaXN0ID0gKHN0cnVjdCBqZnNfZWFfbGlzdCAq
KSBlYV9idWYueGF0dHI7Cj4+PiArICAgICBlYWxpc3RfZW5kID0gRU5EX0VBTElTVChlYWxpc3Qp
Owo+Pj4KPj4+ICAgICAgICAvKiBjb21wdXRlIHJlcXVpcmVkIHNpemUgb2YgbGlzdCAqLwo+Pj4g
LSAgICAgZm9yIChlYSA9IEZJUlNUX0VBKGVhbGlzdCk7IGVhIDwgRU5EX0VBTElTVChlYWxpc3Qp
OyBlYSA9IE5FWFRfRUEoZWEpKSB7Cj4+PiArICAgICBmb3IgKGVhID0gRklSU1RfRUEoZWFsaXN0
KTsgZWEgPCBlYWxpc3RfZW5kOyBlYSA9IE5FWFRfRUEoZWEpKSB7Cj4+PiArICAgICAgICAgICAg
IGlmICh1bmxpa2VseShlYSArIDEgPiBlYWxpc3RfZW5kKSB8fAo+Pj4gKyAgICAgICAgICAgICAg
ICAgdW5saWtlbHkoTkVYVF9FQShlYSkgPiBlYWxpc3RfZW5kKSkgewo+Pj4gKyAgICAgICAgICAg
ICAgICAgICAgIHNpemUgPSAtRVVDTEVBTjsKPj4+ICsgICAgICAgICAgICAgICAgICAgICBnb3Rv
IHJlbGVhc2U7Cj4+PiArICAgICAgICAgICAgIH0KPj4+ICsKPj4+ICAgICAgICAgICAgICAgIGlm
IChjYW5fbGlzdChlYSkpCj4+PiAgICAgICAgICAgICAgICAgICAgICAgIHNpemUgKz0gbmFtZV9z
aXplKGVhKSArIDE7Cj4+PiAgICAgICAgfQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkpmcy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdApKZnMtZGlzY3Vz
c2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQv
bGlzdHMvbGlzdGluZm8vamZzLWRpc2N1c3Npb24K
