Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C679A42481
	for <lists+jfs-discussion@lfdr.de>; Mon, 24 Feb 2025 15:57:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tmZsu-0002e9-QL;
	Mon, 24 Feb 2025 14:56:41 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1tmZst-0002e3-JD
 for jfs-discussion@lists.sourceforge.net;
 Mon, 24 Feb 2025 14:56:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=S77/ZFWoRH9m7a0JZk7ZWrVTrmpg4OyWr/0qn/ANr4M=; b=mA/qrLHAGvi4B/gFZHuiit6zma
 ava3r34VVLVYjdA6XkXdysCvmQs2HaQRus6H/Kq7HkLl95kyNk+fN+y/lvL+fneY+57BaZWr6FIMX
 X7a2TubhDVmwPPmzrggDn5bvE2GWoxQmLw29MVZxG0obu0/8Bmw1nPeHfhHgqUPOcFeo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=S77/ZFWoRH9m7a0JZk7ZWrVTrmpg4OyWr/0qn/ANr4M=; b=YzTsmFz3k5OD0InL8sx4AGu9Vl
 /khsKy+7aXrq4SysFWn8EeLukVSg5EXW1Ijw+OM4ICWcP6jTvF6gxV7QF4MyqRHnVXsOQeoRxfAYF
 qpB0oyAeD1Dz2Z+axw/rw5PbWUhlTSyDtrEsWQXMe3hFvPRnq86OgXl59CwW8hbVdzAk=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tmZst-0007cC-1E for jfs-discussion@lists.sourceforge.net;
 Mon, 24 Feb 2025 14:56:39 +0000
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51OBMiZJ026474;
 Mon, 24 Feb 2025 14:56:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2023-11-20; bh=S77/ZFWoRH9m7a0JZk7ZWrVTrmpg4OyWr/0qn/ANr4M=; b=
 LaD3vm/tKTbwaKFy5axf6ZzJM0IBfb/9eQ05vu9qKJoqtEbyQHGYd8TYHywf1ss+
 uEBsDtzsW1eWFzvA44eBVuFZWbb4+M1ZCSRox9TTeKmeQigr7p3lG5ewule9NZAz
 fdU7DHdT/dvJeRild6rnhKCVLVA1wOiYnEuaaew09oNjVkfzQH1PrGwzFm4NLqSz
 IIWSneHyQnUR/eCaeh48YLk3eqHaXMmC5fni8Jj9mySm81eAF1CoHG6PI4fMaIwy
 7Sl9ns1pzRIP5sEL6eEuAVrUDziS2QalPE75nMiaj6eanE7avipwkQGF0vg0jpgV
 3UoCezduAnOjYLSE79JURg==
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 44y6f9apyc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 24 Feb 2025 14:56:27 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 51OESuhP002958; Mon, 24 Feb 2025 14:56:26 GMT
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2049.outbound.protection.outlook.com [104.47.66.49])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 44y5180n4w-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 24 Feb 2025 14:56:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bgut6kS3Gh+bqJ/rhIPN6gprAeS0qJcHQ1bfwO0VIL5Te4skZVKup9Kcts0lkcg+B8Ftt1s/MXG2d4ahZj0CfC/ZwSnPHcFizlEvP6qfCLifkgr25nmOsuqI4VxB7woQv96FCuqQBVzMGAPuCM2Dovb35ZR8kpAtANn9KIylN2i2x+8vitq0Mk07apHF/RE1sRPlTzXdwcTApuf2NJGNJtKdwyrlrJhETPfubOZ0D/CiL5PEJ28KZ4dnmjGb5td6lVYZBsrizuWKCFBgVMLwSDL/PhxIOIaqp1w/ynldmiK2N/Z0c6YDv2agztHy8Uq61Bi8NAMqCVDhZBK7x+Hwmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S77/ZFWoRH9m7a0JZk7ZWrVTrmpg4OyWr/0qn/ANr4M=;
 b=CwqKhlqbC78ikCxccLSXY80Fj7hpofegfu0tVkmm+lmMIat8iN2OHlgTO/MLWrgeWHMV8G+yDq+hIKtBGiEUcbn6TvbcaMuNYsDGD0lBcLG0brB8skZEc9aup0MxQwnvZFXATrIkCplEYR8SHu7HwIsY26bHwZ9qlwCKg1Aj/+yV/CBaE8Z02SxVbKaHE1dm8DLp/HTUFbG54c2CWhsiz2ll624FoTWYzHI365ZM76qVDF2BMVgzIP/s66Z0RPjCXnwXgTESGmLhhGEsl/S65hIAHRYeg62tyUyhZLo+oZXTCZa7SmWlHiKUipUP7/RWNUR2OQHG9k1FVj/Wi3w4Mg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S77/ZFWoRH9m7a0JZk7ZWrVTrmpg4OyWr/0qn/ANr4M=;
 b=vHu5BHD2Zcfb0rWn4SslCD1AT75BJPTlwVERliQXMKR/kF3Ga35W4Q+0rnxpYtb55/8vKD+y3eLKHFgqoECv/8qmIJafGYY0+heWXrA9Chsyvbd/eHjo6jOZx+Ol4ZmKOYOaig4HCQD/dtpjphDJHbrbuYAGtrSWFs9sp4/H0io=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by DS0PR10MB7953.namprd10.prod.outlook.com (2603:10b6:8:1a1::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.20; Mon, 24 Feb
 2025 14:56:20 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb%6]) with mapi id 15.20.8445.020; Mon, 24 Feb 2025
 14:56:20 +0000
