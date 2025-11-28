Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 338BCC906F3
	for <lists+jfs-discussion@lfdr.de>; Fri, 28 Nov 2025 01:33:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:To:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WqAptbEtQhDM6nPNR67BnB74BRYwDM7HRYpyXhAGJ5Q=; b=NXqVHdVW0ORttajVhiwl7jEpkD
	VAIaQgGCs4BqMMuJVL80uZnJQ4bhCvsAaDnjkEBlwtIbfOeHDgSNxPVMNufUrBaPHL7pKOeHmwiQy
	J5sD+5ivetVNa3iW5TkRnRQcJsA+p58QM0p+oSu9u6r2tc/tr8L4V3TV6V2/z0GPvzjk=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vOmQA-0000qO-Hd;
	Fri, 28 Nov 2025 00:33:10 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=3427063886=yun.zhou@windriver.com>)
 id 1vOmQ6-0000qD-Va for jfs-discussion@lists.sourceforge.net;
 Fri, 28 Nov 2025 00:33:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XtwLjaDDooPu2nSr9piReMXyCJcjMVpHco2y3vE93ys=; b=AaXgjTEW5suzbFT9CripDK7jac
 cM2NYoxWZLM5iJKrytT3wo5K1QL3M7Vc33q/ZoVfGTOvqhMRQi7VEaoXzhHbUcQltlG3ThIXP5yMO
 xNczJK5aVQxcgWRiaUQYaaJdUrM1LosqB65X85RaMRPCQWVKT08OS5WOVhwWetYodFgo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XtwLjaDDooPu2nSr9piReMXyCJcjMVpHco2y3vE93ys=; b=eVVj7sAjbWSPvKj2AyuKkkjaV1
 +x8NFIlVWO9H0q/paBmtXw9pi6I6byigN97z58wW/ko8fRPlGsaK4W/w4H4ID824Q4M8hlOTIMIWB
 OZrt2mUtNlhKFdCVbFww6/I/1X+4u2kwCtZknC5RokHC/S5ItTCYwEzH+VTEQV579wXA=;
Received: from mx0b-0064b401.pphosted.com ([205.220.178.238])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vOmQ5-0000zB-V9 for jfs-discussion@lists.sourceforge.net;
 Fri, 28 Nov 2025 00:33:06 +0000
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
 by mx0a-0064b401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 5AS0Abio000909; Fri, 28 Nov 2025 00:32:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=cc:content-transfer-encoding:content-type:date:from
 :in-reply-to:message-id:mime-version:references:subject:to; s=
 PPS06212021; bh=XtwLjaDDooPu2nSr9piReMXyCJcjMVpHco2y3vE93ys=; b=
 Fqk9j3drNxE2cppXbFKLKPzXsRLHBR9OPJH6NmT8gZZiGiHJnkQb3aAXgC0OP76f
 NEwpE+cobPkCpvIZwuVgL/TV3wy8D1hL9pdjsOAAvNd5szI69HHGygLOO4Msfs0B
 VZj59vvKxG6QUAZa6YNzsldkVwnKFS0g/+U4hQ/g21x4zMHyNQDmv7toNttQeJOz
 P2BAPb1vo2wcdmn48mKoZJ6p6ozsF0h1C378NFDKR4eeJKPbUDrvOkrN4SWWYeao
 Im6o0FH+X3AY4FcPXVhSyUS8+ZKhdkedab/HidryoByW4hjBRmxc4CbuDlVAxR83
 IVY2YoIwktKYSizkjjJXuw==
