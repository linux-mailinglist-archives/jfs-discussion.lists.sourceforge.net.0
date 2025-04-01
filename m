Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C0BA782D0
	for <lists+jfs-discussion@lfdr.de>; Tue,  1 Apr 2025 21:35:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tzhNf-0008Pi-PC;
	Tue, 01 Apr 2025 19:34:40 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1tzhNe-0008PV-LS
 for jfs-discussion@lists.sourceforge.net;
 Tue, 01 Apr 2025 19:34:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OvK+5AyWZtbGetwv+bV6T3G5w8EDjTN+KzwloDDKHOc=; b=NuQlpfeU17y+40sPgAy1/+k1iR
 5Pl3FY78WezNcL+7vhJ8s66BulV44XlIdHEvAzxNsbhoTXdrEUC8GDF2T7XzMrCYO12QanzbnWawE
 UeNUOFrkquVwTAtIDxWbsleWeW1aaAzlWTzdF46XaFIccKT40kDdh8brNG/PyJNrsvuY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OvK+5AyWZtbGetwv+bV6T3G5w8EDjTN+KzwloDDKHOc=; b=FK57Qd2Y7WWRe/HoiqcD15sINF
 CxyiUVNJRW8WiIm31GaF71IfK8pzOHcKPyR2EEa7ZnUftpPwjFB2xXa0hVVtfWoRYK3nMsccA8zAd
 XCeEcu61NpQWXrTF/cWCHH3d38DGEge8vBgtWKzJ5G2VFg3Ey1d/PqUapFeR+2LO+2Hk=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tzhNP-0007KP-M9 for jfs-discussion@lists.sourceforge.net;
 Tue, 01 Apr 2025 19:34:39 +0000
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 531IJx5j024404;
 Tue, 1 Apr 2025 19:34:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2023-11-20; bh=OvK+5AyWZtbGetwv+bV6T3G5w8EDjTN+KzwloDDKHOc=; b=
 HG9erxkz927GZe46KlTftx5bcggpL+ixdqEb1A1ji/iF90ZLF2jcZqvoPe4Q1SlY
 MvbuM0UaUHlJcTUJHz42HH77Mm8MD2uVttyeC3JX8nAVwKEs2htahFlcQMxyoyV5
 E3kOtkxQtvqY3yZQTTLceaUZIQgt2GOcs4/gYdwqfGrdYJjzJXNzwfCrgvRzB5D/
 AzRd6gf2bIAOUWRdgbqtxTzYXRK6znJX5qq2FPUgQJJjutGc4WqoolRXiX1ba+vS
 dcDRfCwj5SEu3u6EEuEEuDpcVaF6dZhfCkjMzAkTfX+1WqYs1qUjbD3B1U93bY0n
 guJCtGKo/uIwqr2z0AofPw==
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 45p9dtgyv8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 01 Apr 2025 19:34:06 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 531I9dY0017033; Tue, 1 Apr 2025 19:34:05 GMT
Received: from nam04-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam04lp2044.outbound.protection.outlook.com [104.47.74.44])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 45p7a9p1cu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 01 Apr 2025 19:34:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nEFBXmEn9pkjrbEiikVCpi9gn/QHXrWWqw0vjqQOycAJK6Q2InL41PnMTegmokWaM1pjtv1H6zEYI1lsZM4I1ULQRu/oSRthWITT+1Datq0LLKjI6Boh2TLMrH3KNLSEfj1nd78C4e9qdlKHBWBWFIFVzuAXLuDl7W75kkzHxntZuPDCT9G/4D252krFij364mjQ5ud0pWeMy+zNesDPmfWkYwnmOwrBmFLE89FL4jWQz3XNJ0qm6V3S842n4Ay69jknlpQNnVl8iKJCbk4oA8vQn2fe3cbRYFt4YSq0i0VZObUeEsRuGZ+YOnP1FsmNP3+9NCrNnkM9xXBkzqFQmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OvK+5AyWZtbGetwv+bV6T3G5w8EDjTN+KzwloDDKHOc=;
 b=gyp/gYYtp+F208vJC+IbQtfs1oQw515LHVA8H21JTa471ukTFTiEmwGal98RYPt2eycZvdbeDi0UJeFz3yDXKkpwbtFI1zjH9+r1OYaJooTNiMzjzM39knIN7Bkn8bj7ns+Xp2Yne+FofZT+QZptDlKQm+xhHWTJpBEMNpmQCbCpjjK8sJjaQyQuSH3Xflj9uW95LVzZPBpH8Zixzz1Qh/1TV4X/FdzvWnDxa17agrZF3k/IL8zmyAnLaCnnPRtXIHE0GCnwlmxVj/tfwBz2BlNl9v17hV46x2VyB/xFWTJh2VFXkWwAzVgS4DEb0PONIRYsfbW9mY6cYpPhxvX7+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OvK+5AyWZtbGetwv+bV6T3G5w8EDjTN+KzwloDDKHOc=;
 b=Ke4RX7qkRzXOSPkb4gDa8yux3veXaQ7wN4YkxREh+FPdC5NK647rf6OE/BJCNpS4yC4D1Q59u1985nctVUHO+SR4+GwQ6xidDoTcHldMsg69RnNYM2i6AP6Jco3nKHp1EqAwx4/27+QR7upFimjGp8rWhSGFL84aJPlTGQqdTSU=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by PH8PR10MB6672.namprd10.prod.outlook.com (2603:10b6:510:216::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8583.39; Tue, 1 Apr
 2025 19:34:02 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb%6]) with mapi id 15.20.8583.033; Tue, 1 Apr 2025
 19:34:02 +0000
