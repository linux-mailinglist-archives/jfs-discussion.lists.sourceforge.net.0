Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C241FA3C536
	for <lists+jfs-discussion@lfdr.de>; Wed, 19 Feb 2025 17:40:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tkn6M-0007Td-7R;
	Wed, 19 Feb 2025 16:39:10 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1tkn6A-0007T5-6l
 for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Feb 2025 16:38:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=J9kE95pHfPBVratHHadM+H97eYsnr9J/WN1VHgfmkIc=; b=cA7iPWNpwNvGwaaR853cpYvDwT
 EOddjRS8NqjTacvijR8j8MHU+ctVbb4DKaQIAD7rSAvNiNnTeEZVgo80OKpMmzFw9f+N9K41rYu3m
 mquX1ztYTDfewHvxIrMPTuzgUvw7HsFx0rHtbnGa4tjg0xWyr4WU9F7e35DP/S1zf9Uw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=J9kE95pHfPBVratHHadM+H97eYsnr9J/WN1VHgfmkIc=; b=Fx8EApl4vWVpKWrkv5NkG457v8
 4viveAe4dRKJwo1WXbOxVG8UCaZSYBj42oWPrB0yt3TNGkOdG09jK0bXmrBUWcZJcypzghTnA2Aia
 7uGvaJKvXiN2cLt4ZYzh+1U84fDq53s9N/ub+IF+OPZCMLMzHtWY9Dblv+sJ6S/QTC3g=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tkn69-0004qY-BK for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Feb 2025 16:38:58 +0000
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51JEBevF019315;
 Wed, 19 Feb 2025 16:38:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2023-11-20; bh=J9kE95pHfPBVratHHadM+H97eYsnr9J/WN1VHgfmkIc=; b=
 d9d0DCzcYAXL1DVdlcGz6Vfl6mHXOSPsLqBvpLmsSOXNsu5ueYcmIRxkeTIRrLzM
 GkWo2OK8NlWgSBDBR9lFI9xyH7kDngxwLjUBvyYLWVhwJM7OPHgBJJy0WK6SW3a/
 iNfkqwS0LMvDjDzkFSObkyGoEO4OISF/zfgl/T3aHZ1Hlark6UzdoUI5U8ip/Yar
 DyJNcGcxdGxixOK8Qa0BgT/pV6aRjfeyRMgTYBnlP+U1Ch4fgjdVP3fKwb+C4Tgc
 /gRsvVGiETyp9p9rugUvWHRUhwGP2iKjMoGCzkNiRwNQjd9mc52WANhs1ZTzZZlg
 ufWFf3YtzLYuButTj4FlRA==
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 44w00mt2ky-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 19 Feb 2025 16:38:45 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 51JFj0hT025353; Wed, 19 Feb 2025 16:38:44 GMT
Received: from nam04-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam04lp2040.outbound.protection.outlook.com [104.47.74.40])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 44w08wqr6s-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 19 Feb 2025 16:38:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nbf/8BC/YAh7DYX2Jp6GRxnYthQygZ/tAWYTigNG7jpMRTeeB/XFOdGGdEpGCKegJhCmeqT8OhW9LYldCCsAxtGW0CCeEw3Ows0uUhH6N6mW4N9YpB1DB62Fya0xKlvw+bEw5ETyA8Xc1jcz6d/PkW+jd+DSvj9XKUagwjlsUOwFZctTR35veUFt4jvjAKCQ/gqOB216z8NPyuMpf4h2BjUIZUWvysVXaorTkZHZ9pLmIncgQqB+yeDuiqcsPRIAyz8Aspo6e2C6J+PRxJ+BKRAKYEupN26L4tc4+VcpLBal3LXrwxogF/cgbm4oDKkbBr3qCWMmxIoUEU8yOAyl/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J9kE95pHfPBVratHHadM+H97eYsnr9J/WN1VHgfmkIc=;
 b=nxY10ZoQCdlVQxQ1EQOiWto0p26tZnbJ1uSdkn31VYJ72sWkJ8hneeRyW3Z1EnacKRkTz/q+kXzz9v1MU8QXeHKhS2CbMxeQzOXHxCR48xcfrTRfQ6mbOaIzgXmE4TFRrZ/YzpEkwMPNR2Kp8lDnRaM/JC0gFXzhD7ayjhB6KfNKnLvgbL/4M9ckjA9nNFgcvg3MOtsfpsKCvClBpRd3gi/ze8jPkLOJw2iMy/2cAJzueHolSk1Li01Z7zHLIKk5o8189gtPGRIZYcPO5qNwxtNc8e0LSB7MxK0NM21/ygYyxNxB4TSZ8frir1AV09rgExhjLrJFEuE4JFEtLvRevQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J9kE95pHfPBVratHHadM+H97eYsnr9J/WN1VHgfmkIc=;
 b=PzMh625RLiaDCBi//HegqOQxrWs6mEw+eujK7egYbjZ/cnFttEEBV+pFTSwafiHW8G7uShhk53xjl7F+qk66ItjV7jOcbz5eEgxTM5IUaaxxOOogoJy3vG3CFWJDKmqMoBtJZ53Y3Y9+LcE9Y/G0Ffeeham1JVlq950wRvs2THM=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by CYYPR10MB7650.namprd10.prod.outlook.com (2603:10b6:930:b8::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.18; Wed, 19 Feb
 2025 16:38:41 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb%6]) with mapi id 15.20.8445.020; Wed, 19 Feb 2025
 16:38:41 +0000
