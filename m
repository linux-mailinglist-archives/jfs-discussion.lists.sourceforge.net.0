Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8FCA3E87B
	for <lists+jfs-discussion@lfdr.de>; Fri, 21 Feb 2025 00:29:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tlFyg-0006sH-N1;
	Thu, 20 Feb 2025 23:29:10 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1tlFyf-0006sB-8m
 for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Feb 2025 23:29:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dTIWcoea5jyuSP+KCLd/gAbh+q6ofn3UO3hP693mTbA=; b=lq339uQN1rebXjCMmVaZ6yyn4k
 ov1FvPIgp/qaJ2KXh+PwdkfEH3z4XRsRxiqLkJhRbf8RvTp6++N9qOQkdQggDPhIp8DOMjMJ2/Ty7
 yc3kE7+kvUA0R2bZBLwlmqMMFy687dArA4Yczo5W3HQRbn70gCXJo4b0Kwg2AeRr3IiA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dTIWcoea5jyuSP+KCLd/gAbh+q6ofn3UO3hP693mTbA=; b=hrBD8nzR7Ldwj/0LkdhVq9iSSn
 toOinVvjWB9WHoFVFPH4EQxR561Njp+U98l4LKNJHSJbJJzQOAxqeWPAcyAH+bsrq1rMLe1HCqZga
 rENvc8QDA+coDgVleMuC4gNEz6j5VeRgHfglrBrPdUkREZMG29RaBBb0Dh7p8l2/32qs=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tlFyd-0006Jl-5G for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Feb 2025 23:29:08 +0000
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51KLrYE4014125;
 Thu, 20 Feb 2025 23:28:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2023-11-20; bh=dTIWcoea5jyuSP+KCLd/gAbh+q6ofn3UO3hP693mTbA=; b=
 IZ0IVFe2L0s+ehSdTgsNT0I6nyGQHkSNO2LX7FUWS1j7c9KsD8FDV13iHomu9Q2q
 udYo51nWV/WAiFgD1tl7R5s4W1azjADqFGb676aEFZ+Rlj00rz4Aaiwlvr34HCM8
 WZU0Nt/zaFJ/URGVOcPTBBsMAQ30BrtLgQAisX3jEkU/LzYiX624dcXPNecCEgt1
 EzmS/nYEyD62Yy4XQXD/Pk7hd+6AvfxHLmTB6PXkmsVAJyUFnRPrnpCt1hUq4zRq
 GzdCoy4kK7jbSulbQpHBCoiFBGaWuuBWwcqRT6Y0agtwYBPqQ6WCCWHhFn/VMsen
 OtPm7Yvyo0txrKHam2AZVA==
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 44w00n58gk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 20 Feb 2025 23:28:55 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 51KN9lB4010593; Thu, 20 Feb 2025 23:28:55 GMT
Received: from nam12-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2171.outbound.protection.outlook.com [104.47.55.171])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 44w07fqgq7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 20 Feb 2025 23:28:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JmawsnkTkJFy3nbKTAaqKe2CnMklOTr+i45qPNk4aCWqFCBakwINlWNttomyhsX7G7iAmJBel/BxISO7KxdRfzlmzOInHSOzzZk5tixwUj7Ni4ZDFd+j1iqnDxude8ipipkG14rvLPbm5bClrbu7Beai8f96oBuKq/u8ypR8ET7mPOzhl4yLelyEEs0SPI5jsDyvPVD2ivJLMBThL5IehDc893jF5NROBKSIOV7z7U9TGoUYqbznzOJGzYT1kkokmlNATAenr7tHg9KaYV/85gsXD6VXtFn+z4gAaaa82qW33lylNbf8Xz5gXhmCBb/UdLG9uPSm0cCzD0ND/OhIfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dTIWcoea5jyuSP+KCLd/gAbh+q6ofn3UO3hP693mTbA=;
 b=oQ7RlLPGm7whIDG9GRBzZgCvflI+GEBKhNR37gVIoWJXJXWokOBTw0+OuD3anBtAk/1rYydmO0l9M1V8jEwt0FgPREqslxuqDo2es0YWtFGCWmvIpXF1ayhh2JKtx8sBJrckyNFqzO0nt+7TXJKmtAeg/2UGSS7KKt6kA6CElb7IRu00piNBJJwrEU0WG2tyaHjYz36LGELHwl6AdwXgU52TBQnue0yFJ7uknd4M7jvTUXW2v+i/VCh7Xl7Ii0PHjGjXGyPu/FjbItS4UtwiToQQ4+Lja7aQ8fGdu18UBlJulQf2jOhtDXQGmCeygsOE2MPn+vxMbCf0/zqHHXzmFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dTIWcoea5jyuSP+KCLd/gAbh+q6ofn3UO3hP693mTbA=;
 b=wO/oAGusQ4pqMVBm3PyELayuUmHVVcAfF4Mac4l9oA8QXq33qTE6/f4KN+nwh1caxDvKSa7RXprl9iYYVyAWg5cpv2WsMUuu/UBgAtZ0chkxrYF1su4ymMBIlSOv9/9PCneHJ3nCvTAQPecD6Wv37LGdQAhVegNKYQsQ8Dsn0GI=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by LV8PR10MB7822.namprd10.prod.outlook.com (2603:10b6:408:1e8::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.16; Thu, 20 Feb
 2025 23:28:50 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb%6]) with mapi id 15.20.8445.020; Thu, 20 Feb 2025
 23:28:50 +0000
