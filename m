Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3B59B6F37
	for <lists+jfs-discussion@lfdr.de>; Wed, 30 Oct 2024 22:40:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1t6GQA-0001e1-Mf;
	Wed, 30 Oct 2024 21:40:06 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1t6GQ7-0001di-7v
 for jfs-discussion@lists.sourceforge.net;
 Wed, 30 Oct 2024 21:40:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Cc:To:From:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IE4CmFS1GP6zHrYPq91cMGoSMnaaf7V3ffZ3Sqrh6lE=; b=nA7J1RJD85oNj4nT3EKXYy4DRy
 cLSCqmv2cb5xU+ajqcEwSQvXObYVGECe/4RvGz5B42mLft9UEDad3vkyIxXXfZvXbFMo293ZQPR2k
 0RWJzvvkSh+NF+gNL8brk6rhfbIYO6kGiALHQcC2g+mZbJomssvk3WVF7pQ3YpdrjT30=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Cc:To:From:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IE4CmFS1GP6zHrYPq91cMGoSMnaaf7V3ffZ3Sqrh6lE=; b=ZFp0VtcH2wLXcqHZHu+te4I8tQ
 hoqeedP2X5q1xwMAfsBv3f91gGkIGtif8FdlVvAwTe9zFworPeCjZX0dfUXJ11quTrywtsSqIndZn
 uy0Q3Cb3ijEfDueYUhreWfitFtdWqCqpGYtfEXPXNfymXwb7wgdA9ae1wYdMVj9grFJg=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t6GQ5-00067V-8L for jfs-discussion@lists.sourceforge.net;
 Wed, 30 Oct 2024 21:40:03 +0000
Received: from pps.filterd (m0333520.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49UJBXKY005140;
 Wed, 30 Oct 2024 21:39:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2023-11-20; bh=IE4CmFS1GP6zHrYPq91cMGoSMnaaf7V3ffZ3Sqrh6lE=; b=
 e9unPAthA/ordsjAcpxrbpY8sIzZAuc4J3TWVs1OEJfTh01NiH7oZU2E7hf/IFHQ
 8VTcvQoQQKrW4WmdjPs0Z9Aq3vwnTCIvNFiCAKpx4eiroR3yh8JmzG49ycNA0F+h
 CNAygIAKMyRPuwoSFeFo8ycSWp+kclS76BKa15lWN+9y1/vce+1AHr8sL9lkzRSr
 4pLFDlHgDKvC1PVxXCrFonU69Mv9OUAiA8HHE1F0GrArNBZuv3O+KlDvG6YZ/keW
 vAvsOEuueLOEUO0ZMj4ofawW2yn7LOEusV/HBvdZLezqfQiH3bWDBvdXt3OUyuep
 EzqdTXZYkhLKiVNKgcDdIA==
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 42grgmh711-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 30 Oct 2024 21:39:49 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 49UKTl1d008838; Wed, 30 Oct 2024 21:39:49 GMT
Received: from nam10-bn7-obe.outbound.protection.outlook.com
 (mail-bn7nam10lp2043.outbound.protection.outlook.com [104.47.70.43])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 42hnebpepv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 30 Oct 2024 21:39:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uMZRur1pQRaB7voK7q1CJXBsoYoI82dOhJpXashSf+T+A7DU3VMxFZJ7eNHH45RUc+o7QmH4fWtS0brjz1sPSLaoa53c0LQmfOXqoHQys9EzCjBZqOkEJjjrt+MfWFN8E22rnkbpnD2YTvhjDxHa/mBILxldreJHq/rqGbtLSVPHnoPPtJT9rMi5ZEcdjBh08exNRVbGYSB+p4dJCnKA81mtgzikQlFnJnt97NSfXiCIdZK0QfgXEB/ggEoy47GCP+8tBkzGEpHfo9+MpsC18dhsKlib8n716G+ESgeay6WwmvXIXKoLZUKBWSQq49n41YsAZKgnoTc7WD2DMN2n7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IE4CmFS1GP6zHrYPq91cMGoSMnaaf7V3ffZ3Sqrh6lE=;
 b=xALSB9XVMu5eWvcvfr1Uy4cK4FoXCTt9HFzkkDH/7k9SS6DNaU+fB9YwflUUPUCjuHiZUlEaul6CxoO3wVptTrFuAKWmQ/XN81vUSw7yj+HnhBOQMwJPNeEgTAwvFu2rUT486kfleV4q7gkAOZs3Ph3V+ZvZv8ue8+CIj7F0crM5f+DtsHsoc/Tvbwbdc+k1qF7ImoSexrme9+VU6/aZJVrLz/9ZykiXjlZ1oQc4lQiYbW33z2tvnIPCJTy6vI5duOZ0/FtTaS2TEy5HrApv2ieqGFYkXpauFlDTtKkGZ5x1h9oF0/jV5svTjGLqIyheXXwvmillDiVg3poMshV6mQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IE4CmFS1GP6zHrYPq91cMGoSMnaaf7V3ffZ3Sqrh6lE=;
 b=i6ROnMiwHMdUPZP4pHeAT8G9YKT0WYIX+gWDgHZ7kZpGOkfzVXcIqXrPbYfTGc0iU+9iBw6R3xDaVqlDlOd1MNc+IVGotI0XH0siMMa6uPvxo84QiQxIbToQu1tgzhy5jVjIG8D1nsPmEB7XPA5k9c38fRL5vhrUAjnUNW/J7us=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by IA3PR10MB8186.namprd10.prod.outlook.com (2603:10b6:208:511::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.32; Wed, 30 Oct
 2024 21:39:42 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb%5]) with mapi id 15.20.8114.015; Wed, 30 Oct 2024
 21:39:42 +0000
