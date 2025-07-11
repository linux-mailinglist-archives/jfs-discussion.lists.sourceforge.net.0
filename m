Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E488B0259E
	for <lists+jfs-discussion@lfdr.de>; Fri, 11 Jul 2025 22:11:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:To:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vviCGkBl9O0Vi9uQ7DBkbtiuZ5ah7S6YRTSVd6+QRZM=; b=CR9ULXONciBBJf+H7EAjM8IEvs
	WXBJzI75OSdLy6vhMgi339358OIq3pMWMxplvgwEnUga08Am3KZQgXZaiotIPd2prC8qs8uTjtyZF
	GIIZrP8N+RTzursvAK8AcqDIkSvWHB4Z6ZBPIlPZBFourVvSdar/f4/rX5OxWYhKjHZg=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uaK5F-0002W9-Lb;
	Fri, 11 Jul 2025 20:11:01 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1uaK5D-0002Vu-TD
 for jfs-discussion@lists.sourceforge.net;
 Fri, 11 Jul 2025 20:10:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BGl1v1A6bvo+IXREAxpmpgKuKfpX4ER2o4KYtg/b/24=; b=E5/XjvCG+ru78VK0UACrKBJDgm
 r7iSKikmu8+F5MXKvNIw3MlWijJaUn9J0wyTeBDiy8M3XWUEegKzDGHv6eWlupP+xeNKK0szBoEJn
 bsnAKEHibNdkdAby0/eyvc1/dKEelHnTJQ/n9AVGbveSkEDj/Hn/2t01D5HEYnKHR6/A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BGl1v1A6bvo+IXREAxpmpgKuKfpX4ER2o4KYtg/b/24=; b=E5I5AlQbtm+NSW8rRdtofP3Kn4
 cmj350QWg96OaEi5FyUoDC4UDXnsKkPVZMy8uEYa1Bv6r8LeI/plD4G+lqAg+f6kl1VUJcq4yrjLS
 aK2F/7VTSlqeZ7sAmqWeCs0vCQzbkqCTgD8AJBkVLWxPxFPTKdroGsMY4W4pR4QhV5Ck=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uaK5C-0002w6-RN for jfs-discussion@lists.sourceforge.net;
 Fri, 11 Jul 2025 20:10:59 +0000
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56BK1saE008298;
 Fri, 11 Jul 2025 20:10:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2025-04-25; bh=BGl1v1A6bvo+IXREAxpmpgKuKfpX4ER2o4KYtg/b/24=; b=
 W4PM42zt1YIObNiF+5mTBcen3l4eNyDgoG3N9dvP07N4NgCGK1svQZVAFyUorG1i
 aUzrKRHde/bswg7NAQJO5eis5z854i8GWFCQEQIxYNbtihqQ5E8b/UbJHG2moiIu
 qQtgOtJkgW52eD5CKa26mHV2XXzMXZlciuNXxlJMz5+v81dG8Yw5dAlm1BZL9DR9
 SxuX6Bopq1JEPB0//jbro+1//HwgdgKZU9yS5pSsqNRWM7cUNe+QQBk8rFMrLG9l
 Ek5a/h4Idez8CnUw7S8uxxAWOH3n6EbNnXxd43jOfn2BkqhUoZd8X6JUUc+Zf0Ln
 PRa435lf5fK7SV9Yn18GJA==
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 47u99mr0dr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 11 Jul 2025 20:10:49 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 56BHuLLK027371; Fri, 11 Jul 2025 20:10:48 GMT
Received: from nam04-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam04on2066.outbound.protection.outlook.com [40.107.100.66])
 by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 47ptge043f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 11 Jul 2025 20:10:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ANhAeYzbLktQWrsFg9DEJX46Z1yxDPJLBL/S6bRKudILVJqCWQlODuGMrqVanlBU4qdMsDt0nXYOnErSI/hpRzyA5fYO9dHZVGrGPkKTm6wFR4MUCUnl1tqWTX67nQ4eKptJtiTG/ukNZEZnky9Up2WMaTnbw7cZLw4V11Ov/Fu7ULj3nEIxZFS7WwTzGVVaDCe+TFhp2VoDIBeDI7PlL90S12A95B8FBTMOwYvn5EI87vFRTanb+I/5e8nmAyYo9raTiGSSWvdwcX9EmZIfV/Wb5TpbVyYu6faj+iPm1BdMK3wgZbU4TXjqTqYguv2CKdmMDJXix4ysYX1aUUCaNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BGl1v1A6bvo+IXREAxpmpgKuKfpX4ER2o4KYtg/b/24=;
 b=j7y3nLsbfpF6BV7g7mp67Ra47KhWmaCjYFn0K+IepYfgT9P4oshOEn44cwhUjv/2qyDGvT8LHaI2+ItscFS5ywHY5JldDde31xipU4emoIiJ2p5s46mh0TdccU9GRXNzDJdbyedkU42fqS1qEUHAebPvHx6SPsjz3CxzhwNVeuheEf8bdKijFWT+25/Nh/+wshoT8xGXE1sJGxD/jGU3dg2PSiZrxgZabZQ/2c9qyNUT1yBtGyr4Cb1YBsPiBH1hNZJHJ5kBaei5Oq5iIc7ozYN9GTt7LhKWQMKL13QSEhlRQxesc7rdEokrU812vuoM4qdwKUitdY9Y0Olva9+c1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BGl1v1A6bvo+IXREAxpmpgKuKfpX4ER2o4KYtg/b/24=;
 b=fV2f+7yIMM5qiI9KlPcrRIiYwIVlir8cEcLTU2mRYGZ2S/5YuomaCqwvVRcAuMH5uEO4CtO+9jBQG9v+Hk5ncXOAnEwR0iUukH1aL+C/5x7rub+MpGyRtdA0feSI+Bu51qdF7MKzoP1ZYI8oFUHxgzwZkc5Db7HDAFUojFXn34s=