Message-ID: <47c49424-e24b-498a-9115-ace3fa4880e3@oracle.com>
Date: Thu, 20 Feb 2025 17:28:49 -0600
User-Agent: Mozilla Thunderbird
To: Edward Adam Davis <eadavis@qq.com>
References: <53b75296-d73e-40fe-88dd-9103f3edd3c1@oracle.com>
 <tencent_AB576D46C3736DE3606961C3B7844CF76A05@qq.com>
Content-Language: en-US
In-Reply-To: <tencent_AB576D46C3736DE3606961C3B7844CF76A05@qq.com>
X-ClientProxiedBy: CH2PR05CA0008.namprd05.prod.outlook.com (2603:10b6:610::21)
 To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|LV8PR10MB7822:EE_
X-MS-Office365-Filtering-Correlation-Id: 99bc4c69-e6cb-4dfb-ce84-08dd52065503
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S3prT3F2ZEZMeHo1VXZWUUNrYWNlQms3eVRERy9hSHgyQk1EdmV1cXd2M2pt?=
 =?utf-8?B?aXhSTHFLbnhSdHFuOWlKODNncEduN1NydzNVUHpFdU13UnZoellkUmF0RE83?=
 =?utf-8?B?RkhHVWNmSmpwR0lra1FzaFFIOExuYitNamRBMnZVbW1Ud2grOGJyQ05rRmR4?=
 =?utf-8?B?dVdFY3A5SzNsTTVDT01kTzVYVWphNHFWRUtseFU5NFFURFU2dVNnbG84RVd4?=
 =?utf-8?B?V0xnRVZMeXZidVdLVUF6Nk11UlE5R1ZPRDQwYkxsWHc3dTgwZDBEUThGRkVw?=
 =?utf-8?B?WklReFUvdWFWbTFEWXlpTXRjZ1RnM1R5MFVBN3hDVDAvV2xYdjJQQUpjVXE0?=
 =?utf-8?B?a0o1T1I3K0grejZ6dWV4d2t0V3lOQ3g5alFod0RYMUJTaUVPeGk1RWdkL24y?=
 =?utf-8?B?OGdkaEJZUVYyWXdMMkJOZDRCOFhLR3dyeVNxMDAwU2x2TWw2RDUzekhheFI3?=
 =?utf-8?B?b0ZTbVJyUlI2QzhQRlhzMmwwcDk1Z2VXTGxYTXAxRnVERWV3R3YwWklIR2JH?=
 =?utf-8?B?R01TQmZ4dkd6WHFydFNnZVVsSCszOWZWdVpIODBTbkcwZjBSbGhBVjhYeHg1?=
 =?utf-8?B?YTNDRUdGcjNaMjQycFkvcjJhRlFMOHRlSGxBSkR5ait3VWRDMWFPVlBBR0x5?=
 =?utf-8?B?Q201SjNiYTVZNHBuMHg2SkhJeTYxMGtJZkV6Smc4RUxGSWJscy92dzhxM0ZZ?=
 =?utf-8?B?ck52dlhWVnRCWEtDNHFqc2hPRU4xWnlIdmRuR2lubW9sSHBNU1Jpb1k3STBG?=
 =?utf-8?B?c1RhNStZN3hmYy90THlYQlJNalZTaWRmam92cG9EZXRodCtyZjNqUS9BTWlH?=
 =?utf-8?B?REFoK3BoWGJsYU5hdHNGR1FNMTYzN1hYYXlNeXV6V1M0UGpsQ2JKWTF3TzZP?=
 =?utf-8?B?WEhkS2J2em9jaG0zcmpHR2JhUytnYldTMURDUTZXeHFyMVZIeFpjYXdiRklD?=
 =?utf-8?B?R3U5THhuZitGVFlUajZHZ2RFWlB6bjdESjRTaEUrWnVwME1YVTB4akhoNVVN?=
 =?utf-8?B?SlIyL09LalNCS25pdlo4WmtUbTdEY3NNL0F0bCtYR3JJc2NyYlZhYU9naTk3?=
 =?utf-8?B?d24ybXFhZzBQaDYrdkRlRDZlbHRleENqQTBhYjN4and3NDZENHUzaWtEQVVN?=
 =?utf-8?B?aytFY0pPSUMvVmlBbkFvQ1RpUzFwRGhzUktIRUdkNjErV3NxaGxiOXhNdElZ?=
 =?utf-8?B?emE1ekVRZC95ajNJSzJEcUpWbXBSK3R1QUhKcVpyaGZwM09OdGdwZk5MT3ZZ?=
 =?utf-8?B?TkRaa1JqVzE1S1dJbFcxcmcxbVM1bWl0bTVrMFN4dExuRmhFWTl1ZWRZLzhW?=
 =?utf-8?B?eDR5cm10cFVCRGFrOUNUMWw0TDd6QkE3clY3N29BM2Q1TFZkQWZuc1ZHaHl5?=
 =?utf-8?B?MDRJWjJyS1NzYjljZnpWeHB4eU10NC9vUGg3UGRjTjd6QWpDOFJTZGFnWFV6?=
 =?utf-8?B?bW1ibTN2dW1pb2FRN28vZ1BpQ3NCQXp5aUw1cHVtb21VRFk5WndxVEY5ejVW?=
 =?utf-8?B?djl5WEw4ZFhCY1llSmx5T1p1S2N2THRMMXgzeHRabVg5SFBPZ2lxOVBxeEZW?=
 =?utf-8?B?VnJ6RzJUY3dueWo4ZzBXeHQrNTBCU1hPMTY3MndiajhhT2ZLbkNBR3EzNTln?=
 =?utf-8?B?QkdnMU9aNFM3TWxnNks1SitDSC9GaEkxOTB1L1d1bzVDZjNOd1BCK0U1bDBJ?=
 =?utf-8?B?RnVGN3NTMnBnMDByYU9qckNrbS85YmVVZ3dZRHU3cWwyV25Cak02ek9PaThH?=
 =?utf-8?B?RXhoelhrVk5TMlRaQlJLNHpOVG1OWFhqL3U4SzYvd2phYnBZckRtYTZCWDFI?=
 =?utf-8?B?Zzh1Q0cvejQvbVpqNmsrdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K2Y5a2ZuL0QwNVJnVm41RkhFalN2eVhPeFNwU1NueEovUjIvT0RtVy9jTDUw?=
 =?utf-8?B?QVJXa0FsL29RMEd5YjFLK2RqUldXZW1wUTZja3R0NzEySUVxU1N0YU9MS0Nw?=
 =?utf-8?B?cFQraWdNV01YU2VqYTBVWGtVdGRKNVAvVGdoWHg4emJuWnkvbHVqTUl1T09q?=
 =?utf-8?B?aWxrNmpQcGNoWGJYS1RMQ1RuV1IwMjBSeklYSGZ0YnJNVDFiSk9jYmRrMFIv?=
 =?utf-8?B?WkZvaGo2UjlIb3N5bUdLQlJTQTlhaEI4N1dvKy83UkRlUTRkZEpmcHB5eEZ6?=
 =?utf-8?B?Rm13R1pXSS9Wb3FTWU5CSmM3QzE5Q2FEc0dSdnpKcEQ3TjRkSWpVd3NjTS9S?=
 =?utf-8?B?RXd3aUh2REdYWWZIN2tUSnoxVWQxTEZsVWdxUytVSHUzV3hjTDJBa3EvTFJh?=
 =?utf-8?B?THJXWEQ5Z0JVRUlLTmR0eUQwZi9ZY2lpZUo2MWQrYjRVWlRtKzY3MjRPOEJh?=
 =?utf-8?B?NTZkRkk1cHFnd3NXNktqU2pVZWFwR1pZR3c5Q1BoSVNTcHJwWTY3ZXpOSitP?=
 =?utf-8?B?RFhuNC9Sd2FTbzEvM0kwNlhBU1NYS3VtSG0vUWk5NzdFMHJlbW9ZQnZ6ZXRI?=
 =?utf-8?B?SUdCM0pYMmQ0eUpUbVNXU1RGRGFiRGZHLzliMFVZR21DMnEwcUUyZW41dmcx?=
 =?utf-8?B?dWI2clY1SDVMZ3VZSmExbEpvM3hRWWJDT0tuRkpKUThnQzA4NFdSZVRoR0FB?=
 =?utf-8?B?UDNJcXRBSmZUQVRtaXFVenZvcWVub1pydmo4eDg3WGFPd2E0Tm9JbGNSMXh6?=
 =?utf-8?B?NWVPVXEzcUUyRGZLOFhtSDNHM0tNVDkwdURiMURFTXZIRjNCeFphejRUTi8z?=
 =?utf-8?B?VG92ZjU1aTZYRkxEbmk5ZFpwT0NyV2NybGs4WjhhaEhjN21wM08wMXdGbE9Q?=
 =?utf-8?B?RGVSeFVQT3l3dnYyRzQxeUFrTTh6VzUrODJPQ3N1Q1ZDY21GZDNCUzdkNGVQ?=
 =?utf-8?B?aE1OTHh5NHRsY2ZMaExDUklOci81bVRPQUhOR3QzVVpTUjE0eW9ua092T3hY?=
 =?utf-8?B?bUllL0w2TWtGeE1aVyswenVGdU5sdGJzQmZralhva2Zub0UrdDNkdFpRcTFv?=
 =?utf-8?B?YThIb1hYTGgvbDN6dkNKNUNGaDhKSVB0RXQzQVpmZ0lkNXN6ZDRUOXFOMXBU?=
 =?utf-8?B?anp4QlA3b0Q1RkIrS1h6T3dJRjFCbEgwZFpoanRpdzlFbU93TDBrZ3JrOFBC?=
 =?utf-8?B?YU1TQTAzeHJ5Wm1yenBjb2hEditNd25oSmpkMXRYTDlyQk1OTkhLYytiZDY3?=
 =?utf-8?B?bUJiemFhQ29hQVpSQjMreHdCVWc3ZEV2VXpNUEk4M005TUJjTHI3WXFtbDVG?=
 =?utf-8?B?RVBvZmVxRVZsZlZibEwvcmk3eko1U3dDWGF2ZmZXWldBQUdVOFdBaFhDb0pi?=
 =?utf-8?B?OGlKQUUxUVBjUEdWR1g1Q2pwRmdFY1p6LzNwOFZpWFRSM3BPWGE3ZGVmZXcy?=
 =?utf-8?B?T0NRZzY5dTljOTRKc25xbVhwZ3gyQVkvK1phSFh1dUpEclJJVTh0Vkw2aXgv?=
 =?utf-8?B?TVBhakVIYXkvTXAyK1BqWVFPNmt0eFE2YWJjaDRQZXZrdlM1L3o1SXBHK09D?=
 =?utf-8?B?Z1c3WGNuYTJhK3hDZzNzaFpua2pXVE1zZDd2ZzIvUU1wVFNtYWt5YjhhWXBN?=
 =?utf-8?B?TGJ0SWNsN055Z2J0MzJpSDdPWEw0ODNZZW5aTnRBWUJQTm5xb1l4dWxOWUZD?=
 =?utf-8?B?RGUySHQ5ZTlCdGF1b1V4cGhONk0xYXUvRDVycFBDTDJKMG56VytEYklSMFpG?=
 =?utf-8?B?SlFaTlJNNWtjY1lwWTBTdkNFM29abnUzdytmRE0zc1JpMU5wcW1HSVc4T1Zi?=
 =?utf-8?B?K0FSaWNZdFp0a0dwOU55NUE1TlYyWkhBdytaZlI2dHBZblJUZWZlOUFWU0hJ?=
 =?utf-8?B?S0FmZ3N2dG9KaXNFNFpuN1U5NmxmbDNlcmw0NEtTa0IzNkFmRE55SzBOM1RE?=
 =?utf-8?B?b2NkR0hFWjZJZGVVOExZT0xHM1dHWmNXcm9DU09KTm5YNWc3YVlpUXVpVzV4?=
 =?utf-8?B?cWZSZWV3YXBMaFROeEt1S0d5aUx2WDZzQWhTam52QURmZFErRkUxdERBK1Bw?=
 =?utf-8?B?ZWFFaGs5Q2JiU052SG84UkhEK0dCS2RnOGVwS1R2YWhobnZodXlXY1VERVZy?=
 =?utf-8?B?V2ppQ2lBRm8ybkh4dEc3Vjdnb0VMTmllWEJGeWg3L2dDR3BDRGJZbEZ4UjBi?=
 =?utf-8?B?MVE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: BGCfBG2a95HOR51Zc8XCWgWc6aWVRiWz9eNL4IBKYa1jMWhR+N8wI9e4vsn+n3VZeefB2XbSLaKzh/EPs29xFPrMGmrIWnx9GRy+R7V9SrT8Q2hj2rtYkd9jTIZl47HX/BNfTbjy5alL5J2ONb1vGp65FotD6NxVaxbCXk3xUlI1MQiWrVaCwwtBkDNbwpRrpM/2hp0jvwC9gNWOweOucQSyXYKI25isueki1Z6yjw7eqoez3VF+JiZpYpbnJxcLK4mE7hcdV/clIzaJEYoGBewSwo+JpUTby0yl44IXQ0UpEITPoTgVojRnZbfSAP4p7utmUjXH7+a2ELjhuYDc+7Z7cc7ivIWJMgG63MEuvb75K4s8FVhLABJGWMmZypA1dXb/Aw3AgsElXjlxVAqk8UxoJ2+wCfa54cO218ZA+sAnZwDaArTb23ZN56rjp0vmSFGtdWuwywT/lUZiz5P1HAOPUbH95/FeSn+KYyo5IYzBC7N7Usf+4QwRRj0KvOhBFIqzfKoJl0PoEmFjiv4Tnwh7rQYANzb6SomovXUrQIMAicyUJRNRLy3rz9r8DgBu+s6yk2t9wIUQFp5T5Hi7PsSHTgIk61yl+rw20AeNpGM=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99bc4c69-e6cb-4dfb-ce84-08dd52065503
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2025 23:28:50.7337 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: z00KjGpt3rjFptngzZMRxUxlR3RzOLxocCII0EFtsZXZaI4DNOKhHggYcaDmOuixtArlvv/NxLZUGIz1YV/eIC8qWWN6NAP1RHOERfnEMow=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR10MB7822
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-20_09,2025-02-20_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 adultscore=0 bulkscore=0
 mlxlogscore=999 malwarescore=0 suspectscore=0 spamscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2502100000
 definitions=main-2502200156
