Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 20182A71BE8
	for <lists+jfs-discussion@lfdr.de>; Wed, 26 Mar 2025 17:28:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1txTbc-0004zr-Vg;
	Wed, 26 Mar 2025 16:27:53 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1txTbb-0004zi-Ks
 for jfs-discussion@lists.sourceforge.net;
 Wed, 26 Mar 2025 16:27:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Cc:To:From:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VvKadLPi7Isyt4dQEV8LURHJDyHPVNCn2LGpPcOriBk=; b=GVaMWMEZePcNVenGVVav3zYP5m
 W+DPDUNzPIXcO8+YlP/jcA6O91GBk268u/weKlcj6l3kiWfN4yd5M/sCEJP6/UPnyrPD0n9AP82kz
 NcW6pNJ06dBDQlmKDnx6Ti5buzfO3JcF4pSx1z7h4Hw4U1Ot4i39QbvTT7LQZGdFd8gs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Cc:To:From:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VvKadLPi7Isyt4dQEV8LURHJDyHPVNCn2LGpPcOriBk=; b=JtEUABZRv2HbtUZ13ymL9eUHNy
 rAgdiDAzRLl8cpZvdrtSziAlnZJ/DKiMhse5BqpqUQ6VAwlQL+R6lYXK+f36Byu8KSzOH+PFLfe8Q
 E0TKxT9hieDQW19kZ9euSb1on9yb0c2mkLdWjSl1QQ7lBgETysBwGB5nySgMndGNWPv4=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1txTbR-0008CL-E4 for jfs-discussion@lists.sourceforge.net;
 Wed, 26 Mar 2025 16:27:52 +0000
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52QGMsGG030811;
 Wed, 26 Mar 2025 16:27:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2023-11-20; bh=VvKadLPi7Isyt4dQEV8LURHJDyHPVNCn2LGpPcOriBk=; b=
 hO0h/sEqPOTGSn70saPnkIgonLARV0gcBy8UeDJvhxnZYkc5aGJAm6Z0bA3rQKse
 QBLgHm61laS/g2vDYzzyYfytWe1Hp2fby3SJjp0N3XWm5TG1DlwF+68wqavHrBda
 jhU+sDZeOrxQLzI/jh/uMC6ty0o1mgeTNulcgU2B0LslyOPe62UZlZpEHhTIjWv8
 MvdNa36mBwsJf431vCt++iKyqm/1yFRWPoy/s8PmxtYSHc5cDbUPg8NroFmxgXLf
 e0mzUFLh4M3a0gOF7OpN0+HuZBkWGyGjvI52AwlWyt+3utQcRhnFwwszNs/jMYqX
 keF9kN6XtTwUN7Fb8CgJgg==
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 45hnrshy75-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 26 Mar 2025 16:27:29 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 52QFm0BG036409; Wed, 26 Mar 2025 16:27:28 GMT
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2044.outbound.protection.outlook.com [104.47.66.44])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 45jj5e4469-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 26 Mar 2025 16:27:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AzOb0hF0xWP9T0A5AeTucC4EHmtkBCHmibPWClVnwkuvKZaK2/YBFdcC1+nKU0Nn7Js4qSnuS6lwjnPQZRT10ESZ8wgt9bGslNP3LOU4L/Dz9DcPgxB5qnnKutJ8DJc3arPWIFdoBgh8te5w6h2yIKWadeLVlUZvjliNRRx54TmWRV/kA3nN/SZ69IcNr4wacNzViP5IzB2IFJglqVDYCewnzNh0Qt2oV7q1D16iOQzHoBjM8nuFHoFPKdzSjGDGsvnk9zJsuQs8T77Jxy4sJ3cZpLAALuvrU9TahzMh4KsUl8GuKGJ/7aOf3SGOfP9WMms1btYyAnOGHhiNinR+pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VvKadLPi7Isyt4dQEV8LURHJDyHPVNCn2LGpPcOriBk=;
 b=V14Nd5HVMiWjckNKqvuNz+NR5axD9rLe3IPHbt0kLCHBwq+XslHW4/mHWwpCdWvcuUJQk8JxRSbAxBLG4jVeIqxpMOPG8NVBQctn9IciqAyri97ukmlsHuX3RIVZBSmZpQULYMtYvMCRWJq6OxQvRcxzAGeJZmzu0pHkr7SqIX0wLaSf9TCce9SABtTyJNIKsiT+VQ2IgckPBy4YjFOLXrSxvLzHJwtfwwUVlruBi98uAXFqT0IJQ4ige0op2lwcfIJH5NuYw1ZSpmGFxD5v7yMSZGFqzPdHHfwQ2u8KfbGhMrypWeVO05t+MYbKIeXafZ5ln/FqNgNZmyI5tl3PVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VvKadLPi7Isyt4dQEV8LURHJDyHPVNCn2LGpPcOriBk=;
 b=ZkXiTTe1Y3emG3ZZ2HnxaRpwxS/ZCyu2sAVZazMZd+NKXx0pW//ULacMoVw7E69nmsnc3eZEafcyPgPTtX8W0BcQK/E6DOZYU2PiBNAfUeA+rngIjuDn3FcDCqa8gtBBd1vqyXrNESG57FQIaGm9tOclu+V1SVe7si8zLwfNHoY=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by CH3PR10MB6810.namprd10.prod.outlook.com (2603:10b6:610:140::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Wed, 26 Mar
 2025 16:27:25 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb%6]) with mapi id 15.20.8534.040; Wed, 26 Mar 2025
 16:27:25 +0000