Message-ID: <03aa0da9-7719-40f1-88f9-d0531c9146af@oracle.com>
Date: Mon, 24 Feb 2025 08:56:18 -0600
User-Agent: Mozilla Thunderbird
To: Edward Adam Davis <eadavis@qq.com>
References: <47c49424-e24b-498a-9115-ace3fa4880e3@oracle.com>
 <tencent_93C98D8F12295DADDDAC19654FE30DB6A507@qq.com>
Content-Language: en-US
In-Reply-To: <tencent_93C98D8F12295DADDDAC19654FE30DB6A507@qq.com>
X-ClientProxiedBy: CH0PR03CA0194.namprd03.prod.outlook.com
 (2603:10b6:610:e4::19) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|DS0PR10MB7953:EE_
X-MS-Office365-Filtering-Correlation-Id: 448dbf09-a145-406b-fb37-08dd54e365b2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bE5EbmlQbk9heHJzQk8vUzhHWmxtN1Rla1lqTXphajNoYjU2STdQUlhDTGtr?=
 =?utf-8?B?RjVWbVpaN0dDTElIY1VYbEppSDlOUEZsYmwzcnRuMXBxNXZRMjNqMC9SdENU?=
 =?utf-8?B?OTNFWmRCS0VEaHRZazFmS0pybFpTMDVGMUFOMHhyKzZTaGdXS2NRSFVBS2Fk?=
 =?utf-8?B?bUs2c3NVVkQ1akFncVZxK0YxL3Y3UU8xS3V0Y2ZHY0IrMGpNb1dnaElMM0Q0?=
 =?utf-8?B?RFFuZXZPTGpyeHRsazNLdWZ0MEdyT29nRE9jWS9WeUhsc2hqZmhGbmNodWNk?=
 =?utf-8?B?Rk5JdkJzQmR6V1R5NTM5eU1ZSzFyV0RtOGR6RWp6WHJiRTVYbDBSWEtzWU9r?=
 =?utf-8?B?YjhHbXc2RG1Idnk2b1JsUmo1SXNTQnN6bWpZd1hpT2x1NHdoTktlMXBUOGdn?=
 =?utf-8?B?cG43L29nRDhEUjNQNnFTazZxd1d1QTJ3c29pdWlXcXpRSHZtcGFNZE9BS0ZD?=
 =?utf-8?B?UGlPL3pJcDlMZVRJMC95T0htVEw3K3kveVBLUDFRYkRseEllejRkRnNFc0FQ?=
 =?utf-8?B?VTVHRG5CMCtJL2l2MmU5d1BtMnloRHRyNE1xRlgwaHFwWjM0dXVuYm5GSXlx?=
 =?utf-8?B?RmNpMjFlSmRlMTJiSXBZN3dkU3k4MXJYTzhtWEh2SVRJa2pxKzNiYUVDVytK?=
 =?utf-8?B?cW9FVUVOT1Vva0tzS2RRbmNpSUV2L0drVVJoMFR0dzNyMzllWVlOT0Joenhy?=
 =?utf-8?B?WDYxM2VXVEU3ZVJHSnBqeG93UDlTRTJLaDRualpZNDRPVlhwS1Q3WnVzUmpC?=
 =?utf-8?B?REtad3dkZWxKcGwwZjR1ekIrRmNjVFM4clRrKzVkVGlvRzVjeXhId0NsVFRl?=
 =?utf-8?B?VHZmYlFBRU1ZR2hEeGZYL1l2T2x2NGEwU0tzOVp0RzhFSmp4L1JLVWMvMlBh?=
 =?utf-8?B?YytxcHJhTUNBMFpWS01JenphaDlSUkk0dkdrNlI4bm14Qlh1OWNRZEZKNWZ4?=
 =?utf-8?B?STI0UTV4NS8vSWY4SkVBTmI4dUEwN0ZtMGdMZkVtQWRSV0F1RHc1L0ljQ3ky?=
 =?utf-8?B?anpHbHYreU1SdlBlU2RhZ3RoUlBWcEp0YUVmcmFkeDRsZExpWFVOYlBnL1lJ?=
 =?utf-8?B?eEJsaFBYbkRsaWpoQkZWRDkyRkxQNTE0ajZnYXJTQXFkV1lvQy9uaXRnbHdC?=
 =?utf-8?B?M2pVWEtrV3h6N0JhckVkYTFZdHpoYUhuU21SWEtlY0cvb1Zod21GWng0MXlM?=
 =?utf-8?B?eWI3eUt3WWVINW5GQVplMXpnYXV4SUdWYXZQVHA2dk9WTmxlSjNiRE03QWdy?=
 =?utf-8?B?L0xlZEVlZlFwUDJpRVB0V3c5MjlwNGJKU1BEd0ExN0ljc0ZHdGNFbDU5cVNp?=
 =?utf-8?B?Mmw5K2RLVjNQVjY2dUZYanlTdzc4SmVkcythc3VFaVVsek1LRVZGRDUrOWhN?=
 =?utf-8?B?bzlCV0tFWU1mZVo1TWpGSkV2L3JjdmZOaDlLZ0s4NTlCSUxVaDdJVmQ3TEgy?=
 =?utf-8?B?d3ViTjh5a2J5RmluWlVsa0NpbkZ4V1lFbGFheWRTaVl2Q3BLc2hBVm5KamQz?=
 =?utf-8?B?OU53YzJSZFFVdTE4dE1oTVkwdjVjcmlRNUhTaDZWQW9vUE5yVUlKV3Y3V2dC?=
 =?utf-8?B?VE1WNGgzUmx4bk4rR3k2RWJNL29IOVl6SUFKRDdEbXZGSCtqbHZ6VkxXVEpu?=
 =?utf-8?B?ZFRPeHVncUJVNFlsRTc0aW1CUWR1blBtTldsdmNqZTdyR2lJbnZ5VENYZ3Qz?=
 =?utf-8?B?TFpON3R0REZHQTVnMzZxSGlQTkxtcnBKdkdOUlh5NEppbzRyR3o0RS9HQ2V0?=
 =?utf-8?B?UGhvNm53MzdtMWlJNjcwQlZzLzR4d3dQS2dRckUrM0hMbVBYOWRNZ2RRVkRX?=
 =?utf-8?B?bnRLOSs4SEZ1NUdrSTdzQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZjRJZDlwdWhLTXRpVkFxM3c5Z0ZTNXR0RmZWaVBORlNiSU9zNFJ0eGZlYVlG?=
 =?utf-8?B?MGhHM2xSQ0lXQTZyQ0dxU3lneW83OGhHS0l4bjZJTnZLdWxZTUJvTlJmbjkx?=
 =?utf-8?B?MGxNT25SZE9TbkdDaVpIUWhQdkl0bHZ3MjJVbHRmQnBCM29lZzdSQTFRV2x3?=
 =?utf-8?B?MERHZEpxbnhzZ3pzdEdXM0pwSmlXRjJNZ1dsUGhYVENacXIrS29lNTgwVmRm?=
 =?utf-8?B?Q0E2aDZVbTF2Zjg2enU4NkVMcEM3QUNjSTlXRkZYTGVGM1Nyb21KYWQ5eDVZ?=
 =?utf-8?B?QkFkdC9uVk5DdjAveDZucDMxK3JHMTI3QXR3aUFEZVhON0dyOVBJcXhlcFZH?=
 =?utf-8?B?N3FNRHUxRTZ5VjVZVHBYeW1vYU9JMFczemh2a0xsN0lvYXNEeXZkWTBVUTc4?=
 =?utf-8?B?bzV0TE82MWJNOEMwdDZ3SjB3VjJxVGhtWHJaU1FOblhXV01SUWNJa0FxaHcr?=
 =?utf-8?B?V3N5SndqK1lnYm16QkFlWTNqRXFKZTF2MHA3bVBvbUhOKzZ0TUNDa2N2KzJV?=
 =?utf-8?B?elJheC9BUXRwdDZsMzgvdy9KbFBVa0h1SGRFZkFkNmhEM2ZlK2tGWXdjdDFL?=
 =?utf-8?B?ekVJYVB4ZjVUVkw3MmZvQnlEQzVRQTZ1b3FYRWhWMHBKNEwrUko1a0FKYVRD?=
 =?utf-8?B?QUIxRVAzY09MdEtPYUFTbU9MbStnRVNnd1BnclNTMTV6eWo3WlhaNmg3WHdk?=
 =?utf-8?B?SzJNSlZwV0h1SDlZckl3VnB6dXlBTTNFeS9CbTBrY1N6MFB5ZTN6VzdMSW42?=
 =?utf-8?B?Rlk4aTdNbDYrL1NSdmlYcGprM29vNWtRWnZ0SHZQZDVNU0hwTHMvQlcwbG0x?=
 =?utf-8?B?R2IxVXA1MDUvalVqRzVITVZtOEw1NlFnbUJMN2NsVy9jTnZnZkJ4T1VzQU1R?=
 =?utf-8?B?NUxUV2RBcjlIY3V2b0xXL3NYaUlQODFPaFBNTmNHb1lwRlBiKzRLZlgwNWlR?=
 =?utf-8?B?anhWZVdab3E3d1M2bE5KNE0wb1lCamI1LzV5ZnE0TkVrQTJLS0M5MXV5Zkp5?=
 =?utf-8?B?Q0JSblJlZEdlY2Qxb050K2FWbDJaZS8yRlJOQ1JpZFYyUjNrMmVEQzAyMnJV?=
 =?utf-8?B?Vk16ZFZ4WG5DRnBmZHE3RG5jTi8xVGtYblJpYWRCOUoxZUl3d3FNaldmS0N2?=
 =?utf-8?B?WStqaHozRDFkSEtFdGNnWVgwYjh2NzYvQXo4Tm95cE9QZzRDakdmWS9ETlFz?=
 =?utf-8?B?NXBzdGtRN0w1UEQrcityZ1VSM2JCaW9zVlMrenl5VmFEZUJuNE5Nd212SXd0?=
 =?utf-8?B?VTlPd092TGRGVmRDRFFVeEk0WkxWajEybEtUb2h0bmtUVGpYRElENU41Y1Qx?=
 =?utf-8?B?aWRGbmN4ZXBHYVVUMDRLdStNTGI0Z0plenl0VFZHTG1TQXNZdlhBa3k4TDBF?=
 =?utf-8?B?NzQ5S0Fab2p1Z3l6aGUzSFloSTgyUEhNcUpYbDlWZEpTZmE4ZE5RRHZmOWlj?=
 =?utf-8?B?ckwzOEVCNVFkbEhlcDN0Z0JVMC9NMlIra0YxRTA3Q2dBaDIzam9oRCtpSDRE?=
 =?utf-8?B?dTNSeXRqeVliaXI4Ykxza2UzMlJyUjMwSHhJOG42OWM4R3YyZUtuaVMxUThB?=
 =?utf-8?B?dUhsV1hLbmVNOUtMK3d2Z09KdFVNRW9tV3NGaG1oREtZVWlNdExRTUEyY0la?=
 =?utf-8?B?eHBVU2xhQnFLV2dCbmt4bVZOR0FQSWh3TzQ0amJvcXV5MzltUW03OVFub2VR?=
 =?utf-8?B?bEtOd2dIZExSSHU1OWtqSjNhMFBXang4Y2hwdXh2KzdEUzg3NitmQXlWbk01?=
 =?utf-8?B?TXRJbmRMTUNXTXVOTzRRbnlRQkxFK05pQWhIck1wSmhNcVFWaEszekViVC9C?=
 =?utf-8?B?Y240VFk5dEk5ZzNtajBnZXRjQW5valMyWVNFRlgvall4V3pPWURUd3NmbzVV?=
 =?utf-8?B?ZlRDR05Yb00zSGdkLzUwRGl0Y0UzQ0ViYVBCdTRhV0dnZm1SYk5sY1BvQTB2?=
 =?utf-8?B?MGZIMUFJbjA3RkM3Zk1Ia0FxZC9VVnd6cWY2Y3U5MmdWMHBiT2hnNHYrZ0Z2?=
 =?utf-8?B?YkFoSW13L0tVdWpnVjRiTVErK25HcTZxaktRSXJWUm5rQVcwZEYzOXNucmVT?=
 =?utf-8?B?d2p1MlFQS0ZBYUdSdlZxMTRYNDFGcUJBUmtkbnJnZUV4K2FjdGF2TnZUVzJL?=
 =?utf-8?B?dy8vZUV2Ni95MnFpWlVNUlVnUHhoVkJucVVwK1VPdGhGc2RmVTRJTU00ZTZB?=
 =?utf-8?B?bWc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 0Md6fXL1XXIJo9G4M+iDWNoTgSRAzvFkU4fiQZImB5GIrZM9IqOiL4kYVOHGGMVoeAc2b0VglGiF54AYfh65abSwp7qVUj4jsfV5Loh+9MaELlzMjiCQJ0FHjlIVfVtiBUjZ9w/h0ESbZBB1H+GfclQiLbqvdNVXz08ZgC73PGvlI8x1rvLtUb7OUv1Zn3+SHsRdpBQXN0Y+UFzzx3fPXNknUsCledcIEzO9VfotcIe3EHdEapPAiI54fYDloPVJl8J5zCIWBs1dSA1VYJtPHEVreMQaCEbUxLm4Gsed7dY27Lt5MoQYia/l272tA67o/s3w+cfAbhpV2zkgGVqzENCGFBYTOblMYIYEmRopIQkik1DY7k439nrcLHJvt1JjiVNAF+FYDcW8fx+HS1N4t6BZTA597HwGWrLmGWq7+8W3LuLkKJJsLvZ1q1/QtHVL1faf7HI2floIn5xsx034j8vrPrELRVn8CZhvmcvyudpxwT36wH9BEQN8FoH7pVoynnKuwMEQdaFtnSc5xZwiz0gfz6xStR1co07nq6U4RynO7GBfFTbD3ZXTGz5qcapNvfjnl/BdnBxpfVhQ2FOLXnEBSUcVL8U+pakq9zes/KA=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 448dbf09-a145-406b-fb37-08dd54e365b2
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2025 14:56:19.9472 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3ouEoOPi7frU7VGMU7gWPKZukQ26NtDlL9OTFCpNP24L7RT6gFqZTk9Y+yZr55kT9g+DspVwMAXPW6pafSkxwCpMsJOqgpt4cYHdyZBN4TI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB7953
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-24_06,2025-02-24_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 mlxscore=0 adultscore=0 bulkscore=0 phishscore=0 spamscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2502100000 definitions=main-2502240107
X-Proofpoint-GUID: Pr83fOrgbCG8ZJitGIHNardpGniQy1JV
X-Proofpoint-ORIG-GUID: Pr83fOrgbCG8ZJitGIHNardpGniQy1JV
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2/21/25 6:16PM, Edward Adam Davis wrote: > On Thu, 20 Feb
 2025 17:28:49 -0600, Dave Kleikamp wrote: >> On 2/20/25 5:22PM, Edward Adam
 Davis wrote: >>> On Thu, 20 Feb 2025 10:15:04 -0600, Dave Kleik [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.165.32 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
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
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.220.165.32 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1tmZst-0007cC-1E
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

On 2/21/25 6:16PM, Edward Adam Davis wrote:
> On Thu, 20 Feb 2025 17:28:49 -0600, Dave Kleikamp wrote:
>> On 2/20/25 5:22PM, Edward Adam Davis wrote:
>>> On Thu, 20 Feb 2025 10:15:04 -0600, Dave Kleikamp wrote:
>>>>> syzbot report a deadlock in diFree. [1]
>>>>>
>>>>> When calling "ioctl$LOOP_SET_STATUS64", the offset value passed in is 4,
>>>>> which does not match the mounted loop device, causing the mapping of the
>>>>> mounted loop device to be invalidated.
>>>>>
>>>>> When creating the directory and creating the inode of iag in diReadSpecial(),
>>>>> read the page of fixed disk inode (AIT) in raw mode in read_metapage(), the
>>>>> metapage data it returns is corrupted, which causes the nlink value of 0 to be
>>>>> assigned to the iag inode when executing copy_from_dinode(), which ultimately
>>>>> causes a deadlock when entering diFree().
>>>>>
>>>>> To avoid this, first check the nlink value of dinode before setting iag inode.
>>>>>
>>>>> [1]
>>>>> WARNING: possible recursive locking detected
>>>>> 6.12.0-rc7-syzkaller-00212-g4a5df3796467 #0 Not tainted
>>>>> --------------------------------------------
>>>>> syz-executor301/5309 is trying to acquire lock:
>>>>> ffff888044548920 (&(imap->im_aglock[index])){+.+.}-{3:3}, at: diFree+0x37c/0x2fb0 fs/jfs/jfs_imap.c:889
>>>>>
>>>>> but task is already holding lock:
>>>>> ffff888044548920 (&(imap->im_aglock[index])){+.+.}-{3:3}, at: diAlloc+0x1b6/0x1630
>>>>>
>>>>> other info that might help us debug this:
>>>>>     Possible unsafe locking scenario:
>>>>>
>>>>>           CPU0
>>>>>           ----
>>>>>      lock(&(imap->im_aglock[index]));
>>>>>      lock(&(imap->im_aglock[index]));
>>>>>
>>>>>     *** DEADLOCK ***
>>>>>
>>>>>     May be due to missing lock nesting notation
>>>>>
>>>>> 5 locks held by syz-executor301/5309:
>>>>>     #0: ffff8880422a4420 (sb_writers#9){.+.+}-{0:0}, at: mnt_want_write+0x3f/0x90 fs/namespace.c:515
>>>>>     #1: ffff88804755b390 (&type->i_mutex_dir_key#6/1){+.+.}-{3:3}, at: inode_lock_nested include/linux/fs.h:850 [inline]
>>>>>     #1: ffff88804755b390 (&type->i_mutex_dir_key#6/1){+.+.}-{3:3}, at: filename_create+0x260/0x540 fs/namei.c:4026
>>>>>     #2: ffff888044548920 (&(imap->im_aglock[index])){+.+.}-{3:3}, at: diAlloc+0x1b6/0x1630
>>>>>     #3: ffff888044548890 (&imap->im_freelock){+.+.}-{3:3}, at: diNewIAG fs/jfs/jfs_imap.c:2460 [inline]
>>>>>     #3: ffff888044548890 (&imap->im_freelock){+.+.}-{3:3}, at: diAllocExt fs/jfs/jfs_imap.c:1905 [inline]
>>>>>     #3: ffff888044548890 (&imap->im_freelock){+.+.}-{3:3}, at: diAllocAG+0x4b7/0x1e50 fs/jfs/jfs_imap.c:1669
>>>>>     #4: ffff88804755a618 (&jfs_ip->rdwrlock/1){++++}-{3:3}, at: diNewIAG fs/jfs/jfs_imap.c:2477 [inline]
>>>>>     #4: ffff88804755a618 (&jfs_ip->rdwrlock/1){++++}-{3:3}, at: diAllocExt fs/jfs/jfs_imap.c:1905 [inline]
>>>>>     #4: ffff88804755a618 (&jfs_ip->rdwrlock/1){++++}-{3:3}, at: diAllocAG+0x869/0x1e50 fs/jfs/jfs_imap.c:1669
>>>>>
>>>>> stack backtrace:
>>>>> CPU: 0 UID: 0 PID: 5309 Comm: syz-executor301 Not tainted 6.12.0-rc7-syzkaller-00212-g4a5df3796467 #0
>>>>> Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2~bpo12+1 04/01/2014
>>>>> Call Trace:
>>>>>     <TASK>
>>>>>     __dump_stack lib/dump_stack.c:94 [inline]
>>>>>     dump_stack_lvl+0x241/0x360 lib/dump_stack.c:120
>>>>>     print_deadlock_bug+0x483/0x620 kernel/locking/lockdep.c:3037
>>>>>     check_deadlock kernel/locking/lockdep.c:3089 [inline]
>>>>>     validate_chain+0x15e2/0x5920 kernel/locking/lockdep.c:3891
>>>>>     __lock_acquire+0x1384/0x2050 kernel/locking/lockdep.c:5202
>>>>>     lock_acquire+0x1ed/0x550 kernel/locking/lockdep.c:5825
>>>>>     __mutex_lock_common kernel/locking/mutex.c:608 [inline]
>>>>>     __mutex_lock+0x136/0xd70 kernel/locking/mutex.c:752
>>>>>     diFree+0x37c/0x2fb0 fs/jfs/jfs_imap.c:889
>>>>>     jfs_evict_inode+0x32d/0x440 fs/jfs/inode.c:156
>>>>>     evict+0x4e8/0x9b0 fs/inode.c:725
>>>>>     diFreeSpecial fs/jfs/jfs_imap.c:552 [inline]
>>>>>     duplicateIXtree+0x3c6/0x550 fs/jfs/jfs_imap.c:3022
>>>>>     diNewIAG fs/jfs/jfs_imap.c:2597 [inline]
>>>>>     diAllocExt fs/jfs/jfs_imap.c:1905 [inline]
>>>>>     diAllocAG+0x17dc/0x1e50 fs/jfs/jfs_imap.c:1669
>>>>>     diAlloc+0x1d2/0x1630 fs/jfs/jfs_imap.c:1590
>>>>>     ialloc+0x8f/0x900 fs/jfs/jfs_inode.c:56
>>>>>     jfs_mkdir+0x1c5/0xba0 fs/jfs/namei.c:225
>>>>>     vfs_mkdir+0x2f9/0x4f0 fs/namei.c:4257
>>>>>     do_mkdirat+0x264/0x3a0 fs/namei.c:4280
>>>>>     __do_sys_mkdirat fs/namei.c:4295 [inline]
>>>>>     __se_sys_mkdirat fs/namei.c:4293 [inline]
>>>>>     __x64_sys_mkdirat+0x87/0xa0 fs/namei.c:4293
>>>>>     do_syscall_x64 arch/x86/entry/common.c:52 [inline]
>>>>>     do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
>>>>>     entry_SYSCALL_64_after_hwframe+0x77/0x7f
>>>>
>>>> I'm taking this patch, but making a change. It's a little cleaner to check ip->i_nlink after calling copy_from_dinode.
>>>>
>>>>>
>>>>> Reported-by: syzbot+355da3b3a74881008e8f@syzkaller.appspotmail.com
>>>>> Closes: https://syzkaller.appspot.com/bug?extid=355da3b3a74881008e8f
>>>>> Signed-off-by: Edward Adam Davis <eadavis@qq.com>
>>>>> ---
>>>>> V1 -> V2: if the nlink of disk inode is 0 return -EIO
>>>>> V2 -> V3: move the checking to diReadSpecial
>>>>>
>>>>> ---
>>>>>     fs/jfs/jfs_imap.c | 2 +-
>>>>>     1 file changed, 1 insertion(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
>>>>> index 0cedaccb7218..25bb3485da3b 100644
>>>>> --- a/fs/jfs/jfs_imap.c
>>>>> +++ b/fs/jfs/jfs_imap.c
>>>>> @@ -460,7 +460,7 @@ struct inode *diReadSpecial(struct super_block *sb, ino_t inum, int secondary)
>>>>>     	dp += inum % 8;		/* 8 inodes per 4K page */
>>>>>     
>>>>>     	/* copy on-disk inode to in-memory inode */
>>>>> -	if ((copy_from_dinode(dp, ip)) != 0) {
>>>>> +	if (!le32_to_cpu(dp->di_nlink) || (copy_from_dinode(dp, ip)) != 0) {
>>>>>     		/* handle bad return by returning NULL for ip */
>>>>>     		set_nlink(ip, 1);	/* Don't want iput() deleting it */
>>>>>     		iput(ip);
>>>>
>>>> My change:
>>>>
>>>> diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
>>>> index 298445f6d3d4..ecb8e05b8b84 100644
>>>> --- a/fs/jfs/jfs_imap.c
>>>> +++ b/fs/jfs/jfs_imap.c
>>>> @@ -456,7 +456,7 @@ struct inode *diReadSpecial(struct super_block *sb, ino_t inum, int secondary)
>>>>     	dp += inum % 8;		/* 8 inodes per 4K page */
>>>>     
>>>>     	/* copy on-disk inode to in-memory inode */
>>>> -	if ((copy_from_dinode(dp, ip)) != 0) {
>>>> +	if ((copy_from_dinode(dp, ip) != 0) || (ip->i_nlink == 0)) {
>>> This is incorrect. The purpose of adding this check is to prevent copy_from_dinode()
>>> from using dip->i_nlink with a value of 0 to assign to ip.
>>>>     		/* handle bad return by returning NULL for ip */
>>>>     		set_nlink(ip, 1);	/* Don't want iput() deleting it */
>>
>> It will get set  to 1 right here ^^^
> Things that can be determined by "di_nlink" before executing copy_from_dinode(),
> Why let the CPU run copy_from_dinode() for an extra time before checking?
> Isn't this a waste of CPU?

It's an exceptional case. It's very, very unlikely to fail, so the extra 
cpu cycles that are executed in the common case are not a concern.

> 
> BR,
> Edward
> 



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
