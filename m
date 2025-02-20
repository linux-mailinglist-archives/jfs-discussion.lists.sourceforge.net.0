Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BD61BA3E06A
	for <lists+jfs-discussion@lfdr.de>; Thu, 20 Feb 2025 17:22:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tl9J0-0006S2-GO;
	Thu, 20 Feb 2025 16:21:41 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1tl9Iz-0006Ru-Dk
 for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Feb 2025 16:21:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qNEkveEfQ6/YVCPb8zRH1d+AH2mcE+8RZq9aBMVwFfc=; b=Dxj4pyo4zdl9GQW5nMhNeH2409
 5K75zEcIW3VZiWEFWI9izpomjRATgwAKBilJGY8sz2+yP2rpkyxNpfchmv06lwRKcg3K+UIY/q8SS
 ApYuKZENdY2BJrjYD3Cl6waJDSCNa4R2dQm6VTSw5Jks+sEIG/umiuYjeb0v1IA9uWaE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qNEkveEfQ6/YVCPb8zRH1d+AH2mcE+8RZq9aBMVwFfc=; b=EpDVcPXHW71K8GEfuyDWSwwnZt
 z6y+d+XrGxXsApY+QiSsGsM4shzRQKe5MT9gGgX/POUYeimdaKY/1z8Xv89CRIhLMlTIBk9ij8jdp
 lNyAQx7lhN+8qcp/C9vvwdFlN5XQTPlhqCbscL2MpST2SlMbZitOrJwDBYHExvN6Yvjs=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tl9Iy-0002mk-4n for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Feb 2025 16:21:40 +0000
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51KFMbEU017032;
 Thu, 20 Feb 2025 16:21:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2023-11-20; bh=qNEkveEfQ6/YVCPb8zRH1d+AH2mcE+8RZq9aBMVwFfc=; b=
 HIljg2aYC+YjtCmrCA0M1AA+bXgcdJe9DvGs3KA3o9rr+IGHuWJ85m5rE8bT6BHz
 7wIy56BciGqwixkd5WKI7Uo/qOksng07VJXKXQyOaUomMGfYIC9eyhHzPk+a1w5h
 l7EZshYNSu+kruG/f6GOFSEbU4o/qkfUq651lP94OwyHJOY7oX6XGWpSxGlscJAl
 /O6XY0npK25gO5IsDv+6ejZNNjW8tXa0KeOmQIEn9IlvkSySTS8IOBtePjIkFaZD
 B9+UPX+IR7ToXAtqRXbYiuUhbgvLwYxVljWdv58QeT42FhB9Cat58Vje5wCvnSXR
 XRqyu0j2r01IsVh0rcaPOw==
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 44w00nmhj3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 20 Feb 2025 16:21:24 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 51KEsX0l002077; Thu, 20 Feb 2025 16:21:23 GMT
Received: from nam10-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam10lp2041.outbound.protection.outlook.com [104.47.55.41])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 44w0tncqvq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 20 Feb 2025 16:21:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=u13Kx7lOqIUc7qHMW/GPjBVR2GoumAqTUbQT3f9C+tk5suXk+ibnSGtmyjrTN9/oAgAFxXCgxYLxEa16OXV5t3P5x+VQzJ0vV4mpF5V2Lwwf+th+T1BSg/nodGpSFE2ZrEMSKgdUcNCuzaWKZmmz+9SnY5ipO524ZtTdbMCXkPRuokqIRlSJ1hMGFUMCCEh/ZYEV2Sug7SDN4FuFsEmqW4h/OkamCxgjhAkKDTR2iPv1K1llR/8P4BlzVXbELAEc//DKQxAkePrHC3WIASdz7J3ZVGAHuGgyTIpLrMg6NRHW/bxEmsHKMUJp1BJahWp6XCmCoktkVHBnx7FFkkAJUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qNEkveEfQ6/YVCPb8zRH1d+AH2mcE+8RZq9aBMVwFfc=;
 b=y8MfGKkkKN4PFvH6nPaDNt+4SHiPSN6uhc0OTEQTJpjNiNmrTh7Vv6/1kobUPSLsQi/wdtCoxnbIBczahm8UymwdjgA446POMwQKUf/IKYx7V+Ak65I7b+1Sc5rDe4Aq2P8gz+AdB50jFpXIxq+7fmO8G2ltqchscUTkU6NPI9e+xPWweA5CmhW3H5OE7DXsB11F57p43bpM7i2sOy6V8PC8tjn+oi6kr/sUVQ93qKT8GDOKjtotX3lJx7OBXA6Zs7sBkxsm6zVnaU5rfspdTRb77kw0SR2XOw8IWGe7xf5sg8omZaTHG+sl3nC2ICSphfZOMKADSQZGHLj/Vn9G6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qNEkveEfQ6/YVCPb8zRH1d+AH2mcE+8RZq9aBMVwFfc=;
 b=qe3yPpK4H7RtCN+8ZllVBu5kbkfUl8x3SdZEJUehZB4T3zBMdVDSP6SiaoZ9IAKF+4CqfDZkC8lCdiV2+8goAoIFf4o5Tkghajram5fgKe8JKEUbvINU7CEjJM3z0fv63M6NF13HiKr3VqW4NyWHG9r9PoGZRdbVhLBHaeATP/k=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by IA0PR10MB6795.namprd10.prod.outlook.com (2603:10b6:208:439::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.15; Thu, 20 Feb
 2025 16:21:20 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb%6]) with mapi id 15.20.8445.020; Thu, 20 Feb 2025
 16:21:20 +0000
