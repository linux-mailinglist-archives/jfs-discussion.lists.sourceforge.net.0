Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 377079D561C
	for <lists+jfs-discussion@lfdr.de>; Fri, 22 Nov 2024 00:15:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tEGOi-0005D1-MP;
	Thu, 21 Nov 2024 23:15:40 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1tEGOh-0005Cv-Ge
 for jfs-discussion@lists.sourceforge.net;
 Thu, 21 Nov 2024 23:15:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1TCdIqhpUovKO5GhcWs9f/5oCBwlTKaKnwDDG8i+6Vc=; b=gEm3q6J/9+erGtvju3z74LwX+E
 j7OdNIfEwxT/6ITfp/2AsEA1ij9uJD2THLx/HHAhWt6GX8hXEOhyptKTrDAPXQBJJL9TgeWB3AQfT
 OXfDaE2EGp8heC1KCFQ1JLpfcCjB7vy7NDamIwhQZ0FeV8k1o4E2xs4czUYt+YJzQScA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1TCdIqhpUovKO5GhcWs9f/5oCBwlTKaKnwDDG8i+6Vc=; b=Wgy/hqnI8mK7SxqXKVIWHnLbVq
 I0a1MigK8n6RCycCHYKVBv1X1ST/tlB+vvLuiQ8HnhVH3o/Ff4iSWXpf6n5Rez8C4Dzbpz+KhWVkM
 xFF5r/6ZNa6n1rrS3/OCbJKvCfjXB+oaSMIBEUkWshyK4/8kj6pH8SI2V1KjQEPdEQBM=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tEGOg-0005uO-86 for jfs-discussion@lists.sourceforge.net;
 Thu, 21 Nov 2024 23:15:39 +0000
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4ALIBbg3004684;
 Thu, 21 Nov 2024 23:15:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2023-11-20; bh=1TCdIqhpUovKO5GhcWs9f/5oCBwlTKaKnwDDG8i+6Vc=; b=
 NZtv+oXQBDunIw1Udoy1EePW2SfbBW91AwPIrAGeaysgYpnhYM1O/8Q4UM2kQCVt
 mpcjC+ZiW4YdfsD9wxEbl4SGLjpgFO7pxXevq2UVDmM3fcJjeUIF+KF6dyOIqw4f
 SiyWBqMoLgnlYWagaqN53hVrIBGue6saIbZ1A8aMjrIX+bZiPBmCV9Gr7HclxW9S
 MIY1EEPhhJeU/mTxA9D05nBG7mmygC6/yC65Pf1BNOg+X+doyd3+zhw1mQEHejSu
 Uj3zw5cdxQpdUcZyC6Bi5U7XHILy0gZRTxga3wGo+yrimPMPD0pzUYtsat7YpRN1
 g5k0QyESC4KpEKQagPFNzA==
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 42xhtcaw0h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 21 Nov 2024 23:15:25 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 4ALNFKZg036928; Thu, 21 Nov 2024 23:15:25 GMT
Received: from nam10-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam10lp2040.outbound.protection.outlook.com [104.47.55.40])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 42xhucg442-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 21 Nov 2024 23:15:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q9BIEAnAuyaj31GwPx4+SYEdvVeYqMHfQx/1Lsj6k41B9pgWoANCpco9NxcKbqryL3fVAZkbbnM/h9OK9QP8CNfxnquB6l6AXFgM+IK4hZ+XEMn2eNngWQeRJdwh+gIcZRd0iNNIPbgkFNwDkB5+b2sqUObXo2naCxdIn8mgrcGVBWv+W6mgXa4HXGgV4/ynFEWeG5RmR8Uw3FajL1VddNPnPSauBJ6oF0F3vru9GVpAJdi4R8LWXZ5+ctzi3eFt76xFhK6SoaKROiZipPOIgyfM4lJDBDDbi2wNnU0ikD9j2uU2F9oifLCiEdrgI3uyXFWL4wQUEJL+KNwjAelCYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1TCdIqhpUovKO5GhcWs9f/5oCBwlTKaKnwDDG8i+6Vc=;
 b=Mg/33B23QSoNd0DGo6xTWGhOANRa2Q3B5/63bqnCmg7Ufady5JlM/U5/3VSBbdKm8daTyAW5x2dB7oJUr6/Qc1UgkSmaPSKUOBuwg6IwdAQ78bOWkNJFAYNqlgabGIns5Zz7EjQhvh6QBUMrYrpT3i1FXLqiAITiPB/+Qg3PqNwnz917Wl1pBiIoGE5ONl0CQ9/Lu6rtV8wzQb3OWmgETbLjMsj1BUB9cEq7r6vMcrnj9SJA14qWXrRZhKYQsyG94axeHo15aVkl6+5RpJI6hu3q0eiB8jJa6OBdgc7DyFvj4dd6tmxFwdRUFUdE3lz0PNbrGW1XEf4YbScD9AJoag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1TCdIqhpUovKO5GhcWs9f/5oCBwlTKaKnwDDG8i+6Vc=;
 b=wxS8aA9DLMvgORaENFOhzyzENOcHQJQYuHrDo/ClWhEHsAtK1p4beINxM3F/Zp7aaK0wgI3I+50egOhdB2fAremxup6gcAqwOlL1YzzSQlHDj2LzxltldlfjMWsxM0e7Ffq2uU6HpZ7QGrKjqo8eOhtUcFEv7C73i6U3gnY5ZPU=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by MN2PR10MB4254.namprd10.prod.outlook.com (2603:10b6:208:199::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.27; Thu, 21 Nov
 2024 23:15:22 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb%6]) with mapi id 15.20.8158.024; Thu, 21 Nov 2024
 23:15:21 +0000
