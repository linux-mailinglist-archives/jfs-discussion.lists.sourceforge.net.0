Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AAD3B815BC
	for <lists+jfs-discussion@lfdr.de>; Wed, 17 Sep 2025 20:37:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:To:Date:
	Message-ID:Sender:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sj4gMbl/mzhY/c1c0mGOZav1lNQSO/N4QRegK1k+MBM=; b=hBzCN2Fg01wjbYe0qb30t9ejms
	bpbunv5RMVXyMYPsRU+AAHrG7U8Hn8773fsz8yfHoTUmRA0D+2J2aaW/FR0MaiAghTVo3s2yAsmlZ
	UJ9TtXSOF+AX07bq/m0tERtuB7vaVzS9dNbTZPUwnC4G9nKTCBdyKOcUeKJuWWi0mJFY=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uyx1u-0006Pu-Aq;
	Wed, 17 Sep 2025 18:37:22 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1uyx1s-0006Pl-5A
 for jfs-discussion@lists.sourceforge.net;
 Wed, 17 Sep 2025 18:37:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:To:Subject:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EvXsDevB0L/D+KxAm+UcAJeZ9JB22I78/mhoE58WW3o=; b=nDUVxHZyGOogIE+j/cgkaE9NND
 9QWv63a+IdaCcoBIf8n9RB5Ir4nCA9nSiPfogrAuchvLVmkcEQa6G7gkseUxLGyp6I/obk+prmF6Q
 Wfg2oEyyMRlinPyG2jT6ZW4/1946+sWC6oR7U7TExp3z1cheDne2YVKxCXsX+wHvzk/Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:To:Subject:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EvXsDevB0L/D+KxAm+UcAJeZ9JB22I78/mhoE58WW3o=; b=D77VfyGn7Po4keboEcIc6HjZiK
 K5roJO4sHFrXFaQPk2eronOj9vHbMX17/c0RlHKPuEM7LNKWGALKCqI4lziSWijsdn65DCiyGYR/r
 j3uV43Togq0gg1caSO7ras/Gaov9CXY5F4BxGqUMq1IORmhwNkpVTc8cqCH85Iu8pzLc=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uyx1r-0003Tz-Ix for jfs-discussion@lists.sourceforge.net;
 Wed, 17 Sep 2025 18:37:20 +0000
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58HEIUdT008331;
 Wed, 17 Sep 2025 18:37:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
 content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2025-04-25; bh=EvXsDevB0L/D+KxAm+UcAJeZ9JB22I78/mhoE58WW3o=; b=
 YyVE4C+f5Jdeg/U/ENtlWU5QQINhtPoKvwt5PBlA9/KcdMC5IUTSPg6kmWpNxpeV
 mPJGYjzDOtWniFHX1c0MomCVm+iiiXcFaVSoq9jxkto+SoGQ2MiXU2EfDWvw4AYT
 Gc2evL/2cDLaG7hN8z5H5d2M7I9nilph0YaxNCfxCZirJsMtxl+f8up2ou2bxXvr
 w+OfQFZa8TE/YR75QwxJdqAvnUQJLjuzE9BTHWa+91bfP2QSqHhFkDR4V2S08MXX
 zP+Te3g5Xzls5V6PBkLs1GflJUwxJAqnlQ4KLUuAcmF9eA8XCEILc8BfRsquHcbz
 i1KrPzDz0gEkK+cGegqVIw==
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 497fx8hvqk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 17 Sep 2025 18:37:13 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 58HI5AEo027252; Wed, 17 Sep 2025 18:37:12 GMT
Received: from bl2pr02cu003.outbound.protection.outlook.com
 (mail-eastusazon11011015.outbound.protection.outlook.com [52.101.52.15])
 by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 494y2me4mx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 17 Sep 2025 18:37:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wJeTzD/iGwDb2ueRXiv6NBX0juazObHKy6KpBaenboysVR6xDNKIUM2/tN0YeO9XTWyili+AEfkCeene3kLHHX17KL1rotxG/xdVRAjDk6hLQw0f2NN+Q2U0po7fRTW4XKjn5yw7icjAzI9alahAbfJKJ3xkZbqFCkRbKRLxsBxJfIDSS8MTjce3bQ9iKL7kztRAIPpmmAT3yXc/Wj3Bj3icjOEVSLY4TqkJtppD88n5sin9gzrtVLAUt5gt3QDbxnJSIRrpUxl9gHhLPArwhsgvJQn2waf7TTlhU49ybHYctWhePjq1NAMVET6OkFn1FYTafQuXA0AYooIDS2BAvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EvXsDevB0L/D+KxAm+UcAJeZ9JB22I78/mhoE58WW3o=;
 b=IEFQYj36murOqga/CZ0v6fRWXH6AJHXzf1755F7+Ja61NQAFw7l0pb30I9309gfun8FnphLSKdAWvcafFVEix06HElLhK1HiVm9SOW1xKFNQqt14CeBDJ+6mbH+kP2IMnX3X9czZWDBg3iEGFOBhYaBscT19CBlTB9uSRG2hmpDSp6h5PktytuTzgiwgLr6dLK0Ysh5W+IpN7b1cG7rq2rC2fCEjqLO1Yih/PdnfNIceajNgdZrxGAYbXX6CftWKTuC2iAUQw207fbIg2Z1e2I6jMl82ZO9KQpodVspvP/6rkjVtEypQRjJ6Jlzp69WE9Hx57MZf1s1Vdr1MSnscpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EvXsDevB0L/D+KxAm+UcAJeZ9JB22I78/mhoE58WW3o=;
 b=i8kWl6byK+VMN5vi537dHjGypVbT/8yOMIoLtqsHTHtHIoQe3e9ziX62ZMpW12JYQ41j6+MJRBhfEDg+70WLS2D0RBw7MiirCQl4NZx01C6VaV2+KmeSQ22h8RuXo+dBEDJnfVuUKuUFL20wKq8EmhpMjMbTzifMWJ99g8Qq06A=