Received: from PH3PPF517B7003F.namprd10.prod.outlook.com
 (2603:10b6:518:1::79d) by IA1PR10MB7237.namprd10.prod.outlook.com
 (2603:10b6:208:3f7::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.26; Fri, 11 Jul
 2025 20:10:46 +0000
Received: from PH3PPF517B7003F.namprd10.prod.outlook.com
 ([fe80::943c:5ede:5076:73d4]) by PH3PPF517B7003F.namprd10.prod.outlook.com
 ([fe80::943c:5ede:5076:73d4%6]) with mapi id 15.20.8922.025; Fri, 11 Jul 2025
 20:10:45 +0000
Message-ID: <4448980c-d385-45ea-b8c2-b4a0bdde39c9@oracle.com>
Date: Fri, 11 Jul 2025 15:10:43 -0500
User-Agent: Mozilla Thunderbird
To: Suchit Karunakaran <suchitkarunakaran@gmail.com>,
 jfs-discussion@lists.sourceforge.net
References: <20250605175634.16362-1-suchitkarunakaran@gmail.com>
Content-Language: en-US
In-Reply-To: <20250605175634.16362-1-suchitkarunakaran@gmail.com>
X-ClientProxiedBy: CH5P223CA0022.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:610:1f3::12) To PH3PPF517B7003F.namprd10.prod.outlook.com
 (2603:10b6:518:1::79d)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH3PPF517B7003F:EE_|IA1PR10MB7237:EE_