Received: from ch1pr05cu001.outbound.protection.outlook.com
 (mail-northcentralusazon11010012.outbound.protection.outlook.com
 [52.101.193.12])
 by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 4ak2d0xe63-1
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
 Fri, 28 Nov 2025 00:32:00 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QEASwNNhaCMH7XYXXTnqvRQkYqxVvJRyW3myRdlAZ88Ygr5WVH6AKuBGhEqkaTNysg5herinQgLkSgXKIkXqUsSnhFnfUr1bTkZDLxl2FmDD3xgqXHm3PS2lAYsHqx2r7eUnYrSCwyfSjloglYUbCCgII8RJ/N79S1BYgh9pbFGLkNVhvNuMy/afL3DXF4yzZMXsZ9G5qAGle3sl8eSxzrX4GVbUMmcZOn8c3ekNnWikNMd3ihkILXRJH+V1DK8UWbY+2Wq8Z/PKuBG0QNNwitYv49DvF630swxgPgWEk9I9aMaDYyXbjBtLjBGGxvWYQrP5BPS7U6lONGhIl49CJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XtwLjaDDooPu2nSr9piReMXyCJcjMVpHco2y3vE93ys=;
 b=DjRsKeiSlPtpwF5EdTKAm2FesrpgnaVszAncN21MQwOJv9wkz6u9cIKl5mjTtpuG1VaOrv+5ygS6iH/TuqLSJKLfHsVzVI1/O7n4WtfEiVIOc6Bk7eqaGE+ol+BlZRviG5KX8wc8R8+fdZLuaqx6nnckREiKw3ntqB+a8X/OHec3Zwv5Qgi51MiIAZs4HbnZ1yT7fekvrczY4asHXugak/Y7bLwOPRtf6zp7rqcfZLCKDMHBK9eJ9vzJ8tDbM3nDlsBGuMxWzsbZn/KYBfpio7sgXuPP/QNiYGNwY1abLsmfIOdaobRq932jMBkjvRnqS3Lz0zINbAZOWA6+OrZ9og==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from SJ5PPF2F7FC4EE6.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::81d) by PH8PR11MB7968.namprd11.prod.outlook.com
 (2603:10b6:510:25f::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Fri, 28 Nov
 2025 00:31:57 +0000
Received: from SJ5PPF2F7FC4EE6.namprd11.prod.outlook.com
 ([fe80::5cd3:aaa1:1564:3e48]) by SJ5PPF2F7FC4EE6.namprd11.prod.outlook.com
 ([fe80::5cd3:aaa1:1564:3e48%5]) with mapi id 15.20.9366.012; Fri, 28 Nov 2025
 00:31:57 +0000
Message-ID: <72461ffe-925a-46e4-bb25-19128d030f79@windriver.com>
Date: Fri, 28 Nov 2025 08:31:50 +0800
User-Agent: Mozilla Thunderbird
To: Li Lingfeng <lilingfeng3@huawei.com>, shaggy@kernel.org
References: <20251120154413.1043174-1-yun.zhou@windriver.com>
 <c201cbe0-5f52-4572-a04c-dc165eccff95@huawei.com>
Content-Language: en-US
In-Reply-To: <c201cbe0-5f52-4572-a04c-dc165eccff95@huawei.com>
X-ClientProxiedBy: TY4P286CA0131.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:405:37f::9) To SJ5PPF2F7FC4EE6.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::81d)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ5PPF2F7FC4EE6:EE_|PH8PR11MB7968:EE_
X-MS-Office365-Filtering-Correlation-Id: ac3f0f4f-f077-4c76-7482-08de2e158976
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TThvT2llUzltaGtHeUZVTDFFTVFQVWtSQzhrUkQxUDZ4Y1BSTS8rb2V1YWFk?=
 =?utf-8?B?djFyM0Z0QmprMGp3bVJ2R2llUVVpZUp4OXdZWjRWdGF6Q1NLUmdoUmJ1dTlW?=
 =?utf-8?B?VnN2anRFQVJmUEsvQzZqMlNyRHdJWTdqTVJJYUE2TVZEN1gvNEhzL3BGYzMr?=
 =?utf-8?B?WCtBVmJhZ3UrcjhlaGxCZGYvdTVvNU9UdUZVTnp5ZUx0ZEpSaEFrZEpTVDA5?=
 =?utf-8?B?eS96MjBoUGxTTXFpZmcwdTBSZFFQVS94dksxWFdrVmhuWC8wQkRORHZuall4?=
 =?utf-8?B?UEtZUHkzSEJUc1RxNHg4eW9zQ0JJZ2hyckxuS2EzR3Q4WmRjZnNabk1SMEk5?=
 =?utf-8?B?UFRrT3Jub3dQZ3BoNGpqYTFReFFTbGVWWGtjSjF2Ui9tNy81YzhwY1lMZVBI?=
 =?utf-8?B?em9EV0hFdUUyclhCTGVGU2k1ZjZ5MGlqUHp0bThqc2lEV05jMUFUOGVUcjJp?=
 =?utf-8?B?RFJ2VmljNnRISGMyUFZVRE1rY0Y5dmJSU205UkpidVZaT25qUGFKZjcvUjl4?=
 =?utf-8?B?R3NKYlBLMkNXTnBVSDErSnRaRVB4SzhmR2tjSExGWWQ2UGZQMzdhNEdXOTlt?=
 =?utf-8?B?VmJmMlNueXFKZVMzY0ErS09nVTZxV1dtM3dXVVpxOGlPQ2J5bU9CcDdaZ3hX?=
 =?utf-8?B?cjU4K09FazlWWUNzYXNXVGRZQStLcC91dHIvdTZCSEpJTFRNSkdHR3VIS2s2?=
 =?utf-8?B?ckVZcHBqS1VCL21NMDVkNWdzdXl0MHp2NEswQmhxN1Urc1A1dXdUZXljUzZF?=
 =?utf-8?B?eGhMajgraHVsL3NCRURxWU52RitCSUxjTWM1dWl0cXNHVjBEUEJJTjdZUXQr?=
 =?utf-8?B?YWo5cGpwL2tQT2JNQ1RwVmNvY0UwQ1I0VGFDVm1uRjY4c1lzd1gvTS9kN05u?=
 =?utf-8?B?eThvNGlHTlArQXhEaXlEVDFOR21TejJTUUx6TGdaVzE4ZmZ4d3BwODUreEZi?=
 =?utf-8?B?RittZWdQM0xWWmpKZjQ1SXFGNzFFUnVJZkYxd0lDUjcrdTNsbG92Y2ZFRGR1?=
 =?utf-8?B?c3dNOGgzczdlRFZnbkZ6dnZ5VUtlR1NzWU41YkpFZE9GSGg4M1BQRm5LK2dX?=
 =?utf-8?B?RDI1ekFudW80L3g5aHgrb0VnK3NaMjNjbnNwMnl3aU4xM1BBOGJncDdEaENs?=
 =?utf-8?B?R3JFU3VadGhSYTd6b05hUnhUVjdHMS85by9uZGNZU3JKQTU0aWlyb1hSTjk1?=
 =?utf-8?B?aXQ2YVFDc0hxQnFxV051Ung4YThhZVdvY2FHRnZ1ci9YRVMrYUxsSkNBbG9s?=
 =?utf-8?B?aEV2RVBxYm56c1hBZVNxSXRUYkJpUktZZ3U4Wk11a2ZpUEtJekZhNWRTTFBq?=
 =?utf-8?B?RENGamZaTzkwNTNwUC9xa1VNSWtSK0VNQlFVcnYvQU01UXVlRnRJaDE4cHRQ?=
 =?utf-8?B?b3JjWGtvbUhVT3doRzhmRTZmekMzaWlsbGxCSXRqR1V3V3dGSm4xSFBmUXhm?=
 =?utf-8?B?MDltZ3grelVyb0FuY2RaWWJaakpJMlY0UDRNWXB1MW92QXlHVzMvM1NJSERS?=
 =?utf-8?B?ekprU3p4TStsRHh0WGZyN2FHak9uYUQ0MlFBbXJsVGVya0VXQVNLMzlCZlE5?=
 =?utf-8?B?REhRelo4d012QzgzUnRQalUzdjNFZHlHK0QxS3B6UjlZOGI3bTZEcVBhVDJy?=
 =?utf-8?B?cjdSK2tKSE1iRUdqczByd1lScjJleXlkNFl5ZEMxQjFvcFhLV29xdWFuS0pT?=
 =?utf-8?B?NlNhMy9MdS8vRlFZeHdjZkRaUC9oMDV5N042Tm4xMVVLVXJiOGxSdSs0TnBQ?=
 =?utf-8?B?ekdXcExnbk1qSnNHbWpyNWoxMm5WNW1ZSXVDYTg1Q0x0MUFxTTZsT0p6dzdX?=
 =?utf-8?B?ODFudEFMMUltR29UVHJ1dGxMb3ZueldkQ21YK1RtNjkyajllbHdzd0RQSEtI?=
 =?utf-8?B?eFBHZ0xJbHZGZ09UVTUyenNJL0EzTVJJdzhlS3VFdjdNRndRUXU5dWVmWjZI?=
 =?utf-8?Q?+CjdHvtIpXprNENOMJ47XGx6GSNvU5cz?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ5PPF2F7FC4EE6.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RTdoQ20wNVpUU1pNc2JzMlNOTGpNTnhmUFJrV2xUTlpCbFY5OEwrdzhZcmtU?=
 =?utf-8?B?ditGL3ZqL1IrVVBzSEx5K1RrTGpjQTdmUXVFYi9iUVQ1RzZabC9PYXlNYURE?=
 =?utf-8?B?eHA5ZzNUdy9OdVliS29GYkQ3NEs5ZDNLOVA3UjdhTEMyR01mMzNDZDhkbU1V?=
 =?utf-8?B?MUc1LzJmak5MMjdkVzM5NnNiRU1ZR1pSbTY3S0IxZXJNQWhmNVZzZTVXZy95?=
 =?utf-8?B?anZIK1FQeEFqUXhYcWVtOERmcVB2cnhadjZha2ZiR1BKalVlWTNmMW5DRW1O?=
 =?utf-8?B?eEVERjhyZ2djN2RXZVNiYU1ubHo1akZqVklOZS90bWxPQ3ZEbjRZZ0U3QzJv?=
 =?utf-8?B?em9BQjJHVXQ1Vmp6K0IzbHVjKzFnRGFZcmsyTGs1Sm1VajZtNGpacVBXSGZt?=
 =?utf-8?B?NW1hUW0xS0tqS0dpNWlQNk0yaDhQUnVYN1grNklRaWZoRHp5bHMvUDczak9v?=
 =?utf-8?B?MU1NYkJvbWY0Y1VtdnlUeW9XVXlZMmNBUHFhOUFnUWxLaEs2dCsydzZwUEVx?=
 =?utf-8?B?WTl6TU9pY3FidGxGb2Rhd1JJWGQyUVhxKzBYL1BYdnIrWk9TTUxCN0dhMXRY?=
 =?utf-8?B?M1kxemNwNUUrdVlKWFlsSVF4Sm1pWHh0TFZ0R1hYQS9HdnlWS0JuaDM3c1M2?=
 =?utf-8?B?ZlZBUldHT2pIdW9LVVExVndHV3hhYi9vWUdXOHV5M0dNdGp1ZERWdXptS1Mw?=
 =?utf-8?B?VWZhV1cvaGxwY1pNdU1TVy8zR3BNUVhGai9VMFNDNmlvQ1owUTdxQ2dQeTJl?=
 =?utf-8?B?UHVjY2NXSHhLREIzWVlkS0xXUnp1TjNTbTZpNU1rSWE1Z0VnYVVZRENCREsv?=
 =?utf-8?B?VEtQZURjUWJPci9PTUxPWExWQUZLRks4UDFOVHp0MnZVY2h0OU9yUmlxbE9K?=
 =?utf-8?B?UEVOUVpBa0tEbmdMRU1WSWpwQllUbG1ocGpsZnF1Tkw0WVorckNoTUk1V0Zv?=
 =?utf-8?B?dHhwV2tFT0t3M0xEdTRDT01FU2cyRWtRY1E5c3I4NGFrbzBJS1YwdU9TS0Ro?=
 =?utf-8?B?UWZEUHdITkpFQmpsYU1oTEpyZm1PKzNnZWkzMDlRTTBEalVhNzM5cllsWVFs?=
 =?utf-8?B?dDQ0bHY0WjVmNUFnM0lqZkl1U2luME8zaEJORXBwUjc5WnBSWFAyK1B4Ykhz?=
 =?utf-8?B?eDlQSnVERVNOZmRxdUdSdUlIQ0JkcldrcXlFS1JzZTkxTlk0SVFYRnEycHEx?=
 =?utf-8?B?a0ZsdlhYYTNoM3gxWEwvQ2FVRzVyNHNoYTVqRFdFOFB4WkNNZjdyc1BqK0hK?=
 =?utf-8?B?azRkZThyeFkyaGxOUzRYRFh2YUYyTUIvTVJEaGdTOVdqU0hQTGRFYzNmRTdY?=
 =?utf-8?B?Mmd5NlZwUkw2WHpZVTlRMWJUTkhmUjBvMjlkdXM4M1VoazdqSUdZNDlGRWN1?=
 =?utf-8?B?UVp6ckRpYUJQeGF4cmsybXl1R3c0TldrRU9Vck1MZjZVWWpFVFYyeVZ2OTJI?=
 =?utf-8?B?ZTByTm9QcHR2R3J3RDJ6UlZ0N0JMY2Y2eVRLSDF2MG52WE40eUx3ei9HT2dB?=
 =?utf-8?B?MVpFSlRDOWo1SU5iMTErblZrY1Bpejk3RE9JMnI3RStMcG5oWHkvck9DUTNL?=
 =?utf-8?B?aDhSYzhueFk1ZlI4dkpwNWdTTkdhcEhWN0RqMzd4NWxESWRtNVMrdC9PRWE5?=
 =?utf-8?B?U0JaZHZxOERaQ1dtUSt0TlIzQ2pjVWV3Wm5tVHBpekZKU3RIZTN0aGFJN0sv?=
 =?utf-8?B?VExoU041Qys1TGt1Y1Z1bVBneE5tS1RtaExScDRrcnZYN3ZCb0drc0N0Uzc2?=
 =?utf-8?B?WStzd2U2US9QNW9KZjFoK2VHTHRqUU9hM05wdmV0YXczMC9wbXZ2cXUyZC9s?=
 =?utf-8?B?eTNkaDhNV0wyZEtCeGxUWm12L0VrOS84UU5SR2pVNzI0Q0VUQVpuZHp4bDNL?=
 =?utf-8?B?TG1FRWZyWDJFbmxRTTJrSXkzM2V4S0dZTm5NTW1mRGVnWXF2cG9KdnZlZmZH?=
 =?utf-8?B?T21hWEdVazh6VXVmMGJEZTFFV2dvR0l2UFgydTV2dkpiZEVwdzUzTEFkM1Q0?=
 =?utf-8?B?eDZGTkhma1ljbkpMa0ZBWWhvMktBbGt4UUZ3NElLc3FMR2Z6UnVYNnVWTEgw?=
 =?utf-8?B?NDQ3K2x1bjVBU3kycmhTNkdyQUY5M2E3L24zRGJQZ2JDSWlxVTRVSHF2RUJF?=
 =?utf-8?Q?CRdKtxChWZJ/re4jmh7j7FMfL?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac3f0f4f-f077-4c76-7482-08de2e158976