Message-ID: <2bd0b5b9-47fa-4373-a81d-bcc20a07e5fd@oracle.com>
Date: Thu, 21 Nov 2024 17:15:19 -0600
User-Agent: Mozilla Thunderbird
To: Jan Kara <jack@suse.cz>, "Bai, Shuangpeng" <SJB7183@PSU.EDU>
References: <3A6D2300-7787-4C96-8509-B8D5907B9135@psu.edu>
 <20241118110411.adggbvad6ncocbhr@quack3>
Content-Language: en-US
In-Reply-To: <20241118110411.adggbvad6ncocbhr@quack3>
X-ClientProxiedBy: CH0PR03CA0119.namprd03.prod.outlook.com
 (2603:10b6:610:cd::34) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|MN2PR10MB4254:EE_
X-MS-Office365-Filtering-Correlation-Id: a85b52a7-2fa1-4378-3496-08dd0a825ed0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QStMQmpaVHhPaGtoTERyMHJxejhaeFl3akE4a1VTeVFEMWx5VkVJK0I5RXFF?=
 =?utf-8?B?Lzk0Z09HUDRWcm1xVHgxUFcyblk2TTcxTzdVTzNLOCtENzJscGdUUnRPSE0z?=
 =?utf-8?B?YnFkOVJzUFNYMGJqUytMaTRZUVZoVzNIek5Yem1wRVF0ODFYaFV4QU1TREo4?=
 =?utf-8?B?YzNEb3dKa2w1Vk05a2tDanphd3VEeUwvTlF6VUlWQ1gydGtqMHYwdnhabGpD?=
 =?utf-8?B?bC9hdy9tanFLSzNUQitIWUdWTVlhN1V0RnZ3bWswY1lRcGMySEtuTUdMN3RI?=
 =?utf-8?B?ejRnT2FNL2todUdldzJLSXlHN050Mk5Id1FmdmV4MFJKZHgrVzZGWkxQank4?=
 =?utf-8?B?NlFZZVJnSlpTUUVNL0VlZkJJNXN2Z2ZLd0ZuZ09scFUxd0VDNHlGR1RVMndK?=
 =?utf-8?B?azNMMTRXS2s5cm5hb0R2czBQcVJxUDhyREd0bTFwZjRZNTRZL3pTaVcwVTFm?=
 =?utf-8?B?eTU4bWZJdFBJYkJPQXVGSUMwaGFoc2QvT3U1bE1MK3FrR3MvTHk3NmEvMlIx?=
 =?utf-8?B?UHlZT3phbk5Zc3Z4UGV5TytNNjEvRW1mZUhnMkd2UkpmbWczL201eFV3R3RB?=
 =?utf-8?B?UGt1WE9RdW9qcE14NTVpVFJxMDVueCtNV0VpV1FjdGxpeG5LYVlVOGRodGlr?=
 =?utf-8?B?S1hYd3JBM0s0dzdtZ0FWdWlRZFFaYTFvR0F5MzFYSWp0R2I5WXZmZ2dQdHdU?=
 =?utf-8?B?Z0tyeVRNdjhWTTdhNytJWTZSM01SOGJoZ3IvZ0pjSlNvUHV6dys3bUYzQ3FZ?=
 =?utf-8?B?VHN6cml5dk11dWFRb3Q3MGJXbndZRGM4U04yMGpMdFJEbi80SmFzY0FIUEE1?=
 =?utf-8?B?M0lMcmpySU9PaVM2Q0FyR21CN2djYk02b1ZNTHRMc3pobDZBM01LVzRMVTh3?=
 =?utf-8?B?UGNuNk1HZDMyWm9aRzBNK3NqTDVXWkwvSy9RNmlKcWJtcldjTkZvRlMvcFpB?=
 =?utf-8?B?dWJxT0pjMUQyT3FONGYrUTNPeGdmcElHRVc3Zk9nV0Q3SURZTnN0Y1pQcHdN?=
 =?utf-8?B?Z0s5TXJOSVRxeG5pN002SUJXWHA3WGhYenMwT211UG95SmNmVHJqSU5uVE5v?=
 =?utf-8?B?Nm5tOWJsUkRyQ1YzdlNjRVF5MnZmMkhzS2Z2Mk9XNCsrd2dSRmxmaHROeTBz?=
 =?utf-8?B?Q0ZCdXBFOEJhdkFLTld3emVUTGk2bmJ3bHVIeEwrQzhCVTVJUzZhSzhQYlZR?=
 =?utf-8?B?NXZ3UmR0dis2VTl4UW1lSUF1N0lIVWU2MFl2cEQxbWphbW8wanNaT3NiclpD?=
 =?utf-8?B?T2VkNnJ0ZThlMjN1djg2aTE4RUZqakd6MlNVWDhsejVUelpSRWUrekt5YnhK?=
 =?utf-8?B?V3ZMZ0U5Nm1yRjlQS056SFFxQXNCTzVZWWZ0bFdJYUlKTCsrbEM1QjVOM1ha?=
 =?utf-8?B?L3p0N0dLc1gwZHNrTkdiV1ZDN1dLREpPdG1NY3ZEMjlXNWpYZkJwUjE1UTA3?=
 =?utf-8?B?WGNKcHpFTis3d2hBbURRcUNyN21SNjRham8ya3BiQnFjYVp2TVYvVkdWbExK?=
 =?utf-8?B?b1h1cHJwaFl4WHBlZkszY1RxbGorRTRiR2FWWDVhdTA3V1FuU3l6ZGZmQ0J2?=
 =?utf-8?B?VFNNVUZTRHVjREtnVHQxS3lrMTlRVmVFbnFycHliSXQyeTZhQktQdlBRVXhM?=
 =?utf-8?B?WEpCZzUreVFRM1ZyZVNQblhLc3dQNlo3bmxFL2daTjRUMFpIKzgzbWN5aVh2?=
 =?utf-8?Q?hTMdsXB0h2UuMNH7nBBT?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R1hyU3JZWjhwQXpKYlhrOC9ZT2xTeGVjZmpkSkliTThBMmpHeWFycmtjSWkv?=
 =?utf-8?B?NGFFa1BwSVBJY1VxU1JDc25SOE1YWUFoT3ZNSlJVUExYcGlGRnNCOHZoSmtu?=
 =?utf-8?B?WThBR0JPb3BXV3JnaU5PWEhyYk9Vb3N1dDFwbzV0eDFwU2t5ODVvTlVwaTlK?=
 =?utf-8?B?anYrdHV3RElHYTl1cFhDZldTTVhTeGcwUUM3eXJXK0owdFhEVHNPYTZYK2Js?=
 =?utf-8?B?TE8yNFBUdHNXZzNBdWIzSWYzTUhKbkxXdkJYQmlMa281OHFLUVdma2tuQ0N6?=
 =?utf-8?B?QXhrMVd6dXhuQ29qUVhvTEs1ZWV6V2o4TFNPdVY2SGxzSUFDbXFOdWxkRFJY?=
 =?utf-8?B?ZnROcFFwUDhMZW50a2hFQ0FzSWgxdmZSNHdmUndwejRjYUNjUGd4VDJla25p?=
 =?utf-8?B?dldUMWpTSjBNSUpJZXZFcEJjVjR3dWIvalNCNlVlU09kM3l5b2JlUGY4Yndw?=
 =?utf-8?B?NUlaM3JEMkEwTFlPVmlUVnRHNVJ4QzNtejlRV3l1UGV5WUxRSkMxWEZBTnB4?=
 =?utf-8?B?RlJoMmlOSnU0b3lKWUhiRDlVY0p4SkJDb3ZMazNrRllBYTQ1U2ZlSFAvaTds?=
 =?utf-8?B?c2VHeUZ2elowSTdKcVVzUmhnaUQ0V1FqeUVXNUNoV0JpdHJFd1ZiRmRTSllT?=
 =?utf-8?B?S1lMalhrSzVXcWdubmJ5cGwrOEZuMXJlYitJVWpoT2F6aURGb0lwU0ZyY3ov?=
 =?utf-8?B?QTdHalNVdHhlb1UrVWlIejY4d3NYWlQ0OWd0YzVVZG5GamhSVGFiSWl1U2Vn?=
 =?utf-8?B?aGhYelZYcFJGMXhzRHljN3dVbm8wZlVOTUF4ZW1VZ2dlajVFWVVNODNjYzE5?=
 =?utf-8?B?MmlYS3ByOW9ncUpnMEVJNWdIUlhEa0xlU2k3Mko3Qkg3ZEExeEdNYTAwQ2ZT?=
 =?utf-8?B?YlZFWE1rMDNkMmpDVDQxVzk0ZWRlY2NtZEltSVIwMlFmTXJyeDBmSWV3d0F4?=
 =?utf-8?B?anNDQ2JndXQ5MTNaNUdMYzFXZE9kcy90V28ySEpLOGdHbldlWWJQcE1SMlVI?=
 =?utf-8?B?dlhRNm5vcmRaSUtleXVzRVd4NmVQRUg1LzJBNmFNWEdVN0krWlZyUTkxZ1Qx?=
 =?utf-8?B?VEprSnVDa3VkMnBVSGIvVFdnbndFTFdBWndDa09pZVVGUDkyb3YxUDRkR0wv?=
 =?utf-8?B?OGRWa0MrWkJlbnF2QjFBMGhDK01BNVk5UUJCN1BQQ2t3VzUxaitEdk1KaTNo?=
 =?utf-8?B?ZEZlWkxoSlRXSUg5TUMvVWVTN1VZak01UXFGYjRGOHR5SjBlSURWS1lDSTN1?=
 =?utf-8?B?dks4VEtVejhBOU8xZDdDeUl6cmJ6Z2V2WlhmYUtwQXIrTGp0Qjk0TVVjODZF?=
 =?utf-8?B?OXdUMVRGVzg5dWdzQWlEQms0UmxHRWRYOFNIay9vWHhpSUVrNDNISXlBUnZ4?=
 =?utf-8?B?d3p0R3hnOHNSNlhNcGdPVHFXckIwSVQ4cFhEenVhRlFPYmlWRlExbjVHM1Jv?=
 =?utf-8?B?YXFRLyswUmg2ZE15VTJqR0FDZnJoWCtNOXdUZmNvY0dyUEJQKzFmNVZVSE5T?=
 =?utf-8?B?aHF6ZWpLckFiMzNXRE9BV1Y3d1huUDJJbHh3WTloNWh4K0pWSnlxWUZVUkxy?=
 =?utf-8?B?aTB4eFZLbG0rYThCZUVJUVU3dUNJMy9sSmFiK2FOejRrRTRXL0Irbk5RbHF2?=
 =?utf-8?B?S2tPY0l0V2RzTkdiT2lzbXRZOTVjaGlTUERJZ21VazJiR1cyRGJ2dUs4WkR1?=
 =?utf-8?B?SThCT00zNUdoNVpGejZwU2kxZHp5ZUhGdVBSc3VodUFFdFNJMSs4WWR5OFNi?=
 =?utf-8?B?d212NlY1VGNFaVd4UUdtUm1oaTB1QWRIaGp5My9aY3pKcVNVdmR6UXlEK2U1?=
 =?utf-8?B?OThVNm45ZTNRQTIyNG1ON2QzeHVpbXlLd2hqazR3TDczVEdWTHNoVFQxdldq?=
 =?utf-8?B?b2hEN3gwQUMrM0Y4aGx5ZitIMWY2dTkrQVkwYkxTUVpsT2pXTjdyOWw1TnlO?=
 =?utf-8?B?WFo4Q3NpTDlZZXlKc29KSGh4MmlSM3lnZUsrYzMzZytxditLRVhCbnl0MlhN?=
 =?utf-8?B?TzJCK3VGN1Y3clVCc3grdml0TWZ1KzhqY3hrd3NzQkVPOG1lZ29uSmJIUEo3?=
 =?utf-8?B?dm1hVVZTNkhMMmVJZWNKU2pLQ2J6S2VWc1dURnVJRlB2U0ZzeTBUMG1ZbHMx?=
 =?utf-8?B?ZWEza3pNeVZ0ZjVneEpxN2lWRjhlVWFXTi9CcUdZZWpCYlcwdjUvUWVIdlVy?=
 =?utf-8?B?WHc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: FJwyEjecZAM+VVQOdtgnelf8bXiKwK6E8D1tuA5Nvcrs1ydw/mw7/DlqxngnqY/yo0SPc0wGH9rd/2zVF5Q6tuVmVfWSStiIe32DKQFyWfMSeQGFp41WRKiJ1mHc1R245pQyOHckuKecmSkwQXMNZ7WwWWKeekLnIXwX8qoPSoKNY6amZJEpmAJ3q0Lry5O/zFI2eBMla66FQIoC3XqGqeuqBFkiaiFqwYVvTZlJ+tB/ab+N1cMkGIxtxCerPBLrdKWKlWcflHLtN4O5tUu0nJm8+1TCJzWfPHCv3pwnua/h8fUx8e1opcFGVM81pW8YX6S+VUBrEmbBUWQ4ZsmcAdtzlsqTs0G8IcvmjXpHMtDgMsmu3vHp5B2cLzyoLMXVSiqB0JLiU135ajGmVRK1eO6WWd0hVMMB+96v6EqjqBTzXvSQpCk2t+i/X+FHycdR/irUrQfejffK7ohxPR00bPR3FiwOpcbQKarGcFn0iL3xJVfI0X03QwgWh/fAEdaQvYWOvLO0m6UB8+OvCx6RujNaAFFVj2BvKulYDHbek+NHU026AZOKObNeJZzjkCmXms9pvwaZaM3lgxv5TFdmziNH0sPMh9OkES61Qt+Ew8o=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a85b52a7-2fa1-4378-3496-08dd0a825ed0
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2024 23:15:21.1509 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6ErdsAOlefqtrT/zSZRbyzhhjR5JnJ8yc4WU9IIitd3DvkrR/DqbzyQOF4iaIX5voEBQsdoFmwqSYO/3u399WCQ5EORgzEpbRS/2HW3GFd8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR10MB4254
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-11-21_15,2024-11-21_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 adultscore=0 mlxlogscore=834
 phishscore=0 spamscore=0 suspectscore=0 malwarescore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2409260000
 definitions=main-2411210176