Message-ID: <7ad9c139-6627-4401-a7d6-0e488f39c5ad@oracle.com>
Date: Wed, 30 Oct 2024 16:39:40 -0500
User-Agent: Mozilla Thunderbird
To: Ghanshyam Agrawal <ghanshyam1898@gmail.com>, osmtendev@gmail.com,
 ghandatmanas@gmail.com, eadavis@qq.com
References: <20241010134351.1884580-1-ghanshyam1898@gmail.com>
 <fa5dd074-0045-4f37-894f-861081f4cfdd@oracle.com>
Content-Language: en-US
In-Reply-To: <fa5dd074-0045-4f37-894f-861081f4cfdd@oracle.com>
X-ClientProxiedBy: CH0PR03CA0289.namprd03.prod.outlook.com
 (2603:10b6:610:e6::24) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|IA3PR10MB8186:EE_
X-MS-Office365-Filtering-Correlation-Id: a1a1ef37-a7ab-4fd5-153f-08dcf92b5d03
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VThIUzgwaXlaTUd5Ui9ZK3hIRHlxVU9OUGUyYWJHRjh6UXczRUVCbXRmSXZ4?=
 =?utf-8?B?QjRhVWk2T2tDZlV4WDlBMWk5QjZqOWFwZ3YxS1JCWUhYMU51bGZIaStIOHVv?=
 =?utf-8?B?U3R0MkRMWitWa3ZiWGhIWWxMOG5aY2JDRlFVSkd2OFVYMHpNN0RVczdXNjEx?=
 =?utf-8?B?NVdrTGNwUWhqZStpQ1dsUUtSYXg4dDFaUUVWR21mNFRwZnJ5U0dibkxyRzla?=
 =?utf-8?B?cU1GMEw1VWJjQlA1SWFONi8wblNTcitBVWQwWFBGZnN4UmVvZER3NjdwZVhI?=
 =?utf-8?B?c1orMlphSmxLUHoxNmZ0dkNab1g3ZkdneldrUFBhSGZoR0NuaitVL0JKUm5O?=
 =?utf-8?B?NVRaM1BrUDZyNVdSQnJoL2wzRStKYnhBbUkxT05YY0xqQ3V0WUZYZU85cXhG?=
 =?utf-8?B?L1MrdVF1NjJhc2cxb0FSK08wVmh4R2RYR1BZTVZCR25FN3IyRDh5Mng5Tyt0?=
 =?utf-8?B?RGtqYmFRbEMxWVpnN3FUOGxmd0kzS204S0VSdERWczhXSjNnYTBhM1BzTjdC?=
 =?utf-8?B?WEFCaDdkUWJjU2pqUjZDUmpmRnBydHBzcVlKNm1jMXVGdDlJY3Q3cWx6MW1C?=
 =?utf-8?B?ZXYwNGN1cWozRlVFSlJhYngrazh2ZHhvbzRVa2JqYWs3MGh3em5ieFFrUGsy?=
 =?utf-8?B?TU12SVpsR0NqYkxlQ1JqdEU1TklHM0JkNk5EbHFxL3g1UVM5RFgxV1pwYzN0?=
 =?utf-8?B?aHJLZ3FnRGVwbHhoY3ZqNVRQVGtSM1pSUEZ0WGk2dmZOaEJ0RjZ5aU9qM3FT?=
 =?utf-8?B?R0p1Tmw2ZVpOTkNiNldWZ3pxQU1xVXNBcjVHTk1UbDNSN2lJd3g1Y0M5YWNO?=
 =?utf-8?B?TU1PRzVsb2sweWlTL29Xc3dFeDNhR2c0UWdHWHE4Rm9qVzMwYzdpMHM4TG8x?=
 =?utf-8?B?V1pkandoQm5RajI5QVdvK3ByWnJNRFpSb09WOWwwVmgyRlFrT3l5OERzK1lj?=
 =?utf-8?B?aFNlWVpMSWt6OXQ5K2g1aG5uNTF2SStJTndtRWxGMklNUWxmRCswM2xpWVVy?=
 =?utf-8?B?VjRQMm5TMzdGakdjdFQvb1RrUDFVRGFPS2xwdmVIN0ZjdVdoZllCalJlWmh6?=
 =?utf-8?B?UWtyRjkzUWlPV01nYUZ2Q2RKK2VtVm41YmQwcUJubmd4NWduSUk5NmtTL2Rj?=
 =?utf-8?B?QTlxUGVmMDVCb3BYdjlqKzZsRklRQVJtaHdjUjl3TWtXc3IzNGRaMUh6MGlV?=
 =?utf-8?B?WDdiT3dnR3ZUREhTdmd0NkVCakhqcWg2N3RCNThaVUZzUW1TZS93YnowZVpr?=
 =?utf-8?B?VmtUS1AwdXdYeDJvRnV2K3FUeWFBTFc0dEU1a3AyVEdpUkZ4TGYreC9qVCs5?=
 =?utf-8?B?ZVN0WXRCKzlKU05XMWo0TGhnMm5mOHRSMlMzOEtJMjZtYnBzSnhYQ2c1UG9n?=
 =?utf-8?B?ZGU4R0VPUnBoNnVuYkNlOGszN2R2bmJiYmFyZjFRT2I3WHROU2hzSVdQUUtq?=
 =?utf-8?B?d0hxdTlQbDdLa3cvY3dlTWY1LzBCeWtyT1U5NVlBSTA0N2graWFaNlV0c1VX?=
 =?utf-8?B?N2xBTGU4djBXbXZpbXZ5bnlPdlZUSWU0cVlKWWVDZkQ0SFZtd2p4R2dHd1A3?=
 =?utf-8?B?NjZJUm5oZDRNR1V2U2trSDcxSkx4OWNUZmJMY1dVOVdGeVZWRHdwMGVOaDhB?=
 =?utf-8?B?bWF4RTd6d3p0aS80L1dpclpnRUxUdFdhMitwa0VTalhwMUpYR0Iwd1A5RXA1?=
 =?utf-8?Q?WGu2Pwq1XDvH54zeh2UE?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L2lYZys4blpKMUpib3MveU1jcmVHdkhvNkJJTmlOeUxQWjkwMStZZzlhVmlq?=
 =?utf-8?B?WGRvUFdtaWVBL0VFVDJXT2xDRGo5Z05yRisraGNUV3dXMWQzZE1MSEFwb3lt?=
 =?utf-8?B?d3g0YVUxMi84ZGxJYzlMTmVIRURoOVVESzVLM0ZQcTBidHJ4Q3ZFT2FnZFlV?=
 =?utf-8?B?RUhnUmg5d0NhRm9mbEZlYkU0bGk4MTJvT2tSYXBLN0djbHpaNTIwRm9Cd29V?=
 =?utf-8?B?ZFJ4c0gxRndKVkZVNnNoY0tsOEM1MkM4SUhYMlY3WFprQXdHL05EUVVYSEl6?=
 =?utf-8?B?RkhWM3NKWnZiNkxSZlQwaElGcXBLb0VRN29aSGtkOU42anZWeFNJa2pnZmZG?=
 =?utf-8?B?eUx6USt4NzNCZkdKcTZpUm5kcmlaODEzTHJkR2R1OWFzRFNsOTNncjVJUWQ0?=
 =?utf-8?B?SkVBMXlFQkhNcnBIN1FlYkR2YkdZUlhabENPdWJjbUR1dnVDQThDbXZHWW9p?=
 =?utf-8?B?NC9lWDdnbk1LVis2Z2lrOGlpRnRGbVorOXdMWXAyQmVxV2svNjViL2hoK09B?=
 =?utf-8?B?aGNGS055emF4WCszZThrMW80QVd6c0gwaHpaa2lHY2phV2l1Q2VYUmcyTTdl?=
 =?utf-8?B?MklrMmpya1ZWS3RJMG9HWlFhYmlHODRVNHVBdWE1UmxTRXZDMFYxVFVtRFJm?=
 =?utf-8?B?c2h1bUp3NG8vVXZ5ZHd4a0NXME91MzBDc3htVkw1NlJHOW1iNm9aUkdVVXFU?=
 =?utf-8?B?RGhPbEtvYi9zZ2hYVis3STU2UUdKakRPald0SUliUW83Sk1UT00wdlloRmlY?=
 =?utf-8?B?V3pCdjNkbStuQklEb2hqek92amRzN1lOYXkvOUVLcVJjRk9xZFV0bDBqVk5j?=
 =?utf-8?B?RHR2Lyt0QnFlczdMb2FHTTB3eEU0ODBIOUZ5OU9ZcW1BY1VvOHRRTFkxWlhB?=
 =?utf-8?B?VEFIeW96NjYyRlpFa0NrZUN1MDUvU2s5clR5bk5LaXJuSmUvUHZBUjVwL2th?=
 =?utf-8?B?NDN1SmJkNG9FcmZWMUV5UUFBTmRhZTFBbDhDdUxyTXdRK1ZXS09UTE5CSURZ?=
 =?utf-8?B?WXZrckg0MldjYm9rZ2RpZ2Z0MmNQQ3QycXNiNXM4WlRWM09Jb01aYzJwcE8r?=
 =?utf-8?B?T1dqSzlaWWJ1cEcvNmxZb2JYNGVxbCtSRTIzZWZuRUU4aVhDNFo5VlY4OGcw?=
 =?utf-8?B?bzBWRzVxRFJYMGFsQ3ZvOXZQNjJnSWJxcXRsOGVVcWFJaERCd2VpTEVqTG5Y?=
 =?utf-8?B?cW9ETFJ1V2JyUy9tTSszdmJ5cG5JN2wwb3RHTk1uZExuRmFiUUhGMFhkcWor?=
 =?utf-8?B?T1hXVGJISkUxNyt1SisxYys0YjU0SUh0dHlSaFNBOFhmWGJlNXVHbFVyZ2Uy?=
 =?utf-8?B?TlBHN04raC9qalhIVDlaeUQyTWFoYlhkRGU4dEoxSGFWSkNZQnZsSUJDSGUv?=
 =?utf-8?B?dUdxS2VkSFFtV3ZFQmlYbnBoY0FJOUNUdXNFWngxdC8vL05jeE5XZERRQkpE?=
 =?utf-8?B?OHFQeWFUV251b3FwdFB1S1R2YXRETWNEVHFpeXROUU1EOC9GVHVOaXdzckJm?=
 =?utf-8?B?RGRTMDRpSHErWkZNQkdmMG1CNmpDUU9Kd2FCMk81alY3RXhoY25hbm5CUW9j?=
 =?utf-8?B?WmZQZThLL2JhWmpYd0RSbVUxbElHeHR0WVJvMzUrZktpWUUvK3IzbzlZck4x?=
 =?utf-8?B?WERiMDIwVGtGZXhRblRjNk03ck14d1hQS1puUFF0dW16TXRoMUNHbDg3eGZT?=
 =?utf-8?B?ako0b1VnQWF5U2xCSWlKdzRNUFo3OHBaVk5FSjFjM2VnT3BXc0djZERnbktJ?=
 =?utf-8?B?am00YVgrUUdiWCtPZ1M1RTlvcHZsY0F6ckIxQWlzZGhzZldDSEhhdlM5cWNy?=
 =?utf-8?B?dlZDYVNRcW1GRkc4YXRrTkhNclhXNHhFMFp4TkZQalcvK1lHSHI1MG5Hb3pP?=
 =?utf-8?B?OURLOXV5OG0rVmNRdi9wSjFFdkg3SmtaSWdLYzFiQXhPMzFmM1hQckl2eDZ5?=
 =?utf-8?B?ZndiZStDamRxSU1FNVRwVGdiNW9sQlJIZ1YxMkxNRXQ5TUgrVFhqQXBFMmpY?=
 =?utf-8?B?TmRWU1RVWlRtcDZTMDVGNDQ2aTJmRDBDSThmbmdGcmRVb0JtT0QrZmsxd2VM?=
 =?utf-8?B?VjE0T2l3ZEZveVVMNktwZ0I3ZCtmTVVJTTlMaDR6K1ExV0h1UTF1YmRqY3Rz?=
 =?utf-8?B?bmY1NU1PK3lGRll5Z0hPOUgvYmNqR3dmUTlBSkZxaHJ6clZzZC8xTjNtNm1l?=
 =?utf-8?B?NkE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: VISbDjFW6W81uwKFrsmUwMEu7KHS0ydkjVOo1XWUvD2EMumbSyNWDPZhxw12JJ+bxQTrYDPSOyQFUoTqkWoF6A9+5iyHVX50FFP8ZFeDpn3J1OiatKdXSLDPaxNBWhoclwH5PIf4xKARChpTJniRKJS3EMa4QXRALarsmZG32oNPzBSxEv8AEULBn5V/88tkvpw73LiofLDADSNPoIePVzvwlBS+9Mk8FuFOJ8zzg2jo5gIvTiBEkS8dGnFgTfyQYtth89s7tKis+zEMFYnC5MafrigksIUdxPmweaOG2IHjxGP4fAZlJI+RPyM9G/1E++6aeutckSbC2bYanEj8K7zjXBNgHZR9kYRNSPohbgUStsMV8nfBpfuys8NqTuJSSSM7dFsT8qyK+KX1rASRt16HredZ3MaY1ekEt3xt+gc5TVOHpOtZ3X52h0eH4Y8KdBoQqTMItgUYn+HoQezXLBdxEgAb4zboLKR80rDj88AV8dbXSqjudZSnpZRpecvMhDFmt1X3ZGbgQuAbyZryd+gyqeJQ47uykZ2ZmSiNtGASw3p0ywUiyAXWuKdiZTb2F/M2hdpnUubOqfRWoflJrp8ZaSEW+ATbQ3B3IlwRBSQ=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a1a1ef37-a7ab-4fd5-153f-08dcf92b5d03
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Oct 2024 21:39:42.1229 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mU5dNaqVUvHq6jTTqi8CX78WrgOZhcfJLFV+MW1NWA5Xk+fcRJPd6JqQMNwotxhO6cmChAMpzPI2RyWSiZVdvpB0qihyx9Xjmqt/SsGTkNw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR10MB8186
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-30_14,2024-10-30_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 bulkscore=0 spamscore=0
 mlxlogscore=999 malwarescore=0 adultscore=0 phishscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2409260000
 definitions=main-2410300171