X-MS-Exchange-CrossTenant-AuthSource: SJ5PPF2F7FC4EE6.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2025 00:31:57.1341 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ytGGpl3cOQAvQ99XqoICqY8epznBJ3VifNEOfV38bOoBZrl5M1GX4aPpgGJqPUyxkK9FofkzUDPanSEnBfHVEQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7968
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI4MDAwMSBTYWx0ZWRfX/0TF8zvAv6dE
 exW8uwwGnwqblWqv1PTfppuMVf/mNOudH4V3y/my44nmDrQ2QcNarK4ZWIXbBovS5z5ZFv7HHr8
 eU6UEV33FtOeZpaqlmZm0DZbKAFlSdUNJQ2P2jTEU21gITpBgQIuN/qXOjUdZRMC1yphtZ6jqfl
 CXMYzRNi+7zZw94ardOtv5qbHTVtiMQgutJjOBXsuwZ0V6F0lxLaYnL8zyJni3GIcNlQ97sx3ld
 yOy/p/nLp5lrcGQht1gLpCzzeHhhx232MxhTjCePXFgeqmcBdKsITRJ6xJmV1osYxXQTV0YtxdR
 bPhBFYblujnQ6HTaqCKZdWQOYBiM/eg14LRpm/jIZ9SlpwrfLBES7eFiS6Ma5qQoEm/hxG9tq/H
 ybtVy12nVy1PFnjHvd/KwoOwOeQZ2w==