Message-ID: <90ba3938-89b4-4435-b705-ea7a654293bb@oracle.com>
Date: Wed, 26 Mar 2025 11:27:23 -0500
User-Agent: Mozilla Thunderbird
To: Linus Torvalds <torvalds@linux-foundation.org>
References: <94b4d641-ca23-4b1a-aacb-0870e1ac7b25@oracle.com>
Content-Language: en-US
In-Reply-To: <94b4d641-ca23-4b1a-aacb-0870e1ac7b25@oracle.com>
X-ClientProxiedBy: CH2PR05CA0004.namprd05.prod.outlook.com (2603:10b6:610::17)
 To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|CH3PR10MB6810:EE_
X-MS-Office365-Filtering-Correlation-Id: 280a60f6-2a87-43f2-ed32-08dd6c8317be
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZVRBTlZHaXFRaUxTVVV3c2tNc1QwampBOVcxOFQ3am9FbTdpcU1XenFuNVVC?=
 =?utf-8?B?Mldiamc2T0hJUXJ3cmszUEg5Qk1nQTgwV0VsdW8rQ1A3eDdVMFl1dXN0dUsw?=
 =?utf-8?B?OXk2QUhWMFVLQzZibE9rTjhBa0orME0zd3U1QVNCeTQzMFFwbFdjYk9jakFR?=
 =?utf-8?B?TjFZMHhKS1F4Y3hKbmw5c1J0WW9qV0J5NUN2VmtSYzF0RU10TU45eG1EcnVp?=
 =?utf-8?B?WTlNV0h2OEtpRXRZQWh5ejNva1Z2WEJ3Z1Fqd3FSZFVSUVpzVnplK25BTkRw?=
 =?utf-8?B?REZKWHVBaSt4RDRZWUMxRm9uK2YvQnNlQkwxM1V3NmFQQ3k1cjQreGR6cUZq?=
 =?utf-8?B?bThPbGhJTFFHc1U5WlN6SGlVbDhDOG5mYjdaek00RUNOR3VKOG5TUXNWakwz?=
 =?utf-8?B?N05tVjRJYUp5SlpKdnhRN2QrRFlkczIzWTFMclF2U3BrNnRtRFZiVDJTUHVx?=
 =?utf-8?B?MkJNcUd3MWJTZDZGODFmZm1rdS9LOFFNdDRGOE8xMzNKdG9uYTF4eUtWYzhu?=
 =?utf-8?B?RGhvUit3OEJYdmNmMFpIYzF5MEJwdkxYbG9jdG9MVFFZZVQ1ZkgxMCt0cWRP?=
 =?utf-8?B?RHY4YjdHajlLUmpMbzl3K0xzd3lQRE1CNUJoTFprVVNPcldybDZ4TitqdnQ2?=
 =?utf-8?B?NXNJY0NiQW0xcVJuMnZqVld3YzJDOTVhUGQ5UnRGa0wxVWtsMU1PalNXNzB6?=
 =?utf-8?B?clpTQ1hoMkpHSjgwNS9UbUVhRytRNGR4dGhkeUszTldob2Y2TDlyN2RsNkNm?=
 =?utf-8?B?Ym1JckdCcXJGWi9SdnRUZ21DS3NpelgweUVkWlRGVkRKMHpaY05YZ21KOEVI?=
 =?utf-8?B?eWZiTWNZSUVoemxjaEJYQlFzL0h6VmhTUjA1Ynp3L21rYnQrMFIvRHFPVGZT?=
 =?utf-8?B?RUVRYUJEVDNEMk5BRWR5UnlyT2RINTRoSHhmRDdQM09KR2hJTGFqNG52bGY0?=
 =?utf-8?B?UkttTHlIMzhvWnErcWhUYlYzdWt5U3g1M044Ky9MV0Q0ZkdQd2U2V3F6SEpn?=
 =?utf-8?B?QllnMm1DUHBhK0NZUWdjcjNLWXRKU2FhY1d4MDBYWWs4RUlaVTBqNFFYM0M0?=
 =?utf-8?B?YjdVL2YvM0JvalNVa1hFWXJtWWV4S09WK04rbnFQVStYY1BzUjJQeHQ0VUJa?=
 =?utf-8?B?aWZOVjVRVXF3UGwzL2cwUFZwQjdqS0VHeXJzcGlPTXlkTTU2UE1NMU1wYmx4?=
 =?utf-8?B?cTJpTlBRUlRKWGhGdmdDQWlVTnR0VVlFY1VWOHY1Qmh6aFRBa3FBSytHcHpV?=
 =?utf-8?B?eTkvQmVBTGxjSGROZmhCUE92dEF5MFp5TVBkMVFabzhCbmFkTUNNdjZQTHNQ?=
 =?utf-8?B?bk1mMEs4Vk5WSVIrU2U3U0p6V3BCUXdHUWJKOHB4Umx6OVNCNFVKUTh5NXg5?=
 =?utf-8?B?WUZHNzFhZlRIb0t2TWk3M3RqUVZKQVdGR0s5RDk5R0hxaXZkNnA1eUU3d3hq?=
 =?utf-8?B?UExSRUlrbWVxN2hyVElnSko3bzAwb25EeUFSKzZicStMQm5YUnhuYTZ5NElr?=
 =?utf-8?B?K0NGVEM5cGtZQWlUSTJnMlRrL3dWSjlxRkJFYTFLeCsvQjU0SXh3a3ZoQnZw?=
 =?utf-8?B?NW9uQy94UGRXRjBMZFRBb1MwWHlIUGdxckJQL08ySVpTT3R2bU50cjlLMld0?=
 =?utf-8?B?V2lDT25DdVdTc1Y0SFBCcFBvdm84Q2daSVhPRTNYZ0R4THBtNXE3dGhHNjNZ?=
 =?utf-8?B?TmJLNTUvdVg0ZXhBd3NaUHhIclhVOWpqaDRRdXFQMmpIWE9PNHVtc1hqMGs2?=
 =?utf-8?B?WTlUMCtrdmhYRlRkc2dBTXRvVXBaaXlieXlySE9aZjhndTVyZ0EvUzFJQzlP?=
 =?utf-8?B?RXIzNjJwbWRxcTlUK0pjOGx6SjkwQjJmNVh4elZKaHJkS1dJdUc4OWx1SDNZ?=
 =?utf-8?B?WWtTYWRHeEFha3ZGK2dOZWNyRWFlcUY5Lys5WTJDd052aDhVWVFuLzVxZGVM?=
 =?utf-8?Q?ldeImt+GE2A=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MXNqQWIwTC9CN091ZUh1WFpqVmJReUMyZVU0bm9McnZtQWtFSzF1N3dGZkhN?=
 =?utf-8?B?N21nRTZScU1Qbk1hcEpVRWFtcnBubi9PczIrQU1QdHZyTjZGRmtNL2FKamFT?=
 =?utf-8?B?c3Vnd3paUHVHOStyckwzR081OTVoZlVXbzBBU0ZTMXpDWWM3bC96aVFpZmNq?=
 =?utf-8?B?eUVHOFBrdGU2Nms1WEo5VzJ1ODNOd2MyQjBQN1IzQUk0SjFoWVduLzM0cHVY?=
 =?utf-8?B?Qkxla25ZV2MyaHVOaURIVjRWWFluWk13eTVKeHNwbUcwS2lzTi9VRll3M1kz?=
 =?utf-8?B?S0dzN3VsYXVmeGhHa1NTaXJjTzZDeHRZNlBXMC9lOVR6ZXRlbnFzOUk1enlj?=
 =?utf-8?B?bHE0UUdmZkl5Y1JMZkEvUzBwenV3RWpqOHpGWWk2dFR2TmdDbFhpVW1ONUE1?=
 =?utf-8?B?aTZQRnJjdEY3YWw5cW1TejR1Vy95WTgxSG4ycEdoQmJiNndmbzl6eHJnQmw0?=
 =?utf-8?B?NFVDUjFUMjFrZXV0Y3lJalNLSmdORTNmeHRNRjVIWGJiVDNsS05YaW5lNmVo?=
 =?utf-8?B?TmFoVit4aURvcVNjYUJjclZ2eC9mc1hRaUVTMTMxaWlKZzJmZlgrOERXUmJJ?=
 =?utf-8?B?azdtNFpySWx1S1E1ZCtvRUxwa3hEWWNMSmtOZ2lnazJ1VHdRaUVpMDZNemJM?=
 =?utf-8?B?MDZuMisyaEJUTTlFSkhCcGpETTVGVWFUME85bDkwNjRGc3MwT1pHQ0gwYTh6?=
 =?utf-8?B?bkFhUVpIWUNGUVpXcGY2dXNnb04rWW1GRlBjdlJWTDArOGE3bGRHUVMyMVls?=
 =?utf-8?B?WDNzN3lvZ00yYWxJRFZEMDV2KzBvcnk4R1VMY0VJdTdBMTllRnlTblZPemVV?=
 =?utf-8?B?RFhBQ2hPV3FYbWFPTENXMFE2L0VqaXNweFJFdXlsejNaM1dQSUFjVjFoVmtH?=
 =?utf-8?B?NmhqRjY3QmRPSW9sTHNQd1V1Vk1XdGIzUzN0ME9EY3ZWMlRVQlBrK2RRN1Bi?=
 =?utf-8?B?c25ISUVOQ3VIVzFZeWdJbUw4aFU2b3JsaU1yV2ppYVdqUnBIdE01ZVc0ek9l?=
 =?utf-8?B?NFpSMGg2NkdaVE5TbFMvRjhnNlE0cGVFTDdTNWgycTBQQktoRGZqMnlNL250?=
 =?utf-8?B?clRVdFU5dFFXQ2dCYWdVWFpFSlNVQkkrNElQeEpNckExREorcTl1MTVoTEQ1?=
 =?utf-8?B?TVVQT3dYbitrcmRCanh5dDkxelcvUWZwVmw0OFh1Ym9pYjRMUU5Rd1NGeUVu?=
 =?utf-8?B?QXFNdlRDdFJIdmIwSmlmNlVGZS9RVVRYTkxrT1ZzZHBsc0tQOVNqSm1zVTdV?=
 =?utf-8?B?L0xlWVRUY2g0Y0tjNlpyTEhuQWRXWlBvbktRNkV3bnhBYk15OVhzWEY3elpL?=
 =?utf-8?B?Wk1FYnFsSVJ6NHp2U0E3VmlvMWdhbmk1dW0vUHZ2d2RMbEwvNmFRNXFHYVJZ?=
 =?utf-8?B?RE9CTDR4dHBGZDk0a2tpelBkYVZLYlkvSUxaTEdKVEt2Q2Z5MXRFVGttNm9W?=
 =?utf-8?B?d2xJSXRHcXlyNEw0K0lVUzdja1p2c0dyYzZqMnBxeUhMbFh2Qk9IK1pIYndR?=
 =?utf-8?B?MHNvRTllN0pPRVo0WG9FeElIdG0vSEFXcVE3Q25VM3RJTnpDKzdZZlRTb29W?=
 =?utf-8?B?MHFzaWlwM0hjYmlVRWVTSk9jbkRvK1BydXFWbExOaXdDUEU3SWpxbzJ3bVlT?=
 =?utf-8?B?NE5PaDVQbW9FcTJ4TnB6L2RNR3g1bml6NE9TbHVwYk5OUEs5YkNPa2c5T0NV?=
 =?utf-8?B?VEU1K1hGSG1rTGNWKzYvd21ZUkcxZm5BV2tyWHpVaWxIQ1ZOZCs4K0o0Qnpl?=
 =?utf-8?B?LzlnV3RnNS9yS3lHSG5ES3JTQXBFSTVYM28rTGRIbFFKb2RlZ0c0c2tNaFBS?=
 =?utf-8?B?L2VKN1oxOW9SWUlMNlFKRW40TVFUa2NiL21EbE1CS1RkS0NVbmlZY2RTek85?=
 =?utf-8?B?ckZsN2JHeVUxZlVXaHFEVTI2RUdSQ21YVFhLZW1kTkd5anhKZlN6T29LNDVC?=
 =?utf-8?B?WG1uNmhKTmkwYUpuOHlwOUZKdU5aYm9rYkZhbE9GbzBDMEtad2ttZXo3TDFi?=
 =?utf-8?B?eFVoL0NlQktFS0tEZEdXTFd5ZzkvdUNRelRLa2ozYm52ZFZpNXNHNmlhY1Bk?=
 =?utf-8?B?QzJXUS9BbS9KcjlLVnkya0hKZVluRVYvSjZJY1d3SlVoaVgwMFBQS3JMWkhU?=
 =?utf-8?B?UVlERkRFTFlYMzl2V3U0eWJtNFVBcWdLdzIrSElWSFRqQXhYeDhJdjFXU250?=
 =?utf-8?B?cmc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: wWfabj/MlqRGW138qi/7WVhhCt2QeJn07xJURsZXSZcU2FmOF0RV5QLidVAcsKIEI2vRQtlu3BZ5jOmtMxSmG/qqzRsO0cVoLg0DEU+s0isPbDUuxuOq+C7KKj7nQnp26R3Hvhg+oykTzDY945wZV929pEjAzLFil9uyAZ+oX4779yyspCbdpMSjLLFVL6j+1jNp4BtPGr2GDwW1r/QruRdUpfuqyvJHJRlp62rLZS4kMYCMrbbfUZ/oeEqau1TTaHnYbsfKHbmjnBr3+W2Ezp4nVLH78vV8Ne5Itix98c26q1GArDScrC5q0LiaPmdQLgKo40Ke6V5YY+7g52jAKcCPBMZoXI1OWnBbLHhfg3e7IA8bQjO577VQRt5g+1GrQspNq7Cve8ga2HzTPw+XQtnVSGib/2Qi2jVcxbq5x8BDpMsZWLatZiwYLfe8nEG3d+BZW8FOCceb6urIFhyf1lnPL4ZIfdlTA/rD5NTz5CWY+AvfuTk0IaFnWQr56cL7LZnvb0eeTeJYfp0lpHzZqVjMKTbVEiGm7gMzKEYzoQF/SVHjdLmNiTJfdVqOkbEx9+osMskaLYvzIz4zcsDkc+fHT5XRImMtgHGu9EIME7Q=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 280a60f6-2a87-43f2-ed32-08dd6c8317be
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2025 16:27:25.3226 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: M1AYNszTCp6rFh15IIDfn7U3y2DVuu/WUatjMRzIg1ChLU2GM0h8oig75cEs13x2TRHZeV0Mxt0AyG5GKQY8+UOgW131315g8IrHjopSGwg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR10MB6810
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-26_08,2025-03-26_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 spamscore=0 bulkscore=0
 malwarescore=0 mlxlogscore=999 suspectscore=0 adultscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2502280000
 definitions=main-2503260100