Message-ID: <e8a54739-340f-45dd-9018-c32154d23ef5@oracle.com>
Date: Thu, 20 Feb 2025 10:21:18 -0600
User-Agent: Mozilla Thunderbird
To: Edward Adam Davis <eadavis@qq.com>
References: <740c57ad-0cbd-4498-8ec9-46a54b204e3d@oracle.com>
 <tencent_7E9E541BBE4B3C1BCD256EBA87BB8733E308@qq.com>
Content-Language: en-US
In-Reply-To: <tencent_7E9E541BBE4B3C1BCD256EBA87BB8733E308@qq.com>
X-ClientProxiedBy: CH2PR04CA0011.namprd04.prod.outlook.com
 (2603:10b6:610:52::21) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|IA0PR10MB6795:EE_
X-MS-Office365-Filtering-Correlation-Id: 89ade3d3-e142-4429-86e6-08dd51ca9c19
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?L2ExWk1XV3p2Y3h2RXlHL2N2cTE1bHcxOFc3S3dZWWdKZUpTSkNNR2tUY3FK?=
 =?utf-8?B?QmRUU0dOSDdIVTRvM0lGVm9ROVorUWwzRU1NeGN2dXV2YUY2Z3FhVkVad2cx?=
 =?utf-8?B?NkNrZzkvM096cGlzbXpDWlV6RndjenB0Slc0QUcwcWFQWDdxaU5PR1hFNVMx?=
 =?utf-8?B?U0kzbERZczJRS0xRZUJJdFE0ckFKeXZ3QVNxbzBLWEF5TGRReDBjSldGOUhF?=
 =?utf-8?B?T05NbWNFZkNHOVlJNE03c2lucFY2MGZERndCN04vb3hsU1owYVdrZi9HWXAr?=
 =?utf-8?B?QVNaTCttNGg4UDFtc2RiRjFkMm9aZGtxTEdsdWw4QjBQZFdYaHVLc3ZMRjkr?=
 =?utf-8?B?K1BIanZGZFNzV2p4TllNdTh6dG5jODBXc3BQVFFaVTdpTXhuNHZxVWRDVlZl?=
 =?utf-8?B?cEN2R2FaU1d4eWZraUpxVXlIZEZVVFg2ZWk5dkt1Y1N4WGZ1Q0xpeXkrVDFp?=
 =?utf-8?B?MncvQld5emh4OHN3cHdrc1pvZlFSdlZtZk0xaFZDWGxZZjdOUkdZb0NvTEh0?=
 =?utf-8?B?bTRRNjZOU3RLcVFob0Z3NS8vQ1RJOWNiSzJkYmZNekovK2p4ajQ4dlFZK0Va?=
 =?utf-8?B?UFR1T1lpRk1NR0tzTEtIVUY4Z3d3YmVRZG42ZkQvbjlIYUowbnBVN1BUdHNl?=
 =?utf-8?B?dVBFYURiWG5UNDQrd0pHcXlaNmNlTE0rV3hyU1MwdDZhRHgxZytlTWZ2ZC9r?=
 =?utf-8?B?alZzQTJTYUNUMWhsWGtobHdvREs2L0I2UEtJSFM0MTJ1MnJRWHgwbjE3Nyt0?=
 =?utf-8?B?dWtYODdvYnZ2dGVEK21YNi9OaDRnWVlnRVFvVGZ0eGhnM3NDWHpEeFoxa2xh?=
 =?utf-8?B?SksrUlZ3SFZGUGRyMUdRb1pzSHpMTEpkSWZPanFqUDZLRzFDTlkzMEg0N3lh?=
 =?utf-8?B?Qnl1Z0ZwMWUxZFhOUHN3VUpjYXE4d2t6U0pYcnlYeHllZmVKZzZOS3A3aDgv?=
 =?utf-8?B?UWRrV1I2eDJjVVQzdzNrZDF3cmV5WHJrQ0FCNUhjdnVrQllZaWFTRnNnODRO?=
 =?utf-8?B?S0FHN25BN1BSeEVLbi9HUWNHUFhxSmRwd0hXTGpYenJMQkdsSUMzRVlPNzJn?=
 =?utf-8?B?NVRQUlE4UkswWFFpZWRYendaTnZJS0xENU1rMmVpNGY3NVhuL3BSMFlaRXRi?=
 =?utf-8?B?QVB3L1FCWEZ4SE40NjJkakdPYlBSOWlaQXJVS0NuRHBjcW5rNUNmRVN0ZHlq?=
 =?utf-8?B?bUNBclM3aDIvUU9aZmR2TCtPVlA4WHdqNUg5UkVFWWcrT0J2MW5EWWVHMkda?=
 =?utf-8?B?VG5sQUk1SzRRbkYrY05uYTliM0JraDVQNVhJVkxoL1l2dW1zNDZvU3hpSWM5?=
 =?utf-8?B?am80TTNqUnNnYXRCdDBXYU9PWXhxb3JXc1BmOGRxYVBteU5Qem9Ja0YyckY2?=
 =?utf-8?B?aWltQVhIbitDR2ZrYnNzQno3RTJGNUVOZlZ4UDJFVmRnaDY5SlI5RHlpVlhI?=
 =?utf-8?B?VmE3MlVCT3hheFN3R1FDT1prMVljZ3FMaEhzMmV6U1VTR05PTW1MSzFKdllo?=
 =?utf-8?B?SFFRWWRhYWF5bkNiYzVsVXROYmRlekNZQ2I2SWQzK0RIMVMvSGJQMVVOQjlC?=
 =?utf-8?B?cG1JOVdyMitCMjN2UzIwSjdoZUZ5d293ekNjM3RaVGJId2I2eGRqUEpkWW1k?=
 =?utf-8?B?dHNBNkhuNjlqM0VzRUJwSVBqMkZCOFhsNzFHOWtpTnZNdy9rU0ZDZk96LzJM?=
 =?utf-8?B?ZFRSNGYrRlVyN1lYL2ZDTDBNM0VoV2g3SHVycU1NbGR4Wm0wd1dYbVcyUlNu?=
 =?utf-8?Q?cLJVT0hDvV2hLn4rIlV1jj63mPp49Jc9oXmrFtT?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WXNTTmxiUnpMUnR6eWhKTHAyenNTaHZ1OHhUMzQvZm84dG5HZkFNNGZsenlT?=
 =?utf-8?B?eVhoVmx3VXE4dEdPTWlnT1g2VW8vMUpwYTJRSTliVGNxSk9qVkV4ZXVGSXdt?=
 =?utf-8?B?TXFJZVJNNUFGaWlTV2FPckZsdXM0N296UVpCVFlqVkk1TzlhUDBKMGs0WlhV?=
 =?utf-8?B?eHNQOHVOc2E0QllsV1VFelpFcEVjaERkdWZ3eUFWK2tSWXlxNjZOUmlNNFpa?=
 =?utf-8?B?R09TYTI5enVkVVR4NGhHYVVVZm43WmdUMHRFaXk4Z2M5OTlNc0c3Y0w3NXpu?=
 =?utf-8?B?UFppcjBsdWRQSWQxN01Fb1NVOVdoK1h0NnF1SnhJMEdDcTV3UGJkdzhOU2Zq?=
 =?utf-8?B?OUJFdHd6NzlTYVNIbkRPd2xTNEQwTFRjbDR6WmlnNjZNNEpNclZHL09sdUU4?=
 =?utf-8?B?djlBdG4wQWkwdDIyTlZPbm5GMXRIeW9xdEFhb0NjQkdmZ3d0VStWR1NWQmdR?=
 =?utf-8?B?UFhWaVhPVXVuNC9pUEQ0TVBUZzRtV3NCUzc4dWRRWDR5UkpiNHplZU9wbFVC?=
 =?utf-8?B?Q2ZJSlBaODRpa2twU2lvRzg4OStmdHVLZExlTS9YRGVxa085ako2djNWUzRL?=
 =?utf-8?B?ZERaeWNMdmY3RWllOE5aY0dIWEhpdEVRT2IwbERJVlpuQ2JGbnhrUXhOTG9o?=
 =?utf-8?B?SldhT2dPcDM0b2lEVlZQVmdncjFzS3VLVjNwenVZNW9zQ2d3UGVyNkoxN3ZC?=
 =?utf-8?B?cUpnY3FLZXF0NGJ2ZjhsWU11M25xY3R2c0g3aEZBSjFrdW1welhPaDRaS3dU?=
 =?utf-8?B?L25kY3Y0OXNkN2xwM0RzK01EMlAzZjlEWFZpckdDaFlSSEhkVHQ1S1RzUFRn?=
 =?utf-8?B?SWFEcUtZSVgwSGYvcDBucGM1M1pwOStlbGhqVEFibzNFV3ZuWXZxQmpGTDRF?=
 =?utf-8?B?OTgrRjhKTkg2QXJvMXdmaWNIZjRTR1hMc0xka21FTVdkUzd3bkg2OU53dUFr?=
 =?utf-8?B?SGpHbWltZjRLZzNUb2wxV1VMeVJEaUVlcWNnT0Q1UjZsTUVwejFzNlpNUjUz?=
 =?utf-8?B?UTlNN09UWFVlRnNxbHVmVnJXdktkZkxpN3Jqa0Z0QkNKQlM2VXlUZklMUzdr?=
 =?utf-8?B?d1BTVHVwMVpSRHJQci9NTmtkYko0VmZFVFZPL21NbkZab3dyVDlhUkNVNldx?=
 =?utf-8?B?eTBzVXNoc3Z6WlpMbUd2T3N3ODdITEI4ZkNqSy9QNlJqZGVjYnc2WW5vdmJF?=
 =?utf-8?B?elZSekZ1dE1rMkdReHA4Qng0ZURXVnpOa3k4UnVhSnhldDVRbldUZWFKeEI1?=
 =?utf-8?B?K1RDcXBIZzVCcHYyNFRkSk9mc0FCMmxLb29LZmEwTCtjMnlHR1A4dndoNDI4?=
 =?utf-8?B?WGRUU0tCMWo1ZXcyM25uSGNmQ21jUHNtMmpoK3FDcWs4ZTAycjJVNVNEekJG?=
 =?utf-8?B?UityMlNxYlVBM3BKM0FMd0VSTTNVUUl0dU1hWUNuNWQvMkVxaFUvRzNBZUUv?=
 =?utf-8?B?THljUmM5WWx0ZVk3SmRHUmdvSDZpYWlJWHFBMHcxWSt4L21kalhMUDNWeDhx?=
 =?utf-8?B?UUFNU1VnUU1ubzAwd0NsS3JTL1MwK21JV0NIdnZiNjVVTHJ5d3ZyMFc0YUh5?=
 =?utf-8?B?dGNJeWdZOHdQNzIvKzlUY2taUXhvRmhSSG1zQlhib1BqeWswMGg3SVhicFJ6?=
 =?utf-8?B?SUovc0JndkdQS2hIbWJVYUJKVUtIK1hBYVFkcVdlOHQ5dTY1Z1ZleGNDU3Z1?=
 =?utf-8?B?WlVqTGk5bmx1OC9xb2hVNmlRUFkxT0xLeVBOT05qbXNsQVhyVHZKWkVWTzhr?=
 =?utf-8?B?dGZ1V1krSkRITDdxM0ZOUWw3VnB0cDRQYi8rSmNSWTkxTGQ4R1d4US8yWEJ0?=
 =?utf-8?B?MXQ4QmtIZURVWkpERS9ZSi9KRVM0WlhFWEFQZkZJY0YwNmlMTVdNYXM5am9M?=
 =?utf-8?B?aGJKWG9sWDJVZ1lOZEdDUzRaMWc3RkxRMEVUelBIbTFTa2RHYzVGRzcrMlpq?=
 =?utf-8?B?VHZkaDVtMFA1WUVsWkh1amdPWVRwYU9pQi9zVGZDenE4RDh0Y3VPYWtnQmxI?=
 =?utf-8?B?RmhSYW55b0k4TDJYdVNkVERGUGFoMnloS2pZWTErRnJ1WEpNVkhxWWdvTWVz?=
 =?utf-8?B?d3J4Tlowdng1QVVLZE5DWlJRVDVqbWhaUzZONmtjWGVGV2NjWE9IU3dOd1Nm?=
 =?utf-8?B?akVmYXA0ZmN1K3hlT0gwQlhPVUtRWFFnTkY2Z1d4YVUyYW1WUElGQ0FYdXRa?=
 =?utf-8?B?Q0E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 9xvE5KfR0zQUMY8hPgOGLiWTzYVYwcqXvJFMArgr2USRXD+Qxzp4Cz4AvERaYJ6MrW5K+eEg6anlB6gzOJlNmxwbyuPVe3IQfBH3Hx9UDv/ePfwV6lRshQtCfC6TMpGTJ3Fd8kNyq2Apvxikh3EPyiB/kcIYquaM4JdbGtUFnzNkYUB+J0lfjKcOcJjnf2VKFbSQ6gU5trLKGAxCCgkKiBtd2a1fLqDHc5A0xrWyNDG4xwS1HaZ+42L/m23vzOIu8Tm12FIAiyrUwOlIbvW3VtChS254vCQhy3AN+Bg+MbdH8ORWH6Z3GquTu2Qfd4gTtS+xdUFY3piizTCgwX3vDD0LxaatjE9D6whmWGqPiXn4NfBxsVPAF8UA8h63SdgkU5XNvE15MNrb4abGdFObAag+cC5Z9K3LwoU+2hWoI6rnbiPyWmxbVQXjjFw5DoGWzqNDMLy4FIMzpyBBRbthUSiP3D/RR8h4FtCT9w8LWVjm+VpxlTbva20dQ+jS1onp0Oazno6PrSTo+IYz7SDgzsmjkoZ4eCld1opcfLeqFGSYv7CUfyLARKxeY7mydx2SjT7+fsZP6uVq/GDgzv09SVdeWUn4H3OONwEexK2+2tA=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 89ade3d3-e142-4429-86e6-08dd51ca9c19
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2025 16:21:20.2253 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: az0YWa4sQXH2pNd3DkAb4uMtJYlg0coQSjU7ZVv4q8gvbE2p1qLjyej7EAk7H8pLf7npHe40prWhjiALlHm1OGevt7x27Va4D1i/sia6Pr0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR10MB6795
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-20_07,2025-02-20_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 bulkscore=0 malwarescore=0
 mlxscore=0 spamscore=0 phishscore=0 suspectscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2502100000
 definitions=main-2502200115
