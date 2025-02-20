Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A865FA3E034
	for <lists+jfs-discussion@lfdr.de>; Thu, 20 Feb 2025 17:16:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tl9Co-0005sm-QS;
	Thu, 20 Feb 2025 16:15:19 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1tl9Cm-0005sc-R3
 for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Feb 2025 16:15:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5vS/ct3byr++Ql5/+KuxAd2n8xS5tUF4XFnxIgUNNGI=; b=EieQBuBioGlOpz81z1gge+Sihv
 ZDtggrMUjOSHo6FgkPge1pr25QguLz3OrgFFFDdrb4Z8fQRTt16pOAtCRjcaMuKUqmbyJwPBgsAtB
 l4tS8XBpSc0CjzoqThNMEdDF0n//ajUUDT6Q/yKPIldqfEHyGvpzirkprDbs/pu50wF4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5vS/ct3byr++Ql5/+KuxAd2n8xS5tUF4XFnxIgUNNGI=; b=faknb+s0DJEyj3kkHD9LeuxKIE
 Fa8lxztm/kM8jPaOB24jEQmup064evAYal653kGFYVWcZtvUOAGZC6fcSHXR2zW8BKrvrwwNLPCL1
 4IGmezDbbS/5aBz8Y88ZaJeOrHjTN/QYz8iwWoGhoImYfwy1wME9aRFZ0WTd0dFR4Akw=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tl9Cm-0002Rr-CN for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Feb 2025 16:15:17 +0000
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51KFMYlI007024;
 Thu, 20 Feb 2025 16:15:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2023-11-20; bh=5vS/ct3byr++Ql5/+KuxAd2n8xS5tUF4XFnxIgUNNGI=; b=
 aG3i1xdoeYOPW0rOTl/LETRPuI09Bn558k9Q18S7BEKZTGkfV0uccJOtZrqAIRP/
 7zvm9EdIPP2LCnM+72gxqC7anWD8/wofexFntRTGVaaudTW/xDPkWNJ9KEau25pg
 /rVhfVHzycoFPOT+CxFnynXRx5Y/s5uwrTaJ8dApo9IDm08fyGM15MGOlV/2Lo99
 zUr81VhX3oX+eq9CzzDFkUCUGMUZauABEXpaG8c4QITcJ6wHXpxEC5KI7HrqiWAi
 jWCdJokot7phIk92bWdSvbQ1rX9BIFdi8PpEGxxJzMqAbBF0lD40zoEvvvHTiL+P
 1HnpEFl/QV9flVqQKUwlZA==
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 44w00n4fn0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 20 Feb 2025 16:15:10 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 51KF2AQG009872; Thu, 20 Feb 2025 16:15:09 GMT
Received: from nam10-bn7-obe.outbound.protection.outlook.com
 (mail-bn7nam10lp2042.outbound.protection.outlook.com [104.47.70.42])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 44w09e3s98-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 20 Feb 2025 16:15:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EbnKfGFNEmxIb7FXhU22h8yGpWpcmto6Yrz4oTQrdlVq1gNUiqIsN7pVGXru4+Thp4D5XwzjvHrhRZdQbaWlhCgyZBHXHSXoNH6C9H68iuA/x4KqpZq1XFvRdOTcHHo/bncv3wk0tPggM+RyfSbtrxRZ6/JdnFqMBMYi59srDRfB1Mqsuj2U0Rn5MwOansWTmG30DAllyziDMXdw6ojSTO8fs+xbwUbbJR7nhAlPrF+45K0hMErgnKxPpo48QMPDutZelAx5rNND5DyeMbYZSQmCBQtdMdd7jWEpf7e+g3Jwm96qyB0GCg3lve0wszsxLQswgsfrF88nOgzGy7gf7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5vS/ct3byr++Ql5/+KuxAd2n8xS5tUF4XFnxIgUNNGI=;
 b=RuYFO0JB52BwTLGROTR7jyekUShwe3TIcyhNmRIjgpri4cFh04tHrqH2LUjN8YLTxd7sTUEkDjliL++vNvU5votY3/rIGco2vMPo+LVXoDnfwHy0c9iLqcIBFkPoglAxfDAoZC/w+6cDz4feoqJWiYKBlfH3zZhXQBMOkGjmPMtO4AGYQ4d5VjQSFClOmKemUM9KmvUn0izedVMmFLI1L897SLorUyn92gqAWyNtlpbmfshsx/6jepI5LZPDamVgwc3x6iyphl6VJHs7LUic9knJTrCm0/bvlOcHR5Cu1n/gLaU91ziak44+ww5cFBRVA71EGukmwwj96w3srnSpuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5vS/ct3byr++Ql5/+KuxAd2n8xS5tUF4XFnxIgUNNGI=;
 b=U6nC9E5c7ZcP34WN8Qn1/R8NZctBa2EySAIIsmARA4Hp7MocAidSbFJ8NXuLRyL7N7u+1dhtwz9hPEejNw8L2/1gI7/rbmE4Lfr+h1vf4A7RMcjeTvAPw9dKjCmXTPnwewWiTR+/aqV4wK6C53sx2Lqwznwu8wEtglX/G1UdS0Q=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by BN0PR10MB5111.namprd10.prod.outlook.com (2603:10b6:408:123::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.14; Thu, 20 Feb
 2025 16:15:06 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb%6]) with mapi id 15.20.8445.020; Thu, 20 Feb 2025
 16:15:06 +0000