X-Proofpoint-GUID: hqVJliZ_kEKth7bUW5X-vlDZCVQb1R44
X-Proofpoint-ORIG-GUID: hqVJliZ_kEKth7bUW5X-vlDZCVQb1R44
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 11/18/24 5:04AM,
 Jan Kara wrote: > Hello! > > On Mon 18-11-24
 04:32:38, Bai, Shuangpeng wrote: >> Our tool found a new kernel bug KASAN:
 wild-memory-access in >> dqput.part.0. Please see the detail [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [205.220.177.32 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [205.220.177.32 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.220.177.32 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.177.32 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1tEGOg-0005uO-86
Subject: Re: [Jfs-discussion] KASAN: wild-memory-access in dqput.part.0
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
 "syzkaller@googlegroups.com" <syzkaller@googlegroups.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "jack@suse.com" <jack@suse.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 11/18/24 5:04AM, Jan Kara wrote:
> Hello!
> 
> On Mon 18-11-24 04:32:38, Bai, Shuangpeng wrote:
>> Our tool found a new kernel bug KASAN: wild-memory-access in
>> dqput.part.0. Please see the details below.
>>
>> Kernel commit: v6.12 (upstream)
>> Kernel config: attachment
>> C/Syz reproducer: attachment
>>
>> [  341.442215][T17431] ==================================================================
>> [341.444194][T17431] BUG: KASAN: wild-memory-access in dqput.part.0 (./arch/x86/include/asm/atomic.h:23 ./include/linux/atomic/atomic-arch-fallback.h:457 ./include/linux/atomic/atomic-instrumented.h:33 fs/quota/dquot.c:867)
>> [  341.448056][T17431] Read of size 4 at addr 006d03ff00000150 by task a.out/17431
> 
> This is a call to atomic_read(&dquot->dq_count) inside dqput(). And the
> address 006d03ff00000150 shows that dqput() has just been called with bogus
> pointer. Which means that jfs2_evict_inode() calls dquot_drop() likely with
> uninitialized i_dquot array. Shaggy, can you have a look?

The i_dquot array gets initialized when the inode is allocated. Maybe it's being overwritten.

> 
> 								Honza
> 
>> [  341.449702][T17431]
>> [  341.450245][T17431] CPU: 1 UID: 0 PID: 17431 Comm: a.out Not tainted 6.12.0 #8
>> [  341.451865][T17431] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.15.0-1 04/01/2014
>> [  341.453827][T17431] Call Trace:
>> [  341.454559][T17431]  <TASK>
>> [341.455199][T17431] dump_stack_lvl (lib/dump_stack.c:123)
>> [341.457411][T17431] ? dqput.part.0 (./arch/x86/include/asm/atomic.h:23 ./include/linux/atomic/atomic-arch-fallback.h:457 ./include/linux/atomic/atomic-instrumented.h:33 fs/quota/dquot.c:867)
>> [341.458459][T17431] kasan_report (mm/kasan/report.c:603)
>> [341.459399][T17431] ? rcu_is_watching (./include/linux/context_tracking.h:128 kernel/rcu/tree.c:737)
>> [341.460465][T17431] ? dqput.part.0 (./arch/x86/include/asm/atomic.h:23 ./include/linux/atomic/atomic-arch-fallback.h:457 ./include/linux/atomic/atomic-instrumented.h:33 fs/quota/dquot.c:867)
>> [341.461472][T17431] kasan_check_range (mm/kasan/generic.c:183 mm/kasan/generic.c:189)
>> [341.462560][T17431] dqput.part.0 (./arch/x86/include/asm/atomic.h:23 ./include/linux/atomic/atomic-arch-fallback.h:457 ./include/linux/atomic/atomic-instrumented.h:33 fs/quota/dquot.c:867)
>> [341.463548][T17431] __dquot_drop (fs/quota/dquot.c:422 fs/quota/dquot.c:1607)
>> [341.464548][T17431] ? __pfx___dquot_drop (fs/quota/dquot.c:1595)
>> [341.465592][T17431] ? mark_held_locks (kernel/locking/lockdep.c:4321)
>> [341.466683][T17431] ? _raw_spin_unlock_irq (./arch/x86/include/asm/irqflags.h:42 ./arch/x86/include/asm/irqflags.h:97 ./include/linux/spinlock_api_smp.h:159 kernel/locking/spinlock.c:202)
>> [341.467852][T17431] dquot_drop (fs/quota/dquot.c:1633)
>> [341.468844][T17431] jfs_evict_inode (./include/linux/list.h:373 fs/jfs/inode.c:169)
>> [341.469841][T17431] ? __pfx_jfs_evict_inode (fs/jfs/inode.c:140)
>> [341.471018][T17431] evict (fs/inode.c:730)
>> [341.471878][T17431] ? __pfx_evict (fs/inode.c:701)
>> [341.472844][T17431] ? evict_inodes (fs/inode.c:828)
>> [341.473850][T17431] ? __pfx_lock_release (kernel/locking/lockdep.c:5833)
>> [341.474965][T17431] dispose_list (fs/inode.c:775)
>> [341.475931][T17431] evict_inodes (fs/inode.c:789)
>> [341.476929][T17431] ? __pfx_evict_inodes (fs/inode.c:789)
>> [341.478083][T17431] ? sync_blockdev (block/bdev.c:220)
>> [341.480239][T17431] generic_shutdown_super (fs/super.c:633)
>> [341.481352][T17431] kill_block_super (fs/super.c:1711)
>> [341.482294][T17431] deactivate_locked_super (fs/super.c:475)
>> [341.483433][T17431] deactivate_super (fs/super.c:508)
>> [341.484415][T17431] cleanup_mnt (fs/namespace.c:250 fs/namespace.c:1374)
>> [341.485400][T17431] task_work_run (kernel/task_work.c:241 (discriminator 1))
>> [341.486378][T17431] ? __pfx_task_work_run (kernel/task_work.c:207)
>> [341.487470][T17431] ? __put_net (net/core/net_namespace.c:675)
>> [341.488455][T17431] do_exit (kernel/exit.c:940)
>> [341.489372][T17431] ? __pfx_lock_release (kernel/locking/lockdep.c:5833)
>> [341.490389][T17431] ? do_raw_spin_lock (./arch/x86/include/asm/atomic.h:107 ./include/linux/atomic/atomic-arch-fallback.h:2170 ./include/linux/atomic/atomic-instrumented.h:1302 ./include/asm-generic/qspinlock.h:111 kernel/locking/spinlock_debug.c:116)
>> [341.491477][T17431] ? __pfx_do_exit (kernel/exit.c:878)
>> [341.492477][T17431] ? _raw_spin_unlock_irq (./arch/x86/include/asm/irqflags.h:42 ./arch/x86/include/asm/irqflags.h:97 ./include/linux/spinlock_api_smp.h:159 kernel/locking/spinlock.c:202)
>> [341.493553][T17431] do_group_exit (kernel/exit.c:1069)
>> [341.494577][T17431] __x64_sys_exit_group (kernel/exit.c:1097)
>> [341.495730][T17431] x64_sys_call (./arch/x86/include/generated/asm/syscalls_64.h:61)
>> [341.496761][T17431] do_syscall_64 (arch/x86/entry/common.c:52 arch/x86/entry/common.c:83)
>> [341.497753][T17431] entry_SYSCALL_64_after_hwframe (arch/x86/entry/entry_64.S:130)
>> [  341.499093][T17431] RIP: 0033:0x7fb31b2de146
>> [ 341.500054][T17431] Code: Unable to access opcode bytes at 0x7fb31b2de11c.
>>
>> Code starting with the faulting instruction
>> ===========================================
>> [  341.501546][T17431] RSP: 002b:00007ffc5afbf7b8 EFLAGS: 00000246 ORIG_RAX: 00000000000000e7
>> [  341.503383][T17431] RAX: ffffffffffffffda RBX: 00007fb31b3e38a0 RCX: 00007fb31b2de146
>> [  341.505155][T17431] RDX: 0000000000000001 RSI: 000000000000003c RDI: 0000000000000001
>> [  341.506907][T17431] RBP: 0000000000000001 R08: 00000000000000e7 R09: ffffffffffffff80
>> [  341.508600][T17431] R10: 0000000000000002 R11: 0000000000000246 R12: 00007fb31b3e38a0
>> [  341.510320][T17431] R13: 0000000000000001 R14: 00007fb31b3ec2e8 R15: 0000000000000000
>> [  341.512053][T17431]  </TASK>
>> [  341.512753][T17431] ==================================================================
>> [  341.514883][T17431] Kernel panic - not syncing: KASAN: panic_on_warn set ...
>> [  341.516508][T17431] CPU: 1 UID: 0 PID: 17431 Comm: a.out Not tainted 6.12.0 #8
>> [  341.518075][T17431] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.15.0-1 04/01/2014
>> [  341.520110][T17431] Call Trace:
>> [  341.520841][T17431]  <TASK>
>> [341.521478][T17431] dump_stack_lvl (lib/dump_stack.c:124 (discriminator 7))
>> [341.522380][T17431] panic (kernel/panic.c:354)
>> [341.523136][T17431] ? mark_held_locks (kernel/locking/lockdep.c:4321)
>> [341.524057][T17431] ? __pfx_panic (kernel/panic.c:288)
>> [341.525001][T17431] ? irqentry_exit (kernel/entry/common.c:358)
>> [341.526063][T17431] ? lockdep_hardirqs_on (kernel/locking/lockdep.c:4468)
>> [341.527213][T17431] ? check_panic_on_warn (kernel/panic.c:242)
>> [341.528379][T17431] check_panic_on_warn (kernel/panic.c:243)
>> [341.529413][T17431] end_report (mm/kasan/report.c:226)
>> [341.530412][T17431] ? dqput.part.0 (./arch/x86/include/asm/atomic.h:23 ./include/linux/atomic/atomic-arch-fallback.h:457 ./include/linux/atomic/atomic-instrumented.h:33 fs/quota/dquot.c:867)
>> [341.531436][T17431] kasan_report (./arch/x86/include/asm/smap.h:56 mm/kasan/report.c:606)
>> [341.532391][T17431] ? rcu_is_watching (./include/linux/context_tracking.h:128 kernel/rcu/tree.c:737)
>> [341.533429][T17431] ? dqput.part.0 (./arch/x86/include/asm/atomic.h:23 ./include/linux/atomic/atomic-arch-fallback.h:457 ./include/linux/atomic/atomic-instrumented.h:33 fs/quota/dquot.c:867)
>> [341.534496][T17431] kasan_check_range (mm/kasan/generic.c:183 mm/kasan/generic.c:189)
>> [341.535592][T17431] dqput.part.0 (./arch/x86/include/asm/atomic.h:23 ./include/linux/atomic/atomic-arch-fallback.h:457 ./include/linux/atomic/atomic-instrumented.h:33 fs/quota/dquot.c:867)
>> [341.536598][T17431] __dquot_drop (fs/quota/dquot.c:422 fs/quota/dquot.c:1607)
>> [341.537612][T17431] ? __pfx___dquot_drop (fs/quota/dquot.c:1595)
>> [341.538756][T17431] ? mark_held_locks (kernel/locking/lockdep.c:4321)
>> [341.539798][T17431] ? _raw_spin_unlock_irq (./arch/x86/include/asm/irqflags.h:42 ./arch/x86/include/asm/irqflags.h:97 ./include/linux/spinlock_api_smp.h:159 kernel/locking/spinlock.c:202)
>> [341.540960][T17431] dquot_drop (fs/quota/dquot.c:1633)
>> [341.541927][T17431] jfs_evict_inode (./include/linux/list.h:373 fs/jfs/inode.c:169)
>> [341.542976][T17431] ? __pfx_jfs_evict_inode (fs/jfs/inode.c:140)
>> [341.544121][T17431] evict (fs/inode.c:730)
>> [341.544961][T17431] ? __pfx_evict (fs/inode.c:701)
>> [341.545974][T17431] ? evict_inodes (fs/inode.c:828)
>> [341.547059][T17431] ? __pfx_lock_release (kernel/locking/lockdep.c:5833)
>> [341.548146][T17431] dispose_list (fs/inode.c:775)
>> [341.549081][T17431] evict_inodes (fs/inode.c:789)
>> [341.550043][T17431] ? __pfx_evict_inodes (fs/inode.c:789)
>> [341.551081][T17431] ? sync_blockdev (block/bdev.c:220)
>> [341.552101][T17431] generic_shutdown_super (fs/super.c:633)
>> [341.553173][T17431] kill_block_super (fs/super.c:1711)
>> [341.554216][T17431] deactivate_locked_super (fs/super.c:475)
>> [341.555353][T17431] deactivate_super (fs/super.c:508)
>> [341.556360][T17431] cleanup_mnt (fs/namespace.c:250 fs/namespace.c:1374)
>> [341.557394][T17431] task_work_run (kernel/task_work.c:241 (discriminator 1))
>> [341.558438][T17431] ? __pfx_task_work_run (kernel/task_work.c:207)
>> [341.559595][T17431] ? __put_net (net/core/net_namespace.c:675)
>> [341.560526][T17431] do_exit (kernel/exit.c:940)
>> [341.561426][T17431] ? __pfx_lock_release (kernel/locking/lockdep.c:5833)
>> [341.562555][T17431] ? do_raw_spin_lock (./arch/x86/include/asm/atomic.h:107 ./include/linux/atomic/atomic-arch-fallback.h:2170 ./include/linux/atomic/atomic-instrumented.h:1302 ./include/asm-generic/qspinlock.h:111 kernel/locking/spinlock_debug.c:116)
>> [341.563642][T17431] ? __pfx_do_exit (kernel/exit.c:878)
>> [341.564688][T17431] ? _raw_spin_unlock_irq (./arch/x86/include/asm/irqflags.h:42 ./arch/x86/include/asm/irqflags.h:97 ./include/linux/spinlock_api_smp.h:159 kernel/locking/spinlock.c:202)
>> [341.565796][T17431] do_group_exit (kernel/exit.c:1069)
>> [341.566798][T17431] __x64_sys_exit_group (kernel/exit.c:1097)
>> [341.567988][T17431] x64_sys_call (./arch/x86/include/generated/asm/syscalls_64.h:61)
>> [341.569005][T17431] do_syscall_64 (arch/x86/entry/common.c:52 arch/x86/entry/common.c:83)
>> [341.569991][T17431] entry_SYSCALL_64_after_hwframe (arch/x86/entry/entry_64.S:130)
>> [  341.571281][T17431] RIP: 0033:0x7fb31b2de146
>> [ 341.572302][T17431] Code: Unable to access opcode bytes at 0x7fb31b2de11c.
>>
>> Code starting with the faulting instruction
>> ===========================================
>> [  341.573763][T17431] RSP: 002b:00007ffc5afbf7b8 EFLAGS: 00000246 ORIG_RAX: 00000000000000e7
>> [  341.575510][T17431] RAX: ffffffffffffffda RBX: 00007fb31b3e38a0 RCX: 00007fb31b2de146
>> [  341.577279][T17431] RDX: 0000000000000001 RSI: 000000000000003c RDI: 0000000000000001
>> [  341.578979][T17431] RBP: 0000000000000001 R08: 00000000000000e7 R09: ffffffffffffff80
>> [  341.580726][T17431] R10: 0000000000000002 R11: 0000000000000246 R12: 00007fb31b3e38a0
>> [  341.582427][T17431] R13: 0000000000000001 R14: 00007fb31b3ec2e8 R15: 0000000000000000
>> [  341.584109][T17431]  </TASK>
>> [  341.584889][T17431] Kernel Offset: disabled
>> [  341.585801][T17431] Rebooting in 86400 seconds..
>>
>>
>> Best,
>> Shuangpeng
>>
>>
> 
> 
> 


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
