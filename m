Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D80FCAEBFB
	for <lists+jfs-discussion@lfdr.de>; Tue, 09 Dec 2025 03:43:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:To:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ipX8LuZ18N57rJbE3V+B2o6WJMhjXqsk//dQ99HQQEk=; b=fwA5Ky4KCo8eTnc87OWEpsOC8L
	41GYCzijjBb0waHHHQx1+FCQzZ3kq99Wqh0dc0q+Ut11Trd2rscuLo2M66Br60Lwt/sfcaRCBZSeU
	vzsbvCZ5qSvoILpxjc/25zq6QVdalz0CIpR8ILG4xpUsJf6mqZrbvfMG+jwB6EPsm6QQ=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vSngG-0003hW-Q8;
	Tue, 09 Dec 2025 02:42:24 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=44389c30f3=yun.zhou@windriver.com>)
 id 1vSngB-0003hO-UF for jfs-discussion@lists.sourceforge.net;
 Tue, 09 Dec 2025 02:42:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IRztagweuXmc2lzNGJ2XPAFVUrAn8aDwe3/d1cf+lE8=; b=XAIdZ/fhXj1afS/U7YlRhjXEv9
 6seSang54CoyGy0a+1aeQ8hYWLSofMHc89X5UTcVWGw6g27OlZdYzw0XvNBXjpc6Vgxnw7zWKmz9J
 K047+iDAU3BblfZ33DhKXNBpk0rtxjJHhPqLReMmNL/AzJ3BUBb5jklJWBjRoW0GDt7Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IRztagweuXmc2lzNGJ2XPAFVUrAn8aDwe3/d1cf+lE8=; b=GhRXqf6SKUWdWlbGRblTsPtFrq
 gRf5ZqNxjUJRMzNtOUIgS21jfmHYGt/rh8qeX2QX8q4QTzsYhSUjurd6BkQtciWUYGUk3ugdPnfsA
 PrpCFy0HZ0HAJoGps7WDRhmyo7J4jY0g8yGkEz6NA2ZmYxRBK/iqBLNYHQ2mAGncYlG0=;
Received: from mx0a-0064b401.pphosted.com ([205.220.166.238])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vSngA-0006eA-1q for jfs-discussion@lists.sourceforge.net;
 Tue, 09 Dec 2025 02:42:19 +0000
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
 by mx0a-0064b401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 5B8KNicY2798035; Mon, 8 Dec 2025 18:41:22 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=cc:content-transfer-encoding:content-type:date:from
 :in-reply-to:message-id:mime-version:references:subject:to; s=
 PPS06212021; bh=IRztagweuXmc2lzNGJ2XPAFVUrAn8aDwe3/d1cf+lE8=; b=
 DjRtw6kZqgY5VLU8VyAQMQycXO6pkgWn3cuhSezQr10gcjFd7Wruc5WX1QhtwQ+Y
 SlKKAC3CAIMQuzvNZDV80QSTeqddA+JnnoJEtxoYwfaWAaX6+xqPf3iH5/PLzcTz
 Y2XGPKWGHScyLm8IrdYxcFxylx5X3G8ArPaAQR9IXxklANM36w2+/fJgvBLhPLLC
 TnyXpxjND39NM5vvlAuaAXTaHyUdeSFrsa4rJEun5AWz/pU3vM+WnISXsEciRg51
 GYD0fBLobVS7p0xxWI9LodKwAzOgzUiRXiSOSY/crAsLnvEYfHWOtER+PwuntByy
 /vm6iAv56EKoCKvvQlX4FA==
