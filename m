Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 78EBC9846E3
	for <lists+jfs-discussion@lfdr.de>; Tue, 24 Sep 2024 15:39:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1st5lM-0004zP-Bn;
	Tue, 24 Sep 2024 13:39:33 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1st5lJ-0004zG-7V
 for jfs-discussion@lists.sourceforge.net;
 Tue, 24 Sep 2024 13:39:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xzas9ca4BUNAQj6LmVZaMmWmtZDSZlgxcTVzlpvEFdU=; b=N0MizRz+oQCVLqmJ5EOc1FKTJW
 6+Kcp+9ExwmrPQaiwpflgbJxcwpkuaD7OopE214xAgDMuVuLCcYyoe7fQiH+IJG0KnYCwKHQnf1Ad
 ufwMQrckP4+um9u1RN147nNpyygscFP0rYZe82DVqXYBkjhbZyUkvW71f4+leQZ9TP6k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xzas9ca4BUNAQj6LmVZaMmWmtZDSZlgxcTVzlpvEFdU=; b=QOx24XbpdcYDzTCTA9lJ8w5iMT
 n65j+7NDTtJ0kSSeALRsJtvIP3McdyFIztbxHqC6dR4KY3/Pa1ZuBUW9GH9SiC8KpMQvyWDMhx1YA
 jvgiSveRfmCTdF4Dwpvkv7Lot9wAurwdrpjH5Vle+enQ0w7ToCIw/n9jzaDzivfZMcDY=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1st5lI-0003c9-8n for jfs-discussion@lists.sourceforge.net;
 Tue, 24 Sep 2024 13:39:29 +0000
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48OC9HeC026479;
 Tue, 24 Sep 2024 13:39:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
 message-id:date:subject:to:cc:references:from:in-reply-to
 :content-type:content-transfer-encoding:mime-version; s=
 corp-2023-11-20; bh=xzas9ca4BUNAQj6LmVZaMmWmtZDSZlgxcTVzlpvEFdU=; b=
 W9jEOrWRnsndAEZZUM7W+q4IW1j5ZUK6GIhQAYuUtonDYEJQN5tiaRmSdO4968tG
 lIErE/Bu3OgMwRibFQljuVd7T3w3Q3rKakVeZLKPRvBp7DPo+tab/K3aC8ip6+D5
 FnunINwSaOj36q+R39QfN7ZLf3632xBA2E2yTsE06YGGfKznUaqtnozlsiRdx6mm
 cmNjYxT1/Nk2Jq3JQr6I5u5rHDqisYzHmF8bkZVTaFWK4PCXl2ZvN3y3211halIr
 /SSW6WLxbiqGwMYIbVq3ZyeucwTbYTxRVq5DOXpzmFwUDEl26yX13nVDBAP4nFjI
 dBs7sPQFbFxaf1oiiOanYQ==
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 41sppu7euv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 24 Sep 2024 13:39:13 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 48OC3HCR024275; Tue, 24 Sep 2024 13:39:06 GMT
Received: from nam12-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2172.outbound.protection.outlook.com [104.47.55.172])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 41smk987a2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 24 Sep 2024 13:39:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V9j7aQUGk1QXzPYR5fnmUje7WbG+KgQ3Qp0U436BGPnbW9TOv8yyjc1/BG2pFDqFW4UbxqgekzqE8B6SZcOqSsu0XzwDvGa5mpYLN2KkG4+oGVIJG6Tb1uHLgyc4pRydk9YR7mn3sMh81clSE2FOYbeI2hPT7ZPb4x5HPEECqpYkgQ9SSL/+/lcr+IDSxmjFzhE90TkFikkkG0vHQ5f1Xb2CVJDaI4cxTvN03dFi+qLiRyLTRk6HD21XvFo7bqZWQcnqUkdAjmswW7rXKzyjPHXgobsO5DIZvbLVFO6QtEzKEut3fx2eppbHgS7RNrwLZp7kZVzMx/SEEfSWNhgCwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xzas9ca4BUNAQj6LmVZaMmWmtZDSZlgxcTVzlpvEFdU=;
 b=JmehfTu+Z+lhauD21HAsskgBEQ8JXc0n63ciiLllTmI5zAoUYwuFdzeg4N5BDnvN4S2mAmP8BWC5kSe/RuerjbttYU3EBcM2bPlsLRR+OHDo/Zit8nu1sd1AFYJc2+yYJFFjTU6TtRg1PHhBsxmRbItVXZ/mJmo19PQbE7835xiCg+RUJ7HU0ZPdY2A45IeTLybX/CrlsiNiyRg2jYwAu3bj8zX+0KmTtN8x+3lAxAiB+/1Qzh0pxjh4fImctxDv3HCs+ttksDMOkKk1MA1zCMEnOfUreORNcSETD+aQESjTutQYUFkGzHiYWg1i3sQIgr+0YMetEttgEh/6HTzqjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xzas9ca4BUNAQj6LmVZaMmWmtZDSZlgxcTVzlpvEFdU=;
 b=bNh87+7slfnMmmzxTR7sDVsViGOtZ1sm237CitvcZMpiJVsMHg3ASeXk/JN0OYSH3ZRgAY7NX0shA8T17C1fcoJuNSZRlFgMbrUbESMNXka7wDITNAoxAKELtBfOYjN3GxsnMOxuzKkBe5ISSUGTPXCxqymSsSJl2049/ThUqyE=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by PH0PR10MB4629.namprd10.prod.outlook.com (2603:10b6:510:31::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.13; Tue, 24 Sep
 2024 13:39:04 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb%5]) with mapi id 15.20.8005.010; Tue, 24 Sep 2024
 13:39:03 +0000
