Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1599B673C
	for <lists+jfs-discussion@lfdr.de>; Wed, 30 Oct 2024 16:16:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1t6AQk-0003t9-Pk;
	Wed, 30 Oct 2024 15:16:18 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1t6AQj-0003t1-D6
 for jfs-discussion@lists.sourceforge.net;
 Wed, 30 Oct 2024 15:16:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nK/DJLbJUhk86tKIxFoGj2JGdwePxaSKpqUpGjd0Ago=; b=SzZgq0ISBYpxiU46lzPdPdJEMP
 t63OBFE43NpxII36qMpe+8KX78AJFpLoQZ39mYGyeGEaQLkDdob09dzzCfJF90Oxp26nf19b/+wXo
 TzaADrPFK548a+fdNqlRXmi/h9h1uoEXiEQoI+TXZNstn84dcrglfxAo/BhUMpThZaQQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nK/DJLbJUhk86tKIxFoGj2JGdwePxaSKpqUpGjd0Ago=; b=fSTXIoi1pLxCoBFWQZcgto1SwX
 bO38eeOO9I3NT6k+2jE1TAlh8B95jjoDiHK0Xe42LAQYMyIzSxD+lGszqUMLHTHgaQ12nckBzEGKJ
 rHZDw99DVuac+BgI+TYxbQpLl9CkAB0d2MmySdo6RiG4Dhz6Y9TZBA3LQujcF5yy+cfI=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t6AQi-0004q6-Lo for jfs-discussion@lists.sourceforge.net;
 Wed, 30 Oct 2024 15:16:17 +0000
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49UEF5CO002762;
 Wed, 30 Oct 2024 15:16:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2023-11-20; bh=nK/DJLbJUhk86tKIxFoGj2JGdwePxaSKpqUpGjd0Ago=; b=
 aNfrMKrQKWL8jK4BGl1JjZHoyDPIU/ER3Q4LxQ63+/t7v3GFiM3S5m76lTs+0isO
 oF4B/TOsM0hL/TJ+k/llYN55V5Ilr7BMIKDCErGO7bo2Wz8EhLGbokQA2sNqa/c6
 wzEJgQwG6suFDKtlGniVQhK++FAkx+i9Cp2utv6GprM+W5lSSEOk5Ii8BF9OjUB3
 aFdvLhZALWJFL4K+Pi9wwtYwR/6plZQrkR2SlGuhc22axznYIqy2XNtrH6IPJkH9
 VPN094r7ym3rVYgZZ4wboHu4r3ksbWxmUy5328K1X2uaVXshS+o1v0B6HKjUrusg
 tbEasXQJOmUQeY6jbl85Jw==
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 42grdqg73j-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 30 Oct 2024 15:16:03 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 49UEhjUQ040035; Wed, 30 Oct 2024 15:16:02 GMT
Received: from nam12-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2168.outbound.protection.outlook.com [104.47.55.168])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 42hnaqprju-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 30 Oct 2024 15:16:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xVv2NEA5wWi+DOM3ZPcKU5IJ9CgCBHMG7oEQ+E2X1hL00v7BvjpgumLYE4kW1Vqe0fKtva3GXXW8hMMk/h4aD6pXqpHPrRfCB4pYFQss5jSmHmj5jmnVFvT+tMJp/L8SYPlmmuyfxC8cv8J4gvvwylzO7S6dkXq89OALLRIPWNhP1ETO5G7drzQ+xHxoICv+E1o7bdwByZyETdyKPYax/nBPfMHYD0oohQvhTTXjfPeTWmar1a0fQ6GfNaPF/Gf7h2lSBRo5aLc9T9yYYNTblSGqd5traOh7RGq8lDbmV3pjsna6kVNt5UcE7d3Do25ICfaNjvLSMwJ9Mv5UuJPuAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nK/DJLbJUhk86tKIxFoGj2JGdwePxaSKpqUpGjd0Ago=;
 b=HcmhvdVFezusmr4M8PlGkFxPiQPq8sJ0KHwjuXsJq/LSU3Hg3IAJbAAjyuOdUlHjErw3AGd04owvDcazD71pvbfTzHsCdtpvV5cft2szoNj4rg4wXwUgvrKQBe0L+c60xSCR1ziFmjOtMbjfz5QLgkGxha8cGkinZDXwciSV3DCLTQMtS9cJ/VJm+cQ9EMNhLPYUUvIpNnytUV0wrvsCwdpgTrosIGJQZDibI/nfjH63hL7URj1iCHa1WbmSrnbDF60BpyMFhFssore0se1/tNbZoyfDUGWQ9NHECmEUsgnemLQ9fVcZlywxgJXu74cv7+dOmTBnjUmdAb+J0HyslQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nK/DJLbJUhk86tKIxFoGj2JGdwePxaSKpqUpGjd0Ago=;
 b=htIw5+pEk7czQ8I4k6PpYZlERKVKWL3zlmaJDIugWRWf+mEmvbSIhNm6zWTozvK9ZVbqlPnGDyTyduZe21A9r0j4CCmpeT9mb1H3JDOvA7HL5vcOkcl4OUoUD2+9xwbOAgZSVJWwOdrk4EmSuVj4RivI7PFDWlEl9QNBBbGiK+k=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by PH7PR10MB7054.namprd10.prod.outlook.com (2603:10b6:510:276::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.32; Wed, 30 Oct
 2024 15:15:59 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb%5]) with mapi id 15.20.8114.015; Wed, 30 Oct 2024
 15:15:59 +0000