Received: from ch4pr04cu002.outbound.protection.outlook.com
 (mail-northcentralusazon11013071.outbound.protection.outlook.com
 [40.107.201.71])
 by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 4avgn5jahh-1
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
 Mon, 08 Dec 2025 18:41:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BXKtoM+5NrQHDvOOqmiRM9YnX582d6UpeIarSFVKB0k3DuDQBf8b72AGbiXSANxzTldaZ4iGZCEBZSIrzXWkWLJlxzBirOnN73mt4Xo9Dm6WEIiUghKjpy0YsPW1n38WdtjsiDDCSGYYfG0hF4B+O6dF8J0O/iAaLjbWmDXmXdvW2SgNbg40vfV1jUI0bqAuGD4Mq5hsx+yXsKYqw6i9ghubFBG+N6jQd1v+LCfP+oyVYfNNlCaYG80TPAqCv6WZSXmrWSq3kwpOoZDfziiNohbJgT/2BRy31OptC7R6I//BFrEp/kfQtcfE52D0ZeJ88bLfwwbTz/TJlWbt/V87MQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IRztagweuXmc2lzNGJ2XPAFVUrAn8aDwe3/d1cf+lE8=;
 b=pYEiQ3UKkECsmqoCPc3YUxIHA+fSw9saVTfMzqeJ8juu232hls+Sm5jM4Ojvo5CXb9OrRR3TgLg5t7Y92mJuaoo0ubeTVQtm3yXVFCS9QqjajILGFMbXOGUrxbPvoMdl1tVXILuqayDNiv2Qv3kJZBF8hOeymMUCui47T3CEYKo+Y0iyvfVfOykGyu6Kbr/rY0nGRGI4QsCmsBPGhkGu/y//nQU0ts/dEzqAcEXOBuEkS4D8RrFWt8Vq3MV0JxwzsuvwpQMC1QJt++y/W8N3MCbc7HmPSE2/2fqyStMz79ZrHTtjLFCCZUWWhqLWTzeKlb1d3Gy5w+InGQsXSd2iag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from SJ5PPF2F7FC4EE6.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::81d) by LV2PR11MB6021.namprd11.prod.outlook.com
 (2603:10b6:408:17e::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.14; Tue, 9 Dec
 2025 02:41:19 +0000
Received: from SJ5PPF2F7FC4EE6.namprd11.prod.outlook.com
 ([fe80::5cd3:aaa1:1564:3e48]) by SJ5PPF2F7FC4EE6.namprd11.prod.outlook.com
 ([fe80::5cd3:aaa1:1564:3e48%5]) with mapi id 15.20.9388.013; Tue, 9 Dec 2025
 02:41:19 +0000
Message-ID: <4cffc24f-69b6-4869-8f1c-81b7c1ba133c@windriver.com>
Date: Tue, 9 Dec 2025 10:41:12 +0800
User-Agent: Mozilla Thunderbird
To: Dave Kleikamp <dave.kleikamp@oracle.com>
References: <20251120154350.1041513-1-yun.zhou@windriver.com>
 <bf6d47da-4c2e-40e4-85c0-ae3061d6c39c@oracle.com>
Content-Language: en-US
In-Reply-To: <bf6d47da-4c2e-40e4-85c0-ae3061d6c39c@oracle.com>
X-ClientProxiedBy: SI2PR02CA0006.apcprd02.prod.outlook.com
 (2603:1096:4:194::8) To SJ5PPF2F7FC4EE6.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::81d)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ5PPF2F7FC4EE6:EE_|LV2PR11MB6021:EE_