X-Authority-Analysis: v=2.4 cv=JcCxbEKV c=1 sm=1 tr=0 ts=6928ed80 cx=c_pps
 a=G0fLBfPV4gnnEhzimi2a/Q==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KX3JBU1wLEXztky6dbMA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10
X-Proofpoint-GUID: bNlvnu1cR96-DFBndrv0zg8dWSWtQWRP
X-Proofpoint-ORIG-GUID: bNlvnu1cR96-DFBndrv0zg8dWSWtQWRP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 lowpriorityscore=0 suspectscore=0
 adultscore=0 spamscore=0 phishscore=0 clxscore=1011 bulkscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511280001
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Lingfeng, On 11/24/25 19:42, Li Lingfeng wrote: > CAUTION:
 This email comes from a non Wind River email account! > Do not click links
 or open attachments unless you recognize the sender > and know the content
 i [...] Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 ARC_VALID              Message has a valid ARC signature
 0.0 ARC_SIGNED             Message has a ARC signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.220.178.238 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vOmQ5-0000zB-V9
Subject: Re: [Jfs-discussion] [PATCH] jfs: add dmapctl integrity check to
 prevent invalid operations
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
Cc: jfs-discussion@lists.sourceforge.net, yangerkun <yangerkun@huawei.com>,
 eadavis@qq.com, linux-kernel@vger.kernel.org, linan122@huawei.com,
 kovalev@altlinux.org, contact@arnaud-lcm.com, zheng.yu@northwestern.edu,
 rand.sec96@gmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