X-Proofpoint-GUID: yydoRX0oPaqyls7WjxMNSi0Ep0GD5ihg
X-Proofpoint-ORIG-GUID: yydoRX0oPaqyls7WjxMNSi0Ep0GD5ihg
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/29/24 6:03PM, Dave Kleikamp wrote: > On 10/10/24 8:43AM,
 Ghanshyam Agrawal wrote: >> The value of p->header.freelist can be less than
 zero which >> causes an error in dtInsertEntry. Added a chec [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.220.177.32 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.177.32 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1t6GQ5-00067V-8L
Subject: Re: [Jfs-discussion] [PATCH] jfs: fix array-index-out-of-bounds in
 dtInsertEntry
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
Cc: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 syzbot+5f7f0caf9979e9d09ff8@syzkaller.appspotmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gMTAvMjkvMjQgNjowM1BNLCBEYXZlIEtsZWlrYW1wIHdyb3RlOgo+IE9uIDEwLzEwLzI0IDg6
NDNBTSwgR2hhbnNoeWFtIEFncmF3YWwgd3JvdGU6Cj4+IFRoZSB2YWx1ZSBvZiBwLT5oZWFkZXIu
ZnJlZWxpc3QgY2FuIGJlIGxlc3MgdGhhbiB6ZXJvIHdoaWNoCj4+IGNhdXNlcyBhbiBlcnJvciBp
biBkdEluc2VydEVudHJ5LiBBZGRlZCBhIGNoZWNrIGluIGR0SW5zZXJ0Cj4+IHRvIGFkZHJlc3Mg
aXQuCj4+Cj4+IFJlcG9ydGVkLWJ5OiBzeXpib3QrNWY3ZjBjYWY5OTc5ZTlkMDlmZjhAc3l6a2Fs
bGVyLmFwcHNwb3RtYWlsLmNvbQo+PiBDbG9zZXM6IGh0dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3Qu
Y29tL2J1Zz9leHRpZD01ZjdmMGNhZjk5NzllOWQwOWZmOAo+PiBTaWduZWQtb2ZmLWJ5OiBHaGFu
c2h5YW0gQWdyYXdhbCA8Z2hhbnNoeWFtMTg5OEBnbWFpbC5jb20+Cj4gCj4gTG9va3MgZ29vZC4g
SSdsbCBhcHBseSB0aGlzIG9uZS4KClVuYXBwbHlpbmcgaXQuIFRoaXMgY2F1c2VkIHJlZ3Jlc3Np
b25zIHJ1bm5pbmcgeGZzdGVzdHMuIEknbGwgbmVlZCB0byAKbG9vayBpbnRvIGl0IG1vcmUgY2Fy
ZWZ1bGx5LgoKU2hhZ2d5Cgo+IAo+PiAtLS0KPj4gwqAgZnMvamZzL2pmc19kdHJlZS5jIHwgMiAr
LQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPj4K
Pj4gZGlmZiAtLWdpdCBhL2ZzL2pmcy9qZnNfZHRyZWUuYyBiL2ZzL2pmcy9qZnNfZHRyZWUuYwo+
PiBpbmRleCA1ZDMxMjdjYTY4YTQuLjUxYmIzZTE0NTUxYiAxMDA2NDQKPj4gLS0tIGEvZnMvamZz
L2pmc19kdHJlZS5jCj4+ICsrKyBiL2ZzL2pmcy9qZnNfZHRyZWUuYwo+PiBAQCAtODM0LDcgKzgz
NCw3IEBAIGludCBkdEluc2VydCh0aWRfdCB0aWQsIHN0cnVjdCBpbm9kZSAqaXAsCj4+IMKgwqDC
oMKgwqDCoCAqIHRoZSBmdWxsIHBhZ2UuCj4+IMKgwqDCoMKgwqDCoCAqLwo+PiDCoMKgwqDCoMKg
IERUX0dFVFNFQVJDSChpcCwgYnRzdGFjay0+dG9wLCBibiwgbXAsIHAsIGluZGV4KTsKPj4gLcKg
wqDCoCBpZiAocC0+aGVhZGVyLmZyZWVsaXN0ID09IDApCj4+ICvCoMKgwqAgaWYgKHAtPmhlYWRl
ci5mcmVlbGlzdCA8PSAwKQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FSU5WQUw7Cj4+
IMKgwqDCoMKgwqAgLyoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNzaW9uQGxpc3Rz
LnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0
aW5mby9qZnMtZGlzY3Vzc2lvbgo=