Message-ID: <b72fbe46-f910-4181-8d5b-fdc66d46700a@oracle.com>
Date: Wed, 19 Feb 2025 10:38:39 -0600
User-Agent: Mozilla Thunderbird
To: Edward Adam Davis <eadavis@qq.com>
References: <tencent_9D234F848D9AA5F68DB912075DB4DDDC1907@qq.com>
 <tencent_2E3A9E9B1B664BE21BCD2541BA63BB6E3308@qq.com>
Content-Language: en-US
In-Reply-To: <tencent_2E3A9E9B1B664BE21BCD2541BA63BB6E3308@qq.com>
X-ClientProxiedBy: CH0PR03CA0299.namprd03.prod.outlook.com
 (2603:10b6:610:e6::34) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|CYYPR10MB7650:EE_
X-MS-Office365-Filtering-Correlation-Id: da559c10-debb-4cee-6f20-08dd5103de12
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SUZnTU1kbm1MSm1IZW51aXhyNENkUDdoaTV0aUphdjNwSmV3T1FlRGpmMThD?=
 =?utf-8?B?ZGMwa1NZT1dINzNCdjZRdWRIeGZMMU9EOWR1Zk1WdzFBUEFQMThsdHJqSEo2?=
 =?utf-8?B?aHVMY3AzUWRLcEdBOXV0cFpBVUp6VVBUWThTRFhmRGh3eldqSzdtNlJ5YXl5?=
 =?utf-8?B?WWRKS1ZPOE5pcU5aczZSalkyUDdrRU0rTExINXJ4ZHMxbWRtNEV2U29ZRnJ1?=
 =?utf-8?B?RVc4YmVRRnZoamNIbjIrakNGN1h6dktwVEo1UUNRdVoyYkpwamVoMUdTa003?=
 =?utf-8?B?Qzh1Mi9JL3F5aUx2V1BZeUMzNHdlNURXWHNzaVpwbkFnSCtIQ2diV2Njc0hn?=
 =?utf-8?B?N1lnc0tneHBRc3VDK2dWL3pyN2lHeVJ6Rm1mRnQweWwrcnlnYlR6Qk96ZXg2?=
 =?utf-8?B?dWZyeTh6NENGRTlEM1hhSXZ6dkI1c1daNklRUTBJVGJXVTVpODVvV2tFeVor?=
 =?utf-8?B?Y0Rra3ZjQ1VtU21lQndveEtwbkVQQ2U5azFkSFVTZWpPbnhPVkY5SllpUFcx?=
 =?utf-8?B?ZTJPWld3UXlGZG1lTFcvZW1GS2xmNWJWbkwxTzlmc3ZnemhhTnBwZG5Qam5l?=
 =?utf-8?B?d2pTTDJFdVA3US9xVkhJakt0dXZPK3dYemt3SFp2T3Z0TVNxblBjcS9tZG1L?=
 =?utf-8?B?TU5ISkVRd3dpck82Um92eDg5QlZ4Y2Q3YjJUdjlyVytISWxyY05nWGlOZHVZ?=
 =?utf-8?B?QUdMM0NzUHg3RE1yY3NBT20yYjBnVk1FczBvUDh1V0JIK3kyNWhMNFF1ajEw?=
 =?utf-8?B?RHdEY2dYQkV6TG5CM2EyU3ErM1JFcDFJTkg5dmlTbmc0MGUralU3czV1NSs1?=
 =?utf-8?B?YWZvVjNDTUEvUjRqdWp3c2VHNFBBRVFkN2RBSjZUQnBNZEViKzUvOHc2d0Jq?=
 =?utf-8?B?YlE3RU9LMTIrU0FqbmIzWkxVZS9ZeFdZYkwwQVBWVis0S3RnNVVORTZPR05F?=
 =?utf-8?B?RFR5SExNT09DM1lwd1Flc2ZTeC9jdG90YnlMNDNSdFdGQlRMK0hlbDcveGJ4?=
 =?utf-8?B?ZGZ6N2dEZFRtRFRsbjRWbDIzbC9GaXU1UWFGbE1DdTdFNVc0VXM5cmdDWkJj?=
 =?utf-8?B?elVnZEg4cWV6YndDOHlUa1VrUmFZL0NjaE9sRFJYQUhpTFlDMVJ3TWVFT0sx?=
 =?utf-8?B?K3pPNnA4NWZRVHJqaWlNWGxwdEZlUGtpWlVQUXNEeE5tc1Z6bERmUUFhaFEy?=
 =?utf-8?B?V2NYdjJMSzB0K2Q4OCtOV3k4T0s4RExCRjA4SDNOaUNIMUZtb2JYbDkwTjIv?=
 =?utf-8?B?TzlsbkI1bWtxYWQ3MnBUcXdZdG5sNTF6NUVrZldQSU5EdjZuOTd6ZjBEREJr?=
 =?utf-8?B?RzV2Nk1hVUdDTVFyN2M0Wmc2TFB4My9VRXVKVzI3c2p0Ulc4Q0h1NzduME1Y?=
 =?utf-8?B?RFUweWozb1VpMmVzTTJrQjVUYzBQc0c1Wnl6dzVyYUFvd0NZYS80Yi9RNndL?=
 =?utf-8?B?VU9ra3IvdEZDNzBxeEJETWU2Tko2ZW5mSFdhdndyKzNVVm1MSE8wb3VZRlFH?=
 =?utf-8?B?UGNHYXpyc3UxcTA3RGxDUnkvQUtRYTF4Zng4WE14R1RkcEhRNmcvV3NGUUYz?=
 =?utf-8?B?blB5QTJBbDB5V1JGSzY3Uk9yNTZ1L2tZYlJ3Q2ZPL1dKbXQvcFhTRmQ5b0NY?=
 =?utf-8?B?Q0gwK21RaldNcCtWbVFpWnFNNVRJenI0VlY5TmF6R0dGdzdBTjk2cDZENFVw?=
 =?utf-8?B?YUZxbE1DWTBTcjhXaWkwcmtrS2J0TkNFYzNnMnRoVDNRcFV1ZGFJcXhsR0Vh?=
 =?utf-8?Q?jTTZ94Uv+0pxGPZLWtsAaHtMDWAbFF7Cl/rN9ub?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eHV3c0NtMGRRNjFXamUzKzMxZTZIbkNvbTBuczJhY2srVjlsTXpHSmp6YVRC?=
 =?utf-8?B?NUlHeW1XdjV0Ni9QejI1TDIrRWUvMFdoM0VvSGRieFFMUU5NNEhwV0FPOS9t?=
 =?utf-8?B?WGQ5bTdQOGM2dVl6cXc5YlR2Q3FBdkhhVDd6WGtITlVRai9Db0hTdGt4ck1l?=
 =?utf-8?B?a0w1cEhRT1B3VTlXWnZrTlYvNGVmYUl6RXRZQzBQMVBmdFVNQnFla3VQYW9o?=
 =?utf-8?B?U29GWWVEd2VidWpVU3JwU1prV29hclErdkpaM1ZzQUc5MTFqeThLdzJEQnlQ?=
 =?utf-8?B?cjBTYjBqNXFsM1JLQnBxWmd0OU9KbjZUcG1GUjRWNWw5Q1hmTjRvRTROb0FF?=
 =?utf-8?B?ZVNKSmtEYVhBa3VVNGovMlM3NTlGUUJtY2oxODB3Yy9CcjdzVlVtN0VDbEN0?=
 =?utf-8?B?clJkTTZ5Yis2djl0SWdYTkZIejROK3YxaGRGZVRsOWk1OU05eWxMMGtlaFNt?=
 =?utf-8?B?a0EwTkNCa2JwUmxWamlXUDBFUExxMlQ0cENWVWsyQkZ1SGNkL3lmTkFmVVN1?=
 =?utf-8?B?L3d2MEtHam1neGluaTQvRE5aQUwvcmZFTHVKYXJ2K0puTE1Vd01BOUQ5Um80?=
 =?utf-8?B?Q1Ywd0RtNE41UEVOckU3K2FadHhSeGhpWDRhRjRzU0h0QlpaWHUzK1R5Y0Vv?=
 =?utf-8?B?NUhDeUg0S1c4ODl5VndFZ1RFZDRmcXV1RGE0WkpjSlVaWEhMUkFNV1RqREky?=
 =?utf-8?B?WVRjZ1VjNUZHUGZNdjlFc3EzbzdoWisvYWVnZnhMb2ZIdVhtY2lWeFpxWGF5?=
 =?utf-8?B?NU1QTC9YTlJIM3o5am5qQUtrNC9VcEZJd0RocSt6NDFSU2NvaERTajlWb2dm?=
 =?utf-8?B?TXRIRERMcUJHbDdaZ3ZNT3ozUHZobVh6YXpJcGpUWGVrM1ZHNmVJMmZqTlpE?=
 =?utf-8?B?OFlQMTRyYzNLT25jdFk5eVNCWEptSWxFU0NvVEFzNmtSRTRvZTFKcEN4eHZB?=
 =?utf-8?B?am83N1BrVUlDdmFCZjZ1UzI1RUV6UEh2TG1USGE3QjhLYlp3aDFtNzFzaXho?=
 =?utf-8?B?TSs0R09DYWQ3ZHBNZ3NoS2UwZzRmWmgyajFNZnlwOFBjNFpScEVlWG9xWGlG?=
 =?utf-8?B?UWtyYnBMYlNnQkM4UFdJaXB0RnhUbk5QUU1KNm95VE4vREE1L0JOaHhXZ2Jz?=
 =?utf-8?B?TktDMW94WDZnL2tHSGo5K0VTL0lObDZ5TzYvZWNUQ09Da1RHZTFiVHowcnBT?=
 =?utf-8?B?WVlIZWVYY2JhWHE4aGZrZmwrWGhoZDlVa0NQby9LN1RtNEhuQ2hUY3A2ZUNG?=
 =?utf-8?B?TnFTTmpzUmMwMndUNy9XOTN0bVc5UXNQUHd4ZW5xbmR3Z1lWcWFFc25tOWJX?=
 =?utf-8?B?RXFuNEZQbWVhSE40ZHVNTU96eGZyV29tQ1VwWWM4VzFERTdyTHlNREVBOXV4?=
 =?utf-8?B?a3ZwWUpDMStnVHdBQ1RreHZkVWp0UWphbWFSVUFtcDJvY0NKRjlPL1haU0oz?=
 =?utf-8?B?aFRTNDZHVXB6OVIxb3FaeVBDa0tDVjFFcndBZmNod3dKSTg0a3doVE44WUdH?=
 =?utf-8?B?R1B2cVhPaFBxU2o0bExYdHQ3dTNQMjNZTmNIT1EvTU5VSDVmWmtuMEtoL0sw?=
 =?utf-8?B?WjhYcFV4ZlJycWkzZUNFYkN5WVVyOG8zRVZ2U213cGp5YmFQclVwUHJUOVVM?=
 =?utf-8?B?dW43REtSNEs0SU0zdFQ4RGVqb1ZWRGkrYm5FdTlPa1h5TktNU2VhcGdjaUQ2?=
 =?utf-8?B?UEU4ZitJVnZ6S1ZEWENoWDd0TTJ0K1daN2RNd1JYZ1hYYzVkbWVlVit1OEdz?=
 =?utf-8?B?QmVTTXJRZElGbjBWdVd4UHhuRzlRTHNlSzhVOVNyVHd0ZzJUdGVoNEg4dW1C?=
 =?utf-8?B?U09mSHZlZXAyR2laUzBDdkVWR2t0c2ltQ2xseVlDcVhKK2ROYmxGVlNzTVho?=
 =?utf-8?B?dGh3cWl6M3NrNU1ydEE0Z1J5Q3BlVEJCZnFaaFNqRFU0YU04NnUxUGZsTGpk?=
 =?utf-8?B?dEtoYUk0N00wR0ZPVWI5SzdleVJldjJKNDh2Z1JYbS93YzM4NTRlUkJMRE5K?=
 =?utf-8?B?eXo4bzlrc1lFT3JMSisrZTJCb21KaUFIZ0NpT0RsSlRHVG5EalJKQXhyc2R0?=
 =?utf-8?B?b3cwVmlKTFFUOXlBY3FLN0lQZDNyZWdPS2xtek5Rc0pkMUJleG1SdkFtMk05?=
 =?utf-8?B?am1PYXBDVmdhYmROZmt3MzlDNFJTdHZldmtYZWcvTUxWcWJyNmNDMUNnTGhh?=
 =?utf-8?B?c3c9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: i3KWVETTRRXPfxxZzw670rGjzLjOOX/4efT2sQesx2GfwhyWG9BJgPJBY9UBzipbNnnG6w4DdRoFSD+PDu/x3MN2C4tCLfG9s5y1lZq9paVN9wbbuR2+5RZ2KCOptUNULGUlpoDUYXR2V+cAoksbY3fQtliolaHU4beVslzBcoNRWSIvCyj0xO/OnWyM9wVqQpDb3S1qkAnbQZaljbsmJDIElIuxBCDi66p6U1ZAujQTfIYmBixPUvB1L4w1J/ve7bPTzX+3cbgA2gQzWLFgul4e2mDON0gOF4PpdS0iBvs6AuJG10T1pKCxs4Bso0vOiQKeRQwtyayxFOByCTHLI7kRJnSCYnCLFzTQtFMRlySSqbzmML0iNgvPoUDVGPkvV5aauO4uVZuWZhweKk5il3PR7JocFwzpsjMKn91xnhdSnBJMD1uoTsVhPeGXOLrcl6emOlZLn4h+69mQyDvOuInia6+/OccfxQqALDbRyruhkUtTgbhb092FJc5rwrlC7BY97Godc2ysEzLvVGX1rXn5kf0jArcmfw9SOUx8yWC4GOO/Q/SRREsnwmySAxbZK1j9poQgsE01fLki8J640+BjP7+2P0GMdx2yPwH+Vec=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da559c10-debb-4cee-6f20-08dd5103de12
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2025 16:38:41.0705 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +EnX3s5ykBAzOJpEBCqMpf75BDzqG6etLDTqdL/13kTfnz2vtPuZ2xwRyxcj0+U0ZQWWuJPMveClQzL06wHplif8NMxFwVsCxUFeSmznFpc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR10MB7650
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-19_07,2025-02-19_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 adultscore=0 bulkscore=0
 mlxscore=0 spamscore=0 mlxlogscore=999 phishscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2502100000
 definitions=main-2502190128