Message-ID: <53b75296-d73e-40fe-88dd-9103f3edd3c1@oracle.com>
Date: Thu, 20 Feb 2025 10:15:04 -0600
User-Agent: Mozilla Thunderbird
To: Edward Adam Davis <eadavis@qq.com>
References: <b72fbe46-f910-4181-8d5b-fdc66d46700a@oracle.com>
 <tencent_8C6B26DD7364836B096F23B1244E177F3705@qq.com>
Content-Language: en-US
In-Reply-To: <tencent_8C6B26DD7364836B096F23B1244E177F3705@qq.com>
X-ClientProxiedBy: CH2PR05CA0037.namprd05.prod.outlook.com
 (2603:10b6:610:38::14) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|BN0PR10MB5111:EE_
X-MS-Office365-Filtering-Correlation-Id: cc88cb33-39ee-468e-edc3-08dd51c9bd56
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M2pERGFhdzZ6aGZDNldJclA0clNmWCtEYWt4OEhIM2M3MWhJZ3pFcVdWRGxt?=
 =?utf-8?B?UFVRRW1YZktqTStIOEJCVk5UaUhHVDd4akdlNkI4U2tZRVlqNSt2N0M0Vjhq?=
 =?utf-8?B?SStNZlNOTWtZMFJIcTZPa28vRkpoekh1OGpqTjdwYVBsZHBqOUdYdDU0V0xy?=
 =?utf-8?B?TytvOXA3dnkzbnZpNlM0dENmblhZcllwVUo5K0xhRXl6V01LZkREWEZiRFo4?=
 =?utf-8?B?bGR0MDRraVNJT1YzLzBWK3Qxdjl3TndHMWszYjlUVEhhWlhRYUJWWjNPRlhV?=
 =?utf-8?B?SUxBQldZSWM0dVJRNzlHMy9wZnlIRmJZTHNGbnFqZ21CYXUydjdoeXBJbTd3?=
 =?utf-8?B?UTAyb0RSeXQ5TFpOUk13TVNaSi8xQ0U3enZFSkQzbUk3eCtkaDlsd1AvWFV4?=
 =?utf-8?B?SVEvVkd4TXJqaVovRVcrdGYvemp2elZNaUVSdkxheU5HTFlIUmhGZzFNSHdM?=
 =?utf-8?B?Wmw0RllWUjB0VnhTRHFUWTdDTDk1aFd5aTBadWVJN1QyUm5BcEJCdUZGUFhx?=
 =?utf-8?B?dnJWUExlSDhCOUZlTnJFSmhJQ1JIalFaODZKeFVhd0RINnFyUzN0WCtzWDdv?=
 =?utf-8?B?dS8yWGorUFIvNnEzZWhFZW0xdXIzcWZNZXZHVFJJSFBUWXFEYk4xZlNEYmJa?=
 =?utf-8?B?T1I4QlRyek1xNTNrb2pDUGpSS2MyUmJGOVI4b2EwU0YvQnBvTWJMV2JHbjAy?=
 =?utf-8?B?N25wenFoOFVnc0h3M1JlalRCZEdiOGJ2YWhXNCtZSjJGT0I3ZnhzZWt5V0NU?=
 =?utf-8?B?RTlnNElKZ1V2eVQ5d3ozaitDcTh5d0hpTGZla0VPM2J1OGtrQllUbU5aMTdH?=
 =?utf-8?B?YVlNMlNKbHdUbmZYaWtSMlJPSFFjZDV5Q1ZiQ1FhQnlnSjlwWC9zdGVGeHdW?=
 =?utf-8?B?bVNWTWFPdERpQ0VtSlh6d2ZGV0lGWFpPTkRTclBaRGViS0E5SmdBczFCdmN0?=
 =?utf-8?B?REJBaFRLbXRiWW1COElvU01tZFordUFSQnRMeGcxeVRoSXJ2czE1amwwU2po?=
 =?utf-8?B?ZG9YK1VqOG9mK1FDYXlIOFAvaEl0eVp2UjNjN09MMndlWURjVUlRZk5RQW4r?=
 =?utf-8?B?dVhYc1JlQ3dmSXZZTU42UFhjSHd2N1p3SjNRQkVzSVprZ3hTeGd0Y1lxTE9l?=
 =?utf-8?B?ZVFEY0dBT2doK1k2K3IzOC9NMWVSUTZxZ0Z0TGFWTVN3YnErTmY0VDU3dU9n?=
 =?utf-8?B?V0drQk44TittVmlCRkUwZkpjTVZQS21RbExKckwydVAzTTNWaVRiZkhubWxB?=
 =?utf-8?B?VDV0YWRFZm16SnZWbW05QVVwdi9kc202RzVwbjJyZGZLcklQT2Q2WnlKSG40?=
 =?utf-8?B?UzVBL1lMcXA5dkVnRHlOajlFSVNZaGtIOXRBd2FuU21Xc1hnSWU2MUNhdDZ5?=
 =?utf-8?B?Rk1RdnFxalNVNTYwYTRTQlE4SHpZY1FOUUpZT0dsT0hFenZtRVg0T2ZlM0Fj?=
 =?utf-8?B?dGcyeHVKTzhaZmtEMHU0OWhldmtYdUpsdCtsajF0bDgvZGxIQlpxRUdVb0Yv?=
 =?utf-8?B?dXpNZ1JtdG5DV3lEWjcxVkZRVXA1aFNsbzVzVkFiT0NuZ3JvNHJOVWdSL0lN?=
 =?utf-8?B?a1c3UUhPWnRvVEMyNnRxOTRqOWUwb0ZNaVFRUEg2US9pa2NNbnlEbEZvaDN5?=
 =?utf-8?B?WktuMG9rQWlzVE5WN21YeGhFdTRybDBEb0hOc0hpUnFvYXFCbHpyVzB2ZGJT?=
 =?utf-8?B?clE1dUdxeWd6U0hNUndrL2daY0NuWnI3cFk4TE96emhjSXhpaDRLR3NDU2la?=
 =?utf-8?B?ZXNybXZwVUkvVzBNM1pvdGRmVHlwblZTWm03UU1BNWhmUUpBWkZUZ1daT0RU?=
 =?utf-8?B?aFd3TDVsWXpDb3kwYkxLdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dERyd0RvOGVxLzVvVzNyZUVibTF4UTBhWkp3Y3dSaXJrejZ4NlRiZzBNV012?=
 =?utf-8?B?Wkw4QUg0eHE2eGNQQ0NzdnVzYmpNSVBiN1FST3dna3Y2Si9CRU1ROVFXNTVr?=
 =?utf-8?B?L0gzblkvYldDSFZLZW0xWmc4Ukd6K0NVeTFON1pzNytWbXg2K3NHejluM1ZN?=
 =?utf-8?B?Q3gwVjU1VzlYeWlPbUR3d3Q1d2pqRlA5TldETGJnNFZMQmpUMUJNTS9kZHN4?=
 =?utf-8?B?dXh2aXltT3FIWitHWDZuZE9RVFBPb21LRDJVKzZrWSsyODV6QWdJcDdYOWcw?=
 =?utf-8?B?bHp0SDRTc1ZvaUdlbnV5RFkyMGI4SGVHTHc1OWZOQURGL2hGaDR3R3NJZnIy?=
 =?utf-8?B?Y1pUN1EzKzJ6Um5adDJnWi9raDQwZVQ1aTlpS3BpQVhNY1UvNlVXZVhVbjJr?=
 =?utf-8?B?Qm0rZlhtZXphR1JMa05NVEt5a1RuRnlDZm1DN1pCcnRhUmhuUXZzYWJ4K245?=
 =?utf-8?B?SUZHemtQQnc1b1ljK3BEU1BFRVZVblNreUs4bGhoZFRVVjFiYVVxTHZ0S0F3?=
 =?utf-8?B?RVlCSWl4eG1DdU5tbXFmVUloSDg2alVHQ212OUJNSk9JeWYydHJoaksrSmtG?=
 =?utf-8?B?a09xenJ6QXRWenp1NDZKb2pJMTJBYi9vNGJvQjBjMXgxeG15bHQ2OGVjWE1h?=
 =?utf-8?B?UWFPK3ZSWTJXdi8xRHFReXNCcDF2cmtsSzRoZVM5My9QS29KaDdxbk1EcDFH?=
 =?utf-8?B?a21zTEZIekYxZGJWbkptdnEyOTlzZ0VIMEY1djNKc3UzQ0JRQmM5YTZZREhu?=
 =?utf-8?B?aHluQkM1WXVTMW1pdjRlOG9VbzEwMjdLRUtLeXNYclVJcVh2cWR6bEtDWC95?=
 =?utf-8?B?Qk0vQWZrMmpyK1U2M2RteWt5MCtiZ2pYWXNFOXFyd2YwaHVMQmVGVElSMnQw?=
 =?utf-8?B?QVQ3SGdkSm9rQ1NiamZJUERzY3NvcEFIallqWTYwVW5OLzdRUmRzcE1kYldS?=
 =?utf-8?B?VklCQzIvV0U4VjZQTWRVcXRXWUdML09OUFVGc29oMittdW5hTjJQSlZvelRk?=
 =?utf-8?B?QXlXMVJYYjc1cC9zS21LVU41RU1oOUJxTFAxczRxZEMrQUdZcENic0h5Q0pM?=
 =?utf-8?B?THlTWEpmczM5Y0g5Vkt0d21QWWtCcnBDUXJIajNIUllaMlY2dHQ2L0ZqeWRH?=
 =?utf-8?B?WlRnZkM1K09HeFFWbEhDdVlDbjdsSGhtWUVqakFBOVE0QzNlZm5Ecms1NlYr?=
 =?utf-8?B?ejRkVnNYaXI2QVlkZVRVajhPVU1KRzVzelNTWEsyTk10OG5WK1JueDVtTHcy?=
 =?utf-8?B?QUVwcUZIUTZwUzRvSlJRRHE4aThhVlhKc2dMYzFMM0VVSUpEQWdlWkZyaTBv?=
 =?utf-8?B?WHRvaGl4TVJBMHB3Q0syY2FjaXgzRjRsOXc0Q29lc2tRNk41SE8xaTF0ZFR2?=
 =?utf-8?B?MkJDcXViaXdMdmZNL3hMZXFuWjkzR3liSHI2c3RiR0puTzlnelZNUFNYRGlJ?=
 =?utf-8?B?eWQwOEVzZGNnM21VaTR2UElDbE1lZ1M3ZWZ6ODFlL0RBZkxjdXpidURCVnNs?=
 =?utf-8?B?VDJ6QnVvVEJmY0JZbW1FdWdKTWFWVmlFYzBSeUt2SEdCNVZCQytKTkRqRE1T?=
 =?utf-8?B?em5pOXpTQTBpL1p3cGx1N3JySHlYbjhFaWpMQzV5emVTemU5bU0wdC9Pb0gr?=
 =?utf-8?B?Qmt0NGQwRCtGZXNnTjlpSUlyMU9leGNJRE5IVXFIcUthc0Fpd2twR0wvT085?=
 =?utf-8?B?dEdXSWFTUGhFeC9JdWxrUU9IYjBPK0V2Q2ZNZUJORUpIVTZaWUtPMExIK0Zq?=
 =?utf-8?B?SzFtVCtjSEhHVVFjSEM0bm5RVExJamF6S21Rd0s2VmNJT3UvMG9KdC9EdVpa?=
 =?utf-8?B?QVF3bytlS2JBZEp3MEtYT1pweXZuMklMVVEwZ1NzbzNvanNWTXUzR1FuR0hL?=
 =?utf-8?B?b2RjOGxXdlpPbUtvdndjTm1XdTlmSWRpaFlwWVllYThzNkh4ZW5VUzVZVVFR?=
 =?utf-8?B?L1hNVWxJdmtjMGlzaVJsV1hYQU82NGNYL2RlR1dWZlJ6WjBWak9ZSE9pTlBX?=
 =?utf-8?B?N05MZDZqLzJvNzI2aWhTQzkzVm42Q1VxQU5jSDlnM0R3K3JkdytYT0h2dVI0?=
 =?utf-8?B?Ym1zQWRFMDVuQ25BVmErYWpRUUV0ZHlpRnlEcjVTOVZYU2VqdzQyc3RBcDVR?=
 =?utf-8?B?UnlocmZqZDZGUW1WUnJ4QUNHNVlmeGxBRWNqQndyeVpTVUhxUGpjMlAvSmZZ?=
 =?utf-8?B?YUE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 4HpP1iPAJqJnNCaTGP7+eCdEX7dZoxhKYt/yZbeWKik2CRu4ZJ0uZs/HckEGh8z+JLLCo/Y+3D/vtIAC7h014YKFyjBDISqVc7VM8KXhk4V5s2MzNBqIqYSZI2sS4jQmkpEtR2HMlnxi/0ZTJqfurFk0ZhP1CYOe405uMAag2vB9ezR2ztWR47m1pyGZWR9iKdsagges5QVwCAPHKdRi3h0yoJY2aSF3/EDIWQEjTHEjb8BBn5HKZ0WVD5ccMB5G1OHm6e3G8yvH1EdWAPc97P8aOpvjkrA0L806Wr2sPWfNl7ZSWBD2mt1iLfzwExgcbgGSy/9nzyMxLOosRqm0SLRfFE9ctoicA1dmb2ha5HtJwe4qTZkxHU1TR5M8ny7H94faffktqWUR4V6icEd8N9tfIlIqVrdkfknFnjfeywD22FW/vsUBoin2EElGIBp473TH12zlXDNHt4pKeNtRM+rSd8U/45IryqHHPLFNfFvwaEZ8ORcdP4v205cSBao0sVoSnPeNQLIA883KlklS3rBC6q5j06X/iSp+SsrrYg7nieD6QB+mfgEnfefdrM16QLCqMLWUMjeT9kVWA+WlVYzWrN086VWgNA7cRVoVgfQ=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc88cb33-39ee-468e-edc3-08dd51c9bd56
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2025 16:15:06.4941 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 75FlsmEm5unD0F2fGIFLGVTox5ARiFaonBl8UGIRbzQz6X+qeoyXOVMhRfEU2nEuupkoaSwJlpbczrOFI6igJ/w0PK0RZJl4EkisX5RlpT0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR10MB5111
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-20_07,2025-02-20_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 phishscore=0
 bulkscore=0 suspectscore=0 spamscore=0 adultscore=0 mlxscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2502100000 definitions=main-2502200114
