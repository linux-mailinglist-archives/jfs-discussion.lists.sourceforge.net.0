Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 691AFB032A6
	for <lists+jfs-discussion@lfdr.de>; Sun, 13 Jul 2025 20:30:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:To:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Fil8C2BWhszT/zki2tgzOxb1qriD1lEvdsgo75fT7qA=; b=VEjqqKx7XpThKPQq2W65xzBou9
	NvpjpElrBgIkA9QZhImf5rj2pdPXL1AHzacGjDHibrsWHNe4s0S9jkIbN9rLuK67m+iBQIfs9jwP9
	h/lsMCYDMqBZU1CUN5eA2T/Kv5yoXij9F8u9vFVekmLDtx51g/tZkwl4iiJzzQIn6j28=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ub1Sn-0005rp-Fu;
	Sun, 13 Jul 2025 18:30:13 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1ub1Sl-0005rh-3G
 for jfs-discussion@lists.sourceforge.net;
 Sun, 13 Jul 2025 18:30:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OWehSfRb+T7I7MDPLXzY1gF6iSdxEYJKDrBB9p7rXeA=; b=ElAEtpZMASv1PmtE4359e8jLBy
 BEigyWdzKwngywi1WKOIXdGn5AzIc6bWK2acy7kjbWsryb8fLZVM3houtgA7fILGlscRK9tY0t+rK
 HEhmwr+hSiIDBHba9+GiE1nkRYdB+F4Dpu9UIo33uM3mnoGRIEFo9vvujxJbyfb/Kd6M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OWehSfRb+T7I7MDPLXzY1gF6iSdxEYJKDrBB9p7rXeA=; b=mQ6PfzNz0DzylVHCdeDHuyMwNi
 nvyIYxzmKTMXCQwpKjRWAz2QYDAaF6gK5BhCF23oXvuZJ4jZDJ1ciLjoaHHhHZRC9VEnz9CcpbvjZ
 V24tRTrRyKcyTEWd1txW8QuCb9bRa4AZhnNIc7EQj9f0JTQmv/g2gHC8Jtm4IoAR6Fb0=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ub1Si-0007JX-RH for jfs-discussion@lists.sourceforge.net;
 Sun, 13 Jul 2025 18:30:11 +0000
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56DHifh4002443;
 Sun, 13 Jul 2025 18:29:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2025-04-25; bh=OWehSfRb+T7I7MDPLXzY1gF6iSdxEYJKDrBB9p7rXeA=; b=
 rP1M9fRovS5Y/udNLIeY4o52UpaEwQXy84X7glOJfXVrFf9ApXRoWHZ/s8GmiWpP
 m7Gwb3fOQGo1KbFYS2Ta7rHKVic2xHBrcYEravrZbOB/PW8B4aZ7F8EZ9Xw3Y0du
 4PFXxfeFoNjk+aFd4be8w/V2/4WQ0bq3cJGGoycmcazcjYea/CnLoTz5+22noTeb
 AG22gOZZlDaSaEwZL135Re8tZ7WnjJCpNkDE2yPpFwzuoAL6EuwJwaf7lTGhtoi0
 klki/RjZbkUvjYZC/BSegAcakVj7hg+ns024z096KJeZX2cTqfhOqM/Pr0Udqazr
 6gtMEKKbltJfeUNNpBq5EQ==
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 47ujr0tseh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sun, 13 Jul 2025 18:29:57 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 56DDF42A011524; Sun, 13 Jul 2025 18:29:57 GMT
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2069.outbound.protection.outlook.com [40.107.244.69])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 47ue57taxk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sun, 13 Jul 2025 18:29:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DNyWFaU8d5tpDUEGdffP/O8KeOyCEE6Uj+iq7XPhBLXnIUX1HPn6pwk5rIQj+CjhvTT5Jd9JLAbmRKj7W0Z/BhMmiJyyIdSn9M8/bfjGH+RxccGN+6Z8UvaRBWl0iSAOHKqHe8xqWEsAnHaCIWFkmNtWjIt0YdCPOm52VVNKnFrax1dXkDrP2nuOPlzDhiZjVGaQHfgUR22YgxPlezdnf4aIQWtTwJGnzF7aYlySfqUxiTNWVvS2pk66yC0cyMj8H8Ewgo7wZjnZJZauvwy0l8dxEla3HzQFOjXOdM9avwBFvzi/FPs6sW9OhM30u7a+ByzzESgWYMcBr0gvAE9a1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OWehSfRb+T7I7MDPLXzY1gF6iSdxEYJKDrBB9p7rXeA=;
 b=KmUB/Oe8vahxkF91IMusZ87uSRPRwrtyjNH5IEJ1JVdN6WxszCbPpasOy1HsuSxFI+u9c9g90Au8xSa+yvorq04vRzuddtMBmWN792z//2KMApUnz0lNHWVbEVKZGFAbC/R2Lj5+6mi+l2dD5v5uWVGsGn5KEXaOaVVHH3slkekT44eeQTTzDGucRHsSwoSRqibBnrxh+hcMtMzyE5e/To5+wni1WSr3O2qcOMrYeYLSyKJAIcMOtQd1N/+iRgRA4a9vpXH4aPQw6qgXN8SeuXxpcV1gYBmrsQbA4Np1w71i+KjudP6Czw7duRafgQw8xMETypjU1RphkXUk/R0+GA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OWehSfRb+T7I7MDPLXzY1gF6iSdxEYJKDrBB9p7rXeA=;
 b=xmZAxZrFyuHZa+PVGGHrGdXTT/Qhst665+C/apHcSBaegsw37yjXAdcdSs7FGJ3uBIq+qDACuabfFxJwwEMOaenGwIN14d8kTXxavnvNDR5/DZ8hc2yGeoz9u62QO7Z9EIccpQ0ywvMKIDTbOC+xAcvqB8BIRIR6Gtc32TzFjTU=
