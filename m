Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AJtgBNr4jGmVwQAAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Wed, 11 Feb 2026 22:47:06 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 33AE0127DEC
	for <lists+jfs-discussion@lfdr.de>; Wed, 11 Feb 2026 22:47:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:To:Date:Message-ID:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5FVdGDQsg1FocyEGnXtnFqyLuk8N3I8eoA9dhDTsYk8=; b=TDB8UBcwc2kmABvS6QPHMBvrLX
	bAK1wtvqaAwnCPfbNphVvzgZ1I/6xGUVxZxp+x8N7ZSWjHU5IoZp7iG1LL3uYAHKAIM7WOofUqhMw
	GBB6RF2xVu2DKDvGecO7ucd4hwuelR4+y7h+DVLIYTqR01FWnoywX1zeXtzYkb7WL8L4=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vqI2L-0000MB-Mt;
	Wed, 11 Feb 2026 21:46:17 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1vqI2K-0000M5-8U
 for jfs-discussion@lists.sourceforge.net;
 Wed, 11 Feb 2026 21:46:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :From:Subject:Cc:To:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=b2kF5fzAUVIHlLEpxb/PRiWoz8C3eNJ4BRo3doOI9b8=; b=if43aMymuerJDQerzap4xLpLWh
 MBWiTtG2z5BtP5I4k2r5Fq+Cz0/G9msfwbUUmy2QYFO7PoY22uZRu//E8UJ7pmMXLLBWRSRfKoQ00
 4WbUm9yIFLeRrqhCksdWl56om0SHBezvLPj0BSfD6zgmbDQ9UabOKY0zmPX3NaHtokU4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:From:Subject:Cc:To:
 Date:Message-ID:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=b2kF5fzAUVIHlLEpxb/PRiWoz8C3eNJ4BRo3doOI9b8=; b=G
 FIMv4euUYdxqTp5JpQDXuoOiZ+ePW8TdnTxVkkSQxl0LI9oS47XIhoPsvFJNSGzn1h5tb8ZnmQBs6
 /pBP1JOZAkaMFzCeEKhkmuxiyS0qTibvzu38JtzFCNKbvjVMNLw50yOLSJhjB7drB3nR7ddTNJHeP
 vdEG8GgstM2+Oyjk=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vqI2I-0005Mw-SC for jfs-discussion@lists.sourceforge.net;
 Wed, 11 Feb 2026 21:46:16 +0000