X-MS-Office365-Filtering-Correlation-Id: a75a7fbb-a0f2-43b5-a0c4-08de36cc6e97
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?azB6djMxaXc4dkN2c0xJcVdmdU9jUW5La2tVREROR0szWTdiaDN5b0RreGxV?=
 =?utf-8?B?ZDhPaTRMendzejdyRlBCRE96R2oxa0JwZ3o3a0ptYVJJWGo2cHNxRS9HM2F4?=
 =?utf-8?B?S2ZEWUJ4RDhvV0MxUFpIUXlUeVQ5cHFCV0czbXFCMUhZN3VGd1NZRWZOMEFF?=
 =?utf-8?B?U3pPcEhHTFc0dUdBblk4TVdqeVJ2WEJ2WndlU1ViQUEzNUdLblZoZlRPRmpL?=
 =?utf-8?B?dTRUZmxPQitSV3YxaWNQVXFMeURwdjYxYnprMDBZWkdhY2tlQ2pzYVVudVZr?=
 =?utf-8?B?ZXlWQnA4VGJKSTRNVWRyT29idzY1WEJMdERpTFAxazh4NDFlV3BpMlV2SWxv?=
 =?utf-8?B?MGRBemhESlByRWdTTjRGcTNpd0JEanRVOEVVWndCMlE4YzZaUjB5TUtqNnVD?=
 =?utf-8?B?UENHQnBXTlFRcy9rekVDRVBURXMvTmlmTEFjZ3FaWm9wNm1SL0h1dFNVZ2VU?=
 =?utf-8?B?V3NtNGZOam05SWl0TzVHY2Q0WWwrZjlDdm8zc1dmaUJZZkNsd3N2T05UcCtn?=
 =?utf-8?B?VGVzYnVXK0JvMGV4WmI2TXE0MjhiR0FyMjRHZnY5aVFpNGVidmcxQmp0NHlE?=
 =?utf-8?B?ckg0R2NNSDY1OGJObGowek4zTnQ0c0xZcUV1ZGU3THoxbFY4cUkrNkVRcXRj?=
 =?utf-8?B?cjFQbnZjTlZtNnJLeVNUT3NtMjcrZ2JDVGVsOWRML01kM0xOeDV4L1ZtVDA0?=
 =?utf-8?B?eExJakF0N2MyT2pnM1IwRDZrRFZMUXJxZU9nY2FZNkVZSGtleklQVzc0SW1C?=
 =?utf-8?B?OVZqaUd4Q0R0TDJ4ajd0amFCZXVFc3VTQUdOR2c4OVVPSTl1ZE95Q2E3dU01?=
 =?utf-8?B?aElvQ1ltYytYRGVibitVZG9FNkF2SEpkZGNNNzRGWWZVQzl0Qi9nOFNYNFBJ?=
 =?utf-8?B?cE5nTkFTbFZRVy9raytnUmhrRVZ5bFA1WFpCdExJd0xTMkNNajU4WSs2S3JT?=
 =?utf-8?B?bXdhMWt5RkRsQkNEUGs2K2VCTEQzazlkOUdOOXYzdUd2WFR1ZnpzU3EzOGZM?=
 =?utf-8?B?ME0zYTJEekZBYlUzQU1jcFdzOEhjUi9WNkFJK3lGcEZ0SkFkaWE5TG1QT1M3?=
 =?utf-8?B?ZGRjWnprMHdnNjB0bk9DTkpKRG9uM0kvTmxYaXlqWTVJRktRUkZWa3kwUG9O?=
 =?utf-8?B?Nnk3WGRWRzl3U1hjKzRlalRQcnJFaEYyWUg1UE1Da0RXZ3dYVTR0M1BYd3pO?=
 =?utf-8?B?V3VJSy9MbnFFS0Y0N0poNXZlTmV3QVhabjhaYjRKMzVUa3IxQ2NvdWdxeU43?=
 =?utf-8?B?UXdOMVF5cDVYTVpsbVNvcU1rUkh6bXM4ekJ5ZTlEcmFjQWRVU053VDAwY2NC?=
 =?utf-8?B?Y1V1TG9yWHVXdzdGM0dOUjdqV0MrWEM2NnBwVVI3SWhRRDZzR1R5a1hvdWpr?=
 =?utf-8?B?OE5wdUQ4Q2lxTzdOVHdhdWtZUzJZaUVhdEVaaEpqemMva3FxMGhNbFZ2eTdH?=
 =?utf-8?B?SlJiYit0a3JCRTlyV0RSQTFvU3dFclNOdGZVei9DZ2phSTZYMkZVOXg1cEds?=
 =?utf-8?B?Y2tqV1BjR1VVUVJsd21IZy96TXpaVExEMFNDSmJoVWF2VVdQanJtQTB3SnFZ?=
 =?utf-8?B?MEJwYnpYL0lwUm5mUko2VHBGaUZuME9xZGRjVGw4eDBqNzdBYTd5d3l0cmwr?=
 =?utf-8?B?NTMzYitQOEVodFJwSEZ2Q3luLy83a3Z2RDA2YmVibjQ4eUd3am1yUHNaUEhW?=
 =?utf-8?B?cjhKTkNHNzJXbGhyZmE4cVMrWkNyanZtSlE0Qm82Z3JsZVd1WmxJWmVXblNx?=
 =?utf-8?B?Y2VxS0pGMUNPN2Z4TFF4WUlXbU9HSW43NngrK3UwYjd1RGRLWW94MUVSSHJB?=
 =?utf-8?B?T2QvTUlMaHZNTFlIQWdiM0ROTS9GQ3htSFVVSVhZVUJWRytZcmRJWEtUSzhR?=
 =?utf-8?B?TjBQb0NyZUYxZE9CZmdMeDhNdkpBMkV5Z3ZxQVJrS2ZrcERwWnpWV2lXWnhm?=
 =?utf-8?Q?N+5nWNw3XEDwMGT5MFI+poujwGFWXYsq?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ5PPF2F7FC4EE6.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TzlGS1IrK1h5dzA5SUlTYUZWT1FxbW83eU0vSzV0YmJPR2pKZGlpK0dQOEQx?=
 =?utf-8?B?SVJvdW5zQ1BlSm83V1BuRXd5aXh3bkV5aldtelBqdmhmaXhsb3F5MkMzdVhD?=
 =?utf-8?B?ZGpjNEVDNmdidWV1czNFVDRYV2hDYTluYzMyNDJBL1kzOVlVVjFES2JTd09z?=
 =?utf-8?B?cGx2WGlDWWhYdHJVU0NxQ0w4NmlZS3ZSZ0tkS3ZvQ3dJUG1MYWZ0eE9OcjJM?=
 =?utf-8?B?UlZ5eGVkcXlMNG5NeW9pK0tPZWNHcXQ1bE91MGtIc09wU24yUXV3cmk2d3Nz?=
 =?utf-8?B?Y3NrNnJDbFhBanJUTWgxODVIdjE4QlFIWHZwbFdXczVUcmVOU0RTQm9WVnBT?=
 =?utf-8?B?dVNwSFJDZ0VEU2NYQWFIUUFZbXRNdDBTNkszZU1HdFdpbHRvMzZVWnM5ZWJs?=
 =?utf-8?B?VG5TL2pMYjZpWXNkUEtxbndiU01MRHo1dHVGUy9OTENIWHRIZEZya1ZhMlpn?=
 =?utf-8?B?S3liWVV5cFhqWENJcXg0MzhMMFBJcUkvanZhTlkrZTJWUVZEek8vTmJDcjg4?=
 =?utf-8?B?dUZuWEw2VDQyWFpobjVOYmxSNXBCVFZxZFBibEJBK3VKa2Ftdmd6eDZwenUv?=
 =?utf-8?B?VlNSb05EcGpsY2tTVzVVZ25pNCtJWVY2YWZaMHNPdlQ1RWZJaGVDeFdKdUlk?=
 =?utf-8?B?WmtOSkZ4b0hqUUJndk85akZHdHV0WXlDV3BXcHdKN2lFeEt0K1NpT3dRSHJG?=
 =?utf-8?B?OXl6elFKMldhV3IvTWRDRlhyV25yVkIxdVppT0Fmb3JCNGo4TTdhMUtzSGFs?=
 =?utf-8?B?bzZwai90ZURkaVRCUWViRHVIV0ozQmdKQmZGbE1yMVlLUkM3Y3k0dmwyOG9Z?=
 =?utf-8?B?MkpnL3I1VmxyN08yVWhyTTJ1ZmxmVG9GT0FvczdPcVhmSFN0UzhMbGZ1cVlr?=
 =?utf-8?B?UU9WOWZuZjA3Y3M1b3VodnZVTjIzbFRLSGk1WGZSNnYvZC81cTQ0MU5GZ3Q4?=
 =?utf-8?B?bURCQVJWOTBTMVhENmdSeTRRM1Y4b1NFbG5sSllLYTNDbDRITEJhN3Vna082?=
 =?utf-8?B?WU1XZTA4bkJGN0g4WWNwd0FHQ29BZ2FvV294T3cyUjczKzd1cnFFdWloZ2tR?=
 =?utf-8?B?ZnFwSEQ3MlR1cHFVOElOdzVDcVkrL2t6dExRTGdtaVB0MXcwdG5zeEZzV2R1?=
 =?utf-8?B?SDQ2ZnpRM2dxejFDd0ZlYmlvdC9KT0xxY3FEdmNtaHdIZWMyLy81VlIwRzI0?=
 =?utf-8?B?MzIvREFRVzAwbU16RFdoMEwrKzlyb0tCRHVwR0pBcDhNVThwclN1bVFRd3lJ?=
 =?utf-8?B?eTZPTm1CQzNsRURWYVhibUhyWHdQWjZPWlg0UmhJOWhVSG5jZkx3bEU2VFBE?=
 =?utf-8?B?TjBpVWtuZ25lRTZHNzhvRjBtbUdZR0RqWVN4VncvN2x1amhDN3hGQ0dJekRE?=
 =?utf-8?B?bTcwZUlqUkxGdEFWa1ZEcWlhRW1QNGYrVlZ2Q1R6bmoxM2E4Ylk5TmFMRzJE?=
 =?utf-8?B?RktlVXNOTmcwOEwwbldRdGJSMUtRb281ZGJWaXBmalEyNEZmUld2UTBxV29U?=
 =?utf-8?B?UTNGaXFtWDkrTDJDZ1BpZzNkTThLRzl0alY2OWRQN2RIS3AwU3RWTTl0WkNq?=
 =?utf-8?B?YW5yUXFRdjJ3T1ZRYkI3NGJoUkhqMWJvM2hNMnRkaEJmanphQ1pCc0NqRi9V?=
 =?utf-8?B?enREYURObEU0ZjB6WVJkQy9FTlBmMDlDc1NCb3duVnFtUXFaVkpHcEFqUklt?=
 =?utf-8?B?bnNLdVkxVU5EM3FxRlVFNUh2TUhVYW96TzFIVXlHdGVnTzlHamYreWJseno3?=
 =?utf-8?B?WGVQMmh0TFdNb09KL0ZLWldJQkxxSW9Qamo0TExoZmplbWcxL25MRG4rNnF5?=
 =?utf-8?B?bGNEYTRqY2FPK2VPbk9VeEVpbVMvWEdRVm5Sb2hITzJCRDBZdUd0NU5FWFAy?=
 =?utf-8?B?NmNoVldnTWY4MG9LK3lTNTU1SDNoSVN2TTZHcTBrMEY1Vll0c0JBVWVDODNk?=
 =?utf-8?B?UUpRMUlURXRpcitnK3JNaFNPQXRTNmQxSXF4VGZPYzBDTnpkNWFvVUZBczVL?=
 =?utf-8?B?dWtSMlg3YkFtWjd1TnZuSWZkOXhoWkd1RStBd0RiUENnMzVBdkpwb0F6ZERa?=
 =?utf-8?B?Z2ZQUXMybUF6dFE5bFRZcGhrdzlxMEV1TnZhZ05CZ2toamxvRTNsSWgwcFor?=
 =?utf-8?Q?2PUUO7KIVxpXAZyWHhaJOHbAY?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a75a7fbb-a0f2-43b5-a0c4-08de36cc6e97
