Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC36A3DF1A
	for <lists+jfs-discussion@lfdr.de>; Thu, 20 Feb 2025 16:46:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tl8jx-0005mO-Nj;
	Thu, 20 Feb 2025 15:45:29 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1tl8jx-0005mH-3q
 for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Feb 2025 15:45:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ssZut0LbrlvZttjBOrU3gIgwZ1I8yQUIFzJt24yiVPY=; b=miVRnaWHz6IZ0JHyFHD64maxCN
 h7EpQ0mSQLgF4YmM+kv/SQ3pyKkiwDsp47s8ZJx4tGToopEggeV1s7MUsdiSSOoK+NOw4Ux8xH9nM
 k/mkpu8cH6/ya8T0hwiGhzXxMTGbacjHL0o+YcOatNR3JQ8mUgWP7z2eGTwP22RV4cgI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ssZut0LbrlvZttjBOrU3gIgwZ1I8yQUIFzJt24yiVPY=; b=Zc5nEPkMOamIK+164wKPfHSB1B
 3qlUtQGT1xJMbfHKifHTizY+xr4YiiN88XyVn53IKVV1QI5k29XQbQCWiQePBGfT3ZqzjV8fneApt
 BZ8NaMe9ZY9sqKCALyKiqXFiKS2quJlHtUUP53rnNpwFYrf0+G+UFsXeRYW0DxRX5v64=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tl8jv-0000sE-Nj for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Feb 2025 15:45:28 +0000
Received: from pps.filterd (m0333520.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51KFMYZC013240;
 Thu, 20 Feb 2025 15:45:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2023-11-20; bh=ssZut0LbrlvZttjBOrU3gIgwZ1I8yQUIFzJt24yiVPY=; b=
 Np5sGIO9PkWZR7etrmvNVk5XkL+w8HoMFpxb+yHBRUJoUQffALh6NtQaJYJ1Ds99
 zNW1mBMnIU9vzw4jWygTcDFMQLkCo7A2iI4OJDBixtWmgH5OGgLMNOWOf1ZX1n0E
 dAwQF55EwNLTxm5gchbuyf7YGqw0O8KPq4leFSa4IZVH55cPBIg0MQR/oNZsfQ9J
 Vq2bPUSR8sXTpfyydWCd3s9U8S12jhE6OFIWVo51Iqn9A4EExS8fLucp84573xlz
 KtzG4IvPOZj7ARXcj5klpPaT9lz0vyyZWtwtfJZtn4wcmiBiV2fwVtXQMSzIS49Y
 l+CpRMvT63Xf8iwEirEfSg==
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 44w00m4gt8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 20 Feb 2025 15:45:18 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 51KFbY8x002092; Thu, 20 Feb 2025 15:45:17 GMT
Received: from nam11-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2173.outbound.protection.outlook.com [104.47.58.173])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 44w0tnb0d5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 20 Feb 2025 15:45:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AKDXyCKWXo0b/M7o1ZDuuVMUMA7V1bL5DqJ+810+82bH6zauCpajqaolA6A3znx0rJdChbFVmlxveOCT/yWh3o4Y01ppCXpOsCp13vKX8/d/hLE8I9CwFnkWes3Yu6ukcur/E7sYKwUhHLdNEBk5U37pL3RND6U6gVhuLXlvtKKp3bfnKcJHxMtq7AcuNpBJeAJBMuwMti59LRot077lvuPAgC44UhtqTpT/V9yIzpy0ssL8jMMvikTxHQVK0L7KCpPDvDLzhCUXkR8ZvScpZGC987ROUbXDpjtv2Ikz4ujlFiDiqqWaReDwC/dI74rQIgl8Z3Ph+SCzxXVTPdwNyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ssZut0LbrlvZttjBOrU3gIgwZ1I8yQUIFzJt24yiVPY=;
 b=PWTCxzUOevYeP4wd/CS1Hpd+K4vl52QvGZE+g1AaN/K79l/hXEK0RqXHLA+9T7Z7d8lS2UJjE5SvEs/UwgELUXYzazBoBCRhAhfHAy02NP3EI3CHfHT9RxiBJPZmU4yGHIITNke4rebDhhv9mVgPO+WO4FThY6Sgz5la8nOpdSuFPf8DLxnaSF7pj7SI4Z17wZuEos0spZ6Fo3M91tT17Y0nfow/mi9OAN2WNZ9N7GDHnUcCkH1+40YT3KXjC7dWOtaWqCRFq5Jwc3ZoXHY2Uq9ORuDy2iCw4iRGhrfqNEY6Lac1F90py/ToiJy0vx23KrxbvNrYSyZMS3b5tfFc1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ssZut0LbrlvZttjBOrU3gIgwZ1I8yQUIFzJt24yiVPY=;
 b=sdwbOFRd5jjBbY9vZWQrJMIsOw4OnEQzpGXvDW8jDuhe7Z7hUY3IuQak+yKnB3Qxh+4Zci2Zn8Mu26xfrbzfH2OaSxyp50lYr4lU65lGqonyApu2IMZG2SCsczWxPRG+ygp87puPyfhUNqxn0ttQeJKOYgs9OACw9TFRJMX7LBY=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by IA3PR10MB8162.namprd10.prod.outlook.com (2603:10b6:208:513::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.16; Thu, 20 Feb
 2025 15:45:15 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb%6]) with mapi id 15.20.8445.020; Thu, 20 Feb 2025
 15:45:15 +0000