Message-ID: <9d386f6a-398c-4f8c-9901-620dd858f8d1@oracle.com>
Date: Tue, 1 Apr 2025 14:34:00 -0500
User-Agent: Mozilla Thunderbird
To: Aditya Dutt <duttaditya18@gmail.com>, Dave Kleikamp <shaggy@kernel.org>
References: <20250401152916.618963-1-duttaditya18@gmail.com>
Content-Language: en-US
In-Reply-To: <20250401152916.618963-1-duttaditya18@gmail.com>
X-ClientProxiedBy: CH0PR03CA0363.namprd03.prod.outlook.com
 (2603:10b6:610:119::32) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|PH8PR10MB6672:EE_
X-MS-Office365-Filtering-Correlation-Id: 505e7f98-34b3-4ecf-dabb-08dd71542828
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RERkOUZIVkdHL09jOXU0eFhDYTlFa3FaK3lJT0pXdWQvN21iU0xBc0JYMXYz?=
 =?utf-8?B?ZitWdWY5VDlGc1I4SmE0NEkwNXdXZkpZekhoc0pmSWo3SHBWQjJ1TXZ1U1lQ?=
 =?utf-8?B?dzJaZG1oY0lzRm9wTXBvczlibWlhQ0QrV1hBZDR5SEN3cE1rVnduVytPU2RI?=
 =?utf-8?B?Yk1iVXJrelZ3SHI0SkxmbkRERXRJNWd2akZrUFdwSm9lQzBISys2aWxoenZu?=
 =?utf-8?B?T05QZ2owK2xJck5vanVXT2hNLzFJT1d0NHRuQkxZb3dxeVZ2SXZqYmRaQ05C?=
 =?utf-8?B?eXp0STh6TDhjbW1EWjA1WHBJS0lHYUhmMlpaZmJsd3lGTUJPRC82OW9qOUVn?=
 =?utf-8?B?N0lHL3IrSGRWTUExRndyMFlEQ0F0RUFWVlg5YldlSWdaajRObk10b09Ud0dH?=
 =?utf-8?B?bnY1Slpzek94Z2V3QW9kYW9Gcmh4Ujg4T3pBQWxMM2VPbmxFU1AwUUNaWHZx?=
 =?utf-8?B?NmY1YmZoK09kRVBlMUhzcFkvZjhuUnRlZjNXdzFaM0NabEQ1d2RJYzd3UUU1?=
 =?utf-8?B?bFpDU1FkOHNBanp5bWp4ck5MaGRpZEMzZGdweEZodjF2b0l2dDF3TG1Bd1RH?=
 =?utf-8?B?ZWUwMnE1SW5yM1lZYVNJQmc5WWJrajdUakQ4WDNaaTlZdzVaL05IY2JMRld0?=
 =?utf-8?B?OEF4R1greDNES3lKR1ZBNE0zT1NWZXBCTUoxZm82b1A3NW9NYkVZSFNtL0ww?=
 =?utf-8?B?Ti84Z051SkgzQUZOemp1NXN2WTY3c0N6cjNiL2RHOFVXSXpHR1labHNTTEUw?=
 =?utf-8?B?QlErUmZ6MnJYMkJQeCtRcEhmM0c4TkEva0JEY0RCM01oMmdGNjh2cXlLdG12?=
 =?utf-8?B?ODlsTnNIK2FnMEVCa2U4ZDZ3Vnp5cVNnWmNIaU9QZzd4U0dDZm5zRFF5QTB5?=
 =?utf-8?B?czl0RVlPSEcxLzdSamdNWXU4NXJiei9yaDJycXFXNWZuSjBIM0w2MmxLcjVp?=
 =?utf-8?B?dTR5c09pUjdrdmdsTXJocXptRDNjVTAxSk1GTlNoQm9MKzVwS0wxRC9SYkht?=
 =?utf-8?B?VE9xWGZ6T2ZSSG5HU2xtZkg0bWt6V0VhUW1NM3ZoVVRnNTNweURUUTN1S0kx?=
 =?utf-8?B?VmtsTUswbHpzS3Z1SU9sQ0RsOS96YmtsQU5aM0FGUVlIY015eWUvRlg4a1VB?=
 =?utf-8?B?alRpV2JIam1HTlRsMEpGd2QvdlBOd3liNXRBbDRYbEY0ZTQzL3lBcUpTNnlG?=
 =?utf-8?B?N0ZnK2wvUytqbEtWcldHTTB2V3lQZmZGVllkbC80OTdIdDNoMng4THZqZ2FV?=
 =?utf-8?B?NkNhem5jWUlxK0R4cW1mQVBKWTIyM05pckVwcE5lWXhKdWUrTXpjbGhSblJU?=
 =?utf-8?B?U0ZVZ2NKa0FOZGY4VFpOOWtkbHNFZDhiSlZrbDZEbHErR0QxZWl0a3d2V2l1?=
 =?utf-8?B?b2RGdjNDT1dxWjJlbk9NY1JOcWtub0cvc014WGtDcHFrcSt5dy9oSGpOc2tT?=
 =?utf-8?B?ME1ocmJhUFlwVDN4VEFJWFZCWFJIUGk1a0NVZXgxMUF0dWdEdGx3RnRBNnBl?=
 =?utf-8?B?MWhCZFBicEo3NFJIYkRLVS9VM1UvZC9KK256ZXhwQnJaQUNOV2xTNXl2eWtn?=
 =?utf-8?B?S0VqM1pabVFUL1hHYmJkQ0tXZDJsNEo3VVY0ZGZJQ2pKQkJQWnorMzNIQVJP?=
 =?utf-8?B?NWQvUEdOTlN5TTBrOGNSeXJFdUp5NjhFbllWcUlQTHdIZy8xM0tHVllRMVdk?=
 =?utf-8?B?ZHFMVTM2aTFuUVZXOUFDeGN5bWtKZEd3azZ0anNLTUlraWR2bGNmS3V4YnY0?=
 =?utf-8?B?ejRCZlBsMUV0WGxWc1lmbThoTUF4UFVwc0hlQ3ZON2t1aWJ6U1lCMFJ5eUJ6?=
 =?utf-8?B?c0ZUZDlTWWJqL01SVFB3dz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YjRFVUp5aHArdmJnZzBvQkFnZERoQzJSVEhCK3NrMkVvM0Rrd1M2Y2F1aEN6?=
 =?utf-8?B?UjVnbUtVU3ZlazFNWmtZTGkrNlhCaTY0NG8vQTNmS0NvQUh3WXJaaG80SU03?=
 =?utf-8?B?NzNraC9mWmxTOExZQmRrU2FQb1VVRFdGbjlpZUR4dEdRajAyR1FFanV6NVkv?=
 =?utf-8?B?NjdHczN0V0k0OXE0SmVBd3J2ODR6OWhqR000ZCtISnV1OGJUaW8yNGtxRXc3?=
 =?utf-8?B?aVNERjRmQWwzMDhDWjVPME1rVjBJOVFVVmFrNnpCL1FwbmxpWWk1RloreG1w?=
 =?utf-8?B?eG5FTDlpTzZxeEc4QnRqNGdrTHJpQnpwbFVxOVN6MktoVG1lWGZRY3EwZzJl?=
 =?utf-8?B?OFpoVkRXV1daZUlLOGRFVWZWdUVTNTI5cXVuTnFJTGozZDdENnVEQ3JYaFhy?=
 =?utf-8?B?eUdMZ2VUYTJNUG8wTHVBQSszL21Yemg2dG5yTVlGWjFINHQyNDhNcm1TUjdx?=
 =?utf-8?B?YXZLWkJrdEI5S1FMZmxKWTQycVplSEtRY3oxV1BhdFZyUURQejVsZW9xVWt2?=
 =?utf-8?B?T2VkVkpON3o2RFp5Nmt2aHQrRzlxU0JPcjdVdFZ0Q0d6aTB6WU5laGdsTld1?=
 =?utf-8?B?aW9VbGFnUVdrWlJXWFlDNTNsQTk3dVpyZk9jNnZsbGFGcEpkN0E5dTdJRHNv?=
 =?utf-8?B?aFlvbDV6WlVCUkdJWVNSd283d24yK1pQNGNoZGNyeW4zdTNWL1grMTUrbHQ3?=
 =?utf-8?B?bnNCS2ZwdkhNL1ZGNjkydjNzWHpjVGd2cXpxVVpOTERFby95R2ZzM0kycGJG?=
 =?utf-8?B?bnlFSFQxcmlHMzVkYVEvNHBHbkRNWEVFTFJLSW9mRE5kUmJoRXpodEwrZ2Rv?=
 =?utf-8?B?R0IzamV6aXR4RFU2TFZNWGwxZzRrYS9TdDJucWZQaUhoTC9xMVl4UGorYng5?=
 =?utf-8?B?TFl0MmpEeGpBdlhNWmlzUTJzZjkzeS94UjRKTDZhdTFnSUVrMDZzUmtJam1Y?=
 =?utf-8?B?SmNqVzRDemtqZzlqNVhiK09lQW8xYmdUNURERkh5OHg4L0tkdVVlcE1YeHRt?=
 =?utf-8?B?TXN6bkF3ZFFmNU9NclBlQzh0VFlaUFBRb3B0WTlqa0NIeVR2YlNSRHpZN1FH?=
 =?utf-8?B?OVBzcXAyRE5wS3haVkFYazhzVzN0SGl6b2YveGMzTEU4bGc5Y2VwR0xMRmVM?=
 =?utf-8?B?V015MWxuRzdjK1F6T2U4eTZnMVVNNXRQVWVicE9WSG5BTUZVelhqaVRxdkE3?=
 =?utf-8?B?UnF3bUlaNlZhR3FndW5yMjEyV1lsUEEyYTlINDBxeWZXRkpLb2VkWUt4WFRh?=
 =?utf-8?B?Wk9XTlI1UzdDdjZNOGk5aHpoMU5wNTRwdnpPNFBxSFZJYXl1S2pQaW5GSzVG?=
 =?utf-8?B?ZWhJQTlHZjRtdzVSdUZQQUdyaWlWYTNvZDNpNUYxek9ITUJPQSsxeHV5a2Zv?=
 =?utf-8?B?THlMKzFiTSs3Nm1wWTdIWUFUZXMvcnphUG95dzVGc1hpVTI5VXRmU2lOZ0VO?=
 =?utf-8?B?aEJsNXVHVGdCVDVKUVJCOFNFZy8wSmhYMjRpb3Y2NVArYktZRVlESkxiakVC?=
 =?utf-8?B?djhGTGJGT2FyZlh3em9vOS9FL3Rub0gzMDFWQzNJRGlpUGRYMEh2bEVqQ2FQ?=
 =?utf-8?B?UXhzVWhhR0IyUDZFTlpJVHhtby9iUXBLL2dwU1JVNXFCSHZjZ25NdC9wK3J3?=
 =?utf-8?B?eDhxZHAwd1libEtQRTY1UkFCR0p3MktVZktIcE9oK2JpS2tsS3RTcjFKN2JP?=
 =?utf-8?B?MGNxYkZDZExtRHdiU3pLcGlrc2gzOG50M3ZyTzVzQlNRY1AwckhzZEZCL0wv?=
 =?utf-8?B?NGkzdkJULzdxT0V5NTVJQzE5dE0wa3VzMGtLeTdobGdFNDFYOXN4eGRuRS9F?=
 =?utf-8?B?bjhkUnExMXBNZW9veSs5d2VJTjRSZGRSRkVKazVLdnFVRzA1VnI0WHBRc1NU?=
 =?utf-8?B?WXBFcjVrTmlMSDFKQnhkVDhIUC9ueTR4SW9Vdk5yQnhSaWVoYW9qc1lHMkJI?=
 =?utf-8?B?YStVRWZDTkNBUGZ3RjV2Uyt4UVoyMDBCbkZ2MkxYSFcrYTZKdE91MitTK2NP?=
 =?utf-8?B?cjlueHV0eVBmT1V3bHRpaWxJbEhpNS9pYUJQdkpCd3ZST05hUTlZMURWOURi?=
 =?utf-8?B?UGErcU9RS0NqWnVTa21WWWJHNkdLb3RKUmFSdE0wZXZ3SEJ6NzgrSXNDdlhy?=
 =?utf-8?B?QkVENlJwMU50NVZBKzFnUE1vdEdRbUUxVHVNcVZuWklsL1NXYnlvOVZCaDNF?=
 =?utf-8?B?T0E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: SUTOcgmlLFQqMEMbL1UMuwmfVrTR0WjzlsqK7/CN9DdQWBUrKTqHj2rdkK5HPj1GAUJ+bj9uAkwm/FWAEmui5aAO1xPUUbIRV2Ws83bjn4Gx3jrCkMO69q8b1BBZzmN/4uIReUbkivZEHmcMsAEsewb6YP1EiCtM3er2fg+bW5XkZDJSY3s4G1UxtTFU6J+z5N7I6NmHFuYOKFGFkDk+ymf5sdme370a2qZyaj+s+50lusAE2/joCeY2FE1NzZPhaYZ/fJYZSfuxzQu9uWTPiZ4QHGOZJxPsTIMRhecpg1GqC+DB1e3k4zF+Z3bBmA/BFSkQ89JcSTNXFTrAqgi6Wl0raDKsJ/GL9VeUqXBCwUBo44boxOpJ2eWuR2vvTO0qEsIFqeKtI8SrIHoPHY2KAYjhRPz+eiFeaYJezRUwT27/Yy1XBGQPRSyQ2WQxzh8gKdhTvOmHE/qwYfBc+JCqpjzq702J0DZNWu9wM2mwTPcu+p6+h8xcOqr+2buRwmG483Hmh8ZKSUVN9js60V94AvVvT26ii3nYSAzaa4RsPBgp4D9ouSPXvGt6vhPq/4gGVq55NcOtZ8gH6IKFdU1TeRrNpzuK9makkgdekw5TLYg=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 505e7f98-34b3-4ecf-dabb-08dd71542828
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Apr 2025 19:34:02.2774 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g7uBrABPnj5uvV1HpMalqcuMa9uMoXmfQMbjR+DIb7OfA0PzK8w5V+y5xjoMiRHK3FSppAHNthdq6L40WR5oUX5L6VNNdOqZzBoUY2K8Df0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR10MB6672
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-01_08,2025-04-01_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 bulkscore=0 spamscore=0
 phishscore=0 mlxlogscore=999 suspectscore=0 adultscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2502280000
 definitions=main-2504010120