X-MS-Exchange-CrossTenant-AuthSource: SJ5PPF2F7FC4EE6.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Dec 2025 02:41:19.3235 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BmiBh3bhqOdRFBD6WUqfQSa5Qgp/38nP+yM7k0KuMmfwC9E1/QHWowj8kDI3Gol+vn4b+lwl+E/K0kI+Fhj+Iw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6021
X-Proofpoint-GUID: yqQ44qP82ZQ1y3ArSx0Z4Lfq_KDKglRt
X-Authority-Analysis: v=2.4 cv=MtJfKmae c=1 sm=1 tr=0 ts=69378c52 cx=c_pps
 a=eHfeAi0ej4loD7KcX6Y+qw==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10
 a=VkNPw1HP01LnGYTKEx00:22 a=c9E9Q8VEot1nj3GWvx8A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA5MDAxOCBTYWx0ZWRfXxzFBrdCXCbKg
 Nck8YCM1gvdW2+cyXJX85SMfujcZsiSL0mFXKr3J1uDDvrF/BfalDEacfLli9wSuQ+faW0NGjK2
 URyKfINurhhOntPcL22pkKX+lVPFbYPsMsUXGFh5YHc+QRJkLF61eFVqnHD4feyXkrD7p9TW0mR
 HuBx9NLJkwzHuc/0DNdCDeBU5RMUoRQw0f2i74sxI2BM3sgTsyzCYnrQAZVlubSTDoNXIqh5Vzp
 6n0Z4CIUo6t6kn84Wr6G1v6kmhOv04TzvckSu9p6ImozNmPRIxqIl3TRK/a8585l31MfB3oM9ei
 pbqYPDEgTa9Pa/vo2dt+qjRbkM2Ts+tvsH9hsTQlQLqh8qBo7b/MaxcNLaXtHD7OLu1sFO6Cexq
 XdUuzYcW5jfX0VmI3vxg76OJrOQg+w==