X-MS-Office365-Filtering-Correlation-Id: 79d1f851-96df-4995-710b-08ddc0b7054e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QW9NZjVOUElUMDZrNmJFTnp4U2RMTzRvNSsyT3pwbEdMbnQ2MGRSU3lmVHNh?=
 =?utf-8?B?Y3NEd3R0SnpaNG9QYjdKYkFRNGdFakgwdkNyRTk2Y1oxVCtyc2hrWjNaTzFL?=
 =?utf-8?B?b3U2clNFUnFjdkVMaGJxWHZ6QURta2lWWW4xQXZyc3NPMVJLYWplMGZZdmlB?=
 =?utf-8?B?dlJhUEp0TmdnQzZrRGVTRmZ1U01kdU0xVGdRdlFvS1dnSzJGajkrTmlDRHE3?=
 =?utf-8?B?Z2ZzaGlkblNIVU54S0tyd2tiNXkvcVNIbHpQVFFsOFpKM3liemZremVlNDQw?=
 =?utf-8?B?ejd0K2Z2TklwRllGNWNONk5jVUFZc2svTUJkY2ZrL0U0WWdSWmxEK05PUEYy?=
 =?utf-8?B?RmVya3ZINnNBVmVWcXBaYVUzVks5UCtESlRFdndMbkhyQnhIcFhDRDAzTW5n?=
 =?utf-8?B?Q3RZd2Fva2R3a2ROcGJWYk1NM3VDLzYxWnZjZTB1eW5PbjczWDRZdkdSaGVr?=
 =?utf-8?B?T29hQXdRNUVzSUxCWHovSzUySVNXZ0tlMUlFQ0VudmlRMFBDOEJ1Sk5oQ1Mz?=
 =?utf-8?B?cVdUcSs1NEt0eWVpeTc0cTIvNUpGYzE0YytUTlVOeVV1NFRFenMyUnZKTTh5?=
 =?utf-8?B?UVh1WUNVRU5tUk5qbmY3TmtTZ2pKMi9WcjAxRFNIczNObTQvVy9NNFhJaFpn?=
 =?utf-8?B?a0srNWVkeDl5bmdabS83RXZiVEM5RmE1VlpaTW95VU1qb0JZRmpiRlp5eGxZ?=
 =?utf-8?B?MmhsMys4cmlkU1U0M0dIWXJoK2o4VUprTUhIdkovb3VYR2toc3ZSL3hYQjhX?=
 =?utf-8?B?UVg0Wk1rSlRnd3VKbGZKSXg3aVVRWlVYSER6TElHTERpZWdxbmZ4eGZOQzh6?=
 =?utf-8?B?am9KVm9zZ3pxYTMxSlg2YmVDU3dTQ2hnVzdqdVJCV1ZXS0ZYUTl6N2tmaDAy?=
 =?utf-8?B?OU56alNEMW5RWld6Z0ROMGxoTnRzdkdBeUFpQzE0MlMyL0JiVjR0OHlSbnpU?=
 =?utf-8?B?anYrMGgxd1daazQyZjN5VXptMEpOenEvTXFOUTlKcllLN1pIL05zaVhZY2lS?=
 =?utf-8?B?bGN2WHBHSWMzVXBWbXpZUXBxLytSUkdnK1BhWWxaMW1FcnJXbXZvVkRLMkhH?=
 =?utf-8?B?Z0RqNk04bDZrQWlpb25JZDFqNUJrRTh3dEl5QkFsK2VNbkw1ZVhRT0t3UjhC?=
 =?utf-8?B?VXR1YTBVS0lJQ1V0WXNjbkcwSXBIU2h3b1pWcUp5NDM2UnFFQ2dhSERKVjR2?=
 =?utf-8?B?SDg4MXI1V21RNGlCSis4VEtmN1ljcWIyQjM5c1ZvOXRhYTI0VW00cmlMSXRv?=
 =?utf-8?B?N0N2SWRlQTdMNUR4cUk5TUxIczZ1RmRiTzJvQ0lNbzJ0bytrdDBkNm93bFhE?=
 =?utf-8?B?ZWhWVFNyZWJWMzRRKytIOHZTYVJzR3NzRFRQSy81RXl6MTFjcVRJQjJ4ZXNv?=
 =?utf-8?B?V1VXTnlIeE9nN1B5V3dWeFlWRDdCaEg3UGxZcktrb3BFM0E3QUdrQkVaS3Zw?=
 =?utf-8?B?c1R3RzRYa2dUSU5SbmtTbnJDbTJjNXFNNy9rVmRQd0xldHJFOGg0Ukl2Rm1n?=
 =?utf-8?B?TURhZmlRUjJzaFk1c1U5clhCRGpwRGt5MHRqaEx5dHJWRWdybTFvZnpQY2VB?=
 =?utf-8?B?RnZwTjU2TGVIcTVWd1l1VnhseThOb0NoVzhlb3pJN2llVUFvcmtQRzdhNlBy?=
 =?utf-8?B?dC81dUlLK3ZDUTV1U0lLdHBrL0YxaGQ2Z3FDcyt4MlF0QlMvd21EYjNlR1Zl?=
 =?utf-8?B?VXlFR3FPbzRWRytVZzUxOGFpSDV6K05LRkZmKzdwRkZET1NFelI3VUFpQkZj?=
 =?utf-8?B?N3Z4eGhYQWRwTDdTckovNUMxSzFrS2FyNG9XMVUwdnozRHhGcEsza00xdkNG?=
 =?utf-8?B?NkxJRnBLUHpuU2E3MlhCSW05UnpMc0hidldscklQMHk3blFnaVo5OWdPeC9y?=
 =?utf-8?B?UVoyNG9uR0JpeXFxRkxpcTlhTzI1bXYrNmJ4K3QzNUplTHRialdxUnkwL29Z?=
 =?utf-8?Q?bjRy8c/IRS4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH3PPF517B7003F.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UEY5aTdoc0xPUUdudVdBbjJZUFR4R0tLbUsyWlZudEZoNlBCQk93MUJrc2NJ?=
 =?utf-8?B?S0FwVWo5YTh1OTVKTE1IYzl1S0x2N2l4elFHOTBtbTlpMkRDNm4wa0ZRWWND?=
 =?utf-8?B?ZkxrTmhNdjFiSlpOcmtyTS9nZHBhSHNzTXJheEU5aW5aZEx3QVlWMWdMMVI3?=
 =?utf-8?B?endjMStwZzFPdDErVU50eHVFWk5hSmpneXR0Q1FBcFJNM0ZpbjBmVzB2UVFL?=
 =?utf-8?B?dHltM0wwWW5pNHBtTWNBRm1pM1dkbnJaMjB3Z3RaN2ZwcFNWWlloM0N2Rjhl?=
 =?utf-8?B?NjVNT01ValplQ1dSbHo3L3NXSE42ZHBiTWJXY2VRdlZiOWI3T3drbUZwUmQv?=
 =?utf-8?B?WWc2ZWpqL0VwNUlTS2dIUXdCWGRNK2dua3dlT3d2MGYrcFY1NDFVSElMYXBq?=
 =?utf-8?B?RElvbW1YRC96K3NjKzhIS3F2am9nNU0rM3lFNHhQbUJnZ0grL09ZTlROUG9L?=
 =?utf-8?B?aTNLWkFWMjVVZ28rMGZrMWJtVXA0SXlhaHd6dUZDUWFpYW01TzhqQnFIbysx?=
 =?utf-8?B?d2RmanNIL2p2aTFvUmNKdk1sbDN1SWxoeDBhK05pSnFlZWpHR0p5QUVCTGdZ?=
 =?utf-8?B?aUpZY2orWWNITHdXL0k3c3oxaTYwemNLcEc2bGJnY0ZxSkJ2ZStzblhyS1RD?=
 =?utf-8?B?RE9MNS81ekpMa05VZkV5QzFoU1ZPOXVaOW9xbjNmYjRTZVFnTG13a1YvUlNt?=
 =?utf-8?B?QkZiMjhjM00ycUtZdVNGVHZUVTcxOFZyQkM4SUdTVVJRUFZVQWN0ZW1QUDRC?=
 =?utf-8?B?elU5WTRzTjN4aHpNNmVHMk93eEI5VHdVT290a0RSck5uZmZsWFdhMDZzc0Ja?=
 =?utf-8?B?VWp5ejlxamVlS2srNmhpVmFBbUppYWRrcHpnVEw3eTZHcEdQdHJKVkxYR0Rj?=
 =?utf-8?B?T1lyanZYK2lIS3BkbGtybUE4bmo2NHgzZWx2Qks1bUFQcW82QUFWVzVnbjRy?=
 =?utf-8?B?SkJMdjRFVDR0bTByTXc0ZEFGNHZvNVZsV2RoRWxwUmlXWlpSaTdqL0NrS1Az?=
 =?utf-8?B?NldVNFVXdVF4aDl6ckF3dVVxU3RnMStVcUF5MGlxdmtOVmJHS2laYlAyK2hw?=
 =?utf-8?B?eEMxQlBvT0VlWVdmdE9GdVJWOFhSU21mS0tWNlp1a3VRM0F6UmZ0dm9OWjBm?=
 =?utf-8?B?QTQvL2NKcTlFNFV5UE1IWVhmeTBmMktxRWxxbDJyblIwR3liSWxndjV5UzhK?=
 =?utf-8?B?aVVkRTVKbnlaa0ovTk1DZ2RsalcwLzRlcVREVmRMNGJOOXRiMEgxL3RqZWVl?=
 =?utf-8?B?cld1RzNEQUFua0FjNDBoOTBBQWcxdXI4dHFwVEsySExlaU1PY2tqcU5PRTdz?=
 =?utf-8?B?UFluSGZsN2NtUlhDaVJXYVJGMlc1cTFvUlRQd3hibnBMMS9NbW5UdmhyQkFO?=
 =?utf-8?B?UjJxd3N4azZsOWczSy9EbFlxS2Iwa21WdE1jSTdWK0VNM1NZVGsyV1ZpLy9I?=
 =?utf-8?B?VHBWL2o3aU43eDZlSVFKZWxDaGxrRlpnQ2FVb3dwY29HMXNRNkFoRlQ4ZVNp?=
 =?utf-8?B?L3hOeWlLQzZSY1lFWjRUM0N6dExkSVROWXdUMDVOZ1l5akJ6YllTbHFIcXRO?=
 =?utf-8?B?SXBUc25xQlp3NVhpbGxBK1lWWDZDU2U1djgvZnZ4ak1UOUJuVk1BUHlPMkNL?=
 =?utf-8?B?ZktDRUdyM0ZZYm4yVURZSXplbFYvUVpiZk16NTNVbEQ1eWVSWDRsRGtHeERE?=
 =?utf-8?B?SnZpYlVFallTNXJ2YkRtOEtMRkRrU0FIVVpUS0huajN2SlpGbkxTTlZjUTdB?=
 =?utf-8?B?Mk5CZ3QrZHYyOXlJVGMvVDY4ZjhSd1dEQ04zdy9xcnAzSnJJd241VWliMTA4?=
 =?utf-8?B?bGpZczIzUjhVcStWTUpDV1YyUkh3eEZuRUFmZmxuKythLzdkV2xPWFFVZzNx?=
 =?utf-8?B?MlJHamorb24zSzJSd2ZKb1pscFNrMVVGVmtTWWhrejRRbXFTVGpTZ3pXTFkr?=
 =?utf-8?B?RmJxempHYm1xNVZCcGZhaEJsNHpaMUZVOXdidDRFOWxKcDhFRWFTMVNWdDRJ?=
 =?utf-8?B?akQxUXYvQkpNT2lrWDRHM20yMGJUbGZ1V240YWk4U0dzcFhPTFc5cXhsakcy?=
 =?utf-8?B?dXBBVXYyUExwSnF3bXYxSTJleEFsd1NCTTh4RkpTdmw2dUh1WENHV1ozc0t2?=
 =?utf-8?B?K01lTUFNQjB4Q3RQODFnbGIzTytLOFQvamoxNExHblg4YkZxaDViSjYzem9F?=
 =?utf-8?B?b1E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: x2zSshwhp2FRTiPNplMRvdRgjOOkRBOyY92xyWmtT5nwDteGr/1GBp/poa6BqoTdKAGn/09e6MwFIVjjGY+GOByLhiM59lni3zjma2FprsVu/YG6peXMUjrAwDMi1p893uvmQ1NzF1sSAcBSAou59c8Z0vT4izcc3l39nSbohNEZ5YJHCsT6fPTmEXOJdFjoGRDRDhZ5EwjjpRkRpAzkoA08Ec+VOSuUzebh+lBwywJECpExN4c9WeT68ietu8NO0hRnHnwt9oGk3PKG1c3+eU7W0MHz9nCE7w+tVz3x6DwFTqVGZV2+/DW2zsLysw6/sdAF4JP0eaMIdcVPJQDOkXI9V1cD9bzbLGl0ROg3jSn0uCqrKPJg5WdZxPj8lugMJt3AO0e8WjH6xazDmw25Roke/J/ROct4BNkqZEc1bhBnJC0ltigNbphYIAIFCqqgoqXEuqVg76lOLVIr6SB+UJueIUdVcYTx2ESkYcHJyO8FoU4uCisTTF0CTyObBL6wRdKbwbMkyeAbjHBi0iBOLiy0l5tUrMWQsBNffPZreTIGFpgJRGWcda1J0ePij53dhY/F8dWSzRFUPSV3uuTQgPiJtkUeecb0piftZkRcBtg=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79d1f851-96df-4995-710b-08ddc0b7054e