X-Proofpoint-ORIG-GUID: GR5w-lGRoRtffJOlX91yhmeu-0XD3wyT
X-Proofpoint-GUID: GR5w-lGRoRtffJOlX91yhmeu-0XD3wyT
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 4/1/25 10:29AM, Aditya Dutt wrote: > stbl is s8 but it
 must contain offsets into slot which can go from 0 to > 127. > > Added a bound
 check for that error and return -EIO if the check fails. > Also [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.165.32 listed in list.dnswl.org]
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [205.220.165.32 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1tzhNP-0007KP-M9
Subject: Re: [Jfs-discussion] [PATCH RESEND] jfs: fix
 array-index-out-of-bounds read in add_missing_indices
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
 Ghanshyam Agrawal <ghanshyam1898@gmail.com>,
 Edward Adam Davis <eadavis@qq.com>, linux-kernel@vger.kernel.org,
 syzbot+b974bd41515f770c608b@syzkaller.appspotmail.com,
 skhan@linuxfoundation.org, linux-kernel-mentees@lists.linux.dev,
 Roman Smirnov <r.smirnov@omp.ru>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 4/1/25 10:29AM, Aditya Dutt wrote:
> stbl is s8 but it must contain offsets into slot which can go from 0 to
> 127.
> 
> Added a bound check for that error and return -EIO if the check fails.
> Also make jfs_readdir return with error if add_missing_indices returns
> with an error.

Looks good. The only change I'm making is removing the jfs_err() call in 
the caller since the failing function is already spitting out an error 
message.

Thanks,
Shaggy

> 
> Reported-by: syzbot+b974bd41515f770c608b@syzkaller.appspotmail.com
> Closes: https://syzkaller.appspot.com./bug?extid=b974bd41515f770c608b
> Signed-off-by: Aditya Dutt <duttaditya18@gmail.com>
> ---
>   fs/jfs/jfs_dtree.c | 20 +++++++++++++++++---
>   1 file changed, 17 insertions(+), 3 deletions(-)
> 
> diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c
> index 93db6eec4465..de33026d18d2 100644
> --- a/fs/jfs/jfs_dtree.c
> +++ b/fs/jfs/jfs_dtree.c
> @@ -2613,7 +2613,7 @@ void dtInitRoot(tid_t tid, struct inode *ip, u32 idotdot)
>    *	     fsck.jfs should really fix this, but it currently does not.
>    *	     Called from jfs_readdir when bad index is detected.
>    */
> -static void add_missing_indices(struct inode *inode, s64 bn)
> +static int add_missing_indices(struct inode *inode, s64 bn)
>   {
>   	struct ldtentry *d;
>   	struct dt_lock *dtlck;
> @@ -2622,7 +2622,7 @@ static void add_missing_indices(struct inode *inode, s64 bn)
>   	struct lv *lv;
>   	struct metapage *mp;
>   	dtpage_t *p;
> -	int rc;
> +	int rc = 0;
>   	s8 *stbl;
>   	tid_t tid;
>   	struct tlock *tlck;
> @@ -2647,6 +2647,16 @@ static void add_missing_indices(struct inode *inode, s64 bn)
>   
>   	stbl = DT_GETSTBL(p);
>   	for (i = 0; i < p->header.nextindex; i++) {
> +		if (stbl[i] < 0) {
> +			jfs_err("jfs: add_missing_indices: Invalid stbl[%d] = %d for inode %ld, block = %lld",
> +				i, stbl[i], (long)inode->i_ino, (long long)bn);
> +			rc = -EIO;
> +
> +			DT_PUTPAGE(mp);
> +			txAbort(tid, 0);
> +			goto end;
> +		}
> +
>   		d = (struct ldtentry *) &p->slot[stbl[i]];
>   		index = le32_to_cpu(d->index);
>   		if ((index < 2) || (index >= JFS_IP(inode)->next_index)) {
> @@ -2664,6 +2674,7 @@ static void add_missing_indices(struct inode *inode, s64 bn)
>   	(void) txCommit(tid, 1, &inode, 0);
>   end:
>   	txEnd(tid);
> +	return rc;
>   }
>   
>   /*
> @@ -3017,7 +3028,10 @@ int jfs_readdir(struct file *file, struct dir_context *ctx)
>   		}
>   
>   		if (fix_page) {
> -			add_missing_indices(ip, bn);
> +			if ((rc = add_missing_indices(ip, bn))) {
> +				jfs_err("jfs_readdir: add_missing_indices returned %d", rc);
> +				goto out;
> +			}
>   			page_fixed = 1;
>   		}
>   
> 
> base-commit: a8dfb2168906944ea61acfc87846b816eeab882d



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