X-Proofpoint-GUID: wucVnnSjhRMo8te9IkiyNsPpkoi73Jd5
X-Proofpoint-ORIG-GUID: wucVnnSjhRMo8te9IkiyNsPpkoi73Jd5
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 3/26/25 11:25AM, Dave Kleikamp wrote: > The following changes
    since commit > ab68d7eb7b1a64f3f4710da46cc5f93c6c154942: > >   Merge tag
    'loongarch-fixes-6.14-1' of git://git.kernel.org/pub/scm/ > l [...] 
 
 Content analysis details:   (-0.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [205.220.165.32 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
  0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [205.220.165.32 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1txTbR-0008CL-E4
Subject: Re: [Jfs-discussion] [GIT PULL] jfs updates for v6.15
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gMy8yNi8yNSAxMToyNUFNLCBEYXZlIEtsZWlrYW1wIHdyb3RlOgo+IFRoZSBmb2xsb3dpbmcg
Y2hhbmdlcyBzaW5jZSBjb21taXQgCj4gYWI2OGQ3ZWI3YjFhNjRmM2Y0NzEwZGE0NmNjNWY5M2M2
YzE1NDk0MjoKPiAKPiAgwqAgTWVyZ2UgdGFnICdsb29uZ2FyY2gtZml4ZXMtNi4xNC0xJyBvZiBn
aXQ6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtLyAKPiBsaW51eC9rZXJuZWwvZ2l0L2NoZW5odWFj
YWkvbGludXgtbG9vbmdzb24gKDIwMjUtMDItMTMgMDg6NDM6NDYgLTA4MDApCj4gCj4gYXJlIGF2
YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6Cj4gCj4gIMKgIGdpdEBnaXRodWIuY29t
OmtsZWlrYW1wL2xpbnV4LXNoYWdneS5naXQgdGFncy9qZnMtNi4xNAoKT2YgY291cnNlIEkgbm90
aWNlIHJpZ2h0IGFmdGVyIEkgaGl0IHNlbmQgdGhhdCB0aGlzIHNob3VsZCBiZSBmb3IgdjYuMTUu
IApUaGUgdGFnIGlzIHN0aWxsIG5hbWVkIGpmcy02LjE0IHRob3VnaC4KCj4gCj4gZm9yIHlvdSB0
byBmZXRjaCBjaGFuZ2VzIHVwIHRvIGE4ZGZiMjE2ODkwNjk0NGVhNjFhY2ZjODc4NDZiODE2ZWVh
Yjg4MmQ6Cj4gCj4gIMKgIGpmczogYWRkIGluZGV4IGNvcnJ1cHRpb24gY2hlY2sgdG8gRFRfR0VU
UEFHRSgpICgyMDI1LTAzLTExIDExOjUzOjQwIAo+IC0wNTAwKQo+IAo+IC0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiBWYXJp
b3VzIGJ1ZyBmaXhlcyBhbmQgY2xlYW51cHMgZm9yIEpGUwo+IAo+IC0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiBEYW4gQ2Fy
cGVudGVyICgxKToKPiAgwqDCoMKgwqDCoCBqZnM6IERlbGV0ZSBhIGNvdXBsZSB0YWJzIGluIGpm
c19yZWNvbmZpZ3VyZSgpCj4gCj4gRGF2ZSBLbGVpa2FtcCAoMSk6Cj4gIMKgwqDCoMKgwqAgZnMv
amZzOiBjb25zb2xpZGF0ZSBzYW5pdHkgY2hlY2tpbmcgaW4gZGJNb3VudAo+IAo+IERtaXRyeSBB
bnRpcG92ICgxKToKPiAgwqDCoMKgwqDCoCBqZnM6IHJlamVjdCBvbi1kaXNrIGlub2RlcyBvZiBh
biB1bnN1cHBvcnRlZCB0eXBlCj4gCj4gRWR3YXJkIEFkYW0gRGF2aXMgKDIpOgo+ICDCoMKgwqDC
oMKgIGpmczogUHJldmVudCBjb3B5aW5nIG9mIG5saW5rIHdpdGggdmFsdWUgMCBmcm9tIGRpc2sg
aW5vZGUKPiAgwqDCoMKgwqDCoCBqZnM6IGFkZCBzYW5pdHkgY2hlY2sgZm9yIGFnd2lkdGggaW4g
ZGJNb3VudAo+IAo+IE1hdHRoZXcgV2lsY294IChPcmFjbGUpICgxKToKPiAgwqDCoMKgwqDCoCBq
ZnM6IFJlbW92ZSByZWZlcmVuY2UgdG8gYmgtPmJfcGFnZQo+IAo+IFFhc2ltIElqYXogKDEpOgo+
ICDCoMKgwqDCoMKgIGpmczogZml4IHNsYWItb3V0LW9mLWJvdW5kcyByZWFkIGluIGVhX2dldCgp
Cj4gCj4gUmFuZCBEZWViICgyKToKPiAgwqDCoMKgwqDCoCBmcy9qZnM6IGNhc3QgaW5hY3RhZ3Mg
dG8gczY0IHRvIHByZXZlbnQgcG90ZW50aWFsIG92ZXJmbG93Cj4gIMKgwqDCoMKgwqAgZnMvamZz
OiBQcmV2ZW50IGludGVnZXIgb3ZlcmZsb3cgaW4gQUcgc2l6ZSBjYWxjdWxhdGlvbgo+IAo+IFJv
bWFuIFNtaXJub3YgKDEpOgo+ICDCoMKgwqDCoMKgIGpmczogYWRkIGluZGV4IGNvcnJ1cHRpb24g
Y2hlY2sgdG8gRFRfR0VUUEFHRSgpCj4gCj4gVmFzaWxpeSBLb3ZhbGV2ICgyKToKPiAgwqDCoMKg
wqDCoCBqZnM6IGFkZCBjaGVjayByZWFkLW9ubHkgYmVmb3JlIHR4QmVnaW5Bbm9uKCkgY2FsbAo+
ICDCoMKgwqDCoMKgIGpmczogYWRkIGNoZWNrIHJlYWQtb25seSBiZWZvcmUgdHJ1bmNhdGlvbiBp
biBqZnNfdHJ1bmNhdGVfbm9sb2NrKCkKPiAKPiBaaG9uZ3FpdSBIYW4gKDEpOgo+ICDCoMKgwqDC
oMKgIGpmczogRml4IHVuaW5pdC12YWx1ZSBhY2Nlc3Mgb2YgaW1hcCBhbGxvY2F0ZWQgaW4gdGhl
IGRpTW91bnQoKSAKPiBmdW5jdGlvbgo+IAo+ICDCoGZzL2pmcy9pbm9kZS5jwqDCoMKgwqDCoCB8
wqAgMiArLQo+ICDCoGZzL2pmcy9qZnNfZG1hcC5jwqDCoCB8IDM5ICsrKysrKysrKysrKy0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ICDCoGZzL2pmcy9qZnNfZHRyZWUuY8KgIHzCoCAzICsr
LQo+ICDCoGZzL2pmcy9qZnNfZXh0ZW50LmMgfCAxMCArKysrKysrKysrCj4gIMKgZnMvamZzL2pm
c19pbWFwLmPCoMKgIHwgMTcgKysrKysrKysrKysrKy0tLS0KPiAgwqBmcy9qZnMvc3VwZXIuY8Kg
wqDCoMKgwqAgfMKgIDYgKysrLS0tCj4gIMKgZnMvamZzL3hhdHRyLmPCoMKgwqDCoMKgIHwgMTUg
KysrKysrKysrKy0tLS0tCj4gIMKgNyBmaWxlcyBjaGFuZ2VkLCA1MSBpbnNlcnRpb25zKCspLCA0
MSBkZWxldGlvbnMoLSkKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNzaW9uQGxpc3Rz
LnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0
aW5mby9qZnMtZGlzY3Vzc2lvbgo=