X-MS-Exchange-CrossTenant-AuthSource: PH3PPF517B7003F.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2025 20:10:45.9057 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: B8gYgwjjyCCsYP6Df2Meiol9hLI57LmoJsTZMaxZTsuPQ5ApZCv3x7omqw3gjhM8dfKMU6M+l6NqqCMriaPsldXAG16X4hIR6292B/moBcc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR10MB7237
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-11_05,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 malwarescore=0 adultscore=0
 suspectscore=0 phishscore=0 mlxlogscore=999 bulkscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2505160000
 definitions=main-2507110150
X-Proofpoint-GUID: NdoAsPVYk9kqJNszSpIGd0hAV5NIDeyJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzExMDE1MCBTYWx0ZWRfXzTHomcEqUV4s
 1lzO6c5B61BbjKHyPgHBmw2KBe+ZrU4YDtz5Q9b76Izabdf7jE9mCgN2EkhYGrRE0s+inIbXkmT
 BJdoQYaCSXThqrinin4oMZywbhuTABtAzt3SPsrix60Mr7vmLg2iSPLSpZav13BSAz4DqEIh8Hv
 AWt5Jki3W4mpO9yhgwzy1/BnAtYdzc7PDF63gn+KpixVQMuoi7o4qUeunpQRStTA3uc7WpXr73+
 CZgDANPeWfrCABymt1B2fO6iFeyotb7bTgaXv3f0zqDaA7idsoX0PVIpIpKBwmxn0CsMnGEhmd0
 GH9DMXnazs+U+JSYBOzAygK4eoFXyaundsFP/RrOmT0093jxJehsGh6l/eU6AelPnl8nNxG+DtE
 uFmevyf+9Vl8+OcBCveAgV/LhKTiIJpiWIPROlMmW1yMYpzOiq9JN1PPySv2od4bgasXM7S9