Received: from DM3PPF35CFB4DBF.namprd10.prod.outlook.com
 (2603:10b6:f:fc00::c1d) by IA1PR10MB7214.namprd10.prod.outlook.com
 (2603:10b6:208:3f3::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.23; Wed, 17 Sep
 2025 18:37:10 +0000
Received: from DM3PPF35CFB4DBF.namprd10.prod.outlook.com
 ([fe80::211d:441:2594:6cca]) by DM3PPF35CFB4DBF.namprd10.prod.outlook.com
 ([fe80::211d:441:2594:6cca%8]) with mapi id 15.20.9115.020; Wed, 17 Sep 2025
 18:37:09 +0000
Message-ID: <bc564654-451c-46ae-84f3-21c8e4259c1f@oracle.com>
Date: Wed, 17 Sep 2025 13:37:07 -0500
User-Agent: Mozilla Thunderbird
To: Liao Yuanhong <liaoyuanhong@vivo.com>,
 "open list:JFS FILESYSTEM" <jfs-discussion@lists.sourceforge.net>,
 open list <linux-kernel@vger.kernel.org>
References: <20250825133651.337691-1-liaoyuanhong@vivo.com>
Content-Language: en-US
In-Reply-To: <20250825133651.337691-1-liaoyuanhong@vivo.com>
X-ClientProxiedBy: CH2PR04CA0022.namprd04.prod.outlook.com
 (2603:10b6:610:52::32) To DM3PPF35CFB4DBF.namprd10.prod.outlook.com
 (2603:10b6:f:fc00::c1d)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM3PPF35CFB4DBF:EE_|IA1PR10MB7214:EE_
X-MS-Office365-Filtering-Correlation-Id: 547df9df-89af-4970-b24b-08ddf6193573
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M0M1eEJxdnJOQ3ZEWHMvcEd4VUtiQTh4SGtUWjloWVdWdXNZRjlCTTlSaU54?=
 =?utf-8?B?UWVtT0ZQU29NaCsrVFdldXpZaE5PZnZjUnhNTG15TTVzOGJsY3YwVVY2Y3FW?=
 =?utf-8?B?NzY3Y0hzM2NXVmFSb0FUVkZtWE1zWlQ3SVYraVcyNmUwRnF6dThlU1ZMSmpi?=
 =?utf-8?B?bERWYm8vKzZqcGJnVDZnVUd0UW9hL3VrQkNvQnNkaVViOC90SXdMMmR0YnQ2?=
 =?utf-8?B?bWVpL3ZPQW1TdGNsaUtWMTVtdndxanpJUEhlM3VPNzA2UVdBaTl1SW83VXRE?=
 =?utf-8?B?L3VGeXM1STJ0Y3FNSkFWaC9SREtyY054UXZqWmNmd0VUeDlzVkt0cjRqUXN2?=
 =?utf-8?B?NzZqcVBvZzZWM0UzSEJRTnFtSHlvaEpRdTlPNE96WXpjSGNQNTAzTk5rdDJB?=
 =?utf-8?B?a0o3MHJSMVpHM3RidThhdHFnTWs3ZkFNOVhPVldFbUFlWElBOVZHV3kzNktz?=
 =?utf-8?B?RUVFNCtuaGxLeW03eTJtSnlhTTBub2cvQ2RBckRnRWZnc2N5NitPdE9QUlVm?=
 =?utf-8?B?d21BQjlmVmhaSXVOdk9QdjdRTGtJNGozUGhZUEpWYmZtUE02NUM0QjZOeWk5?=
 =?utf-8?B?QlpVVENlTkdOWVFQRklWTk1NQ2lMZjVEeW9FOWpBcHpFRkNna3lmMXljTzYz?=
 =?utf-8?B?c3hXR3JwVUpac0pHTFo2WHdpdlNQcVQ3NFQ1WVYzeUV5UnY0cGZDZ0QreWVi?=
 =?utf-8?B?K214VUMzSjJZaTZjRjBLaVM5NkxjWVV5QlZUbUlQMHgxU3YyOGcybEIwYklw?=
 =?utf-8?B?WmdWVTZ4RGVWdng1SzUrNVQ1TFl1VGJhOTBOUHRibWJ1OVhTL0xITDdXUnZC?=
 =?utf-8?B?NFdLdEpiZ1ZFSWcvb1Y3ZEoxRDY5dmppRlBDdVM2ODhEWjFyWDc5M2tLMEJG?=
 =?utf-8?B?VUt0ZWErRlBEK1UxUTMvdVBLZTBXYk1qTzFVMzd0eTAzQ0l2SFVRSzV3eEQ5?=
 =?utf-8?B?TFkrMDV4UiszcDM4NFhrcGxTeTFPNTIybjZVL1M2S3R6WERXeW93OXRHc2hC?=
 =?utf-8?B?TC9ubEdoVlhlNTZtOGwxNmMrQXZZbFZKbk9XaWxUQkpVZDViZWtPNjVaRzhj?=
 =?utf-8?B?eTExbW82TnJuRVhLVmh3elRJaWVVWFlTWUZDSDlOWXJwbnF2aUpZb0ZSQWtW?=
 =?utf-8?B?N0dRQk5iZmxNUjdwZ0o2Z2V4WW9nVGRnRi92MFprVkdCSmh3ckl3M0ZNalFs?=
 =?utf-8?B?eThoWUVwKzBhOHVJN0hPckxWaU1tRWNpN0tGclU2c0tIRE1GaWQwSWw4MGJs?=
 =?utf-8?B?a3AzSitpZjZCOGtYdEV5T3F2aitXbWd1d3lTN1pOMDdGa1ppRHYzSkVYVkJX?=
 =?utf-8?B?dHR2RHNUWlVsckY3L0lNeFpmc1lJZFRSK1lSK2hrOUpZV1Y3TXljcHo0WE9u?=
 =?utf-8?B?bWRDQzQ5ajlBendXZlRvOWFlcmcxVndncmdia1Y5LzJsNjNLeE9qajNpQ0RC?=
 =?utf-8?B?K1d6aVZkRVFGMmMxcktOb1FnQ3ZnWmQ1M09xc1BpTFBhTkRLTktWNnVsZzZz?=
 =?utf-8?B?Y3ZiRHVCUkxwSExpYnZ1YmRJeldsYXhZUmRFSkRyZEJYajBGc3E5QmhWV2lx?=
 =?utf-8?B?UmZGay9iU2hoWG5sVVRQajRkQXVGcmNvMkhLRk1wQlBnMmVGMDZDTVVTOHNK?=
 =?utf-8?B?bVBPZTZWUm9yZ1Y4enZadlVFQ3YzQ1puMC9UYUExbzE5UjRpV216TE1ndm9W?=
 =?utf-8?B?K0M1SjRiajU5UGF6b0QyTnkzRGE2cTdvMVpHY2VEdFlKUzVwYkQ1L3E0R3pp?=
 =?utf-8?B?WXZFSFRlc0dydlB3eHIrN1VEVWJpN09wSkhGcjZiOEdpMFVRcWdvQnNUcDFO?=
 =?utf-8?B?VUYvc1F1TlV2QjBSZS82YzZSWWRoZ3U4MFRkd3RSdjlNZTZTdkcrMGFnRGor?=
 =?utf-8?B?amFsa2w4c0pyR2I2Q2FJT050WVkrWU9tWkMzZDEya1Y4bWc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF35CFB4DBF.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZDNHdy9VQmp2S2Y2YlNEOHRZN0ZOdmtRY3lDUngrU2xCVHh0L2NoTGFKdVdI?=
 =?utf-8?B?ZXl3Y3E3ektxTCtSQTA2dXFjYy8wQ0VRZWkvbmxRZUpOQTJNbWgzOW5VQmdj?=
 =?utf-8?B?SGxKcG55YXh0RCtKTStQdG9GWklGbVBiNUZ0QlhjUHZxL3JjK2tLYkdIb3Fx?=
 =?utf-8?B?bzZreUtycFk4ejNmTHhuWlNEbXZ6dXU3SllOeE9DdGJoTEw5endzcjUyZW9V?=
 =?utf-8?B?RS9URVNWMHcvUVNmQ0RWcEwxaHJVOEVFTW9xOEw2MVpIN2sxcGNRM2FKT2lW?=
 =?utf-8?B?N0lkb1B2VG13T09xaVBOZTJ3VnZZZzBqWFhQbU5YUGo5NmpFMG1jWlNETzl5?=
 =?utf-8?B?WmIwTE56a29jYXRiZmpHWk1UdjdkSDVDa3lKdmhlNE5BOWtoSVdyY1hFbVhO?=
 =?utf-8?B?T0ZCNFFpOTVCVUNjV3pha3VMSjA0NjJNbGtuMTFTRXQ3NTFRQ2ZPbTRLNEVk?=
 =?utf-8?B?VjBkUng2aFpzYjZWQzRqc0tkYTZqUUI4MTdERWllc01DbGlWYjRiVmxGcVRn?=
 =?utf-8?B?bmRRT1NJOWxkL1JGdFZvUG0ydlN5b21NM2dtZk5ycyt3bFNFNm5jOEhUKy9j?=
 =?utf-8?B?VW9sVkJ3U3UyWlQ1L0ZoSXpiR0x2ZE9Iajkwd1pwM0RUOHltem50ZjFEdUc4?=
 =?utf-8?B?WlNadklqRklVTjhZYWswQmh6UzVuV21lWDdtazJhc1NGOWxCS01jQ2VnYVI5?=
 =?utf-8?B?ajNuTkRyT2pLYTZoZGRNb21oV3dXK2J6ZVM5TlNTaHp4VG5xUDhUM2tiSW1Y?=
 =?utf-8?B?cnVMYnJiYm43Y2NjYnExZnJ4cUFLNXVXcTVUc2JzeGlaTUdLOVdRejhVWnZZ?=
 =?utf-8?B?ZzZ1QldSdlo4STJ0WmZBR2NRbG9MTU1iU09HVE9KaVk0NEFWSG4wa1kvWFdU?=
 =?utf-8?B?dVBtbWV5MlgraFZBOVM2V2hNbkc4RGRjd291dTdVOVhQbjZyODE1dkRnWEY2?=
 =?utf-8?B?cm9FS0dBN0JNdUlGeTl5U0x4bU5kM1ZnaHE3a1l2Uk1hVjViK1VCaWlYK25B?=
 =?utf-8?B?ZXpnRnJuTzhOY2ZOOUNWY0dKTmI4OWw3Z2laemVVTDJ1eU44TXV1RG90L1dX?=
 =?utf-8?B?QzN6eURUcjJ1aUtVSjVPcmp1UC80ckEzWktpUVR3OXYwK1ZjNGpKZGJ3bXM0?=
 =?utf-8?B?TWFSVDhuWWU1U2dhbWdEbGxzRkJ3Ujd1ODFHbFhjRy9GRDJkdkpZMnV5ODZn?=
 =?utf-8?B?VHJsUFovY0RXQkpBeGs3Mm1RQ1FyNXdGeDVEcFZEY2NpZUJ4ZkhEN0Nub3Q2?=
 =?utf-8?B?ekFKc2NWQzRyOXJ6NmlNNDhlMklpbEZXSkl4WUdTU0pMU2xZUXR0c2VRMlNr?=
 =?utf-8?B?MlJzU09pZmdocW56MHQwR2IrSG5WTVk3VXk2RjhXTVI4dkFNNTFjTUlhdlk2?=
 =?utf-8?B?OTlGZGJXM2VmUFdockp4WnA5WWd2ZWhZUU95SkF1WnVRVlBZZFp2bXNhbUhG?=
 =?utf-8?B?bmVPYkZlZTFNK0pORlkrZjFCR0c2Nk9FeEVNVXhIb202dmtzdzZlbmNNcU8y?=
 =?utf-8?B?NWl3VjFMSnVtb0x6NDh6OGYwVkV0NFJ5YytJck9vNzJZdFVoM2N0M21ZNXY4?=
 =?utf-8?B?dDlsSEp4ZXM4ekI0YmNSZU9qWlhyMkFKcEhHOU5xcVZnbnpVaXBtVG1VV3ow?=
 =?utf-8?B?Um1KSy9wb1ZvSFRSMGxNS3VWenlTeTdQYnFTV2VlWUJrNGVWcGpyU01LTFNl?=
 =?utf-8?B?SjZtOS9MdlZGbUpLT0czZUJUYVlTUFR0ZEVQVE5PZklFbmw4OFZXZlQzK3Aw?=
 =?utf-8?B?T2J4UEJ4R0hJMFdiOXZ0eWFPNmltMUpPK1dPN2VZcUUzdXE0RkQzM1BneXJa?=
 =?utf-8?B?dDlXTEJRZVYyOHA0OW5QeXhyZXUxZnpRbmkwNmJLVkhkZnpGM1lxV28wZmsy?=
 =?utf-8?B?WjlORFJmZEkwUWpuWElaeU9JZ0tNb3BNUzFTZDV2MzFhVnI5cStzempmRE0y?=
 =?utf-8?B?d0hjanpVU2VCQXg4UCtkZU44N3RzSk9lVmZ4Y3g5QVhUaTAxUm1FclBMM0hl?=
 =?utf-8?B?TG53YlNTd3ZxVVZXY2U0OEpQSGZWc2VlWjVYQmROOUs5ZGI3akNWN2gydUwz?=
 =?utf-8?B?dVZRbm9iU2lsVzRmOVJBb3QrUHdhQ0ZvQTBrQXVCOVhodTkreFFYaW55VUlF?=
 =?utf-8?B?R1EyWmlGdGk2cmdQZXh3MjFiNE1tUllvb3JjRTlyUDdvNWRzNVRNN1ZtUUJa?=
 =?utf-8?B?OUE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: C9v/cLzdNPGl+fL2lLa9Df5KFGpgIAFzwpgsC6oAEz2gq6eKg4i0KcNZ5olHBW2Yi/VlPsiIHEl0fkPbuJWohoVtsiOgDX/kDJTQ1u/5sEj3B1AI0y4y7OEOd/pW+bWNIgL6ix6wB9TUBX/0nffsGRFYtMIS9M1ZFPYznhBaksC2qF5Jm7RnJYe8ksVo41fRmCKH7f0E7dd8fZFApDgkJkxJUpLRW7ON5qSOnD2UnweSz1x4cs6ogJlXIOnWCZpbwV0AYY+ynTzm8YqMSAvL/1EBWb5nHTPp0cRkkrZn1kZoeSq4uvH1c21OfUnZ3TaCPa1aHQCZzHG4mrTDUUWpK0KJLPGsrjvwHeZcXL6elz0cZPKv8R73e9ZRbv9KWdMGIgaVB2KfoiAzSdL9JXl8EoGmofbCbppHDC0rO4lKdb4ccNZR4tLUhznvS2sVLC6n1w6HGG2vIwgX48rgyhuuPn2+vqyv4TdSB0JKt+PaeloPvyH14PAGip7IMl1xuLJWQiIqUHZ9+er3He+dP38KMNWOd8cUQKYEsOBxgNaXVaog28riy67wU2d3x1ZzxYHVXOghVzgnSTyhuKwLa3yBHThJzbCqMUhL6BIcdp/SABU=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 547df9df-89af-4970-b24b-08ddf6193573
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF35CFB4DBF.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Sep 2025 18:37:09.1590 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DkwRz3K02+xhh+BCyC+59zcHJ9oAbCl6uG9RN+K407MYTOKxnX8nBUIhILxzd4RkdpZHtsTRipSc3QcwIQv93soQI5wUYGOg3ilthG/AKGo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR10MB7214
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 bulkscore=0
 mlxlogscore=999 suspectscore=0 malwarescore=0 spamscore=0 phishscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2508110000 definitions=main-2509170181
X-Authority-Analysis: v=2.4 cv=JNU7s9Kb c=1 sm=1 tr=0 ts=68caffd9 b=1 cx=c_pps
 a=zPCbziy225d3KhSqZt3L1A==:117
 a=zPCbziy225d3KhSqZt3L1A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19
 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=GoEa3M9JfhUA:10 a=1WtWmnkvAAAA:8 a=5faSsxG-gbOd22xGPikA:9
 a=QEXdDO2ut3YA:10 cc=ntf awl=host:12083
X-Proofpoint-ORIG-GUID: xim86Ly4mcWYtTELRlxcauNhllvtlJm7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX2OGilPR2NDN+
 +PDOkAtP2ghp+o21E7wrOciNTBxrigp1lICQmNO9tnbt33LSYu4bTqO3wKdjJAwgHWIq63h3zUm
 qM20itiadTN2tUbY8t5RjFsIOWzneUuTOTQ2fQGElz9Fr5z2TN8OS+YcYqSmS0zBLN+hfHdUI0Q
 A+TCI42DPVz35w8RLR70228yFBKyN+3g6F59s5vhZL6IqxanlyH/LsqIJlLiQUXwLPjmmJBTVqh
 pqaomKNfbmkFJVJr/zvRkR8z+1MMHSWAeXjk0dpfx6qy1Kg5shqabdrwj0H2n9XbYBqVUhNIqkm
 BgRb7bOR4EbNp+j9TR4Lg9R9gpi5Y843eJ573Qd3qKq0HCuNJSkH5bWLUj3pCNLYB9Ep+DlmR8p
 ff8bIKm+2tTJ+yqbe5j48F4awnLguA==
X-Proofpoint-GUID: xim86Ly4mcWYtTELRlxcauNhllvtlJm7
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 8/25/25 8:36AM, Liao Yuanhong wrote: > When using &, it's
 unnecessary to have parentheses afterward. Remove > redundant parentheses
 to enhance readability. > > Signed-off-by: Liao Yuanhong <liaoyua [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain 0.0 ARC_SIGNED             Message has a ARC signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 ARC_VALID              Message has a valid ARC signature
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.220.177.32 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uyx1r-0003Tz-Ix
Subject: Re: [Jfs-discussion] [PATCH] JFS: Remove unnecessary parentheses
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 8/25/25 8:36AM, Liao Yuanhong wrote:
> When using &, it's unnecessary to have parentheses afterward. Remove
> redundant parentheses to enhance readability.
> 
> Signed-off-by: Liao Yuanhong <liaoyuanhong@vivo.com>

Applying.

Thanks,
Shaggy

> ---
>   fs/jfs/jfs_mount.c | 10 +++++-----
>   1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/fs/jfs/jfs_mount.c b/fs/jfs/jfs_mount.c
> index 98f9a432c336..52e6b58c5dbd 100644
> --- a/fs/jfs/jfs_mount.c
> +++ b/fs/jfs/jfs_mount.c
> @@ -325,13 +325,13 @@ static int chkSuper(struct super_block *sb)
>   	if ((j_sb->s_flag & cpu_to_le32(JFS_BAD_SAIT)) !=
>   	    cpu_to_le32(JFS_BAD_SAIT)) {
>   		expected_AIM_bytesize = 2 * PSIZE;
> -		AIM_bytesize = lengthPXD(&(j_sb->s_aim2)) * bsize;
> +		AIM_bytesize = lengthPXD(&j_sb->s_aim2) * bsize;
>   		expected_AIT_bytesize = 4 * PSIZE;
> -		AIT_bytesize = lengthPXD(&(j_sb->s_ait2)) * bsize;
> -		AIM_byte_addr = addressPXD(&(j_sb->s_aim2)) * bsize;
> -		AIT_byte_addr = addressPXD(&(j_sb->s_ait2)) * bsize;
> +		AIT_bytesize = lengthPXD(&j_sb->s_ait2) * bsize;
> +		AIM_byte_addr = addressPXD(&j_sb->s_aim2) * bsize;
> +		AIT_byte_addr = addressPXD(&j_sb->s_ait2) * bsize;
>   		byte_addr_diff0 = AIT_byte_addr - AIM_byte_addr;
> -		fsckwsp_addr = addressPXD(&(j_sb->s_fsckpxd)) * bsize;
> +		fsckwsp_addr = addressPXD(&j_sb->s_fsckpxd) * bsize;
>   		byte_addr_diff1 = fsckwsp_addr - AIT_byte_addr;
>   		if ((AIM_bytesize != expected_AIM_bytesize) ||
>   		    (AIT_bytesize != expected_AIT_bytesize) ||



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