X-Proofpoint-ORIG-GUID: yMQsTLT3kjeEk6I-GwMvkWT2sU52s91U
X-Proofpoint-GUID: yMQsTLT3kjeEk6I-GwMvkWT2sU52s91U
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2/20/25 5:13AM, Edward Adam Davis wrote: > syzbot report
 a deadlock in diFree. [1] > > When calling "ioctl$LOOP_SET_STATUS64", the
 offset value passed in is 4, > which does not match the mounted lo [...] 
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1tl9Cm-0002Rr-CN
Subject: Re: [Jfs-discussion] [PATCH V3] jfs: Prevent copying of nlink with
 value 0 from disk inode
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
Cc: syzbot+355da3b3a74881008e8f@syzkaller.appspotmail.com,
 jfs-discussion@lists.sourceforge.net, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 2/20/25 5:13AM, Edward Adam Davis wrote:
> syzbot report a deadlock in diFree. [1]
> 
> When calling "ioctl$LOOP_SET_STATUS64", the offset value passed in is 4,
> which does not match the mounted loop device, causing the mapping of the
> mounted loop device to be invalidated.
> 
> When creating the directory and creating the inode of iag in diReadSpecial(),
> read the page of fixed disk inode (AIT) in raw mode in read_metapage(), the
> metapage data it returns is corrupted, which causes the nlink value of 0 to be
> assigned to the iag inode when executing copy_from_dinode(), which ultimately
> causes a deadlock when entering diFree().
> 
> To avoid this, first check the nlink value of dinode before setting iag inode.
> 
> [1]
> WARNING: possible recursive locking detected
> 6.12.0-rc7-syzkaller-00212-g4a5df3796467 #0 Not tainted
> --------------------------------------------
> syz-executor301/5309 is trying to acquire lock:
> ffff888044548920 (&(imap->im_aglock[index])){+.+.}-{3:3}, at: diFree+0x37c/0x2fb0 fs/jfs/jfs_imap.c:889
> 
> but task is already holding lock:
> ffff888044548920 (&(imap->im_aglock[index])){+.+.}-{3:3}, at: diAlloc+0x1b6/0x1630
> 
> other info that might help us debug this:
>   Possible unsafe locking scenario:
> 
>         CPU0
>         ----
>    lock(&(imap->im_aglock[index]));
>    lock(&(imap->im_aglock[index]));
> 
>   *** DEADLOCK ***
> 
>   May be due to missing lock nesting notation
> 
> 5 locks held by syz-executor301/5309:
>   #0: ffff8880422a4420 (sb_writers#9){.+.+}-{0:0}, at: mnt_want_write+0x3f/0x90 fs/namespace.c:515
>   #1: ffff88804755b390 (&type->i_mutex_dir_key#6/1){+.+.}-{3:3}, at: inode_lock_nested include/linux/fs.h:850 [inline]
>   #1: ffff88804755b390 (&type->i_mutex_dir_key#6/1){+.+.}-{3:3}, at: filename_create+0x260/0x540 fs/namei.c:4026
>   #2: ffff888044548920 (&(imap->im_aglock[index])){+.+.}-{3:3}, at: diAlloc+0x1b6/0x1630
>   #3: ffff888044548890 (&imap->im_freelock){+.+.}-{3:3}, at: diNewIAG fs/jfs/jfs_imap.c:2460 [inline]
>   #3: ffff888044548890 (&imap->im_freelock){+.+.}-{3:3}, at: diAllocExt fs/jfs/jfs_imap.c:1905 [inline]
>   #3: ffff888044548890 (&imap->im_freelock){+.+.}-{3:3}, at: diAllocAG+0x4b7/0x1e50 fs/jfs/jfs_imap.c:1669
>   #4: ffff88804755a618 (&jfs_ip->rdwrlock/1){++++}-{3:3}, at: diNewIAG fs/jfs/jfs_imap.c:2477 [inline]
>   #4: ffff88804755a618 (&jfs_ip->rdwrlock/1){++++}-{3:3}, at: diAllocExt fs/jfs/jfs_imap.c:1905 [inline]
>   #4: ffff88804755a618 (&jfs_ip->rdwrlock/1){++++}-{3:3}, at: diAllocAG+0x869/0x1e50 fs/jfs/jfs_imap.c:1669
> 
> stack backtrace:
> CPU: 0 UID: 0 PID: 5309 Comm: syz-executor301 Not tainted 6.12.0-rc7-syzkaller-00212-g4a5df3796467 #0
> Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2~bpo12+1 04/01/2014
> Call Trace:
>   <TASK>
>   __dump_stack lib/dump_stack.c:94 [inline]
>   dump_stack_lvl+0x241/0x360 lib/dump_stack.c:120
>   print_deadlock_bug+0x483/0x620 kernel/locking/lockdep.c:3037
>   check_deadlock kernel/locking/lockdep.c:3089 [inline]
>   validate_chain+0x15e2/0x5920 kernel/locking/lockdep.c:3891
>   __lock_acquire+0x1384/0x2050 kernel/locking/lockdep.c:5202
>   lock_acquire+0x1ed/0x550 kernel/locking/lockdep.c:5825
>   __mutex_lock_common kernel/locking/mutex.c:608 [inline]
>   __mutex_lock+0x136/0xd70 kernel/locking/mutex.c:752
>   diFree+0x37c/0x2fb0 fs/jfs/jfs_imap.c:889
>   jfs_evict_inode+0x32d/0x440 fs/jfs/inode.c:156
>   evict+0x4e8/0x9b0 fs/inode.c:725
>   diFreeSpecial fs/jfs/jfs_imap.c:552 [inline]
>   duplicateIXtree+0x3c6/0x550 fs/jfs/jfs_imap.c:3022
>   diNewIAG fs/jfs/jfs_imap.c:2597 [inline]
>   diAllocExt fs/jfs/jfs_imap.c:1905 [inline]
>   diAllocAG+0x17dc/0x1e50 fs/jfs/jfs_imap.c:1669
>   diAlloc+0x1d2/0x1630 fs/jfs/jfs_imap.c:1590
>   ialloc+0x8f/0x900 fs/jfs/jfs_inode.c:56
>   jfs_mkdir+0x1c5/0xba0 fs/jfs/namei.c:225
>   vfs_mkdir+0x2f9/0x4f0 fs/namei.c:4257
>   do_mkdirat+0x264/0x3a0 fs/namei.c:4280
>   __do_sys_mkdirat fs/namei.c:4295 [inline]
>   __se_sys_mkdirat fs/namei.c:4293 [inline]
>   __x64_sys_mkdirat+0x87/0xa0 fs/namei.c:4293
>   do_syscall_x64 arch/x86/entry/common.c:52 [inline]
>   do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
>   entry_SYSCALL_64_after_hwframe+0x77/0x7f