X-Proofpoint-ORIG-GUID: yqQ44qP82ZQ1y3ArSx0Z4Lfq_KDKglRt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-08_07,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 bulkscore=0 clxscore=1011 priorityscore=1501 lowpriorityscore=0
 phishscore=0 malwarescore=0 suspectscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512090018
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Shaggy, Thank you for your reply. I am willing to continue
 investigating and resolving these issues,
 and look forward to your suggestions.Yun
 On 12/2/25 06:31, Dave Kleikamp wrote: > > On 11/20/25 9:43AM, Yun [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [205.220.166.238 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.0 ARC_VALID              Message has a valid ARC signature
 0.0 ARC_SIGNED             Message has a ARC signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.220.166.238 listed in wl.mailspike.net]
X-Headers-End: 1vSngA-0006eA-1q
Subject: Re: [Jfs-discussion] [PATCH] jfs: add dtroot integrity check to
 prevent index out-of-bounds
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
From: "Zhou, Yun via Jfs-discussion" <jfs-discussion@lists.sourceforge.net>
Reply-To: "Zhou, Yun" <yun.zhou@windriver.com>
Cc: jfs-discussion@lists.sourceforge.net, eadavis@qq.com,
 linux-kernel@vger.kernel.org, kovalev@altlinux.org, contact@arnaud-lcm.com,
 zheng.yu@northwestern.edu, rand.sec96@gmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

SGkgU2hhZ2d5LAoKVGhhbmsgeW91IGZvciB5b3VyIHJlcGx5LsKgIEkgYW0gd2lsbGluZyB0byBj
b250aW51ZSBpbnZlc3RpZ2F0aW5nIGFuZCAKcmVzb2x2aW5nCnRoZXNlIGlzc3VlcywgYW5kIGxv
b2sgZm9yd2FyZCB0byB5b3VyIHN1Z2dlc3Rpb25zLll1bgpPbiAxMi8yLzI1IDA2OjMxLCBEYXZl
IEtsZWlrYW1wIHdyb3RlOgo+Cj4gT24gMTEvMjAvMjUgOTo0M0FNLCBZdW4gWmhvdSB3cm90ZToK
Pj4gQWRkIGNoZWNrX2R0cm9vdCgpIHRvIHZhbGlkYXRlIGR0cm9vdF90IGludGVncml0eSwgZm9j
dXNpbmcgb24gCj4+IHByZXZlbnRpbmcKPj4gaW5kZXgvcG9pbnRlciBvdmVyZmxvd3MgZnJvbSBv
bi1kaXNrIGNvcnJ1cHRpb24uCj4+Cj4+IEtleSBjaGVja3M6Cj4+IMKgIC0gZnJlZWNudCBib3Vu
ZGVkIGJ5IFswLCBEVFJPT1RNQVhTTE9ULTFdIChzbG90WzBdIHJlc2VydmVkIGZvciAKPj4gaGVh
ZGVyKS4KPj4gwqAgLSBmcmVlbGlzdCB2YWxpZGl0eTogLTEgd2hlbiBmcmVlY250PTA7IDF+RFRS
T09UTUFYU0xPVC0xIHdoZW4gCj4+IG5vbi16ZXJvLAo+PiDCoMKgwqAgd2l0aCBsaW5rZWQgbGlz
dCBjaGVja3MgKG5vIGR1cGxpY2F0ZXMsIHByb3BlciB0ZXJtaW5hdGlvbiB2aWEgCj4+IG5leHQ9
LTEpLgo+PiDCoCAtIHN0YmwgYm91bmRzOiBuZXh0aW5kZXggd2l0aGluIHN0YmwgYXJyYXkgc2l6
ZTsgZW50cmllcyB3aXRoaW4gCj4+IDB+OCwgbm8KPj4gwqDCoMKgIGR1cGxpY2F0ZXMgKGV4Y2x1
ZGluZyBpZHg9MCkuCj4+Cj4+IEludm9rZWQgaW4gY29weV9mcm9tX2Rpbm9kZSgpIHdoZW4gbG9h
ZGluZyBkaXJlY3RvcnkgaW5vZGVzLCBjYXRjaGluZwo+PiBjb3JydXB0aW9uIGVhcmx5IGJlZm9y
ZSBkaXJlY3Rvcnkgb3BlcmF0aW9ucyB0cmlnZ2VyIG91dC1vZi1ib3VuZHMgCj4+IGFjY2Vzcy4K
Pgo+IEkgcmVhbGx5IGxpa2UgdGhlIGlkZWEgb2YgdGhlc2UgcGF0Y2hlcy4gSSdtIHN3YW1wZWQg
d2l0aCBzb21lIG90aGVyCj4gd29yayBhbmQgaGF2ZSBiZWVuIG91dCBvbiB2YWNhdGlvbiBhIGJp
dCwgYnV0IEkgZG8gaW50ZW5kIHRvIGdpdmUgdGhlc2UKPiBhIGdvb2QgcmV2aWV3IGFuZCBob3Bl
ZnVsbHkgaW50ZWdyYXRlIHRoZW0uIFRoYW5rcyBmb3IgeW91ciBwYXRpZW5jZS4KPgo+IFNoYWdn
eQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1k
aXNjdXNzaW9uIG1haWxpbmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5u
ZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1
c3Npb24K