Message-ID: <0fefb36c-7f4a-44cd-a9a2-57a07c2392ae@oracle.com>
Date: Tue, 24 Sep 2024 08:39:01 -0500
User-Agent: Mozilla Thunderbird
To: Ghanshyam Agrawal <ghanshyam1898@gmail.com>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>
References: <20240922110000.128650-1-ghanshyam1898@gmail.com>
 <c9f80af9-4cf0-4b6e-8c61-4b7a6f287cd9@wanadoo.fr>
 <CAG-BmocfstJNC-JDgtx93EJmg5kMANu4tVRbjqYtZ1CE+AEnEg@mail.gmail.com>
 <470de7f0-3f2d-444b-a949-9db6040cf371@wanadoo.fr>
 <CAG-BmocmdoLv5AR0p69J6JMOwrrQAn32ProJWzH=x5AyeZCfeA@mail.gmail.com>
Content-Language: en-US
In-Reply-To: <CAG-BmocmdoLv5AR0p69J6JMOwrrQAn32ProJWzH=x5AyeZCfeA@mail.gmail.com>
X-ClientProxiedBy: CH0P220CA0003.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:610:ef::31) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|PH0PR10MB4629:EE_
X-MS-Office365-Filtering-Correlation-Id: b8d614c9-6cb1-4aa2-fe41-08dcdc9e4147
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?T1hybVZiZUVHb1R0RytRVXpRa2gvN0ZWbU5jWkI3azlyUjgwQm5rZXpiN3hx?=
 =?utf-8?B?UjBoWW8vV1RQZ3c3YmV0SElLYnY2T1VVdlZUTy9yRTZGT05LUHVuNmxVWEdH?=
 =?utf-8?B?NGdZUzNJVGN5MVZCMTRQZDFIb0tZSGRoeFcrWjhMdkN3YlNUWHRSMUJ2dFN5?=
 =?utf-8?B?NFRYT2tvOTlNYm51QjZnd3UvMXV4Z1VWeE5DVmE0cHhlWHB0NTF4dlN6R2Zm?=
 =?utf-8?B?UFJXaDl1S3Nxd1hpZTJqMTVRd2sveWNjVFJ1bGJUbFpiV3dCaWFDd1M0U1Vi?=
 =?utf-8?B?VXlVeWVDbFdpOXBoWXlHQUdNT09HVFNaY0tkd245aXN1WVF4SUM4Szg2T0JI?=
 =?utf-8?B?K04weUtlOWx5elhXNUFOL0ZBRGE3TVRLdmkvNm82V2RuVHhidE00amhBTmJK?=
 =?utf-8?B?QUxCZ2xBeUZmblFhT2VQbjNBTG9rMHFjeDhGTmE5d0p1UmYxUEJSTUVXUmNZ?=
 =?utf-8?B?ZUJTL0txRnE2RExrSDc2Y2lHQ1pVZTUwdFhGdmpUblBZVGpmSnh2bHZLR0xy?=
 =?utf-8?B?NE9zTnFoUk0vWEU1NmdRME5MTGhTdEUvQW1ISWRHc2JvcU1qcDhWZm9mSHBx?=
 =?utf-8?B?SDQ0R0JhMnY1Y09ERlZoTEJ3V0ppUEtJTjFCUlZVaUNHVGl6Qko3S2tpV1p5?=
 =?utf-8?B?K1IxaTVSQmN5b0JnZVpmVkIyb3J4c0pwb2hTdEFQRTBnRGYzdU9melpzOXk3?=
 =?utf-8?B?UHFxeW4yUDA0RUZUT0FCNlhCUlJld2JQQUZHM0ZmNEx6dzJ2eXdPeVNLa3JQ?=
 =?utf-8?B?eEo2N0FBZ3ZzMml2MWc0T0w4aWZyYnRQdTJMVmxXQ2JnVjE1K1JDQ3BscVpP?=
 =?utf-8?B?WnNzU0JwRlpUWmNxVTBaVmtFOTh3QWNyaklCbDJNMzc1enB3ZDNNZlBuTENY?=
 =?utf-8?B?WVJFc2xiN3YyYmF4YWRIUnlSSTJmOGZZMVBjOGhqTTcwWUs0TXpKMUFzL0JN?=
 =?utf-8?B?SHhXcVVIbitnU0hJcUZRMVZHUHFxbHptNitadXZ1eGw5SW5FSjRkMGt2bjFL?=
 =?utf-8?B?NXN4ZVZycFQyVStmMk1CWDYrVXE0YUpDTzFMd2ZFVHFKSjZnMnNmcFJYY2dq?=
 =?utf-8?B?UnVNaWFoRnVUaUFLMmZzbldWSW5teGdDcmJwdU0rNWNuSzZGbytZU3N1VXFj?=
 =?utf-8?B?aCtLVFVUemZUeDBUUk9LZE9jSlQ2ZFA1emp3M2ZVUUxEaGJuRTRFR2xpV20w?=
 =?utf-8?B?ditLR3R0dE9vYnpNcUJ3dWZhZFR2a3JhbnUxMytva3Via3UxTEl1SGRyOUJh?=
 =?utf-8?B?VERnelUzTlhTNENUdDEyUWV2ZHArWVlKRHkwTDRDY0xBbGg0NUZrSmRHVisx?=
 =?utf-8?B?UTNiNityeFVyYnUzNVZPZm91dnRGZGlGVUVoTU50b3UwalR4am9WNWNoeG1t?=
 =?utf-8?B?TzhaSnovNnJIOWFVc3NNYnJ5eEJwVlg0QXVEZmFCdzVoMVEwbVRuN3ZTLzhQ?=
 =?utf-8?B?T1Z5TUwvQkxzK2crWmF0T3NyY3d4SnFwcDhLenVSKzJzcTM4em5nTDlJVnRT?=
 =?utf-8?B?SkNWQXV3RGpldHk2ZEtqbHIyc0xKa2Z3RThKZVNNSm1BczU3a3VxcmZ3Y3h5?=
 =?utf-8?B?c0I0MldmUmJhWEx6Z0RFLzFtQTNXb2ZWS1FtRnZhK21CVnVUL2xrWlpZUzha?=
 =?utf-8?B?Z1llTWF3Zk10Ny9sanZiazVpVGx3RGc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TTgvcVdCMTRWWTB1K0tTcmxWOGZRbXlIRDRSWk94SlhpSVhvcys5cjBiZnk5?=
 =?utf-8?B?ckZMZXBDb2o5V2NKM2RUUU9IZGZiME5NZzQ4WTBYQlhZQW5mOEdCd3BZdnY2?=
 =?utf-8?B?ZlV3T1RNeURmaHlpUHo0SHRKWkJzVjdoL3JpZ2hmNDl3bUdUN2ZlbkMwZS9R?=
 =?utf-8?B?SEh6OFJMVjVQaVVqVlNIYVU0b1FtRWxpN1RUYW1GbGtERW9hcm00ZVhWQ2ti?=
 =?utf-8?B?eUNoOUFLbmdGc1J3ZkFjTGhCaStuSUlaelZrTThOOVVFZnBoYjhMUnhVQWtS?=
 =?utf-8?B?dlAwZ2oxNGgvVE5jUmlUeWl6WUl1MjNnbk1DSExUYzkzWFpNZkxrZTRKMUJw?=
 =?utf-8?B?cytFcFFIZmM5RGp3a2t4S000YzE3SU0yd2tZSi8rSVZqcG50VE8yTXp3Q3Z0?=
 =?utf-8?B?dVZEeVZtVmpwSEwvK05EWHhpNXQ4M2M4TjhzYWUrdk1iYW0xZFRFZmxSQmlJ?=
 =?utf-8?B?dVg3cEF3cWtkY2V2QjFQbDRNTk5pNkU0eDJERCtKSEhMY3RQT1dJMHhoMERi?=
 =?utf-8?B?K2lxdXdZaDcxRHEvOEtQWHBjWHNNNDZhT0F1OTZhZEQ1VUlwVlZoSm9RZ1Jz?=
 =?utf-8?B?S2ROVlpwaTl5NEpycEtDY2dveHBCdWJ3Y2hsaTVLL00wciswbkx2TEhHZGhv?=
 =?utf-8?B?QnM4NXhzV2Q4NFVHR3M3aEFtY25sWlM1YUpzUHB2U2JReFZWcjdMa1htVVlL?=
 =?utf-8?B?OUNhT3VEcVFyaE9RZUpXWU8xamwxQ1g1QWpEV1JzS1lQM2NsRUZBbk0rMUE1?=
 =?utf-8?B?bmNOYlhDeXBNdno3OUp4cHd0Mmgya3hMaEczb2FhdVQ0bCsxc285QWRub2xl?=
 =?utf-8?B?K3RiSWxNN1J3a1A1TFRhOGdVSkpQd2t1SzNCcDZVaWExbFJnVzYrOFpZWEhF?=
 =?utf-8?B?cldIdTJmSkVMMVJPRVhIQitUdDh3SkpHUDQweUgvOHMrMG83TjRJSEdHamdm?=
 =?utf-8?B?NnJ4SkQrdlVyNFI3VHFOREg1bFJzK1dqSnQ0N1pCRlIrRGFHckpySVc2TXBW?=
 =?utf-8?B?WjB5TzA0MXVkVFVSZTZOL0JqSTFyZElTWkdTOTZpWTU0Y2s2M1R3WWVYTVlM?=
 =?utf-8?B?ajViYkFyMUIyZTVWSUt1d2ptaU1sU0lhMVpoKzRKRDM3WUgxbjdtYysrWnZo?=
 =?utf-8?B?UnVkRTA5WlZSNXhOTXgwSFZXNEdIZE9zeFU0SHVMakRreDRmejcxMjRqOVV0?=
 =?utf-8?B?VElUTlQzUzBhbjRXRVc3Q0ZmeEhvejFxSGUxUWsyaGxFeUtHMXVwTDJHaHhD?=
 =?utf-8?B?bmR1RFJ6TDFGbnRQZTFHQTIwQW92a3JQUXVEeXdPb1M3NFlhelJpUHNDeGJk?=
 =?utf-8?B?ekhHMEQvazl2SGpZSE4yOU9KV0tlY3F2SDI5blo1K01iUE1ad0UzY1pHNVg5?=
 =?utf-8?B?RUJUK1NIMER3QWJQRWc2dzV5YSs2OEpQVkl5dXhRbUxMNk02TDFKVVl2QzdJ?=
 =?utf-8?B?Wk01a0xnUFVzckFtWmUrVFlKZmo3Nm5rUHQxOUF4SHl0SkJ0b0ZLa0VleXpm?=
 =?utf-8?B?aGZYYnlGLzAyMVlPWm1pd3Nza3o2S1JnRDFUTERnalpRS3lMWE1hVFkvT0Fl?=
 =?utf-8?B?OUl6YXRiVVZqWHcyZk1IYzhicVFvQlZGQ1cwVnpRNG1IM2xqM0hIN0VXSGNM?=
 =?utf-8?B?WjZ4STdXYWZxVTlyQkRPOEtKbE9Qa2VXcGVHcUdaWGlvZjN2ZVIyQ2RNN0Fk?=
 =?utf-8?B?NGdmS0s2OWdkY1pmU0l1SHozZDRVb1F5eEhqYUZMcWUyNko4T3l1ZHR5a3pC?=
 =?utf-8?B?N0dWVkt4bnhTSFB2dGQ2b2M0VTRTR3FMclBVOU5FT3V2djdvTGp2MjNteXdN?=
 =?utf-8?B?WW5qd1FrZ3FjTXpOR1VXUHNxQTl4Rm90RTNjT0tyR0ZrU0pSY1g5WVFxc3RE?=
 =?utf-8?B?ZFNWTFZvdHhxM0JRS1R3c0pLcExXR0E1L1JVOHhjSnMzUzFncUtiNk1hZjlV?=
 =?utf-8?B?dWFEbTNWeEJucTJvZzJseEVndkRXeVdYNnhnV3NJSjdkSmZOdmtUdTdZakF0?=
 =?utf-8?B?WUhydDhOMXFNeFZtei9mNERDdk1Ib0pPcCtXUVprZVlZUkZBMkFJOWZiZTdN?=
 =?utf-8?B?dGppMWVqdGc0Zk9qRkx0RGw4VG1ObnNUc0NEREp6U1NhU0dIRTZTVHR2UUtB?=
 =?utf-8?Q?ky91J06yDUfXm5RdBBuEXGIa3?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: /oTnRAu60RewMUhN4rV5zBAAcew3WxByuU1IkwwFk2hhR7Y9488dzt4D+u2nqlKOQ5hNOiQtMWGdKqZnjgAHWFVorXJuNKNmMO8Vh4JW6sfndHR0kUli08cOrQIyFOTLf4DF05n/zIf/7+SqhQL2jKzB61Dl8hZTczXebHxLQ2oAquTJ/Jk30WJDTqNGzhPWBc1XKr1396xrJNhqIiYFOexi38iQO0BL4mok26lZTB/79JUlziIFPFiQyD0VTWqTjm2qsxJQ1ooyfLK/oDkYWH1NOne0IfOMKfh8DO5tI5XT0ZLzxviaZ/sVvqSqjWqxOIWSQKiRdjxXX4Cldmas7Vz5QKRTnFfzk1c3dCyeLQ+1GVPul7hj2mCYEF1rIy5gjAwnFukFOeO+Kl0PmYoeMUQXqwQxmDtrrvvbYQDwJmN6QGkA7QAVUqv2Lh8CCX+BRjZQ0FbiER9+0JndrZc0S07HD8W2r0SfPzy7NbYqgxRG8p/VpLkKRpVWkW1wH/IVSf6Itmaj1CLqSY3Ju4nT+vkN7Fg81W3FS14bpeupJL7O5mJxxgbDatiixzzOeeJVOpplMag+db3YC2/W4/5tPeZcT2e3Hom/BemJxeG3+IE=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8d614c9-6cb1-4aa2-fe41-08dcdc9e4147
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2024 13:39:03.9183 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 63mPJa8LaI10sUGnnsbLm5nbJYEigHeA1Z/B0OLQfwP8LncZzrsRCpZtT7uIrXfqLtilPs2T4qxQUjBSI10dQtdy5sdWtwMUqpvkljTnheI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB4629
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-24_02,2024-09-24_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 suspectscore=0
 mlxlogscore=999 adultscore=0 mlxscore=0 bulkscore=0 spamscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2408220000 definitions=main-2409240097