SGkgTGluZ2ZlbmcsCgoKCk9uIDExLzI0LzI1IDE5OjQyLCBMaSBMaW5nZmVuZyB3cm90ZToKPiBD
QVVUSU9OOiBUaGlzIGVtYWlsIGNvbWVzIGZyb20gYSBub24gV2luZCBSaXZlciBlbWFpbCBhY2Nv
dW50IQo+IERvIG5vdCBjbGljayBsaW5rcyBvciBvcGVuIGF0dGFjaG1lbnRzIHVubGVzcyB5b3Ug
cmVjb2duaXplIHRoZSBzZW5kZXIgCj4gYW5kIGtub3cgdGhlIGNvbnRlbnQgaXMgc2FmZS4KPgo+
IEhpIFl1biwKPgo+IFJlY2VudGx5LCB3ZSB0cmlnZ2VyZWQgYSBVQlNBTiB3YXJuaW5nIHRocm91
Z2ggc3l6a2FsbGVyOgo+IFvCoCAxMjYuOTIyNDc0XVvCoCBUNzY5XSBVQlNBTjogc2hpZnQtb3V0
LW9mLWJvdW5kcyBpbgo+IGZzL2pmcy9qZnNfZG1hcC5jOjI2NDY6MTEKPiBbwqAgMTI2LjkyMzUw
NV1bwqAgVDc2OV0gc2hpZnQgZXhwb25lbnQgMTEwIGlzIHRvbyBsYXJnZSBmb3IgMzItYml0IHR5
cGUgCj4gJ2ludCcKPiBbwqAgMTI2LjkyNDU0M11bwqAgVDc2OV0gQ1BVOiAxNCBVSUQ6IDAgUElE
OiA3NjkgQ29tbTogcmVwcm8gTm90IHRhaW50ZWQKPiA2LjE4LjAtcmM2KyAjMTI3IFBSRUVNUFQo
bm9uZSkKPiBbwqAgMTI2LjkyNDU0OV1bwqAgVDc2OV0gSGFyZHdhcmUgbmFtZTogUUVNVSBTdGFu
ZGFyZCBQQyAoaTQ0MEZYICsgUElJWCwKPiAxOTk2KSwgQklPUyAxLjE2LjMtMi5mYzQwIDA0LzAx
LzIwMTQKPiBbwqAgMTI2LjkyNDU1Ml1bwqAgVDc2OV0gQ2FsbCBUcmFjZToKPiBbwqAgMTI2Ljky
NDU1NV1bwqAgVDc2OV3CoCA8VEFTSz4KPiBbwqAgMTI2LjkyNDU1N11bwqAgVDc2OV3CoCBkdW1w
X3N0YWNrX2x2bCsweDRiLzB4NzAKPiBbwqAgMTI2LjkyNDU3Ml1bwqAgVDc2OV3CoCB1YnNhbl9l
cGlsb2d1ZSsweDUvMHgyYgo+IFvCoCAxMjYuOTI0NTgzXVvCoCBUNzY5XSBfX3Vic2FuX2hhbmRs
ZV9zaGlmdF9vdXRfb2ZfYm91bmRzLmNvbGQrMHg2MS8weGU2Cj4gW8KgIDEyNi45MjQ1ODhdW8Kg
IFQ3NjldwqAgPyBkb19yZWFkX2NhY2hlX2ZvbGlvKzB4OWMvMHgzMzAKPiBbwqAgMTI2LjkyNDU5
OF1bwqAgVDc2OV3CoCBkYlNwbGl0KzB4MTUzLzB4MTkwCj4gW8KgIDEyNi45MjQ2MDddW8KgIFQ3
NjldwqAgZGJBZGpDdGwrMHg0MTMvMHg2YjEKPiBbwqAgMTI2LjkyNDYxM11bwqAgVDc2OV3CoCBk
YkFsbG9jRG1hcCsweGJjLzB4ZTQKPiBbwqAgMTI2LjkyNDYxOF1bwqAgVDc2OV3CoCBkYkFsbG9j
KzB4NWRmLzB4ODAzCj4gW8KgIDEyNi45MjQ2MjRdW8KgIFQ3NjldwqAgZWFfd3JpdGUrMHgyNmYv
MHg2MjgKPiBbwqAgMTI2LjkyNDYyOV1bwqAgVDc2OV3CoCA/IGVhX2dldCsweDYzOS8weDEyNjAK
PiBbwqAgMTI2LjkyNDYzNF1bwqAgVDc2OV3CoCA/IF9fcGZ4X2VhX3dyaXRlKzB4MTAvMHgxMAo+
IFvCoCAxMjYuOTI0NjM3XVvCoCBUNzY5XcKgID8gX19wZnhfX3ByaW50aysweDEwLzB4MTAKPiBb
wqAgMTI2LjkyNDY0NV1bwqAgVDc2OV3CoCA/IF9fcGZ4X2VhX2dldCsweDEwLzB4MTAKPiBbwqAg
MTI2LjkyNDY0OV1bwqAgVDc2OV3CoCBlYV9wdXQrMHgxYjUvMHg1NjcKPiBbwqAgMTI2LjkyNDY1
M11bwqAgVDc2OV3CoCBfX2pmc19zZXR4YXR0ci5jb2xkKzB4NGU4LzB4NjMyCj4gW8KgIDEyNi45
MjQ2NThdW8KgIFQ3NjldwqAgPyBfX3BmeF9fX2pmc19zZXR4YXR0cisweDEwLzB4MTAKPiBbwqAg
MTI2LjkyNDY2MV1bwqAgVDc2OV3CoCA/IF9fcGZ4X19wcmludGsrMHgxMC8weDEwCj4gW8KgIDEy
Ni45MjQ2NjVdW8KgIFQ3NjldwqAgPyBtdXRleF9sb2NrKzB4ODYvMHhlMAo+IFvCoCAxMjYuOTI0
Njc1XVvCoCBUNzY5XcKgID8gX19wZnhfbXV0ZXhfbG9jaysweDEwLzB4MTAKPiBbwqAgMTI2Ljky
NDY4MV1bwqAgVDc2OV3CoCBfX2pmc194YXR0cl9zZXQrMHhlNC8weDE0OQo+IFvCoCAxMjYuOTI0
Njg1XVvCoCBUNzY5XcKgID8gX19wZnhfX19qZnNfeGF0dHJfc2V0KzB4MTAvMHgxMAo+IFvCoCAx
MjYuOTI0Njg5XVvCoCBUNzY5XcKgID8geGF0dHJfZnVsbF9uYW1lKzB4M2EvMHg4MAo+IFvCoCAx
MjYuOTI0NjkzXVvCoCBUNzY5XcKgIF9fdmZzX3NldHhhdHRyKzB4MTE4LzB4MTUwCj4gW8KgIDEy
Ni45MjQ2OTldW8KgIFQ3NjldwqAgPyBfX3BmeF9fX3Zmc19zZXR4YXR0cisweDEwLzB4MTAKPiBb
wqAgMTI2LjkyNDcwM11bwqAgVDc2OV3CoCA/IHNlY3VyaXR5X2lub2RlX3NldHhhdHRyKzB4MWEy
LzB4MmEwCj4gW8KgIDEyNi45MjQ3MTFdW8KgIFQ3NjldwqAgX192ZnNfc2V0eGF0dHJfbm9wZXJt
LmNvbGQrMHgxZi8weDU5Cj4gW8KgIDEyNi45MjQ3MTZdW8KgIFQ3NjldwqAgdmZzX3NldHhhdHRy
KzB4MTFiLzB4MzAwCj4gW8KgIDEyNi45MjQ3MjBdW8KgIFQ3NjldwqAgPyBfX3BmeF92ZnNfc2V0
eGF0dHIrMHgxMC8weDEwCj4gW8KgIDEyNi45MjQ3MjRdW8KgIFQ3NjldwqAgPyBjaGVja19oZWFw
X29iamVjdCsweDZmLzB4NDMwCj4gW8KgIDEyNi45MjQ3MzFdW8KgIFQ3NjldwqAgPyBkb19zZXR4
YXR0cisweGE3LzB4MTUwCj4gW8KgIDEyNi45MjQ3MzRdW8KgIFQ3NjldwqAgZmlsZW5hbWVfc2V0
eGF0dHIrMHgxMjQvMHgxNjAKPiBbwqAgMTI2LjkyNDczOF1bwqAgVDc2OV3CoCA/IF9fcGZ4X2Zp
bGVuYW1lX3NldHhhdHRyKzB4MTAvMHgxMAo+IFvCoCAxMjYuOTI0NzQyXVvCoCBUNzY5XcKgID8g
Z2V0bmFtZV9mbGFncy5wYXJ0LjArMHhmOC8weDQ4MAo+IFvCoCAxMjYuOTI0NzQ5XVvCoCBUNzY5
XcKgIHBhdGhfc2V0eGF0dHJhdCsweDIxNS8weDI5MAo+IFvCoCAxMjYuOTI0NzUzXVvCoCBUNzY5
XcKgID8gX19wZnhfcGF0aF9zZXR4YXR0cmF0KzB4MTAvMHgxMAo+IFvCoCAxMjYuOTI0NzU3XVvC
oCBUNzY5XcKgID8gX19jYWxsX3JjdV9jb21tb24uY29uc3Rwcm9wLjArMHgzNDEvMHg5NzAKPiBb
wqAgMTI2LjkyNDc2N11bwqAgVDc2OV3CoCA/IF9fcGZ4X19fY2FsbF9yY3VfY29tbW9uLmNvbnN0
cHJvcC4wKzB4MTAvMHgxMAo+IFvCoCAxMjYuOTI0NzcyXVvCoCBUNzY5XcKgID8ga21lbV9jYWNo
ZV9mcmVlKzB4M2RkLzB4NWQwCj4gW8KgIDEyNi45MjQ3NzhdW8KgIFQ3NjldwqAgPyBrbWVtX2Nh
Y2hlX2ZyZWUrMHg0MGIvMHg1ZDAKPiBbwqAgMTI2LjkyNDc4MV1bwqAgVDc2OV3CoCA/IGZwdXRf
Y2xvc2Vfc3luYysweGRjLzB4MTkwCj4gW8KgIDEyNi45MjQ3ODldW8KgIFQ3NjldwqAgPyBmcHV0
X2Nsb3NlX3N5bmMrMHhkYy8weDE5MAo+IFvCoCAxMjYuOTI0NzkyXVvCoCBUNzY5XcKgID8gX19w
ZnhfZnB1dF9jbG9zZV9zeW5jKzB4MTAvMHgxMAo+IFvCoCAxMjYuOTI0Nzk2XVvCoCBUNzY5XcKg
ID8gZmlsZV9jbG9zZV9mZF9sb2NrZWQrMHgxNzgvMHgyYTAKPiBbwqAgMTI2LjkyNDgwM11bwqAg
VDc2OV3CoCBfX3g2NF9zeXNfbHNldHhhdHRyKzB4YzkvMHgxNDAKPiBbwqAgMTI2LjkyNDgwN11b
wqAgVDc2OV3CoCBkb19zeXNjYWxsXzY0KzB4NjEvMHg5ZDAKPiBbwqAgMTI2LjkyNDgxNF1bwqAg
VDc2OV3CoCBlbnRyeV9TWVNDQUxMXzY0X2FmdGVyX2h3ZnJhbWUrMHg3Ni8weDdlCj4gW8KgIDEy
Ni45MjQ4MThdW8KgIFQ3NjldIFJJUDogMDAzMzoweDQ0Yzg0ZAo+IFvCoCAxMjYuOTI0ODIzXVvC
oCBUNzY5XSBDb2RlOiA2NiAyZSAwZiAxZiA4NCAwMCAwMCAwMCAwMCAwMCAwZiAxZiAwMCBmMwo+
IDBmIDFlIGZhIDQ4IDg5IGY4IDQ4IDg5IGY3IDQ4IDg5IGQ2IDQ4IDg5IGNhIDRkIDg5IGMyIDRk
IDg5IGM4IDRjIDhiIDRjCj4gMjQgMDggMGYgMDUgPDQ4PiAzZCAwMSBmMCBmZiBmZiA3MzgKPiBb
wqAgMTI2LjkyNDgyN11bwqAgVDc2OV0gUlNQOiAwMDJiOjAwMDA3ZmZjYmY4OTIwODggRUZMQUdT
OiAwMDAwMDI4Nwo+IE9SSUdfUkFYOiAwMDAwMDAwMDAwMDAwMGJkCj4gW8KgIDEyNi45MjQ4MzNd
W8KgIFQ3NjldIFJBWDogZmZmZmZmZmZmZmZmZmZkYSBSQlg6IDAwMDA3ZmZjYmY4OTIyNzggUkNY
Ogo+IDAwMDAwMDAwMDA0NGM4NGQKPiBbwqAgMTI2LjkyNDgzNV1bwqAgVDc2OV0gUkRYOiAwMDAw
MDAwMDAwMDAwMDAwIFJTSTogMDAwMDIwMDAwMDAwMDIwMCBSREk6Cj4gMDAwMDIwMDAwMDAwMDA0
MAo+IFvCoCAxMjYuOTI0ODM4XVvCoCBUNzY5XSBSQlA6IDAwMDA3ZmZjYmY4OTIwOTAgUjA4OiAw
MDAwMDAwMDAwMDAwMDAwIFIwOToKPiAwMDAwMDAwMDAwMDAwMDAxCj4gW8KgIDEyNi45MjQ4NDBd
W8KgIFQ3NjldIFIxMDogMDAwMDAwMDAwMDAwMDAwMCBSMTE6IDAwMDAwMDAwMDAwMDAyODcgUjEy
Ogo+IDAwMDAwMDAwMDAwMDAwMDEKPiBbwqAgMTI2LjkyNDg0Ml1bwqAgVDc2OV0gUjEzOiAwMDAw
N2ZmY2JmODkyMjY4IFIxNDogMDAwMDAwMDAwMDRjMzhkMCBSMTU6Cj4gMDAwMDAwMDAwMDAwMDAw
MQo+IFvCoCAxMjYuOTI0ODQ4XVvCoCBUNzY5XcKgIDwvVEFTSz4KPiBbwqAgMTI2LjkyNDg1MF1b
wqAgVDc2OV0gLS0tWyBlbmQgdHJhY2UgXS0tLQo+Cj4gVGhlIHdhcm5pbmcgb2NjdXJyZWQgYmVj
YXVzZSBzeXprYWxsZXIgY29uc3RydWN0ZWQgYSBtYWxmb3JtZWQgaW1hZ2UsIGFuZAo+IEpGUyBy
ZWFkIGFuIGludmFsaWQgbGVhZiB2YWx1ZSBmcm9tIGl0Lgo+Cj4gSW4gb3VyIHRlc3RpbmcsIHRo
aXMgcGF0Y2ggcmVzb2x2ZXMgdGhlIGlzc3VlIGJ5IHByZXZlbnRpbmcgdGhlIHVzZSBvZiAKPiB0
aGUKPiBpbnZhbGlkIHZhbHVlOgo+IFvCoMKgIDM5Ljg5MDc4OV1bwqAgVDc2NV0gZG1hcGN0bDog
bGVhZiB2YWx1ZSAxMjQgdG9vIGxhcmdlIGF0IGluZGV4IDM0MQo+IFvCoMKgIDM5Ljg5MTY4NF1b
wqAgVDc2NV0gRVJST1I6IChkZXZpY2UgbG9vcDApOiBkYkFkakN0bDogQ29ycnVwdCAKPiBkbWFw
Y3RsIHBhZ2UKPiBbwqDCoCAzOS44OTE2ODRdW8KgIFQ3NjVdCj4gW8KgwqAgMzkuODkzMzQzXVvC
oCBUNzY1XSBFUlJPUjogKGRldmljZSBsb29wMCk6IHJlbW91bnRpbmcgZmlsZXN5c3RlbSBhcwo+
IHJlYWQtb25seQo+Cj4gSG93ZXZlciwgSSBub3RpY2VkIHRoYXQgdGhpcyBwYXRjaCB0cmlnZ2Vy
cyBzb21lIGJ1aWxkIHdhcm5pbmdzLgo+IENvdWxkIHlvdSBwbGVhc2UgaGVscCBhZGRyZXNzIHRo
ZXNlIHdhcm5pbmdzIGFuZCBwdXNoIHRoZSBmaXggdXBzdHJlYW0/IApJIHdvbmRlciB3aGF0IGJ1
aWxkIHdhcm5pbmdzIHlvdSBlbmNvdW50ZXJlZCwgc2luY2UgSSBoYXZlIG5vdCBzZWVuIGl0LgoK
VGhhbmtzLApZdW4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Npb25AbGlzdHMuc291
cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZv
L2pmcy1kaXNjdXNzaW9uCg==