Received: from DM3PPF35CFB4DBF.namprd10.prod.outlook.com
 (2603:10b6:f:fc00::c1d) by PH7PR10MB6650.namprd10.prod.outlook.com
 (2603:10b6:510:209::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.25; Sun, 13 Jul
 2025 18:29:52 +0000
Received: from DM3PPF35CFB4DBF.namprd10.prod.outlook.com
 ([fe80::731a:2be4:175e:5d0b]) by DM3PPF35CFB4DBF.namprd10.prod.outlook.com
 ([fe80::731a:2be4:175e:5d0b%4]) with mapi id 15.20.8922.025; Sun, 13 Jul 2025
 18:29:52 +0000
Message-ID: <2d3f4123-427f-460d-80db-91c802fc2226@oracle.com>
Date: Sun, 13 Jul 2025 13:29:50 -0500
User-Agent: Mozilla Thunderbird
To: Suchit K <suchitkarunakaran@gmail.com>
References: <20250605175634.16362-1-suchitkarunakaran@gmail.com>
 <4448980c-d385-45ea-b8c2-b4a0bdde39c9@oracle.com>
 <CAO9wTFimpNU+h4XvpRSS5ocKWzVF4G3W8G2NyOMt09VtVdgKSg@mail.gmail.com>
Content-Language: en-US
In-Reply-To: <CAO9wTFimpNU+h4XvpRSS5ocKWzVF4G3W8G2NyOMt09VtVdgKSg@mail.gmail.com>
X-ClientProxiedBy: CH0PR04CA0041.namprd04.prod.outlook.com
 (2603:10b6:610:77::16) To DM3PPF35CFB4DBF.namprd10.prod.outlook.com
 (2603:10b6:f:fc00::c1d)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM3PPF35CFB4DBF:EE_|PH7PR10MB6650:EE_
X-MS-Office365-Filtering-Correlation-Id: b901fe15-7bfe-4116-42d5-08ddc23b419a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?V1RXMzFFbDhpSUtqTnoyYzVpTlpOdUZZSm93c0NUbUJ2MURuYnE4bG9jMlRK?=
 =?utf-8?B?QWtMcmtScWVjYnNIWFczdVZQc2ZxdEF6Ymp4UFcxZEgzUmtKTDgwUnVWT0dn?=
 =?utf-8?B?dDlFaE53a285c2hNdkJ4VENRcnJERUtsM2tJQWl0L0VLNGh5cWk3UEJwcVpV?=
 =?utf-8?B?WkhRcS8rakh4MXEwZ1dFRkFXNzhZZmhqSUNrdHBNRk15eDUwRHgxazNJR1d0?=
 =?utf-8?B?d1JXdE9MdHMzdXZxOCtpVnQ4ejBHYk0xcG5HWEhHYXAvSDg1aEU5RW9BYUY2?=
 =?utf-8?B?OTNBUW5VQkorQ3pocHA4M1Q4Z25nTWxMSjYwSXdydDA2T2pzd0tIVVVadXho?=
 =?utf-8?B?YXJJMDhMaFJBcGg0NTVzN0c1TzZqdGZYMGc1R2UxSjBFUVE1YnFMdlM1WXhh?=
 =?utf-8?B?WFpKZVpHT2tVU1NZa3EvR3dzSlZ6NjdyYWdWUzZLUDdDeEcrTWxWSFNVMDBs?=
 =?utf-8?B?c3puN3h5bkExbys0cEtyVTdiUng5a1Z5dkVuZ0h3azN6YW9GSXViTllTayth?=
 =?utf-8?B?YUZ2U0xMZGgwRTk5MmY1eU0zYUo1NXpOL2JneU5va3doNFQwTVVncElPQVN6?=
 =?utf-8?B?TjJlUFYwWGhsaHEyL01Fb3VvL3p1UkRMVEpPNzlQendlbFJuTWZxOUsrRFV2?=
 =?utf-8?B?d2VVeEdaMWR5cndNaDJxSFMyZnBMNVorYjZHUW1ibDI2N3lTOWk4d2tWNVdW?=
 =?utf-8?B?cmxzcXZXNGlteCt5alZ6ZHkySWJZajRPUHVSa0QzcnJvQys0T1FWTE1Ecmkx?=
 =?utf-8?B?Uk5BdU85c0R4V253NUoyd3ZqTzJ5Z3NXbC8yQTY5MWNLb0FFNTAxbVR0bVRP?=
 =?utf-8?B?a0hJZXVsaERBam1JejR3L293NGhmN1h6SnJ3dndEVDdtaW1aV2RJZHBmc1ZV?=
 =?utf-8?B?ajVTS3Z1czFzWXk2eSs2RW5hV0lwZHB6dldkNHJFQWNUVCtrQWsvWUhsTDF0?=
 =?utf-8?B?bkNkQmxudUpqS1NQSDVxVXM2ZG1zNGVSQmtweHNqemF2N1NSdWp4TVYxZmIv?=
 =?utf-8?B?TU81SHZrNXJQVjh5TFlNR3NWNFBSVk5QakRjY3c2dzlWS0N0RmppaHdhRGFj?=
 =?utf-8?B?dzZhcHc4NXJSZHo3Vm5tMTRibWVMSTlVa2VXVEM1U1F6QnhYRFVJVmJhOGJU?=
 =?utf-8?B?Nllna3VFQk1TREczTTJjM0dnaXE3WFhvQjRkWGVJeW9nOHAybTc4Ti94T2ts?=
 =?utf-8?B?akpqNllvOEt4UlRkdWVDZHNMQkdBZGF3WnM2MlpXU2hmQkwzYStaZ0xsaHRU?=
 =?utf-8?B?QW1JakJOTmhHMDMzdkVxRFduRk16LzdWWVN1NnQwUy9SK0I4NGE3OFQycEUz?=
 =?utf-8?B?SW5LVXZQUDVjaTlvNm5lSVFUTzFOY0dvRC81dU1jaTNDZWJKUjQyWlNvRmxy?=
 =?utf-8?B?V2RWeTgvZHFsUVFYc2p0b3B1RlViYmJyN0FLaVZaNHA1Z3Y1Y0VoalZRd3Rk?=
 =?utf-8?B?M00zTEx5eFFCVGlPVVlzVmgyLzdkK1drR0dHKzh6ZE5abWFQK0dRNkpGRTF1?=
 =?utf-8?B?UEoyMmYwRVcvdlRGNlFvNzF1bGVpNG1PMmxiZFM2WXV5MHJQMGR5Y2R2TWFG?=
 =?utf-8?B?Tnc1aXNmaEpkaXlOWHM0UUZpV3NPakUzL0FmdEc2bHZlcktzQVkrZXZhUi95?=
 =?utf-8?B?V2QrK1JadkxhOFFKZEhxUUVkYmVHLzUzTXZMNm9Cby9OUXMyNFlseHo4N0xx?=
 =?utf-8?B?aXBjeXRhTHlzdEJQc2p2bGJqczdKcStMSUpQR2hFWG9IQUpvY29CUTQrM3Fy?=
 =?utf-8?B?WmFCbGhROTJ3a2lHbG5iQjRSWlREUWRPL2RPRlErSVd2bTlMdmpkRFVDcEtK?=
 =?utf-8?B?L0V3TFVrMlJ5L1pQTFVwZEZMMHR1SzBUWUhDN0d6QmVaNVZlK1p5bXNLNUpj?=
 =?utf-8?B?bTdkclhRdEtLY0NPckFOczIrTmplK3BKejN3dC96YW9BemNxWm4zOEhPQ3N2?=
 =?utf-8?Q?s/C9CgQKzoE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF35CFB4DBF.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cnp3RmtTendTQnp1aS8rcnJkSWNWb21CcHEvdkp3VnBmSWRiVTdEUEUxZnZD?=
 =?utf-8?B?WUhIcmNUdkltR3dZaHNyTEdhUjlUVGJ0bURnQlNvbUd5RTFQeHdsa1JJY1RG?=
 =?utf-8?B?Y2F1eTBaR0dPYUF3Tlh4VG5QVnZ1T20rSXR2ZVVOelN3UTMrWFd0WW5zV0JQ?=
 =?utf-8?B?QmZHZEYwQmhidlJnZURjK1MxQ3MxTnowbTl3QlIya3ZTWVZadDlXeTBTbGhL?=
 =?utf-8?B?VDBWOE9nT3FrSWhING9Yd2wveFFKYm52a1ByQVRVTVc4dkF0SDRucVNIM0Jk?=
 =?utf-8?B?eGl6K2dWZVM1Tml2VUpNeHNkNW1DRUdwTjNwdEF1b0cwTTduRXpac0xmUERW?=
 =?utf-8?B?V3FiWm5XeldDSnBtWllqbU9Ebk9vVkJHMDEyR1BoUTNJbHFKNHR5T1pTeXJk?=
 =?utf-8?B?RFBYK1c5RDJTZUxIV0h1cnd3dW5Uc1RPYUJDN3gvNVI2RDRWemxmcTJiRzdB?=
 =?utf-8?B?Rm50cGxlMW5UaDRjaWIzRDJ6YjFsSnRReGdtR0JzdmNlazR0NzJkUFZkVzRX?=
 =?utf-8?B?U1A0V3hOOWRLVmd2ZUd1OGVCUS84NFVwTzBta0dNbEc3NmkweUdycFovbURs?=
 =?utf-8?B?NjdJdVlRQ1lPb1BzRHIvT3BXVmpuUlJYeHliUUFZVXZlNnVnSTJjajMzV1By?=
 =?utf-8?B?aWQrenhGYjlCTGRlNjlYUkhaT1YzT3pjNVBMTVNtSU9JTEFkRlRuejBSOGZO?=
 =?utf-8?B?ZzhiTk9XZEY3cDVFdDl2Rll0dWNscE9qWkRnY3JHdDhha0FjRndOakZDbmZk?=
 =?utf-8?B?T2oxcjRtWThXVmtCaXJRMm1GcFhJbEhaTlp2VGdZL1F2Y08xbVRlWWZJeTFZ?=
 =?utf-8?B?WHFXaWM4elUyL1lNcWpMejZ5L0phVUh6ODF2cW1pWUg0bzdpQ3dpeGVhSElu?=
 =?utf-8?B?MjJGbGJHNWpWMUIwZ05VaW1pRmhINGU2enNmSGQ4M1ZuazJWTWJrdENDbThv?=
 =?utf-8?B?NFJSRGxRcUNFakxGUWdBZnJtQ3BpcWE2TmoySUcrNVdDQlVQanBBc2ZxUGRL?=
 =?utf-8?B?bVFXdUxFeFRtenpRVmc1Qmw5MDZWRUg4aXlsYjNneUxBSWhCWGZvVnhaTWJF?=
 =?utf-8?B?ZERsMHNYK2xSc0VpVG13d1piaXBMYzRpRGJGSXV3Q1VLTjRZRXNRbVY4Z0RW?=
 =?utf-8?B?dE8rQVV5NXVHd0FBelRIb3Q4QkJ1c3RLc3JmQktaNDd4QmlVNFovbDhMZEg5?=
 =?utf-8?B?Sncxa1VZV1pTWUZUelc1clc4dnIyZno4OG5oUDZ3cGU5Qm9pSysvSzZRb2Rj?=
 =?utf-8?B?c0lJZGRNRitjMmVrclpldk40emg0S1VzeGdvaEdCSzVKT0NWeTYvN0hhc1Rz?=
 =?utf-8?B?aEJsWFYxa0pqWGVWNTkvUWJnZDBVejg2Tm05YjkrQm9TZkZROGh6ZER4Mnlm?=
 =?utf-8?B?Y01sTzdoZXo2SFpMNXB5aXB2TWs2L3lnWkpRYm8wNDhtVzRWUVhmMVJReTVv?=
 =?utf-8?B?b3dpdWozS0tSdy9uQXduQWFpN2RTWDcwNWlYV3ZWWTRFVHpUQitlZFhHYVlG?=
 =?utf-8?B?THJTWjJsbTVqTXA3QjREMWt0VFYrZk9CZnVUbzg3OHIzM01pQUpsVU5lWGZ6?=
 =?utf-8?B?QTZBLzEyeHh0dmtTcVF2STBhemgyZjB3MXR5dlBGeXlTdkNYQ0lGbTB4RkN1?=
 =?utf-8?B?U2dRejBDUXBqcVpWaDNrb29wZG9qT0dHOWVPM2MwMmhTSndjQWJjdWhvU1Fh?=
 =?utf-8?B?M1REcXBXQ0o5RWIrSW9jcDJHbjRPQm9ZQ2pyM09SbE1taUxZVmtIYllGYXlE?=
 =?utf-8?B?em1aeFdYbmgvbVNNYXZ2OTFSYWxhUFpBWGp2Y0dyRmNqOVJDUWFVbFRkbHBa?=
 =?utf-8?B?bllvajZaQjNYS2VNOUoxaXArRkZ1TzlQZStheXlSQUFxYTBacGdiMS9jeFFK?=
 =?utf-8?B?Y2NFT0VmaTR6WlJ6MUZUYUZvWXpYeEtIbVg2aGY5K1cyd2pvY1Bqb0RLUzFZ?=
 =?utf-8?B?SXo1d2FuTkFVcWFycmZEeWV5d1ZjNlRtSzhHRzRzcGV2MlhpY2JNSkFwVXAx?=
 =?utf-8?B?bDlFTnVtOVZiY093UUt2ajRBNnZ0SGJ6RnZrRU5mYy9rdlIzVkVZcWJMLzlN?=
 =?utf-8?B?TmlTbGZHNWdTN3hoQi9qTFZzMGpxRUFZaGcrRGozM24wVnFaWE1HdVhya2Ru?=
 =?utf-8?B?TWFUSmVYK3ZqRWdBY0dON3ovN3g0SmtqZU8rdW1WMm1ueTRaVmR6UVZKUHNt?=
 =?utf-8?B?VGc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: BLmFXR2fgBnba44ko+bc3u/577rVHX++FfKB/ZNSNbo0OPjnENhDH++JZHIpN0unzUpz4uRluU9D9L0s9r1c4vwSIC3cu6O/MeQ9Wq682LGb3HoK8+T1IMy1a1b7vr3PRdr1X+RRUUhX2COdn0POXdk4LaV//PpujrW5nJXBl9n3SRZ2pBrzoH4iDH5w52CDJcWJrbXEKsD2wBGCkOhOaZFkRxnl2dAxEtCWYMWTbgbYTHkMmB8+MjJY7bMupV7jpMHdae0FKnMziKtHCvICnITqWc08ODEOd7p5hRMhbRdUVrA1i7geuhisgIMguUKV5JleujyInrzyWyLl0AVlIR38XseqYfCNHqMypEDx0cPtlTUISOBmOKpPqgoB1tLGc2QJ3vaqVO0KFjR80HG4OYjVxMz4WB/lZdctqZru/zcK0oPX+Ab/VSNQg4ipuTZGyXvJZFPUDG9oYQkvhZig2qxvNs5ddJP+FYwLOiLST/go6cN8PWUX3MAnZrllI7BXP+4IBXFAPbFnn6B7s6dmu3mblQXUE5ewHPlT1pwaFp3TSxR6VXeneoQXlUiaqgxEhzR6liz81cIx+z4CPUd2VIXGI0HIZ3IaotxabEtisBY=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b901fe15-7bfe-4116-42d5-08ddc23b419a
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF35CFB4DBF.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2025 18:29:52.0436 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vGJP3Dg7JbGUflJwS0jSd/sYdLp4y3j0KmWhrTO8jNXzqc3lj4u3dzzonpUPaZTHf6ZdZz0LQ5pn5LHickaVsXVMPCOZ4112xwUDv84DvZ0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR10MB6650
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-13_02,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 malwarescore=0 mlxscore=0
 mlxlogscore=999 adultscore=0 phishscore=0 bulkscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2505160000
 definitions=main-2507130129
X-Authority-Analysis: v=2.4 cv=d9T1yQjE c=1 sm=1 tr=0 ts=6873fb25 b=1 cx=c_pps
 a=qoll8+KPOyaMroiJ2sR5sw==:117 a=qoll8+KPOyaMroiJ2sR5sw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19
 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Wb1JkmetP80A:10 a=GoEa3M9JfhUA:10 a=yPCof4ZbAAAA:8 a=mV-ACMoDYPNPo27Tz6cA:9
 a=QEXdDO2ut3YA:10 cc=ntf awl=host:12062
X-Proofpoint-ORIG-GUID: oUHM61MvHqEiqVVHSj4WI0vptE8lDOzS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzEzMDEyOSBTYWx0ZWRfX7hwxP5ADnnhO
 w8QFMLQvLJCtFeGKdbpB3jEXygIQxpoNGRuea2eV+ywePzDAFKOvM0iaZ/4kyPEFxrBLM6anLdV
 740x5Hqhzrwn3/zaDo0uK1dY7hgEg4k7CLmmC6xXvbDgdQB2DeL17OB5Ol7TePpUIOeoZE40uWj
 oOb7rXV/ZnOcB+DyXapYGhh87J7S4m+XQ9ZUSf2AP7dmXmQ3eR3cegBbBJ6DwSX8ml43wxqUXyc
 NLbT9p+JMHfncKWVHm815bR/lRYcSkvrxoFKa/Qe5tktDmaMo4xtRwfjOaQV1jvwbX0XIEeEMAX
 vSZNVrSC0uDdP70AL53E0Bdh7YDc8FKkjcNLN2y7Ghex7v95CFEGHNVRbAbfmGXqHZL9HAwTZnF
 cTbu4IlB8uhP6J8m1+euJmDYbw/OQHBhVDN8uqUVVDWqDXStjqjSTchJnqne+Reifqfcvj09
X-Proofpoint-GUID: oUHM61MvHqEiqVVHSj4WI0vptE8lDOzS
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 7/13/25 2:24AM, Suchit K wrote: > On Sat, 12 Jul 2025 at
 01:40, Dave Kleikamp <dave.kleikamp@oracle.com> wrote: >> >> On 6/5/25 12:56PM,
 Suchit Karunakaran wrote: >>> Replace legacy XT_GETPAGE macr [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 ARC_SIGNED             Message has a ARC signature
 0.0 ARC_VALID              Message has a valid ARC signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.220.177.32 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1ub1Si-0007JX-RH
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
Cc: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-kernel-mentees@lists.linux.dev, skhan@linuxfoundation.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 7/13/25 2:24AM, Suchit K wrote:
> On Sat, 12 Jul 2025 at 01:40, Dave Kleikamp <dave.kleikamp@oracle.com> wrote:
>>
>> On 6/5/25 12:56PM, Suchit Karunakaran wrote:
>>> Replace legacy XT_GETPAGE macro with an inline function that returns a
>>> xtpage_t pointer and update all instances of XT_GETPAGE in jfs_xtree.c
>>
>> I'm picking this up, but I simplified it a bit. I dropped the size and
>> rc arguments. size is always passed in as PSIZE and I have the function
>> return ERR_PTR(-EIO) on error.
>>
> 
> Hi Dave. Thanks for picking this up. Is there anything that I need to
> do from my end?

No. I've got it from here. Thanks for cleaning this up.

Shaggy


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