X-Proofpoint-ORIG-GUID: XFo5a1HrriH4U6o8SFOuHNI-qQoi4k3V
X-Proofpoint-GUID: XFo5a1HrriH4U6o8SFOuHNI-qQoi4k3V
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2/20/25 5:22PM, Edward Adam Davis wrote: > On Thu, 20 Feb
 2025 10:15:04 -0600, Dave Kleikamp wrote: >>> syzbot report a deadlock in
 diFree. [1] >>> >>> When calling "ioctl$LOOP_SET_STATUS64", the o [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [205.220.177.32 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [205.220.177.32 listed in bl.score.senderscore.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.220.177.32 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.177.32 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1tlFyd-0006Jl-5G
Subject: Re: [Jfs-discussion] [PATCH V3] jfs: Prevent copying of nlink with
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

On 2/20/25 5:22PM, Edward Adam Davis wrote:
> On Thu, 20 Feb 2025 10:15:04 -0600, Dave Kleikamp wrote:
>>> syzbot report a deadlock in diFree. [1]
>>>
>>> When calling "ioctl$LOOP_SET_STATUS64", the offset value passed in is 4,
>>> which does not match the mounted loop device, causing the mapping of the
>>> mounted loop device to be invalidated.
>>>
>>> When creating the directory and creating the inode of iag in diReadSpecial(),
>>> read the page of fixed disk inode (AIT) in raw mode in read_metapage(), the
>>> metapage data it returns is corrupted, which causes the nlink value of 0 to be
>>> assigned to the iag inode when executing copy_from_dinode(), which ultimately
>>> causes a deadlock when entering diFree().
>>>
>>> To avoid this, first check the nlink value of dinode before setting iag inode.
>>>
>>> [1]
>>> WARNING: possible recursive locking detected
>>> 6.12.0-rc7-syzkaller-00212-g4a5df3796467 #0 Not tainted
>>> --------------------------------------------
>>> syz-executor301/5309 is trying to acquire lock:
>>> ffff888044548920 (&(imap->im_aglock[index])){+.+.}-{3:3}, at: diFree+0x37c/0x2fb0 fs/jfs/jfs_imap.c:889
>>>
>>> but task is already holding lock:
>>> ffff888044548920 (&(imap->im_aglock[index])){+.+.}-{3:3}, at: diAlloc+0x1b6/0x1630
>>>
>>> other info that might help us debug this:
>>>    Possible unsafe locking scenario:
>>>
>>>          CPU0
>>>          ----
>>>     lock(&(imap->im_aglock[index]));
>>>     lock(&(imap->im_aglock[index]));
>>>
>>>    *** DEADLOCK ***
>>>
>>>    May be due to missing lock nesting notation
>>>
>>> 5 locks held by syz-executor301/5309:
>>>    #0: ffff8880422a4420 (sb_writers#9){.+.+}-{0:0}, at: mnt_want_write+0x3f/0x90 fs/namespace.c:515
>>>    #1: ffff88804755b390 (&type->i_mutex_dir_key#6/1){+.+.}-{3:3}, at: inode_lock_nested include/linux/fs.h:850 [inline]
>>>    #1: ffff88804755b390 (&type->i_mutex_dir_key#6/1){+.+.}-{3:3}, at: filename_create+0x260/0x540 fs/namei.c:4026
>>>    #2: ffff888044548920 (&(imap->im_aglock[index])){+.+.}-{3:3}, at: diAlloc+0x1b6/0x1630
>>>    #3: ffff888044548890 (&imap->im_freelock){+.+.}-{3:3}, at: diNewIAG fs/jfs/jfs_imap.c:2460 [inline]
>>>    #3: ffff888044548890 (&imap->im_freelock){+.+.}-{3:3}, at: diAllocExt fs/jfs/jfs_imap.c:1905 [inline]
>>>    #3: ffff888044548890 (&imap->im_freelock){+.+.}-{3:3}, at: diAllocAG+0x4b7/0x1e50 fs/jfs/jfs_imap.c:1669
>>>    #4: ffff88804755a618 (&jfs_ip->rdwrlock/1){++++}-{3:3}, at: diNewIAG fs/jfs/jfs_imap.c:2477 [inline]
>>>    #4: ffff88804755a618 (&jfs_ip->rdwrlock/1){++++}-{3:3}, at: diAllocExt fs/jfs/jfs_imap.c:1905 [inline]
>>>    #4: ffff88804755a618 (&jfs_ip->rdwrlock/1){++++}-{3:3}, at: diAllocAG+0x869/0x1e50 fs/jfs/jfs_imap.c:1669
>>>
>>> stack backtrace:
>>> CPU: 0 UID: 0 PID: 5309 Comm: syz-executor301 Not tainted 6.12.0-rc7-syzkaller-00212-g4a5df3796467 #0
>>> Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2~bpo12+1 04/01/2014
>>> Call Trace:
>>>    <TASK>
>>>    __dump_stack lib/dump_stack.c:94 [inline]
>>>    dump_stack_lvl+0x241/0x360 lib/dump_stack.c:120
>>>    print_deadlock_bug+0x483/0x620 kernel/locking/lockdep.c:3037
>>>    check_deadlock kernel/locking/lockdep.c:3089 [inline]
>>>    validate_chain+0x15e2/0x5920 kernel/locking/lockdep.c:3891
>>>    __lock_acquire+0x1384/0x2050 kernel/locking/lockdep.c:5202
>>>    lock_acquire+0x1ed/0x550 kernel/locking/lockdep.c:5825
>>>    __mutex_lock_common kernel/locking/mutex.c:608 [inline]
>>>    __mutex_lock+0x136/0xd70 kernel/locking/mutex.c:752
>>>    diFree+0x37c/0x2fb0 fs/jfs/jfs_imap.c:889
>>>    jfs_evict_inode+0x32d/0x440 fs/jfs/inode.c:156
>>>    evict+0x4e8/0x9b0 fs/inode.c:725
>>>    diFreeSpecial fs/jfs/jfs_imap.c:552 [inline]
>>>    duplicateIXtree+0x3c6/0x550 fs/jfs/jfs_imap.c:3022
>>>    diNewIAG fs/jfs/jfs_imap.c:2597 [inline]
>>>    diAllocExt fs/jfs/jfs_imap.c:1905 [inline]
>>>    diAllocAG+0x17dc/0x1e50 fs/jfs/jfs_imap.c:1669
>>>    diAlloc+0x1d2/0x1630 fs/jfs/jfs_imap.c:1590
>>>    ialloc+0x8f/0x900 fs/jfs/jfs_inode.c:56
>>>    jfs_mkdir+0x1c5/0xba0 fs/jfs/namei.c:225
>>>    vfs_mkdir+0x2f9/0x4f0 fs/namei.c:4257
>>>    do_mkdirat+0x264/0x3a0 fs/namei.c:4280
>>>    __do_sys_mkdirat fs/namei.c:4295 [inline]
>>>    __se_sys_mkdirat fs/namei.c:4293 [inline]
>>>    __x64_sys_mkdirat+0x87/0xa0 fs/namei.c:4293
>>>    do_syscall_x64 arch/x86/entry/common.c:52 [inline]
>>>    do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
>>>    entry_SYSCALL_64_after_hwframe+0x77/0x7f
>>
>> I'm taking this patch, but making a change. It's a little cleaner to check ip->i_nlink after calling copy_from_dinode.
>>
>>>
>>> Reported-by: syzbot+355da3b3a74881008e8f@syzkaller.appspotmail.com
>>> Closes: https://syzkaller.appspot.com/bug?extid=355da3b3a74881008e8f
>>> Signed-off-by: Edward Adam Davis <eadavis@qq.com>
>>> ---
>>> V1 -> V2: if the nlink of disk inode is 0 return -EIO
>>> V2 -> V3: move the checking to diReadSpecial
>>>
>>> ---
>>>    fs/jfs/jfs_imap.c | 2 +-
>>>    1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
>>> index 0cedaccb7218..25bb3485da3b 100644
>>> --- a/fs/jfs/jfs_imap.c
>>> +++ b/fs/jfs/jfs_imap.c
>>> @@ -460,7 +460,7 @@ struct inode *diReadSpecial(struct super_block *sb, ino_t inum, int secondary)
>>>    	dp += inum % 8;		/* 8 inodes per 4K page */
>>>    
>>>    	/* copy on-disk inode to in-memory inode */
>>> -	if ((copy_from_dinode(dp, ip)) != 0) {
>>> +	if (!le32_to_cpu(dp->di_nlink) || (copy_from_dinode(dp, ip)) != 0) {
>>>    		/* handle bad return by returning NULL for ip */
>>>    		set_nlink(ip, 1);	/* Don't want iput() deleting it */
>>>    		iput(ip);
>>
>> My change:
>>
>> diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
>> index 298445f6d3d4..ecb8e05b8b84 100644
>> --- a/fs/jfs/jfs_imap.c
>> +++ b/fs/jfs/jfs_imap.c
>> @@ -456,7 +456,7 @@ struct inode *diReadSpecial(struct super_block *sb, ino_t inum, int secondary)
>>    	dp += inum % 8;		/* 8 inodes per 4K page */
>>    
>>    	/* copy on-disk inode to in-memory inode */
>> -	if ((copy_from_dinode(dp, ip)) != 0) {
>> +	if ((copy_from_dinode(dp, ip) != 0) || (ip->i_nlink == 0)) {
> This is incorrect. The purpose of adding this check is to prevent copy_from_dinode()
> from using dip->i_nlink with a value of 0 to assign to ip.
>>    		/* handle bad return by returning NULL for ip */
>>    		set_nlink(ip, 1);	/* Don't want iput() deleting it */

It will get set  to 1 right here ^^^

>>    		iput(ip);
> BR,
> Edward
> 



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