I'm taking this patch, but making a change. It's a little cleaner to check ip->i_nlink after calling copy_from_dinode.

> 
> Reported-by: syzbot+355da3b3a74881008e8f@syzkaller.appspotmail.com
> Closes: https://syzkaller.appspot.com/bug?extid=355da3b3a74881008e8f
> Signed-off-by: Edward Adam Davis <eadavis@qq.com>
> ---
> V1 -> V2: if the nlink of disk inode is 0 return -EIO
> V2 -> V3: move the checking to diReadSpecial
> 
> ---
>   fs/jfs/jfs_imap.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
> index 0cedaccb7218..25bb3485da3b 100644
> --- a/fs/jfs/jfs_imap.c
> +++ b/fs/jfs/jfs_imap.c
> @@ -460,7 +460,7 @@ struct inode *diReadSpecial(struct super_block *sb, ino_t inum, int secondary)
>   	dp += inum % 8;		/* 8 inodes per 4K page */
>   
>   	/* copy on-disk inode to in-memory inode */
> -	if ((copy_from_dinode(dp, ip)) != 0) {
> +	if (!le32_to_cpu(dp->di_nlink) || (copy_from_dinode(dp, ip)) != 0) {
>   		/* handle bad return by returning NULL for ip */
>   		set_nlink(ip, 1);	/* Don't want iput() deleting it */
>   		iput(ip);

My change:

diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
index 298445f6d3d4..ecb8e05b8b84 100644
--- a/fs/jfs/jfs_imap.c
+++ b/fs/jfs/jfs_imap.c
@@ -456,7 +456,7 @@ struct inode *diReadSpecial(struct super_block *sb, ino_t inum, int secondary)
  	dp += inum % 8;		/* 8 inodes per 4K page */
  
  	/* copy on-disk inode to in-memory inode */
-	if ((copy_from_dinode(dp, ip)) != 0) {
+	if ((copy_from_dinode(dp, ip) != 0) || (ip->i_nlink == 0)) {
  		/* handle bad return by returning NULL for ip */
  		set_nlink(ip, 1);	/* Don't want iput() deleting it */
  		iput(ip);



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