Message-ID: <057bf9aa-80aa-4282-b96d-a7a481c1f640@oracle.com>
Date: Wed, 30 Oct 2024 10:15:57 -0500
User-Agent: Mozilla Thunderbird
To: Matt Jan <zoo868e@gmail.com>, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Shuah Khan <skhan@linuxfoundation.org>
References: <671b3f75.050a0220.2eb763.00d7.GAE@google.com>
 <20241025170010.19654-1-zoo868e@gmail.com>
Content-Language: en-US
In-Reply-To: <20241025170010.19654-1-zoo868e@gmail.com>
X-ClientProxiedBy: CH3P221CA0004.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:610:1e7::35) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|PH7PR10MB7054:EE_
X-MS-Office365-Filtering-Correlation-Id: 358cd532-4735-42e0-a828-08dcf8f5c254
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VlpKY1BCWjZCek9WZHpIaE05b1lFQ1NheXVCMzNNdFkyZnJldk9pNnN4ME9N?=
 =?utf-8?B?UlY4Ykg0M0ZlZE9od1lpMDk4cXprMUgycWlCWnJJdUNDdmF6Z3QxZ1QvZmt4?=
 =?utf-8?B?ZmpMVnF5MTVNZE9TOVJrZU1OYkdvRjhUZFpzZUdSaFBxcWExanBQVnhRREo0?=
 =?utf-8?B?UU5ZMjJ2dlA4dXZoVFMwanhYMG12K3hzNlZUY1RIbEhOZjRGL2JBZlNUdm1U?=
 =?utf-8?B?WkxUR29GRVBDQXd6aWVGcDZhZ0d4YzV1OEtmTGRuU0VLMk5VMng1ZHJKQVFB?=
 =?utf-8?B?NFN3djJlUWFNdVN6UUJ2cThtL0FqbEtBaC9SSURXOG5wRGpCQ1JtbGcxb1k1?=
 =?utf-8?B?SVdRdWFHbGdMYWt4S1VBL1doaUd2YXM5Mng1TFB2OEI3UDI5OGJYSk1CRVJz?=
 =?utf-8?B?WTRWbXBYMTI5YTRJU0VlWWoyVW93dHc0TVVlNWZZTWlkV1hkV21QVlNsNzVv?=
 =?utf-8?B?V2tNUDlsZitING52VmtwUWJNTklwbGNPaWh5bUtXV0NKK3MzSncyWGtTT2FB?=
 =?utf-8?B?dlRZOG9jMHFLUXpRRTZXb3V5YmptbWN0OHNRL3FZcGhWOWV0NVpNUTRIamQ0?=
 =?utf-8?B?QWlCeFdKSkJMY0I3Zm5ZYnBYVXpPU3VSd29SRGoxN2NCQzRiOTN4OU56VFQ2?=
 =?utf-8?B?M2ZmckcyTzJOY01NaEZpQnE0enp3Q2RnY2lQMk9iNERHNlpJaC9yTVRpTCt3?=
 =?utf-8?B?eHpndzNYenNxSk5yUFd3YVdzZE50Y2Juc2x5OG1JN2F5Q0FzYVlIMjE1Z09r?=
 =?utf-8?B?QnRzamFZak55YVNEWUZnY3NsSGltZGVxMWo3UUp3VytYdnl6elNHYmNYOW8r?=
 =?utf-8?B?WVBmdDFRaXRENmV1REc3Q01BelZ1QmNQRmNpVUNrWFBhQkdoSmUySnErV0ZB?=
 =?utf-8?B?QStFbmRlaU8xVVAyVFdRblJYUVg4VEJmWkZrVlI5SEZlQi80aWlWamczV3dp?=
 =?utf-8?B?VGZ5cFVpVzZTelcxa0xqSnE0UWZiMmU0VVloTVh1ZVkyK1JRREJaQ1ZjUklm?=
 =?utf-8?B?eE05bFMyWEpEOVRpbEVPbG9yNkpQZ1BRcjRJd1YrazdXMnhpZSt3WmFWNDRF?=
 =?utf-8?B?WWxZcndyWkJMWExFck85TUhMWnRYek4xWFhxV1NHN2lObHNPNGlHL3VYODBa?=
 =?utf-8?B?WjFJbWd6eVlBVWhHQklYMC9wMVJkMXVwZHZ4OW1lTWZMTGFBYVRES3JiNERT?=
 =?utf-8?B?dGZXajI1UzIySGtpR0tLaHE0Q0xMNWhpeHZrTG5uSk1HZitXY2pSSkpyY09C?=
 =?utf-8?B?aVFxczJSUzJoUzd6aXcrRGFlalR3THRNbWZKa2pHQTlLZTNrNEE2SUNrVElC?=
 =?utf-8?B?QktIZGtYZFN6Y3lZY09MeFlGc2JtMVJCb3lQelhEZ2VMQ1kvS0NGSUlQZ3Uz?=
 =?utf-8?B?VDY5Rk1tQlZKSXNJSXAzRGpTNHlRTzJXWlN3bXMvQ1lBdGRudXo1cG9PL3ZJ?=
 =?utf-8?B?YXZFdm9VK2JPdG9VMkp0ekgvNHc2SWE1blhtQU1ldVg3TUxrWkpiMisrRHpl?=
 =?utf-8?B?aDVMWnFnSE8zVjF1OEs0N01GaW16cFR0NmZQcVhTeGZSY1J4UHkzb25SWmly?=
 =?utf-8?B?VWVxcjNlc2lqbjM0bG9BR3pncXU1T1orSWZodHhLVGRpbDRoVXByL0N0bmgw?=
 =?utf-8?B?dCtaUWhvK3IrVTR2NWFhSC93bmpJKzc0VGgrRXgwUWlFZUljTmFoRnhwanJ6?=
 =?utf-8?B?NnZpTFd2azdiTUswZFM4c2N4bEJtbys1NXBDenBFbU9pOEJoeWNaZ3NOMnB4?=
 =?utf-8?Q?ZaAU61hXNXAnCsXRG8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M1lNMHZmNTZyYWdkLzFBQlpaUW1mdmF2S21vTkJlNkhWYlJPR25JOCtCNEho?=
 =?utf-8?B?eG45UTJvTUtFWG9VTnZPRGZYRVd5cU5DWmNldkJib0g1bWFtYW82a3ovKzFp?=
 =?utf-8?B?M2NoajkxK2ZQWERWbjRuYWRVUjZLaWRzeFBmV2J2S3F0WUQ1YXFZdnJueDZD?=
 =?utf-8?B?ZG4wTlRMTWh5RCtqV1hXS25lYnRHU3lHRTFKWjNwOFJJeHo1QmJEa0NYVnBp?=
 =?utf-8?B?cGtadE1Zbm1XUVE1dmJMZmxqemxMWE1JNTVkU3JRUEpQblpYMC9RMDhZazI5?=
 =?utf-8?B?R3AvcllxdHVUZjkyNXY4VG1Qd3NvM3NIMENzVUVFb3U1Z054ZGU2anpaUHds?=
 =?utf-8?B?S2xxWDlRS1VZaGFYZ1BnL3ZzeVBGU0UyQ25qK21oOUtEeHdxZ25TYzBoWnpU?=
 =?utf-8?B?ekNXL25VR3BrOHk4SlJhUnpHQWZjNHhKZDlYKzd1TXN3OWZnTmRHd3NGOTQr?=
 =?utf-8?B?ckdseFpFakxlTllMT0czM0g2WVNmc1hXeExxd280Vm1ZdUVoZWtlRkJyY21v?=
 =?utf-8?B?WEZzaFdkZi9uaGJpTXZQSVArU2plRlhMczdZbkFPWmN2YXRzZ3JLZVJ4ay9D?=
 =?utf-8?B?Q1pWZU5EbVM4UzlQT2t6SFdZSXIyRWdVRkNJNWVDT2JpKzZCME82bVc4WjRT?=
 =?utf-8?B?MWxCRUZTbnlQdDZ4SDRiZ3hIakh6U3c5YTZwSStYQVNYNjF0a0E4SDc1UGVT?=
 =?utf-8?B?QWcwbHJvOGxBWnpVa3lKbFlpYlVaU3JzbTJBZnFLeFNJWmhENitGN01zNEFG?=
 =?utf-8?B?RWpXdTIrRnA3dDBiNDEwZGtRTzlNRWxzNGVYMFdtR1V2Y2lZVWYyWkVDMjhY?=
 =?utf-8?B?djU4OFRCaFQ4L1VjSUpVR08rZjl5d3I0Z2NqMVdnNGIwR2U1LzZOa3RNQlpy?=
 =?utf-8?B?UG9CRW9CdTV1R055alpBZlJ3WTUrWlZXLzRKcWs3RU5QanJ1Vy85aU5rcTRF?=
 =?utf-8?B?NHdocEY2YWNkSkdwSXJYMWlrcEJPYkN3dlhzMWRJc0NpL0o5NUNza1M2NVMz?=
 =?utf-8?B?TTZKVjFxdEFuSkR3ZWZlVFM2aTIzb2ptakVSK1kwWWcvbjJrOERVM2RYdDUz?=
 =?utf-8?B?TmdibFg3MHhtVWlSNjEvamN1TjBjOTlTckpQUUdXSS9YODU0dFh2aVluYUpF?=
 =?utf-8?B?STFubnFBQUdXMVdnaGZHdnRIYWRvbDIyZjZ4eDZ1YytrbkJHejlaOFNvTG5q?=
 =?utf-8?B?U2pscktHZ2xKR3hlYkVHZmFQeEpoUWxmN0YycjZRM2V1QWtvdGtuNWo2akR3?=
 =?utf-8?B?UlJIdWljL3hIWnY4RytXRFNtMEkrRVIvMXdkZjRsRm91Vm9VOFU4K1ZsYlpo?=
 =?utf-8?B?eTNLSnViR0JHR3ZpU0ZzQ3A3T2dUT0M5U3hlMXNXeXRoRG1hNVN2TEdHN1dP?=
 =?utf-8?B?OHoybkpIZ3VOT2hpUlJac3NIVHhwU3N4bVlvNmRENXBBRUtuSmh6L0Q2Njlx?=
 =?utf-8?B?bkhUb24vZXUxeTBwTEhvQ2hyTXNmSzM4V2pIaTNMNFZuZjFWMVNWL0NzS2F1?=
 =?utf-8?B?c1hYT2gzaUJQSmdtNE13dlN3SUFYQmFwREpVOEhON1hPaVNINkNGVkdzbjky?=
 =?utf-8?B?b3Z0T0ZmRUxHMGdreFNHMW4zZ0NVQU9ZNXV0N3lYeUJaNXJUamlDREx2WUFC?=
 =?utf-8?B?bkhMYUtGU0VFL2pxUGoxRE1tektNcVRHL2xCYXZDSWh0eVhYSVR5V2ZmeEdz?=
 =?utf-8?B?V1YwSXJMVlVPYkY4VnBZN2JXMFhFVlFkWFlyY2dMK1EvdDE2aENMM1pBZVR3?=
 =?utf-8?B?aXdhY2d1Z1Y3QW5RblN5SlpEdmdIbVZpd3lUWlJyM2dKSWZxS0RzZjRNUmQ3?=
 =?utf-8?B?VUZjV3pqMVJ6NXV3cHVGMGt6WDFoUmt5TlFEZzdRdWVhQVZqem5jVHR4NW5y?=
 =?utf-8?B?RDlJeW9vekw1L0JyYWwxNnFIL25jQ0x3Q3A0a2NCWEt1V3ZRL1RoN3MweWdp?=
 =?utf-8?B?Y0RTVEczRVBsUVNuSDBWTVk3TG95T2dTNSsvMkpNaGtzYlhtU3RqbW93Lyty?=
 =?utf-8?B?TEt2dXdUVURKYkUySHhhOWJWSytjV3RQbExDSWdJVDRmeVYwODdXaXVrNGtS?=
 =?utf-8?B?aEVkd2JhVmVBbzJLSWJaUEdUK2ZiY3p3ZGdSVjNZRVo2dmlTZjNmTi9jSStF?=
 =?utf-8?B?VkRkZ1VBRFI3SkowNkdHbHBjdHJsS04veXpCVzQvc3RFQTdnVjk4L1pDTU4z?=
 =?utf-8?B?QWc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: I9dBmpYLg0DCdQy0l9x1uGLTlLT+lUgEGu9aNf8bkhSK1Ueo5gwYix2cuDellsRzkg/1a5tk0KgONfihGITT2b8V4KqGOV7MOdd0hqpt5LDF3j6uxjpAUwGfCmdzcm5NuUGGHdEHrVFIYz31vMb3AkaXuH4cUJ3zpVuSpwCnibvWajRGNoYYJbklTJu6Pw3x3DCP+NF1ohP9/pWemA+ivU3+OrSn7+EXQU3XKo/tF31FJi1Gmi6nBw6UM1efMHn0YfvaxZC0Da9sAGDpGGn0axqO6fCst0pTs9NdDWMowW7p0WmYQ170LeCZhPqgevTG9HZUyHXNLFvHSiis4YSXlAMS5WYzsPNUuiE+0I3HcTWyX28MZ05KlegWnRjOQaqD0yNPB6dl6zGwcxrQRArsYyr1tD7SNM6HAQpxAEpmzAtXNxX//wdan+u2slQbRMuqSas9z9dYnZE2Yb1AMHp+xZ3YDcvSV5cSok59YI1EpyjIUAj73OvL977LkUxl+MEpQ/Xc0yPuwDErBivC2hM4x2TnTB/DEJy9C0n+X+5Vx+SrvA9ixGkEWE8l1B8Waw+2UAmfw12djKrePM7TWsqR7GVNp0KzQfhHrHLolZs7okw=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 358cd532-4735-42e0-a828-08dcf8f5c254
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Oct 2024 15:15:59.2344 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: W5W8we0qeoeQSvWeQreEerk9tZ0HFmXSJgVwGqoD9yVnAaVFty9Ryg71B0Zc+X5YRc4fJUCoeYRh2V4+cZK/okec6Vg+qOVJ4uHs2mlTOiA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR10MB7054
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-30_13,2024-10-30_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 mlxscore=0 adultscore=0
 mlxlogscore=806 phishscore=0 bulkscore=0 malwarescore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2409260000
 definitions=main-2410300120