Message-ID: <4d47e3cc-d1e6-4281-9a7c-463e6fb0af62@oracle.com>
Date: Thu, 20 Feb 2025 09:45:13 -0600
User-Agent: Mozilla Thunderbird
To: Edward Adam Davis <eadavis@qq.com>
References: <046f91fc-dc84-48de-b2e0-9f072283facd@oracle.com>
 <tencent_B2A58C0DE192505DFEDD889955CFD58DA207@qq.com>
Content-Language: en-US
In-Reply-To: <tencent_B2A58C0DE192505DFEDD889955CFD58DA207@qq.com>
X-ClientProxiedBy: CH2PR05CA0030.namprd05.prod.outlook.com (2603:10b6:610::43)
 To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|IA3PR10MB8162:EE_
X-MS-Office365-Filtering-Correlation-Id: 20b6dfe0-3852-4c83-4ff9-08dd51c591e2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RmZNbGs0TXBic2FtM0daK2NmQTQxWWJEcGxwNDlyU056TXpDK3k2RmZGVmhH?=
 =?utf-8?B?d1oxTmNKU0Ywc2dZVjF3bXoyZlJ0NHppWExyV0xtUG1QdG0wRjJrRGk4enJq?=
 =?utf-8?B?OHdqT1FrTDFkRmc2U3hyWHAxeS9xNVJOMU0xVUVKd0UrMTZjNmlqbERFTE5H?=
 =?utf-8?B?dVVNQWtoUVFsSXh6UVdibzBOREFSWWIrWFN5NUJDREdzZDlwaXdwUnZFUWFy?=
 =?utf-8?B?bVZVYkxpZXJHSy9IbmEzVU5nYWkzRDQwV1F3UHpqRmhadGQ4R3NKcXV1MlZo?=
 =?utf-8?B?RVd3ZEZ0WkcxTzlQdnh1N21SZVYvYTNXTUluTzl4Mnc2MkRnL21qK091M1p6?=
 =?utf-8?B?amREcG5BNVBGaWw4Q3pmbFZONk5zT0w5Q3B3ODRyc2FjMk5GTTYwempTeWRU?=
 =?utf-8?B?R2taOXJydis3d3RsS2VFMzlYQm1hanJuK0trdUpiY0owZzNMcmNXNVlTVTJp?=
 =?utf-8?B?K25hMjZzZ1hrclE0SldwazlXRVFZUHk0ejJBUVRwQ2hUaE1XVzBBY2ZEdzAy?=
 =?utf-8?B?VjhNSVA4bUV6M0haaXNhT0VWQmV2NEJZQmVlWlY2Mzc1SXlrcjNwQnlQYXNw?=
 =?utf-8?B?UlI0ai9ldkluTWVYWXMzcGhxZWZsbjBCSDJabXNFaHBEc2d2VytzV01tanE5?=
 =?utf-8?B?UEVOUW1kVzRrTStUZkY1eHdWS0h2VkFEVXIrYUxLSTVUcjVjMmllVjhBY250?=
 =?utf-8?B?b2FXNzVQcys5WkdnUzBLK2ZZdklFb3pzeUt0RWxDV25US243N1NlbzZ0eFE2?=
 =?utf-8?B?TnkzOVlnOG1HUWJKeGJnb3FSUS9ndkU3MWhCSDljSjZrRDI0bENzN3c2NERa?=
 =?utf-8?B?MDV3K0t0K1JtVUdLSzZPakJNU3l2bWZUWi9td1E3SVUxV3FQeXdEc1gzU05C?=
 =?utf-8?B?UEsweDhOc1JIVFhIbFE2RVQvem1ka1YyZ1pBNnN4dXdVWEdUMnVobjdqZy9N?=
 =?utf-8?B?OVNBZnZyUDBqdEx1VWJRSjBxUlJKV1RXSGkrVmlpNVZjNndGbHBBUzNhNTFL?=
 =?utf-8?B?UUJPSW9pWUk0M1haU2tsTTRuVWQzRVVPVExNRlJKZk5EeEJrdlZDZFFENHFE?=
 =?utf-8?B?aHNiY2Q4WWNoQ1EvSmNZOUdVdlVuZUcxdGt4d3JsOEs1VER4VFpiZngzT0Rl?=
 =?utf-8?B?STE3SnErU2RkZUJ6ZURTVnRXcFJtenZzWkNuTkZZamFzQ3hHSDdOZEZXZC9F?=
 =?utf-8?B?RzdUalZmMnlZalI4SEN1RXdYN0E4T01hdHFoRkYrdWtMVGZ5UkJPNUYvWXhq?=
 =?utf-8?B?SkF4dWVZeUJHQ0YwekM5ZGZCeC8rZFNpWUM5ODZUa3I2U0ltL3lTd2o0TlZo?=
 =?utf-8?B?V2xTUkVSRlBNNHZJUnpUMVlmT3pTUm16TVZzdEtzZy9ueDgvdXNvNnVoVk9n?=
 =?utf-8?B?dEY1SDhIZTVhUTBuQlBudkRnRDlNclZmR3hzays4ZnQzcFF6d1llK1diZ1pK?=
 =?utf-8?B?Tm9mcjJuZnJWTmh1RDhDMGQ1ZDZSQkNVREdVZmE1c1FkS3pNVk5UTFFVcGw0?=
 =?utf-8?B?K0EvNi9HT1lxVzZRSkJRQmJFZWtOUkpGRmNDalNsbGxGR2M1Q2tPcmNzSmtJ?=
 =?utf-8?B?eFNqQ1pZVC9mcjgyOFV2d2tGS1JSOHZYQUNzTUpuVDMyTURNZ0VoREcyVlRM?=
 =?utf-8?B?alJGdkNBaTB4Q0pOZEttMTNFbHpUckZ1cHY3Zlp0aEp6ZU5jOGd4QVJsbUQ0?=
 =?utf-8?B?S21xQ0NQOEc1c3FmSnAzdFJFL3BYdXJpMkxDeHdUaXg1cStMVFRzQmFjL2Ra?=
 =?utf-8?B?ODRKRE1aek1qOWlJWERqQnZxYUlRSGcxY1BSNktDblB1TVdwMmVWVmtteG14?=
 =?utf-8?B?VVI4c0QzUU1EVjUramNWUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U1hJSzJVTENYdXZ2UUNGdHRyUkVMdnd1MUQ2d2hGaldsRlNFR203K0ZoaGhX?=
 =?utf-8?B?N0FadUVVSGpTVi9NZ25sMktJYVdWaGN0SFVxNnNTZ2hXckJnZnQxcWYyR3hN?=
 =?utf-8?B?ek1pU01qNTRqRkpySzA0bmpjb3pCTkVVeHFLWGN6WWtEdmxGV3ZaL3QzUWJy?=
 =?utf-8?B?UnNpT2dLMHdJRWt5SGlwK3loa1lpYU5hWXBnT3VUNDQvaExGR2NkNXNTeWl4?=
 =?utf-8?B?aDIrSU4xdFNiWEpmVlNtcytKd3UwaWsvRDNEMnIvaU5lNU1tQmIwc2ZudzdC?=
 =?utf-8?B?amo3SWNRVlBQcGxIckhwRjE2UVkwZG5FNmp1MmFhUDYzLytZR05ObXFrT0hV?=
 =?utf-8?B?RGdLeFMvUEcyejRYWnRocnJpWVgyS2dQTGxtckdmZU5WNVU1M2wvV3U4d2Zk?=
 =?utf-8?B?NVVZVEN0TnpET2VHeTlvTGhlMkhUS3RDbkNmZVZjZUZZeVc2YVpGNGRTL3Ux?=
 =?utf-8?B?STE4cHRadk1XV1M5Q0dXdDhaTlFLc25MVG1wa1k1UGlRWGs4Umc3L3lFTEVy?=
 =?utf-8?B?QlJYRHZQWXoxMTVjUHRrVW5FQXFOSjNPK2hBeWl0Tjl5OUVva2Y0dzMwazM0?=
 =?utf-8?B?Ymd5U2VPRVZuakM5UEY4amE4TFVHOEZqWFpXcHhoNEpPRTBxUXdVZEFWODhY?=
 =?utf-8?B?QWJwamZjWEpNZzZtRit5WmtpdkVvQkpEUUJjcnZ2WDR4enlRa1FCMjBRRWlq?=
 =?utf-8?B?MHRrelNCb2NpeTFyb2RHYnZCeG9lczVhV1dXRnNwUzVXcnJmOC9QRGhiVDBs?=
 =?utf-8?B?VTBmaWt2MHJ0REs1MnhBKzI3UURHcnN2b2RTWkFkUkxoUnZrWElTa3Z3NDVS?=
 =?utf-8?B?UTMvR2lMaThDbkpCUnhpTldaNmtDTDd6Yk5GTC9XMHVFb0xGcjBORGFKUzlJ?=
 =?utf-8?B?MWRzbCtoNlpoeVJFL3JnNllGc2EyK2tmRVAzU2MxT0RLOUNvaXFCd2FRWDNz?=
 =?utf-8?B?ZDhFeFZIV1dUeEQ4NDlpYzFSR3RtbnVsV0tvc3RFREFMclVDdFhnRjIrVWQv?=
 =?utf-8?B?UVJYR0hCa2xka0FUT2ozc0RYY25nSEpNRVMxb3RFeVkxRkVlSmoxcnNPWXB5?=
 =?utf-8?B?TllxSURtVnJLVXBYbmlkZ2ZhSzNuNVUvcW10b21OSVpGdWJ6WFA0MmhOenFN?=
 =?utf-8?B?MzNkWm1Nd2pHdmdLdDdCZWJRcmlRV3BvbVVKaS84RFdXSUtxUXp4am90aThL?=
 =?utf-8?B?aTE5djJHdmVyR0FmU2lGRG15ZUlFNndkNkVvcHJSSGlFU2tTNkN1czNkZ1VF?=
 =?utf-8?B?MGpTWnI1S3JoYkI3dSt2ellvSjJlRWU0Vkp5dVZXVjNsZlFxSnJnMFRnOTNs?=
 =?utf-8?B?a1ByQjlEU09DNFRZdkxMVnZpY2wwK01TQUZmb2dpbTA5Nys0aDA0WlkrTXh2?=
 =?utf-8?B?K1lORTlPTlNiYWxvWWlkclh0aGRCeXBxUjBMSkpCZEFxUXdsU09NMERrdXZ4?=
 =?utf-8?B?ZENtTGJoZTEwNk9NZzVuZ3hiWm5RV09Zd1crMFpoTlhPVCtrUkdoekJqa0xn?=
 =?utf-8?B?NndzczV5ZGxZMGNvTEdCSWhGWXFzd1dYZ2dweFF2MThiTk1hK08rdG9adzBK?=
 =?utf-8?B?S2dvNEFVWU9jV0xGVUpnS0NsME0wZFQ0WFR4d3lpVXptSyttVTdpVkNpMlZr?=
 =?utf-8?B?UGQ0aGl2Y21NNnJsVnZxclg2OWNkVlMyeUNRcU52NG41ZTZ4R1BmQ045YmlK?=
 =?utf-8?B?NU9iRlNoZG95UG9MbWFtdmJvT0NiYVE1Szk4SnhQcm94czk0VHFGc0VuMXpa?=
 =?utf-8?B?VmxzSE1RcWFKOGY2KzBmbTRHbmJyMC9zaFpoU0lZb0tHOWs0dklES1dMd3lK?=
 =?utf-8?B?eTAwMVVsU0dqbGRIMVl0aE9oYzR1RDVoY3NCcEFRNHMxZnQ0ejVCK0JFd1Nm?=
 =?utf-8?B?SVBOb3lKdmI5Z1FibjJkKzlzOXZwVWtMV1IrUnc0SmIyWUxmRnErV2UxYlo2?=
 =?utf-8?B?WHExN1pyeDBrazFuOUJTRk03ZmN5MWVWV3BXejlDUEc4VTNjaG5ISy9BYWRw?=
 =?utf-8?B?M0RXTUpsYVdaTWQ4Q3VmUzBjLzdnVENDVEZDQjZDWHNnYjJOdVVFaDY1R0Rv?=
 =?utf-8?B?Q2NrTkJhZ285RHZiZFRpdlhYZnhsUGpsU1AyWVdwRE5tOUp1V05ROGo3SWdY?=
 =?utf-8?B?eml3dWE1VTF3ckVsVDZzZkdWbXlDaGFnT1RaaXhYUXFsWTNITGR3SkJnZTNT?=
 =?utf-8?B?SHc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: Fw7KVzzjZs6sY/amMPs6+bjVpvs7L4lO6ewfJ9fgJxQukrFUHBMz51yt13VcSc15zUyY2qUPwp1LizqUOehzQI7ogjMA7NELeTDQnFas36QthMHkfNtAyyeeo9dfmlAwvKUMRV9lPKY5LVamnBMoZFN/PPKWadiXH3KFkbDj8jt3iFYFkL4zljffnRiJmeOrsfaLbDWWJmra6yqaIZSklpuLtRJIWzDPIM0OwsuTwPxfUykgqWSEm852DIFFyO0KuhC9gio0Wh58bfnB2jTV1wuaNcv8tJSVTa0o3MES2jTgk790HRjuK+mcm0SrI339plDDJCLuwlKGnPOzSBsD3Skj/eMqbTJq15rKIfbEuVjTPbgsWWwF3Gm6TQT3GZ0x6CRBHZN4h6im1JjhcCjud4yOsyJJewAORpHLeQ7mrwvtkkT3Y9GRzPmqhbJO9WJ15piPU0q1ciWPqaUYzUgKaqpSSL/o6mC3O2DUxccxict2bOi9S24+8fcjzVPKix+nMQmSvtjQvNM5ARv3szsdOr7LtFO9hUhCUEDgHIJlS94hRnX6vlrgtBb7mUwkQ1SmAfaHD5G+JNbEeQAoQK++oA8NCRx/BnDhUxlbz5DE3Bc=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20b6dfe0-3852-4c83-4ff9-08dd51c591e2
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2025 15:45:15.6677 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QXR1Padbo/X2x/1e6CJhAjUYPdENYLZ0kgrLx21EfezQSGfztQG7+tLkplCCG5G2QqWWJLe5rzbCITfLTCOdxkHajHCn+W6n/xoRo0C9bb8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR10MB8162
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-20_06,2025-02-20_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 bulkscore=0 malwarescore=0
 mlxscore=0 spamscore=0 phishscore=0 suspectscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2502100000
 definitions=main-2502200112