X-Proofpoint-GUID: PZsusGJ-haOgDKox_u4bQLya6aCg255x
X-Proofpoint-ORIG-GUID: PZsusGJ-haOgDKox_u4bQLya6aCg255x
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 9/23/24 11:52PM, Ghanshyam Agrawal wrote: > On Tue, Sep
    24, 2024 at 2:15 AM Christophe JAILLET > <christophe.jaillet@wanadoo.fr>
    wrote: >> >> Le 23/09/2024 à 05:35, Ghanshyam Agrawal a écrit : [...] 
 
 Content analysis details:   (-0.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [205.220.165.32 listed in list.dnswl.org]
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [205.220.165.32 listed in wl.mailspike.net]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1st5lI-0003c9-8n
Subject: Re: [Jfs-discussion] [PATCH] jfs: fix array-index-out-of-bounds
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
Cc: brauner@kernel.org, ghandatmanas@gmail.com, eadavis@qq.com,
 jlayton@kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org,
 syzbot+808f3f84407f08a93022@syzkaller.appspotmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gOS8yMy8yNCAxMTo1MlBNLCBHaGFuc2h5YW0gQWdyYXdhbCB3cm90ZToKPiBPbiBUdWUsIFNl
cCAyNCwgMjAyNCBhdCAyOjE14oCvQU0gQ2hyaXN0b3BoZSBKQUlMTEVUCj4gPGNocmlzdG9waGUu
amFpbGxldEB3YW5hZG9vLmZyPiB3cm90ZToKPj4KPj4gTGUgMjMvMDkvMjAyNCDDoCAwNTozNSwg
R2hhbnNoeWFtIEFncmF3YWwgYSDDqWNyaXQgOgo+Pj4gT24gU3VuLCBTZXAgMjIsIDIwMjQgYXQg
ODozNeKAr1BNIENocmlzdG9waGUgSkFJTExFVAo+Pj4gPGNocmlzdG9waGUuamFpbGxldEB3YW5h
ZG9vLmZyPiB3cm90ZToKPj4+Pgo+Pj4+IExlIDIyLzA5LzIwMjQgw6AgMTM6MDAsIEdoYW5zaHlh
bSBBZ3Jhd2FsIGEgw6ljcml0IDoKPj4+Pj4gSW4gc29tZSBjYXNlcywgZG5fbnVtYWcgbWF5IGJl
IGdyZWF0ZXIgdGhhbiBNQVhBRyB3aGljaCBtYXkKPj4+Pj4gcmVzdWx0IGluIGFuIGFycmF5LWlu
ZGV4LW91dC1vZi1ib3VuZHMgaW4gZGJOZXh0QUcuIEFkZGVkCj4+Pj4+IGEgY2hlY2sgdG8gcmV0
dXJuIGFuIGVycm9yIGNvZGUgYmVmb3JlIHdlIGNyYXNoLgo+Pj4+Pgo+Pj4+PiBSZXBvcnRlZC1i
eTogc3l6Ym90KzgwOGYzZjg0NDA3ZjA4YTkzMDIyQHN5emthbGxlci5hcHBzcG90bWFpbC5jb20K
Pj4+Pj4gQ2xvc2VzOiBodHRwczovL3N5emthbGxlci5hcHBzcG90LmNvbS9idWc/ZXh0aWQ9ODA4
ZjNmODQ0MDdmMDhhOTMwMjIKPj4+Pj4gU2lnbmVkLW9mZi1ieTogR2hhbnNoeWFtIEFncmF3YWwg
PGdoYW5zaHlhbTE4OThAZ21haWwuY29tPgo+Pj4+PiAtLS0KPj4+Pj4gICAgIGZzL2pmcy9qZnNf
aW1hcC5jIHwgMyArKysKPj4+Pj4gICAgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykK
Pj4+Pj4KPj4+Pj4gZGlmZiAtLWdpdCBhL2ZzL2pmcy9qZnNfaW1hcC5jIGIvZnMvamZzL2pmc19p
bWFwLmMKPj4+Pj4gaW5kZXggMmVjMzU4ODlhZDI0Li41MDg4ZGExM2U4ZjEgMTAwNjQ0Cj4+Pj4+
IC0tLSBhL2ZzL2pmcy9qZnNfaW1hcC5jCj4+Pj4+ICsrKyBiL2ZzL2pmcy9qZnNfaW1hcC5jCj4+
Pj4+IEBAIC0xMzYwLDYgKzEzNjAsOSBAQCBpbnQgZGlBbGxvYyhzdHJ1Y3QgaW5vZGUgKnBpcCwg
Ym9vbCBkaXIsIHN0cnVjdCBpbm9kZSAqaXApCj4+Pj4+ICAgICAgICAgaWYgKGFnbm8gPCAwIHx8
IGFnbm8gPiBkbl9udW1hZykKPj4+Pj4gICAgICAgICAgICAgICAgIHJldHVybiAtRUlPOwo+Pj4+
Pgo+Pj4+PiArICAgICBpZiAodW5saWtlbHkoZG5fbnVtYWcgPiBNQVhBRykpCj4+Pj4KPj4+PiBI
aSwKPj4+Pgo+Pj4+IGxvb2tpbmcgYXQgb3RoZXIgcGxhY2VzIHdpdGggY2hlY2tzIHdpdGggTUFY
QUcsIEkgd29uZGVyIGlmIGl0IHNob3VsZCBiZSA+PT8KPj4+Pgo+Pj4+IENKCj4+Pj4KPj4+Pj4g
KyAgICAgICAgICAgICByZXR1cm4gLUVJTzsKPj4+Pj4gKwo+Pj4+PiAgICAgICAgIGlmIChhdG9t
aWNfcmVhZCgmSkZTX1NCSShwaXAtPmlfc2IpLT5ibWFwLT5kYl9hY3RpdmVbYWdub10pKSB7Cj4+
Pj4+ICAgICAgICAgICAgICAgICAvKgo+Pj4+PiAgICAgICAgICAgICAgICAgICogVGhlcmUgaXMg
YW4gb3BlbiBmaWxlIGFjdGl2ZWx5IGdyb3dpbmcuICBXZSB3YW50IHRvCj4+Pj4KPj4+Cj4+PiBI
ZWxsbyBDaHJpc3RvcGhlLAo+Pj4KPj4+IFRoYW5rcyBmb3IgcmV2aWV3aW5nIG15IGNvZGUuIEkg
YmVsaWV2ZSB0aGUgZ3JlYXRlciB0aGFuIHN5bWJvbCBJIGhhdmUKPj4+IHNldCBpcyBjb3JyZWN0
IGluIHRoaXMgY2FzZS4KPj4KPj4gSSB0aGluayBpdCdzIG5vdC4KPj4KPj4gSWYgeW91IGhhdmUg
ImlmICh1bmxpa2VseShkbl9udW1hZyA+IE1BWEFHKSkiLCB0aGVuCj4+Cj4+ICAgICAgICAgIC0g
ZG5fbnVtYWcgY2FuIGJlID0gTUFYQUcKPj4gICAgICAgICAgLSBbMl0gLSBzbywgYWdubyBjYW4g
YmUgPSBNQVhBRyBhcyB3ZWxsCj4+ICAgICAgICAgIC0gWzNdIC0gYW5kLCBhY2Nlc3NpbmcgbWVt
b3J5IHBhc3QgdGhlIGVuZCBvZiB0aGUgYXJyYXkgd2lsbCBoYXBwZW4sCj4+IGJlY2F1c2UgZGJf
YWN0aXZlIGlzIGF0b21pY190IGRiX2FjdGl2ZVtNQVhBR107Cj4+ICAgICAgICAgIC0gQlVHCj4+
Cj4+IE9yIEkgbWlzcyBzb21ldGhpbmcgb2J2aW91cz8KPj4KPj4+IENhbiB5b3UgcGxlYXNlIGNo
ZWNrIGl0IHRob3JvdWdobHkgYW5kIGxldG1lIGtub3cgd255IGl0IHNob3VsZCBiZSA+PSA/Cj4+
Cj4+IFdlbGwsIHVzdWFsbHkgdGhpbmdzIGRvbid0IHdvcmsgdGhhdCB3YXkuCj4+Cj4+IFlPVSBw
cm9wb3NlIHRvIGZpeCBzb21ldGhpbmcsIHdoaWNoIGlzIG5pY2UuIFNvIFlPVSBzaG91bGQgZXhw
bGFpbiB3aHkKPj4gaXQgaXMgY29ycmVjdC4KPj4KPj4gSWYgSSdtIGNvcnJlY3QsIHRoZSB3YXkg
dG8gc2VlIHRoYXQgeW91ciBmaXggaXMgaW5jb21wbGV0ZSBpcyBqdXN0IGluCj4+IHRoZSAzIG9y
IDQgbGluZXMganVzdCBhYm92ZSBhbmQgYmVsb3cgeW91ciBjaGFuZ2UuCj4+Cj4+IFlvdSd2ZSBi
ZWVuIHRvbGQgd2hhdCBjb3VsZCBiZSB3cm9uZywgeW91IGNvdWxkIGhhdmUgY2hlY2tlZCB5b3Vy
c2VsZi4KPj4gT3IgZXhwbGFpbmVkIHRoZSByZWFzb25pbmcgdGhhdCBtYWtlcyB5b3UgdGhpbmsg
aXQgaXMgY29ycmVjdC4KPj4KPj4KPj4KPj4gU29ycnkgaWYgbXkgYW5zd2VyIGxvb2tzIHJ1ZGUs
IGl0IGlzIG5vdCBteSBpbnRlbmQuIEkganVzdCByZWFkIHlvdXIKPj4gYW5zd2VyIGFzICJjYW4g
eW91IGRvIG15IGhvbWUgd29yayBmb3IgbWUiLCB3aGljaCBpcyBjZXJ0YWlubHkgbm90IHlvdQo+
PiBpbnRlbmQgZWl0aGVyLgo+Pgo+PiBTbywgbm8gaGFyZCBmZWxsaW5nLCBidXQgYSBiaXQgZGlz
YXBwb2ludGVkIGJ5IHRoZSBsYWNrIG9mIGN1cmlvc2l0eS4KPj4KPj4gQ0oKPj4KPj4+Cj4+PiBU
aGFua3MgJiBSZWdhcmRzLAo+Pj4gR2hhbnNoeWFtIEFncmF3YWwKPj4+Cj4+Cj4+Cj4+IFsxXTog
aHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjYuMTEvc291cmNlL2ZzL2pmcy9qZnNf
aW1hcC5jI0wxMzYzCj4+Cj4+IFsyXTogaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgv
djYuMTEvc291cmNlL2ZzL2pmcy9qZnNfaW1hcC5jI0wxMzYzCj4+Cj4+IFszXTogaHR0cHM6Ly9l
bGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjYuMTEvc291cmNlL2ZzL2pmcy9qZnNfaW1hcC5jI0wx
MzY2Cj4+Cj4gCj4gSGVsbG8gQ2hyaXN0b3BoZSwKPiAKPiBUaGFua3MgZm9yIHlvdXIgZGV0YWls
ZWQgYW5zd2VyIGFuZCBjb21tZW50cy4gSSBoYWQgZG9uZSBteSByZXNlYXJjaAo+IGFuZCBjb3Vs
ZG4ndCBmaW5kIHRoZSByZWFzb24gdG8gY2hhbmdlIHRoZSBvcGVyYXRvciBhbmQgdGhlbiByZXF1
ZXN0ZWQKPiBmb3IgeW91ciBjbGFyaWZpY2F0aW9uLiBJIHNob3VsZCBoYXZlIGJlZW4gYWJsZSB0
byBkbyB0aGF0LiBJIHdpbGwgd29yayBvbiB0aGF0Lgo+IAo+IFRoYW5rIHlvdSBmb3IgdGFraW5n
IHRpbWUgdG8gZXhwbGFpbiBtZSB5b3VyIHRob3VnaHRzLiBZb3UgYXJlIHJpZ2h0Lgo+IFRoZSBv
cGVyYXRvciBzaG91bGQgaW5kZWVkIGJlID49Lgo+IAo+IEkgYWxzbyBqdXN0IGZvdW5kIG91dCB0
aGF0IHNvbWVvbmUgcmVjZW50bHkgZml4ZWQgdGhpcyBidWcgYW5kIHRoZWlyIHBhdGNoCj4gaGFz
IGdvdHRlbiBhY2NlcHRlZC4gSSB3b25kZXIgaG93IEkgY291bGQgaGF2ZSBmb3VuZCB0aGF0IG91
dCBiZWZvcmUKPiB3b3JraW5nIG9uIG15IHBhdGNoLiBTaW5jZSB0aGV5IG5laXRoZXIgc2VudCB0
aGUgcGF0Y2ggdG8gc3l6a2FsbGVyIGZvcgo+IHRlc3Rpbmcgbm9yIGRpZCB0aGV5IGluY2x1ZGUg
dGhlIGZpeGVzIHRhZyB3aXRoIGEgc3l6a2FsbGVyIGxpbmssIEkgY291bGRuJ3QKPiBmaW5kIGl0
IG91dC4gTWF5YmUgdGhleSBmb3VuZCB0aGlzIGJ1ZyBmcm9tIHNvbWUgb3RoZXIgY2hhbm5lbCBh
bmQKPiBub3Qgc3l6a2FsbGVyLiBJIHdpbGwgZmluZCBhIHdheSB0byBhZGRyZXNzIHRoaXMgYXMg
d2VsbC4KCkp1c3QgY2F0Y2hpbmcgdXAgb24gdGhpcyB0aHJlYWQuCgpUaGFuayB5b3UgZm9yIHRh
a2luZyB0aGUgdGltZSBhbmQgZWZmb3J0IHRvIGZpeCB0aGlzIGFuZCB0aGFua3MgCkNocmlzdG9w
aGUgZm9yIGNhdGNoaW5nIHRoZSA+PSB0aGluZy4KClRoZSBwcmlvciBwYXRjaCB0aGF0IGZpeGVk
IHRoaXMgd2FzIHBvc3RlZCB0byB0aGUgamZzLWRpc2N1c3Npb24gZ3JvdXAsIAp3aGljaCBpcyBw
cmV0dHkgbG93LXZvbHVtZS4gSXQgY291bGQgYmUgc29tZXdoZXJlIHlvdSBjYW4gY2hlY2sgaWYg
eW91IAphcmUgbG9va2luZyBhdCBvdGhlciBwcm9ibGVtcyBpbiBqZnMgaW4gdGhlIGZ1dHVyZS4g
U29ycnkgeW91IGhhZCB0byAKZHVwbGljYXRlIHRoYXQgd29yay4KClRoYW5rcyBhZ2FpbiwKU2hh
Z2d5Cgo+IAo+IFRoYW5rcyBhZ2FpbiBmb3IgdGFraW5nIHRpbWUgdG8gcmV2aWV3IG15IHBhdGNo
IGFuZCBkaXNjdXNzIGl0Cj4gd2l0aCBtZS4KPiAKPiBCZXN0IFJlZ2FyZHMsCj4gR2hhbnNoeWFt
IEFncmF3YWwKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJj
ZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9q
ZnMtZGlzY3Vzc2lvbgo=