Received: from pps.filterd (m0333520.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 61BJcVWR3136809; Wed, 11 Feb 2026 21:46:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:message-id
 :mime-version:subject:to; s=corp-2025-04-25; bh=b2kF5fzAUVIHlLEp
 xb/PRiWoz8C3eNJ4BRo3doOI9b8=; b=n//dUutJ4Rqv0nYGnfTadVroj/ffGBhZ
 IiJ+H2iI05xgA86Q2rLFICjF4CdaOtfxTrlZdVkaWNhyIB5n8zlIKlE+YcNQIUlC
 i18Q6eoy3IGDe4iJglYNMcMt6JaTXF1G/d0XreiSAjLlwQbUoswTimUQirnCKD/C
 E6LmafLfi0BbFoogXccGUcc4OFD7PjCPRbAoagY8hRfwVnM/isK6a8CprzGvDQ6h
 1YBdmxWi729MXpDSXAR9X3y/vcu85LX1H85RN+Z2zQMVvuOCxzcB7Z1H0QR0su71
 P3pK/fsARd08aacoJgYZel8guSWGBBXY/YAZcSMXHhJnn3JCbOy9Cw==
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4c88df2ghs-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 11 Feb 2026 21:46:08 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 61BLIbZo008329; Wed, 11 Feb 2026 21:46:07 GMT
Received: from ch4pr04cu002.outbound.protection.outlook.com
 (mail-northcentralusazon11013036.outbound.protection.outlook.com
 [40.107.201.36])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 4c8236c2e3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 11 Feb 2026 21:46:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HdVbwrChcnXbxdvgn+c96Q2Y1HmbWl6DkEH+795Vh8gM5bcyoEwhBXy5mO59wfpaXtsBwFuyZdtf+aZYBMl+59CuwCC+jIyyXFnVt/VYkn7lu49vGZYCp7glzd652YdJ3z5Lmo9n/q2hAu5QmqnF+cfJk56fIPZqAJ1ghEquNdDvhNDkXZlTf5izBWLVwzYV9tpvUyNPOvfo91XeZwUzWizaE5jdjC2Q+FS/iy5TNtwu+9VTZous3Faq0LRKikKlE9E9+YnL+w0i4whYqvf0q+66u6QGFhNXgtCc8gyF2YmZczZeGszEsd/RTR2b020l3X0uSijT29OywA6pR0Aalw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b2kF5fzAUVIHlLEpxb/PRiWoz8C3eNJ4BRo3doOI9b8=;
 b=gxgjaeemK83GLzUFLDUkuwYYc4jzJyTXvZp3A0W6EuR2SUtQgt1s3rb9+qGw1FFKWtb55ieaifLxUFcfj5yzmHDr8+hrxHH7ekPTs6b7/+znn18mmJaffAU/hq9aRlG4P4FQg7C0BzJSC3fl8yJZoPa2pcTvi9lMS6Xe2csYxbJ4uCv7KCKrTH83Fa8BwF952U1aJcPKStaON9/AnXO1/WITRyRxPdPOCslRZa3bL9lgbJG5AWnGVTg6HOZpozSAl2llDnzF8rUsJNR1uq9DHkLBqc3MMIUjMUxPn/KGBEuloSpqXqCzxBbdk9GDuBZRdV3o/HOdMOjtMMHJwUDgKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b2kF5fzAUVIHlLEpxb/PRiWoz8C3eNJ4BRo3doOI9b8=;
 b=idu16clqD9qg06OIMQC8JkDpk/tKfLi45DK85+moD0/JpA1vdPZNcuHRYsEJw5avewCCLvE3kTR0zuXx47f5tKhtr0tjyVwaMwpwuM/cmrt0ZOxfDy3CmrxtuEFkTH+paOYfw6+c/Fmsg1EHR73i4i3QX8+hEJM4oUAba9FNrBo=
Received: from IA1PR10MB8212.namprd10.prod.outlook.com (2603:10b6:208:463::20)
 by PH8PR10MB6670.namprd10.prod.outlook.com (2603:10b6:510:220::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.10; Wed, 11 Feb
 2026 21:46:04 +0000
Received: from IA1PR10MB8212.namprd10.prod.outlook.com
 ([fe80::ee8a:bd21:f1cb:c79a]) by IA1PR10MB8212.namprd10.prod.outlook.com
 ([fe80::ee8a:bd21:f1cb:c79a%3]) with mapi id 15.20.9499.005; Wed, 11 Feb 2026
 21:46:04 +0000
Message-ID: <7616456b-6373-4e87-91e1-430b2eae25d9@oracle.com>
Date: Wed, 11 Feb 2026 15:46:02 -0600
User-Agent: Mozilla Thunderbird
To: Linus Torvalds <torvalds@linux-foundation.org>
Content-Language: en-US
X-ClientProxiedBy: CH0PR08CA0014.namprd08.prod.outlook.com
 (2603:10b6:610:33::19) To IA1PR10MB8212.namprd10.prod.outlook.com
 (2603:10b6:208:463::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR10MB8212:EE_|PH8PR10MB6670:EE_
X-MS-Office365-Filtering-Correlation-Id: d81a44c7-9f53-4c3c-5e36-08de69b6f4c2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NG8wRXEvZDIyVWxOSkw5WDR0R21oYjNoeW9ScTArMU5KVVpqQ0xMcjQxV0cz?=
 =?utf-8?B?V2ZBeVBqc1NSb3VKV2I5dTFXZ0VQUHEyZUdWa3NENVFMZVVmaStwSG1ja1Za?=
 =?utf-8?B?eEorUlBpRVZGYStBNkhlY3NtTUI3TnRWaE1VZWdCUTdPc0JoTmdCRzR1Ukcw?=
 =?utf-8?B?U29wcFlRR1I0ZmczYThHSnF2NzJ0ZTN4NzMwV2hTYjQ2cjEyUHdjb05zZDFq?=
 =?utf-8?B?bXZuZVBLdVNuc1Q5RjJ6ZWt6cVBrTTdmeW1wLzBrSVpTZmNCa2t0QXExNFha?=
 =?utf-8?B?b0x6bURxNDNrUnhKb2t3a3RraEMvN1lIOC9xdXR5UW5xSEgzeXNSTE1HeWJ4?=
 =?utf-8?B?d05YSTQ3U3U2eEFKL2YyS3MwcmZNV3ZnOEY5WlEyK0JTOFFJMFVvbFc1OXNJ?=
 =?utf-8?B?alVBTmhkUnp4elRHSzdQY002RFczbzBLVVJJVjUvRWM5SlRHaW1UdkJ3OTlP?=
 =?utf-8?B?UnFKa0toeEFmQlpLUldwVWpUSEIvRk1OUGloWlJzZXIvTmk5SE5KaTE4RHZn?=
 =?utf-8?B?dkdOdHdrdmZXd0tEb0RUNWV4ZFk2TElLTmxVWkMwWElrVFUxRTZ1Ny9KRk1L?=
 =?utf-8?B?bzVnNnl2RUljd0lHUEw0b01KQUZKMm1EV3NsMVZPQkhtbnJib3Ixb0VlWjF5?=
 =?utf-8?B?VzY3RlNqd1NadUt3Q1FQZU5nSGVzelBRNCtwdS9ibklUVHo1bnJTYVBXMkFZ?=
 =?utf-8?B?N09hakptQm9BTllYWnBVQ3NpdnRSQ2F5K2xveGdBaFpYTkZUNGZxTWt0VEcr?=
 =?utf-8?B?Q3RmbGErRm5PT25aRXlGV0FlY3pJTTNaMk04SVBEMDVYOEk5N1JVeGJUa1Rv?=
 =?utf-8?B?aUtCWG9pM3diZVdleTQzNGNxaktHQ1Q2WlVXNjBLc2kzUGM0S1pVaCsxY0RE?=
 =?utf-8?B?THdCZzNqalYzdjB1bkxkQy9hckFvdmVyd2xWM3ptUGJLcFpreVYrNUVVNEln?=
 =?utf-8?B?YkcrWTEzTjB1Um92RkN0MXpPTjFoa25uK0xQazhObmZxdmtvZzNkdXltam9J?=
 =?utf-8?B?OFdnU0pDN0RrTXBHaG90OGc0amk5bHR4eCthZG9ROTBYaTNWWlR2UkwrY2M1?=
 =?utf-8?B?cFVibDhYc1luNjEyZDB3WUU1RWZzWGJDSlYybi9TbVcvMjVyZ0RkRGF0Z0kw?=
 =?utf-8?B?aEs0bU1zNzEyL0lhYWpzc0RXcDU4NExIZStrR2tUMVFQUUM2b1R2bDNab3Bh?=
 =?utf-8?B?M05zRWZ3RkdpUHcwTVE5ZzArMGNwOWFzNmxONFd4R2F1Y2N0TTFEY3NqdEFl?=
 =?utf-8?B?eDdZam4yUitUSWVyakMxWFJYOWo5Z2lWSnpEKzNkc2JNZ1Q3RUIwb24xdStR?=
 =?utf-8?B?WUl2VnFTYkk5d2FsRURYckFJbUp4Z2ZvbkJkeG0wTzFJNTE2TkxoZkd5NTIr?=
 =?utf-8?B?S2VqWkVuT1VmYlFlbkRGandTelhTWEFldThyS25VM2dyMGh2bHE2SzdoVFNn?=
 =?utf-8?B?MStIRUhUakx4Zk9LRkFzaE9NRzJiZkxheTN3VTBiMWRBUVdlT01NSFEyeUIx?=
 =?utf-8?B?Y2xIenBwbG8zV2NSeWlWQzBQOUx6Ty9IanNlR20ybkw3U250UkhlOEhhTEw1?=
 =?utf-8?B?c2N6SjdVN3Fmcy9nUEgzclVHUExabzgyQmV1d2phNGIwcmNzSFA4eU9RZ3VJ?=
 =?utf-8?B?dUZ4aEpEQm9sQ2pGQkNpQW9YMnJpVmtvOXBtcVBLOWVVb2x5djAvaFlqc1M1?=
 =?utf-8?B?bS91WWQybVkreExVQ2dtMzBNNGVRanpBMjY0U0FCY1UvMnBnNE9seTdNRVFE?=
 =?utf-8?B?MEQyd2xLaWhwRTNGZlh5b1ppekFsdG9XUXZCRXdmM01XaDg0UHAxNEpFL0Mv?=
 =?utf-8?B?N0dNNnNQYnpmVXdBUWNIbllKYUZINldYSitjd3ZmbzlqZ2lGZEtrc2tENGJW?=
 =?utf-8?B?THNodDA2WlVEV1ZNZWZMTkVlVzZoSmdmTzlzOHFNNktqVW1QaGFBZzRkZkNY?=
 =?utf-8?B?NzdRYXp5RFdoMTdWbzgyUmJRZEdtblU0azRDN21Yd1BNa1hPSnBkajNSdFNr?=
 =?utf-8?B?bXNpTmxBMDkvbEZydDdHUzVzdml5SGkvcU9XWWFURnRWNVpDbXBWTUdwSEN6?=
 =?utf-8?B?RGNEYnlKVTJheHhyamZWM3FJc1VUcW5MZTdta3dyem0vQlBrVnpZWFFYRnQw?=
 =?utf-8?Q?2lck=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR10MB8212.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VlQrRC9pMGR6R1JTMVJaMFhHMWtZb2tUSkhDY3BDMmY0ZVJ2NFdOaEN1bGdq?=
 =?utf-8?B?Q3lXUTFVK3lrK1IxRFk5UTVVMVh3K2RFK21NYmVtY2ZjMEpTczlzSkp2MlQ2?=
 =?utf-8?B?SVc1L09jWk00Mll3QVk2SzEyTVk5T0JMQVp1ekNyVWF1UWhQSG9Nb0VuMmdr?=
 =?utf-8?B?ejJnNjhpK004OExYOGM3dXJWdWJqRENxRERMTG1lRnl5OVUrbUwwa2FJbUlp?=
 =?utf-8?B?bWdFcSsyQkNVM3Irbk1vQzRwTjczTnZybFBpNzJtL2FsV3lzZkNHTHZYd2VT?=
 =?utf-8?B?cCtLYnZRSDY4YzdwU1hZN0gyb2pVN0lWbzF2MmZLYW8yeVFqY1pBWkxncG5w?=
 =?utf-8?B?dE5yWXpjVFhIUUsrWjlNQ09xQkpIU3hpdy9jRHVWZG1hbGxxL1RndVN0bzJU?=
 =?utf-8?B?Nnc4TGMwTjZyenNzaEhtTmo4ejd4QndvUXhxQ0ovS2pEcTlpMTRYZG9ZUlJE?=
 =?utf-8?B?bWZ0dlB3SzFGOEpLa1dQOWJrMGhOSmZHN3M4c0V0QjJhb0FIT0JvbkJCVnZK?=
 =?utf-8?B?TXB5eFJVcnAyWHRRYmNsOVR4bVZmYVN3RngxdHNINWRJN1BXSkZlMzhkamFG?=
 =?utf-8?B?S2p4MG1HUnYzZzRNNDFQQ0ppV1JvejBrb2xncWdsZTA5Tm9ZU2s0T0FQbytH?=
 =?utf-8?B?MFJHS2JHMXJTS3ZBVCsvQnV1dXFkN3N5NHJGazVlUWsrdXlsK3hoUUQwckI4?=
 =?utf-8?B?cmRobm9IYlpjVm1IcVpJdzNNRjIrV2wwWkxDalQ5Sk10akRWaTdkVlZuOWo0?=
 =?utf-8?B?UUdTWHNON2lGSDZnTXdGWDhyNFJpU3JtLzVJRWJ5MXRWYXE0WDlqL0hib0lz?=
 =?utf-8?B?cW9pL1J5NzNKaHNhQm52S3BqTDlUN0pLQkx3ZWdsMVhKMTJkeHpZWTErVXdh?=
 =?utf-8?B?eWtPakhpOUFrc0NKZ3ZFaWhGOVRadFJHQ2VWQTFkQWZzUjNkWHZJWGo4aG40?=
 =?utf-8?B?R20rcDZFYXZuaWorck1vNWZ3cUk5VEFUM29uMUdBcm1aU1E3R2taNWV1Mms3?=
 =?utf-8?B?UmVaZkF1dGRkRWs2Wm84Y0RQbXhyNUxKQkMwQnJqYnhMeVp0OU5WOVliQTc3?=
 =?utf-8?B?V1plRmQ3aW1pazkva1c1NDBHSjNxanJ6OWlpSkJqSnNvcW9id3J4aEd0VGlJ?=
 =?utf-8?B?OU5QaGZxQUVkazdiTXJtQnVtS0xkWFJYZzBFUjlHME95Z3dFbUN3VUZoSHFj?=
 =?utf-8?B?dmg4NWRWUHVoa2EvZ1R0UHdhQ3BVc0p0YXRBVm5ZSEluYWRyS2lpUmxqaTFF?=
 =?utf-8?B?YWF1dEgweWZ4VVN0dTVQQ0V1dmZHaVoxOVRkdHRDVGQxTmFuaEs5MHFBVUls?=
 =?utf-8?B?VkxJR1dnc1hEZVhqUjZpeU5vRUFpU3FsdEU0dFZVd09IeUlBaXJXaGUrYTA3?=
 =?utf-8?B?MFVyZWRJaTg1RTZrNWs3eHRYSWlSczdVdmQ0aVNHWW94cndxanJVaUdhUUZl?=
 =?utf-8?B?ZjgwQTlYTW5KT29aZXJMTm1JUkc5SmVKMEJ0OEdLUEZJcDRkaDd1aTdzb1B0?=
 =?utf-8?B?dk1HbmhkOWVOZFNWbzlrbmhYZVgyeEszWGYxNEdnVGx3MUpUVHNQbUF6NjEr?=
 =?utf-8?B?MUVlNktNcXBubGJFVjh2MTFzWVB6UHJkMUlHSHNhclBEOTNESUhyZC8zV2lz?=
 =?utf-8?B?ZFpTMzZOKzB1alJIQVV0a2pOaDJjNWdJRlhnalp3c2tUdVF6dlFIN3I1d0pH?=
 =?utf-8?B?OGJuMGJxRWN0Z2ZLL1pXWmhiT0pzL1lpbU9lWWdkMkxYK1ViVGFPNnhCdzVm?=
 =?utf-8?B?Y0Nlb2daR3NxaEVCSTJBTGlXQit1UC9udGQ0bUQ4T2Zkdysya1pnbTJzZVhq?=
 =?utf-8?B?aVMwOVFQUlA1c09xZmE0MGhGQUZxK1FkRjNVdFYrY1BPS256cVJpTjFpbkNa?=
 =?utf-8?B?YTFtTkkxd05Jc0dzZ3NUNFNkRW5UcnBPcGlvc1AxOUZFRWxwUWt1L1V3VGpa?=
 =?utf-8?B?TmV0Q1ZlK2xYdFJ3VG9VcG5CTGhSdWQ0NDJlREZwa09XK0dBK2NQTHBRQW5h?=
 =?utf-8?B?Mk5rcWFHY0N0T1dVMjFlUSt2UWtVZC83S01MMUVCYTZSMitKZnBJRnNvWDVV?=
 =?utf-8?B?TFY2cXNnNXZJa25jMld1Q3g3UEU5ZEczVGx0SUUwbzl2b0xPZllUWExuQ1lO?=
 =?utf-8?B?ZC90SjQrK3ZzT3VFTWtBSEkzMUpKWmRzK1BPYUxvcnVJS0RUZmpqNVRRdmhm?=
 =?utf-8?B?ektVZGRmaXR0TGxhSUdMMkhueFlwTFZIemErazVuc08rRjBqZzhIbE9DNFNG?=
 =?utf-8?B?cGQwMEtkKzMzVUZ0VWEzSU1HdzhzU1NkSkN1Z2hSb2RnMnVkRDR0S3doTm1K?=
 =?utf-8?B?cWVFUmxlQzhtRWYxbXVJWWNodW4reTN1RzhsQTJLUlkwM0Z6VzlLZz09?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: iGuykHqOoLj72Yv7+eRVdnFzsJZNcW6yX4SgRhXjHR/CnQtjSYWcL8T0tUrRemXouGeeeHWn5jWSjB/lf8KIjoBIuFcE5xZaRHiuq1SCgeUQihg+JABkKnt7LszuldacKzI4kZwL4qPhfX09iu3a52V+DoGtzFWUnr18NBsJ2yowsbVO9v1sp7HAZlUaR8UGCyqjzhy+mV+/PiWFbYSXpR19twN2ViGMMAClthBs4EUiLvX6ZgLZ/UcEvIb4b9f8nncgafRWE+4xx5tqd+l9wbrUhVRqbO6GcKZtMXmwH5kM846KRPZSWq2iECfYtfsCdGy2Q/azzdaR7k+d445WUfbLmbTO6OWu/880T3QzM7QxdtDAaNIDdbHWfV3LE5Nj8ZR0iDcG1Din8qZtzaX4SYMdk4Ex/YcCfDeHIJXgZXQcOdazPjQ8jq2FJiA3KxDp71oi4PkjT+qAMkPg910q6Toe4Lig9d3X7xWuJt6H2BEfpAa7FYyGQIRZJbtUub+mrFFzdiSKkzpdOM6VXtduSVvkogOW3bTK4kAVuuq+vQf2OYC1uZ6zD290mUwLrnE4iJPCH9YJzvArqmhKYLOVNCAbKJXcbx/U+KllDztsdUs=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d81a44c7-9f53-4c3c-5e36-08de69b6f4c2
X-MS-Exchange-CrossTenant-AuthSource: IA1PR10MB8212.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2026 21:46:04.5701 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ebk0/a5zO+4OrF+TOsdNMmFizIZVscTr+jFt3w2MbGxaUQoE6itzzP3U2HJCrHkC9JD+5M9Z9zBYJlnAO/GIz553C97z9gcujxbtRLpfTfE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR10MB6670
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-11_02,2026-02-11_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxlogscore=809
 adultscore=0 bulkscore=0 suspectscore=0 malwarescore=0 phishscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2601150000 definitions=main-2602110168
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjExMDE2OCBTYWx0ZWRfX1BPg3Wyoi1jW
 viz8lB3uM0E+FjtADjl21Dj8rbRCyqs25rxJiyy9mIOrvnivw1huUHEx18fSJJpcz71k7niJ5+w
 fQ8EJFauVC2tboNuqiV+rOt2CBLBNjawKGulD3pO6/8n2jJ74BxNbdzePPoWbF9sF8sa0AHdN9L
 r66oTOAtNbSoLrukMFCapivfl6aHXHls+xkTE73RgBATXReRmSUTX7Qpt/rI/kD9tIPbReEM1Yo
 AXaylRs/7NehzVSK560ylEKwrDsJXKQYYuL+leGZrLD65gnsL7qciIDcGsfpG3YKcGyUGdvhTKK
 4Lmt5W5RoIdMSGe6vu7YAgJ7uzENa/ZL8HKqgiXeoDXjGQeLOiWy/ghQfZx2Vkf2GI0P8tSAsaw
 P6uRXMP8l6r28Riv3rxEDwI7F13NLh/fc385tSKhx+k/4v5qQiu2gqUbaZXfytey5m1WLKwL9Oq
 YPVkrGW/a91+fP4zTrw==
X-Proofpoint-GUID: 5VXYbPXloGuL9UNoBGkA5Gv1wnDMhlIp
X-Authority-Analysis: v=2.4 cv=AqbjHe9P c=1 sm=1 tr=0 ts=698cf8a0 cx=c_pps
 a=OOZaFjgC48PWsiFpTAqLcw==:117 a=OOZaFjgC48PWsiFpTAqLcw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=VwQbUJbxAAAA:8
 a=NEAV23lmAAAA:8 a=4nSoTPkMa-vxfQcPvogA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: 5VXYbPXloGuL9UNoBGkA5Gv1wnDMhlIp
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The following changes since commit
 4a26e7032d7d57c998598c08a034872d6f0d3945:
 Merge tag 'core-bugs-2025-12-01' of
 git://git.kernel.org/pub/scm/linux/kernel/git/tip/tip
 (2025-12-01 21:33:01 -0800) are available in the Git repository at: 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain 0.0 ARC_SIGNED             Message has a ARC signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 ARC_VALID              Message has a valid ARC signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.220.177.32 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vqI2I-0005Mw-SC
Subject: [Jfs-discussion] [GIT PULL] jfs updates for v7.0
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-7.21 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_MIXED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:torvalds@linux-foundation.org,m:jfs-discussion@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oracle.com:mid,oracle.com:replyto,lists.sourceforge.net:rdns,lists.sourceforge.net:helo,lists.sourceforge.net:dkim];
	FORGED_SENDER(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[jfs-discussion@lists.sourceforge.net];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,oracle.com:s=corp-2025-04-25,oracle.onmicrosoft.com:s=selector2-oracle-onmicrosoft-com];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	TAGGED_RCPT(0.00)[jfs-discussion];
	RCPT_COUNT_THREE(0.00)[3];
	HAS_REPLYTO(0.00)[dave.kleikamp@oracle.com];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,oracle.com:-,oracle.onmicrosoft.com:-];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 33AE0127DEC
X-Rspamd-Action: no action

The following changes since commit 4a26e7032d7d57c998598c08a034872d6f0d3945:

   Merge tag 'core-bugs-2025-12-01' of git://git.kernel.org/pub/scm/linux/kernel/git/tip/tip (2025-12-01 21:33:01 -0800)

are available in the Git repository at:

   git@github.com:kleikamp/linux-shaggy.git tags/jfs-7.0

for you to fetch changes up to 7833570dae833028337bb53b7f389825b910c100:

   jfs: avoid -Wtautological-constant-out-of-range-compare warning (2026-02-02 14:47:12 -0600)

----------------------------------------------------------------
Just a handful of minor jfs fixes

----------------------------------------------------------------
Arnd Bergmann (1):
       jfs: avoid -Wtautological-constant-out-of-range-compare warning

Haotian Zhang (1):
       jfs: Add missing set_freezable() for freezable kthread

Jori Koolstra (1):
       jfs: nlink overflow in jfs_rename

  fs/jfs/jfs_dtree.c  | 4 ++--
  fs/jfs/jfs_logmgr.c | 1 +
  fs/jfs/namei.c      | 6 ++++--
  3 files changed, 7 insertions(+), 4 deletions(-)


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