X-Proofpoint-ORIG-GUID: Y5bBoZEnNVlC7vW8gtsMVgtZN3rkI8cA
X-Proofpoint-GUID: Y5bBoZEnNVlC7vW8gtsMVgtZN3rkI8cA
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2/20/25 4:56AM, Edward Adam Davis wrote: > syzbot reported
 a uninit-value in diFree. [1] > > When print_hex_dump() is called to print
 the first 32 bytes of imap, the > first 8 members in struct din [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.177.32 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [205.220.177.32 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [205.220.177.32 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.220.177.32 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1tl8jv-0000sE-Nj
Subject: Re: [Jfs-discussion] [PATCH V2] jfs: Initialized first 8 members of
 the dinomap when creating imap
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
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 2/20/25 4:56AM, Edward Adam Davis wrote:
> syzbot reported a uninit-value in diFree. [1]
> 
> When print_hex_dump() is called to print the first 32 bytes of imap, the
> first 8 members in struct dinomap are the first 32 bytes of imap, because
> in_numinos, in_numfree, in_diskblock and in_maxag are not initialized when
> imap is created.
> 
> When creating imap, set in_numinos, in_numfree, in_diskblock and in_maxag
> to 0 to prevent this issue from happening.

I appreciate the patch, but I'm accepting a different patch to fix the 
problem:

https://sourceforge.net/p/jfs/mailman/message/59132063/

Shaggy

> 
> [1]
> BUG: KMSAN: uninit-value in hex_dump_to_buffer+0x888/0x1100 lib/hexdump.c:171
>   hex_dump_to_buffer+0x888/0x1100 lib/hexdump.c:171
>   print_hex_dump+0x13d/0x3e0 lib/hexdump.c:276
>   diFree+0x5ba/0x4350 fs/jfs/jfs_imap.c:876
>   jfs_evict_inode+0x510/0x550 fs/jfs/inode.c:156
>   evict+0x723/0xd10 fs/inode.c:796
>   iput_final fs/inode.c:1946 [inline]
>   iput+0x97b/0xdb0 fs/inode.c:1972
>   txUpdateMap+0xf3e/0x1150 fs/jfs/jfs_txnmgr.c:2367
>   txLazyCommit fs/jfs/jfs_txnmgr.c:2664 [inline]
>   jfs_lazycommit+0x627/0x11d0 fs/jfs/jfs_txnmgr.c:2733
>   kthread+0x6b9/0xef0 kernel/kthread.c:464
>   ret_from_fork+0x6d/0x90 arch/x86/kernel/process.c:148
>   ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:244
> 
> Uninit was created at:
>   slab_post_alloc_hook mm/slub.c:4121 [inline]
>   slab_alloc_node mm/slub.c:4164 [inline]
>   __kmalloc_cache_noprof+0x8e3/0xdf0 mm/slub.c:4320
>   kmalloc_noprof include/linux/slab.h:901 [inline]
>   diMount+0x61/0x7f0 fs/jfs/jfs_imap.c:105
>   jfs_mount+0xa8e/0x11d0 fs/jfs/jfs_mount.c:176
>   jfs_fill_super+0xa47/0x17c0 fs/jfs/super.c:523
>   get_tree_bdev_flags+0x6ec/0x910 fs/super.c:1636
>   get_tree_bdev+0x37/0x50 fs/super.c:1659
>   jfs_get_tree+0x34/0x40 fs/jfs/super.c:635
>   vfs_get_tree+0xb1/0x5a0 fs/super.c:1814
>   do_new_mount+0x71f/0x15e0 fs/namespace.c:3560
>   path_mount+0x742/0x1f10 fs/namespace.c:3887
>   do_mount fs/namespace.c:3900 [inline]
>   __do_sys_mount fs/namespace.c:4111 [inline]
>   __se_sys_mount+0x71f/0x800 fs/namespace.c:4088
>   __x64_sys_mount+0xe4/0x150 fs/namespace.c:4088
>   x64_sys_call+0x39bf/0x3c30 arch/x86/include/generated/asm/syscalls_64.h:166
>   do_syscall_x64 arch/x86/entry/common.c:52 [inline]
>   do_syscall_64+0xcd/0x1e0 arch/x86/entry/common.c:83
> 
> Reported-by: syzbot+df6cdcb35904203d2b6d@syzkaller.appspotmail.com
> Closes: https://syzkaller.appspot.com/bug?extid=df6cdcb35904203d2b6d
> Tested-by: syzbot+df6cdcb35904203d2b6d@syzkaller.appspotmail.com
> Signed-off-by: Edward Adam Davis <eadavis@qq.com>
> ---
> V1 -> V2: add missing others two fields of dinomap
> 
>   fs/jfs/jfs_imap.c | 4 ++++
>   fs/jfs/jfs_imap.h | 2 ++
>   2 files changed, 6 insertions(+)
> 
> diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
> index a360b24ed320..0cedaccb7218 100644
> --- a/fs/jfs/jfs_imap.c
> +++ b/fs/jfs/jfs_imap.c
> @@ -134,6 +134,10 @@ int diMount(struct inode *ipimap)
>   		imap->im_agctl[index].numfree =
>   		    le32_to_cpu(dinom_le->in_agctl[index].numfree);
>   	}
> +	imap->im_diskblock = 0;
> +	imap->im_maxag = 0;
> +	imap->im_enuminos = 0;
> +	imap->im_enumfree = 0;
>   
>   	/* release the buffer. */
>   	release_metapage(mp);
> diff --git a/fs/jfs/jfs_imap.h b/fs/jfs/jfs_imap.h
> index dd7409febe28..9af1da2e4591 100644
> --- a/fs/jfs/jfs_imap.h
> +++ b/fs/jfs/jfs_imap.h
> @@ -144,6 +144,8 @@ struct inomap {
>    */
>   #define	im_diskblock	im_imap.in_diskblock
>   #define	im_maxag	im_imap.in_maxag
> +#define	im_enuminos	im_imap.in_numinos
> +#define	im_enumfree	im_imap.in_numfree
>   
>   extern int diFree(struct inode *);
>   extern int diAlloc(struct inode *, bool, struct inode *);



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