X-Proofpoint-GUID: XieJ6BEfra-WtfvuCVyVke1rPSgI5evX
X-Proofpoint-ORIG-GUID: XieJ6BEfra-WtfvuCVyVke1rPSgI5evX
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2/20/25 5:24AM, Edward Adam Davis wrote: > The width in
 dmapctl of the AG is zero, it trigger a divide error when > calculating the
 control page level in dbAllocAG. > > To avoid this issue, add a c [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [205.220.165.32 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [205.220.165.32 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.165.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.220.165.32 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1tl9Iy-0002mk-4n
Subject: Re: [Jfs-discussion] [PATCH V2] jfs: add sanity check for agwidth
 in dbMount
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
Cc: axboe@kernel.dk, jfs-discussion@lists.sourceforge.net,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 linux-block@vger.kernel.org, kristian@klausen.dk
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 2/20/25 5:24AM, Edward Adam Davis wrote:
> The width in dmapctl of the AG is zero, it trigger a divide error when
> calculating the control page level in dbAllocAG.
> 
> To avoid this issue, add a check for agwidth in dbAllocAG.

Looks good. Will add this to jfs-next.

Thanks,
Shaggy

> 
> Reported-and-tested-by: syzbot+7c808908291a569281a9@syzkaller.appspotmail.com
> Closes: https://syzkaller.appspot.com/bug?extid=7c808908291a569281a9
> Signed-off-by: Edward Adam Davis <eadavis@qq.com>
> ---
> V1 -> V2: move the check to dbMount
> 
>   fs/jfs/jfs_dmap.c | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
> index f9009e4f9ffd..62f55e7ed840 100644
> --- a/fs/jfs/jfs_dmap.c
> +++ b/fs/jfs/jfs_dmap.c
> @@ -204,6 +204,10 @@ int dbMount(struct inode *ipbmap)
>   	bmp->db_aglevel = le32_to_cpu(dbmp_le->dn_aglevel);
>   	bmp->db_agheight = le32_to_cpu(dbmp_le->dn_agheight);
>   	bmp->db_agwidth = le32_to_cpu(dbmp_le->dn_agwidth);
> +	if (!bmp->db_agwidth) {
> +		err = -EINVAL;
> +		goto err_release_metapage;
> +	}
>   	bmp->db_agstart = le32_to_cpu(dbmp_le->dn_agstart);
>   	bmp->db_agl2size = le32_to_cpu(dbmp_le->dn_agl2size);
>   	if (bmp->db_agl2size > L2MAXL2SIZE - L2MAXAG ||



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