X-Proofpoint-ORIG-GUID: kgpq1aUhMHNau14DgnAwdySvB-e6e89y
X-Proofpoint-GUID: kgpq1aUhMHNau14DgnAwdySvB-e6e89y
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: I'm catching up on some long-ignored emails and have a
 concern
 about this patch. On 12/24/24 2:17AM, Edward Adam Davis via Jfs-discussion
 wrote: > syzbot report a deadlock in diFree. [1] > > When calling
 "ioctl$LOOP_SET_STATUS64", 
 the offset value passed in is 4, > which does not [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.177.32 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [205.220.177.32 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [205.220.177.32 listed in bl.score.senderscore.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.220.177.32 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1tkn69-0004qY-BK
Subject: Re: [Jfs-discussion] [PATCH V2] jfs: Prevent copying of nlink with
 value 0 from disk inode
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
Cc: syzbot+355da3b3a74881008e8f@syzkaller.appspotmail.com,
 jfs-discussion@lists.sourceforge.net, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

I'm catching up on some long-ignored emails and have a concern about 
this patch.

On 12/24/24 2:17AM, Edward Adam Davis via Jfs-discussion wrote:
> syzbot report a deadlock in diFree. [1]
> 
> When calling "ioctl$LOOP_SET_STATUS64", the offset value passed in is 4,
> which does not match the mounted loop device, causing the mapping of the
> mounted loop device to be invalidated.
> 
> When creating the directory and creating the inode of iag in diReadSpecial(),
> read the page of fixed disk inode (AIT) in raw mode in read_metapage(), the
> metapage data it returns is corrupted, which causes the nlink value of 0 to be
> assigned to the iag inode when executing copy_from_dinode(), which ultimately
> causes a deadlock when entering diFree().

I'm not quite sure if it's always a problem to read an inode with 
i_nlink = 0, so I think it may be safer to move this check from 
copy_from_dinode to diReadSpecial.


Shaggy
> 
> To avoid this, first check the nlink value of dinode before setting iag inode.
> 
> [1]
> WARNING: possible recursive locking detected
> 6.12.0-rc7-syzkaller-00212-g4a5df3796467 #0 Not tainted
> --------------------------------------------
> syz-executor301/5309 is trying to acquire lock:
> ffff888044548920 (&(imap->im_aglock[index])){+.+.}-{3:3}, at: diFree+0x37c/0x2fb0 fs/jfs/jfs_imap.c:889
> 
> but task is already holding lock:
> ffff888044548920 (&(imap->im_aglock[index])){+.+.}-{3:3}, at: diAlloc+0x1b6/0x1630
> 
> other info that might help us debug this:
>   Possible unsafe locking scenario:
> 
>         CPU0
>         ----
>    lock(&(imap->im_aglock[index]));
>    lock(&(imap->im_aglock[index]));
> 
>   *** DEADLOCK ***
> 
>   May be due to missing lock nesting notation
> 
> 5 locks held by syz-executor301/5309:
>   #0: ffff8880422a4420 (sb_writers#9){.+.+}-{0:0}, at: mnt_want_write+0x3f/0x90 fs/namespace.c:515
>   #1: ffff88804755b390 (&type->i_mutex_dir_key#6/1){+.+.}-{3:3}, at: inode_lock_nested include/linux/fs.h:850 [inline]
>   #1: ffff88804755b390 (&type->i_mutex_dir_key#6/1){+.+.}-{3:3}, at: filename_create+0x260/0x540 fs/namei.c:4026
>   #2: ffff888044548920 (&(imap->im_aglock[index])){+.+.}-{3:3}, at: diAlloc+0x1b6/0x1630
>   #3: ffff888044548890 (&imap->im_freelock){+.+.}-{3:3}, at: diNewIAG fs/jfs/jfs_imap.c:2460 [inline]
>   #3: ffff888044548890 (&imap->im_freelock){+.+.}-{3:3}, at: diAllocExt fs/jfs/jfs_imap.c:1905 [inline]
>   #3: ffff888044548890 (&imap->im_freelock){+.+.}-{3:3}, at: diAllocAG+0x4b7/0x1e50 fs/jfs/jfs_imap.c:1669
>   #4: ffff88804755a618 (&jfs_ip->rdwrlock/1){++++}-{3:3}, at: diNewIAG fs/jfs/jfs_imap.c:2477 [inline]
>   #4: ffff88804755a618 (&jfs_ip->rdwrlock/1){++++}-{3:3}, at: diAllocExt fs/jfs/jfs_imap.c:1905 [inline]
>   #4: ffff88804755a618 (&jfs_ip->rdwrlock/1){++++}-{3:3}, at: diAllocAG+0x869/0x1e50 fs/jfs/jfs_imap.c:1669
> 
> stack backtrace:
> CPU: 0 UID: 0 PID: 5309 Comm: syz-executor301 Not tainted 6.12.0-rc7-syzkaller-00212-g4a5df3796467 #0
> Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2~bpo12+1 04/01/2014
> Call Trace:
>   <TASK>
>   __dump_stack lib/dump_stack.c:94 [inline]
>   dump_stack_lvl+0x241/0x360 lib/dump_stack.c:120
>   print_deadlock_bug+0x483/0x620 kernel/locking/lockdep.c:3037
>   check_deadlock kernel/locking/lockdep.c:3089 [inline]
>   validate_chain+0x15e2/0x5920 kernel/locking/lockdep.c:3891
>   __lock_acquire+0x1384/0x2050 kernel/locking/lockdep.c:5202
>   lock_acquire+0x1ed/0x550 kernel/locking/lockdep.c:5825
>   __mutex_lock_common kernel/locking/mutex.c:608 [inline]
>   __mutex_lock+0x136/0xd70 kernel/locking/mutex.c:752
>   diFree+0x37c/0x2fb0 fs/jfs/jfs_imap.c:889
>   jfs_evict_inode+0x32d/0x440 fs/jfs/inode.c:156
>   evict+0x4e8/0x9b0 fs/inode.c:725
>   diFreeSpecial fs/jfs/jfs_imap.c:552 [inline]
>   duplicateIXtree+0x3c6/0x550 fs/jfs/jfs_imap.c:3022
>   diNewIAG fs/jfs/jfs_imap.c:2597 [inline]
>   diAllocExt fs/jfs/jfs_imap.c:1905 [inline]
>   diAllocAG+0x17dc/0x1e50 fs/jfs/jfs_imap.c:1669
>   diAlloc+0x1d2/0x1630 fs/jfs/jfs_imap.c:1590
>   ialloc+0x8f/0x900 fs/jfs/jfs_inode.c:56
>   jfs_mkdir+0x1c5/0xba0 fs/jfs/namei.c:225
>   vfs_mkdir+0x2f9/0x4f0 fs/namei.c:4257
>   do_mkdirat+0x264/0x3a0 fs/namei.c:4280
>   __do_sys_mkdirat fs/namei.c:4295 [inline]
>   __se_sys_mkdirat fs/namei.c:4293 [inline]
>   __x64_sys_mkdirat+0x87/0xa0 fs/namei.c:4293
>   do_syscall_x64 arch/x86/entry/common.c:52 [inline]
>   do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
>   entry_SYSCALL_64_after_hwframe+0x77/0x7f
> 
> Reported-by: syzbot+355da3b3a74881008e8f@syzkaller.appspotmail.com
> Closes: https://syzkaller.appspot.com/bug?extid=355da3b3a74881008e8f
> Signed-off-by: Edward Adam Davis <eadavis@qq.com>
> ---
> V1 -> V2: if the nlink of disk inode is 0 return -EIO
> 
>   fs/jfs/jfs_imap.c | 8 +++++++-
>   1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
> index a360b24ed320..b3146e335782 100644
> --- a/fs/jfs/jfs_imap.c
> +++ b/fs/jfs/jfs_imap.c
> @@ -3035,6 +3035,7 @@ static int copy_from_dinode(struct dinode * dip, struct inode *ip)
>   {
>   	struct jfs_inode_info *jfs_ip = JFS_IP(ip);
>   	struct jfs_sb_info *sbi = JFS_SBI(ip->i_sb);
> +	u32 di_nlink;
>   
>   	jfs_ip->fileset = le32_to_cpu(dip->di_fileset);
>   	jfs_ip->mode2 = le32_to_cpu(dip->di_mode);
> @@ -3053,7 +3054,12 @@ static int copy_from_dinode(struct dinode * dip, struct inode *ip)
>   				ip->i_mode |= 0001;
>   		}
>   	}
> -	set_nlink(ip, le32_to_cpu(dip->di_nlink));
> +
> +	di_nlink = le32_to_cpu(dip->di_nlink);
> +	if (!di_nlink)
> +		return -EIO;
> +
> +	set_nlink(ip, di_nlink);
>   
>   	jfs_ip->saved_uid = make_kuid(&init_user_ns, le32_to_cpu(dip->di_uid));
>   	if (!uid_valid(sbi->uid))



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