X-Proofpoint-GUID: AzpNnxo2QZ5s51nX2_LenIgTxtln_mde
X-Proofpoint-ORIG-GUID: AzpNnxo2QZ5s51nX2_LenIgTxtln_mde
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/25/24 12:00PM, Matt Jan wrote: > Return immediately
 if the needed free bits span a full word to avoid > out-of-bounds shifting.
 dbFindBits really shouldn't be called with l2nb == BUDMIN. Something in the
 dmap is corrupt and this patch just lets things continue as if nothing is
 wrong. I think a sanity check in dbAllocDmapLev wh [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.177.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.220.177.32 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1t6AQi-0004q6-Lo
Subject: Re: [Jfs-discussion] [PATCH v3] jfs: UBSAN: shift-out-of-bounds in
 dbFindBits
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
Cc: syzbot+9e90a1c5eedb9dc4c6cc@syzkaller.appspotmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 10/25/24 12:00PM, Matt Jan wrote:
> Return immediately if the needed free bits span a full word to avoid
> out-of-bounds shifting.

dbFindBits really shouldn't be called with l2nb == BUDMIN. Something in 
the dmap is corrupt and this patch just lets things continue as if 
nothing is wrong. I think a sanity check in dbAllocDmapLev where we can 
return -EIO makes more sense.

Shaggy

> 
> #syz test
> 
> Reported-by: syzbot+9e90a1c5eedb9dc4c6cc@syzkaller.appspotmail.com
> Signed-off-by: Matt Jan <zoo868e@gmail.com>
> ---
> Changes in v3: Return the result earlier instead of assert it
> Changes in v2: Test if the patch resolve the issue through syzbot and
> reference the reporter.
> 
>   fs/jfs/jfs_dmap.c | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
> index 974ecf5e0d95..45b7a393b769 100644
> --- a/fs/jfs/jfs_dmap.c
> +++ b/fs/jfs/jfs_dmap.c
> @@ -3012,6 +3012,11 @@ static int dbFindBits(u32 word, int l2nb)
>   	int bitno, nb;
>   	u32 mask;
>   
> +	/* return immediately if the number of free bits is a word
> +	 */
> +	if (l2nb == BUDMIN)
> +		return (!!word) << BUDMIN;
> +
>   	/* get the number of bits.
>   	 */
>   	nb = 1 << l2nb;


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