X-Authority-Analysis: v=2.4 cv=fvjcZE4f c=1 sm=1 tr=0 ts=68716fc9 b=1 cx=c_pps
 a=zPCbziy225d3KhSqZt3L1A==:117 a=zPCbziy225d3KhSqZt3L1A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19
 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Wb1JkmetP80A:10 a=GoEa3M9JfhUA:10 a=pGLkceISAAAA:8 a=P4TmnmFD3QTeaxhB3AYA:9
 a=QEXdDO2ut3YA:10 cc=ntf awl=host:12061
X-Proofpoint-ORIG-GUID: NdoAsPVYk9kqJNszSpIGd0hAV5NIDeyJ
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 6/5/25 12:56PM, Suchit Karunakaran wrote: > Replace legacy
 XT_GETPAGE macro with an inline function that returns a > xtpage_t pointer
 and update all instances of XT_GETPAGE in jfs_xtree.c I'm picking this up,
 but I simplified it a bit. I dropped the size and rc arguments. size is always
 passed in as PSIZE and I have the function return ERR_PTR(-EIO) on error.
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 ARC_VALID              Message has a valid ARC signature
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 ARC_SIGNED             Message has a ARC signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.220.177.32 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uaK5C-0002w6-RN
Subject: Re: [Jfs-discussion] [PATCH RESEND] jfs: jfs_xtree: replace
 XT_GETPAGE macro with xt_getpage()
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
Cc: linux-kernel@vger.kernel.org, linux-kernel-mentees@lists.linux.dev,
 skhan@linuxfoundation.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 6/5/25 12:56PM, Suchit Karunakaran wrote:
> Replace legacy XT_GETPAGE macro with an inline function that returns a
> xtpage_t pointer and update all instances of XT_GETPAGE in jfs_xtree.c

I'm picking this up, but I simplified it a bit. I dropped the size and 
rc arguments. size is always passed in as PSIZE and I have the function 
return ERR_PTR(-EIO) on error.

> 
> Signed-off-by: Suchit Karunakaran <suchitkarunakaran@gmail.com>
> ---
>   fs/jfs/jfs_xtree.c | 87 ++++++++++++++++++++++++++++------------------
>   1 file changed, 53 insertions(+), 34 deletions(-)
> 
> diff --git a/fs/jfs/jfs_xtree.c b/fs/jfs/jfs_xtree.c
> index 5ee618d17e77..5b8b7819cf29 100644
> --- a/fs/jfs/jfs_xtree.c
> +++ b/fs/jfs/jfs_xtree.c
> @@ -49,26 +49,6 @@
>   
>   #define XT_PAGE(IP, MP) BT_PAGE(IP, MP, xtpage_t, i_xtroot)
>   
> -/* get page buffer for specified block address */
> -/* ToDo: Replace this ugly macro with a function */
> -#define XT_GETPAGE(IP, BN, MP, SIZE, P, RC)				\
> -do {									\
> -	BT_GETPAGE(IP, BN, MP, xtpage_t, SIZE, P, RC, i_xtroot);	\
> -	if (!(RC)) {							\
> -		if ((le16_to_cpu((P)->header.nextindex) < XTENTRYSTART) || \
> -		    (le16_to_cpu((P)->header.nextindex) >		\
> -		     le16_to_cpu((P)->header.maxentry)) ||		\
> -		    (le16_to_cpu((P)->header.maxentry) >		\
> -		     (((BN) == 0) ? XTROOTMAXSLOT : PSIZE >> L2XTSLOTSIZE))) { \
> -			jfs_error((IP)->i_sb,				\
> -				  "XT_GETPAGE: xtree page corrupt\n");	\
> -			BT_PUTPAGE(MP);					\
> -			MP = NULL;					\
> -			RC = -EIO;					\
> -		}							\
> -	}								\
> -} while (0)
> -
>   /* for consistency */
>   #define XT_PUTPAGE(MP) BT_PUTPAGE(MP)
>   
> @@ -114,6 +94,45 @@ static int xtSplitPage(tid_t tid, struct inode *ip, struct xtsplit * split,
>   static int xtSplitRoot(tid_t tid, struct inode *ip,
>   		       struct xtsplit * split, struct metapage ** rmpp);
>   
> +/*
> + *	xt_getpage()
> + *
> + * function:	get the page buffer for a specified block address.
> + *
> + * parameters:
> + *	ip      - pointer to the inode
> + *	bn      - block number (s64) of the xtree page to be retrieved;
> + *	mp      - pointer to a metapage pointer where the page buffer is returned;
> + *	size    - size parameter to pass to BT_GETPAGE;
> + *      rc      - pointer to an integer to store the return code;
> + *
> + * returns:
> + *      A pointer to the xtree page (xtpage_t) on success. If an error occurs,
> + *      sets rc to -EIO, releases the page buffer, sets mp to NULL and returns NULL.
> + */
> +
> +static inline xtpage_t *xt_getpage(struct inode *ip, s64 bn, struct metapage **mp,
> +				unsigned int size, int *rc)
> +{
> +	xtpage_t *p;
> +
> +	BT_GETPAGE(ip, bn, *mp, xtpage_t, size, p, *rc, i_xtroot);
> +
> +	if (!(*rc)) {
> +		if ((le16_to_cpu(p->header.nextindex) < XTENTRYSTART) ||
> +			(le16_to_cpu(p->header.nextindex) >
> +				le16_to_cpu(p->header.maxentry)) ||
> +			(le16_to_cpu(p->header.maxentry) >
> +				((bn == 0) ? XTROOTMAXSLOT : PSIZE >> L2XTSLOTSIZE))) {
> +			jfs_error(ip->i_sb, "xt_getpage: xtree page corrupt\n");
> +			BT_PUTPAGE(*mp);
> +			*mp = NULL;
> +			*rc = -EIO;
> +		}
> +	}
> +	return p;
> +}
> +
>   /*
>    *	xtLookup()
>    *
> @@ -252,7 +271,7 @@ static int xtSearch(struct inode *ip, s64 xoff,	s64 *nextp,
>   	 */
>   	for (bn = 0;;) {
>   		/* get/pin the page to search */
> -		XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
> +		p = xt_getpage(ip, bn, &mp, PSIZE, &rc);
>   		if (rc)
>   			return rc;
>   
> @@ -807,7 +826,7 @@ xtSplitUp(tid_t tid,
>   		 * insert router entry in parent for new right child page <rp>
>   		 */
>   		/* get/pin the parent page <sp> */
> -		XT_GETPAGE(ip, parent->bn, smp, PSIZE, sp, rc);
> +		sp = xt_getpage(ip, parent->bn, &smp, PSIZE, &rc);
>   		if (rc) {
>   			XT_PUTPAGE(rcmp);
>   			return rc;
> @@ -1062,7 +1081,7 @@ xtSplitPage(tid_t tid, struct inode *ip,
>   	 * update previous pointer of old next/right page of <sp>
>   	 */
>   	if (nextbn != 0) {
> -		XT_GETPAGE(ip, nextbn, mp, PSIZE, p, rc);
> +		p = xt_getpage(ip, nextbn, &mp, PSIZE, &rc);
>   		if (rc) {
>   			XT_PUTPAGE(rmp);
>   			goto clean_up;
> @@ -1417,7 +1436,7 @@ int xtExtend(tid_t tid,		/* transaction id */
>   			return rc;
>   
>   		/* get back old page */
> -		XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
> +		p = xt_getpage(ip, bn, &mp, PSIZE, &rc);
>   		if (rc)
>   			return rc;
>   		/*
> @@ -1433,7 +1452,7 @@ int xtExtend(tid_t tid,		/* transaction id */
>   			XT_PUTPAGE(mp);
>   
>   			/* get new child page */
> -			XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
> +			p = xt_getpage(ip, bn, &mp, PSIZE, &rc);
>   			if (rc)
>   				return rc;
>   
> @@ -1711,7 +1730,7 @@ int xtUpdate(tid_t tid, struct inode *ip, xad_t * nxad)
>   			return rc;
>   
>   		/* get back old page */
> -		XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
> +		p = xt_getpage(ip, bn, &mp, PSIZE, &rc);
>   		if (rc)
>   			return rc;
>   		/*
> @@ -1727,7 +1746,7 @@ int xtUpdate(tid_t tid, struct inode *ip, xad_t * nxad)
>   			XT_PUTPAGE(mp);
>   
>   			/* get new child page */
> -			XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
> +			p = xt_getpage(ip, bn, &mp, PSIZE, &rc);
>   			if (rc)
>   				return rc;
>   
> @@ -1788,7 +1807,7 @@ int xtUpdate(tid_t tid, struct inode *ip, xad_t * nxad)
>   		XT_PUTPAGE(mp);
>   
>   		/* get new right page */
> -		XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
> +		p = xt_getpage(ip, bn, &mp, PSIZE, &rc);
>   		if (rc)
>   			return rc;
>   
> @@ -1864,7 +1883,7 @@ printf("xtUpdate.updateLeft.split p:0x%p\n", p);
>   			return rc;
>   
>   		/* get back old page */
> -		XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
> +		p = xt_getpage(ip, bn, &mp, PSIZE, &rc);
>   		if (rc)
>   			return rc;
>   
> @@ -1881,7 +1900,7 @@ printf("xtUpdate.updateLeft.split p:0x%p\n", p);
>   			XT_PUTPAGE(mp);
>   
>   			/* get new child page */
> -			XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
> +			p = xt_getpage(ip, bn, &mp, PSIZE, &rc);
>   			if (rc)
>   				return rc;
>   
> @@ -2268,7 +2287,7 @@ s64 xtTruncate(tid_t tid, struct inode *ip, s64 newsize, int flag)
>   	 * first access of each page:
>   	 */
>         getPage:
> -	XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
> +	p = xt_getpage(ip, bn, &mp, PSIZE, &rc);
>   	if (rc)
>   		return rc;
>   
> @@ -2506,7 +2525,7 @@ s64 xtTruncate(tid_t tid, struct inode *ip, s64 newsize, int flag)
>   
>   	/* get back the parent page */
>   	bn = parent->bn;
> -	XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
> +	p = xt_getpage(ip, bn, &mp, PSIZE, &rc);
>   	if (rc)
>   		return rc;
>   
> @@ -2791,7 +2810,7 @@ s64 xtTruncate_pmap(tid_t tid, struct inode *ip, s64 committed_size)
>   		 * first access of each page:
>   		 */
>         getPage:
> -		XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
> +		p = xt_getpage(ip, bn, &mp, PSIZE, &rc);
>   		if (rc)
>   			return rc;
>   
> @@ -2836,7 +2855,7 @@ s64 xtTruncate_pmap(tid_t tid, struct inode *ip, s64 committed_size)
>   
>   	/* get back the parent page */
>   	bn = parent->bn;
> -	XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
> +	p = xt_getpage(ip, bn, &mp, PSIZE, &rc);
>   	if (rc)
>   		return rc;
>   



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
