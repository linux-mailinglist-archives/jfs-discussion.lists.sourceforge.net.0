Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1A2918A3B
	for <lists+jfs-discussion@lfdr.de>; Wed, 26 Jun 2024 19:41:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sMWdw-0002WY-5q;
	Wed, 26 Jun 2024 17:41:15 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1sMWdu-0002WO-4D
 for jfs-discussion@lists.sourceforge.net;
 Wed, 26 Jun 2024 17:41:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C0h7jXAJkavUjLvtc5AoOJZLaWnc2naI5DApFaHvA9k=; b=l2xSgNpZ+8F1mvmEq31cs1/ofJ
 keVLJqGxgBhduvaFGtBoE9717RJuDvdqPJ16hn8hIYJ1dPVeXR4PRt8ozrgq2sc6ZpRz3gD8o68DJ
 ok0o3LXZlboo9kbNgGwl9uJmiYsZlFBY5vtPhumKx/9EqDRIU8o6quALzVJQpQ4hAEA0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=C0h7jXAJkavUjLvtc5AoOJZLaWnc2naI5DApFaHvA9k=; b=RL/VuE66sKgNhDISrGyficSFm8
 WegoVfjbmrcaZ9VOr0TN8DYRk3IkP7wgTyPpmUUo5Yk8pR8dUALjJRR3IcAI9myN4ZoteSVEYrXWD
 3ONp480NnoTky8B5ij0S34p0LHk4HKWfFex1ludTgq/gQYesR6arLx+3IvBoWXR7Gux0=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sMWdt-0005MT-HQ for jfs-discussion@lists.sourceforge.net;
 Wed, 26 Jun 2024 17:41:13 +0000
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 45QEtU0h019623;
 Wed, 26 Jun 2024 17:40:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
 message-id:date:subject:to:cc:references:from:in-reply-to
 :content-type:content-transfer-encoding:mime-version; s=
 corp-2023-11-20; bh=C0h7jXAJkavUjLvtc5AoOJZLaWnc2naI5DApFaHvA9k=; b=
 haoHABHuIhGML0cT8sZT23h8x+514CxkQPzsXdcup62eyYssfTD6d7jNsE2c4gDL
 ontaBhJn8qvL8gpi736UXSnmbSrL9o8s/k88UuYLJmuPmzSzvuqhvAr8sB+v77St
 v1nLqZbTr0dnBMGaSfE9C4aYGiEDhdZvh8F+5CJXZDHg+o6f1J2UYD/NWxH2ygI6
 ItZ/StmI+PiEdFtalcu978Xd2a5DT8NmqaeE96URQ2KfCydVK/iRcahSj4aOaoEv
 wuAu0glrddMy5NY+ECCYOTYzI/0WiStaqmfosu5sByhPDMAT3oxXZBffVicvk4LT
 NCdUcntwxbQx7TYVgbgsLw==
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3ywp7skxag-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 26 Jun 2024 17:40:50 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.19/8.17.1.19)
 with ESMTP id 45QHb6T3023445; Wed, 26 Jun 2024 17:40:50 GMT
Received: from nam10-bn7-obe.outbound.protection.outlook.com
 (mail-bn7nam10lp2046.outbound.protection.outlook.com [104.47.70.46])
 by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 3ywn2fv38s-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 26 Jun 2024 17:40:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ii6kyGpxDcHTt7cNW99lJ2ZsIp1VTQooCBk3ezjH2P/cYu3c5SV/aq3SugN0DBXiWOgGMkfyHQo0Q8PBoxYYts3N+V0xJ9IkIHivUyETJt1aPOxLsvJJgXRCjKIJdTo4X/pX5feoAwN6gKMbODJniJd8qonyaQDlRoEphEneHWSNKz7bSUdpvWtkav6qwLyUmRbVr2V/PNUdwulZ6JZ0lFjJl+mGFZkojkFa9nMY2PYakMp9ABvp5tUZlWxsH9dzZQSpxwrFft1B9vFcVSXDnEOTK1unEtesNKArkqCc3jmbEi5JlN6jXVVO6gWoBkamBwXYp0TPIZJjGNAIhdKnfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C0h7jXAJkavUjLvtc5AoOJZLaWnc2naI5DApFaHvA9k=;
 b=bxW6mffpe99AqzHzP+d6XWgGnakCDyTp2VL0GimL5+cr65TCydfLsdGleOjCsSqfgaq1znaeYEl+ptXPcpVd5eAx99qAZtsMz+plNlnN5J950uJPqK5hRB9voHc6cPmgg82ldHgfENch5Mr0gf5ksTxfu56azd6pNAhTgTDj1/WrmmzOpsvv4vhZ8p+bjdGVvW2ukqy1vwBFuH2M0x3cYPVgO0T6zu5rhwMX7XEIdzb115BsfKzqLTNqHXJoLXagf6GPsKxwCsvw0ZOY+pik3flKUfhu7LPYKKEqILXzVVe+7D+r1DfFj5HewEI2m3mCabp1+jFj8MuCyyf7QGYkoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C0h7jXAJkavUjLvtc5AoOJZLaWnc2naI5DApFaHvA9k=;
 b=goxgJuWI/A5PRBq1yB9QSl7Aea3kdiTJ2QSq2gTuYy3WRILyeKrqUS2z63T5EiovO8AQUophAgijD1oZtmkBeYTDNAbzSrAWoFyvb4xXZnb7BNg0MJg+J2p3yn7watqbM5VlDjGfEnwdPbkGzxaB7qtLPx5xYAhaFY5xPwbbc3g=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by IA1PR10MB6027.namprd10.prod.outlook.com (2603:10b6:208:389::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.32; Wed, 26 Jun
 2024 17:40:47 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb%3]) with mapi id 15.20.7698.025; Wed, 26 Jun 2024
 17:40:47 +0000
Message-ID: <52a063a3-ca63-4dd9-8914-62ef0a7ed794@oracle.com>
Date: Wed, 26 Jun 2024 12:40:44 -0500
User-Agent: Mozilla Thunderbird
To: Jeongjun Park <aha310510@gmail.com>, shaggy@kernel.org
References: <20240426034156.52928-1-aha310510@gmail.com>
 <20240530132809.4388-1-aha310510@gmail.com>
Content-Language: en-US
In-Reply-To: <20240530132809.4388-1-aha310510@gmail.com>
X-ClientProxiedBy: CH0P221CA0009.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:610:11c::11) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|IA1PR10MB6027:EE_
X-MS-Office365-Filtering-Correlation-Id: f6e5e9b7-9f78-4f46-03ce-08dc96071ca6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230038|1800799022|366014|376012;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aWRiUzdad1BPay9uRStxMFdKWlo5UjgyY2RVcGxISS9IQzV2aXB2MWljY2dL?=
 =?utf-8?B?cVU3TmtxNUNaZnlWN3B4bWg0Vnl3enFMUUFKVUZBbGVDNC9Ea1EyVE5aMmpB?=
 =?utf-8?B?MFo1c0xRd01KZHhVZ256NGhLSjRRREdTYXcxSS9HR0FXK0VoT1FGTDZPMTFJ?=
 =?utf-8?B?NDdGRHYzRGJubGplM3haYzlWekRhK1hrYXMxV1hEVzV5YkMyb1Q3M2NnUVZk?=
 =?utf-8?B?TnBSb01MQmlxNGNvUmpORm8vbDF5eHpkVnZtenJZbEcvemVvMHJhS3BJUDBP?=
 =?utf-8?B?elp4QjNIY1B4aWZwd1JrTXpzL0xXWkRGZnJzVnlkVkROdVFUbi8zR2p6N0FV?=
 =?utf-8?B?aCtEeFBZVnphM3hNOWRUOXFjcmwzTEY3S0gxTy9QeFZZLys0WGo0VUsxNnRT?=
 =?utf-8?B?cFlvUHMwSzBoMmNrUC83eTZiWkl3NWZPKzR4ZVBJUlc4TFJFNkdMQ3UvL2ty?=
 =?utf-8?B?YjB4SkF2TE9jWnhVTVUvQ1FpNnFTY0puYnBKckV1dDUwbWFmMlNvbWgxeHVz?=
 =?utf-8?B?NFphN2pSblZ5cDNicmVDeVBLNWVpejRSZnAreG1WdU5ZSkxGS0piZFZMUGtY?=
 =?utf-8?B?T3k3Y0xzQ2VOcWFaRE9OQnRUQi9BSTZlL2s4eWQ0cHhoSDFzM1dkVFRSM21H?=
 =?utf-8?B?ODA5aXh5cFl3YmNJSi9OSzRZT0hHajN5SGdvSjR2Uit3UVU1azZPSFJTU1Zp?=
 =?utf-8?B?aHJOb3ZNN1Y2MnowVXhBcUMxNHZRNXJRYUgvOE5ySUtXYXFQeWJzeHVCalhz?=
 =?utf-8?B?TFkxWnFMRjNlMGtXWEY0ak9FTEJlajlGNkVqWXI5bW5xSGxCa0VvcGNEeWxX?=
 =?utf-8?B?Z1JudWdjOHJFVmpldDVrWFZocTFJREFvcjMzR3pPbFYxOS9aMkhGQy9kWnpt?=
 =?utf-8?B?Y3laZjhOQzFMeFJTRFk2d0ZEK201V3l3SzJWaFZFMTE1NUw3TTA5S0h2SzZs?=
 =?utf-8?B?d1ovQ240aldyMXh1NFRYOXVCQndoT1NUaG11YzltbEtza2ZnbFllRGpYSlFy?=
 =?utf-8?B?WjFKZWNhcENmbVVwWFRtMGZGbWVHbkFKT2VJTG1WUjNmVFRIYWNBM0dnYUZZ?=
 =?utf-8?B?bHBlOUQ4NE95SmdNWjNZNUtkeHlsWE1jUFBsSU9SMDdER1gveG5jcGc5Q0Nu?=
 =?utf-8?B?MUliTDNHMVlNdUtxTlZjM2UveXFDdDhwN3lMV3B1SjAwV3owL0lVa2JUcVBK?=
 =?utf-8?B?Q3QxZHo1Qlowb3VxMkVzQzhpM2lNb0laRjlmd2Qzak5CbWtQUTNPbm94WE16?=
 =?utf-8?B?cGFBMHV4b2c2WmppYWVLb1ZlckJsWHptTUErWWd5OHU2dTl1YW9rNlNuTm96?=
 =?utf-8?B?UmVoZGMwVm1IKzlCeVpSV2Z4eU1XRDFVS0V1NE5Id0E1c2hiYXA1eUZWZmcr?=
 =?utf-8?B?enhmdlJwNkk0RGluUEhuSGNpYk9keE04ZkM3SU03TWZpUGcxSklXRXVoZFFn?=
 =?utf-8?B?cDljY1EvaXV4aVMycGcrNmZJTXBJZjhjMXBwUnNzYUhrcHE2aXVWTXJMRnVG?=
 =?utf-8?B?T0h2dTV4c2VJT2ZmN01yU041OGFEeEtzbGRnYUUyRml0Um9GUEwyT3plSnJP?=
 =?utf-8?B?TTI4MWZET1V2SytHczUzYWhkQmZFd3l6ckpkWlhrK0xKSXJqMFh5N1hBQWlo?=
 =?utf-8?B?TmN1Vk1iOGJsRWM1QTZ4QjFLcVRxZ2pqemFaVnN5T1lvRTlNSWZCVFhCanhU?=
 =?utf-8?B?ek81NGFtR3JBaE16N0ZGS0VPbXhXNTk2alcrVE9oUXd0OFE0N2ZoT2ljVVp1?=
 =?utf-8?Q?SHvWacngSN4ZIp2NNuQG1t/S278pPDX8GFhDb6/?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230038)(1800799022)(366014)(376012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MDVjUFo3RzRWamoxMkxnVklXVVNQTTRaMXYwOVNwdVE3UFArWTFoWldDeUFI?=
 =?utf-8?B?UndNbitpNjRNL2pmOWhKYWFYbW9KRzF6YjROc1Z2MlNtb1JmR1hYQUNySVBX?=
 =?utf-8?B?a0JRV2xGazBQVjdHRXBXZkRDZGRiUFA1YXJjekZjYWdodTB1ZDg5bDN4ZllO?=
 =?utf-8?B?RjhlaFIvZTRuMFJ5QU5nZHY0ZXVKQ0JKRng1b1N6Z2hKNU4vZkxVektSSHJM?=
 =?utf-8?B?aitYZkE0WDVqL2xrcktiaHNGRUhYSnVYSG8rcUtNTlBLMWJCNFVWNFlBNjhl?=
 =?utf-8?B?eE9Oby9tWnZhb3RwN1VyNUY0MnVDWlRGNjdaTWl0TTZsdXhyUWlycjRCT3dB?=
 =?utf-8?B?TmFXM2tveVJpakVqY1JSQXFuWVh1bXpsYklWbTZQSDlCSGpSa1Fma2RFbExm?=
 =?utf-8?B?ejE1YStMcUlLdUYvSDF6dmNITUg3RkVZc3VJRExjMVJMMDBHU09RdytLRVVG?=
 =?utf-8?B?VytOK0UrVURZWnlMQnVPVFZHMHk4WHdUeFQrcEd6QnI5dk5IYkRpb0tKWElr?=
 =?utf-8?B?ZlJ4TEZrZmNmbmgyYkNvVmZ0V2xUdGllZnhyRTVWK1h1YS80NkorUjJ1SVBJ?=
 =?utf-8?B?RXYyNEFsdFIxMGVOOWlNdnFZdDBST2J5bHhBUngxeXRVV3M5QVpOZlg5M0Q2?=
 =?utf-8?B?ZzBkTzNPK0xwM3pGdjFaMjhqWVZNcVBXREovMmx6bzU0dXJWcEw4Vkg2SW5W?=
 =?utf-8?B?RU1aMXZtYlZxNVhDdEM5WTRRMlZLZ0lQalMxdlp2Vm5Hd2RKWGRQOVhPdm14?=
 =?utf-8?B?clVnUmpYUVBxdmtIU0RsNmxMY1dXZXRIU0VpQmE1elVoQkt3REtYSE5lSTRI?=
 =?utf-8?B?cDIyS0c3TmprT1FwMzhzTjE1RTlTZWg2ZGVSZ3ZSUW8vb3dpM2J0L21uUWxJ?=
 =?utf-8?B?bnNTZFp2K3FtcTZHdXVja1Z3TVdoUmhYVlUvZVVRTFQ1MTlabmVpRU4xSlB2?=
 =?utf-8?B?TTIwTmNISloya05sQ1ZySkU4MjVDcWhxL012dDRkWktXU1VXNUhLdzBvakxn?=
 =?utf-8?B?SGVnVlFTUHBYc3dOc21TQlJRYnNzQXhYdnZHcGh0VmswUVlkSFBKN0wvdmJT?=
 =?utf-8?B?UzVUbW9JRDRNV1A5OGpjV1M0RWtubU42d0NnYk10K1VITGttcVliSktSdEFj?=
 =?utf-8?B?T1ZKWWFOZno2aVdMZ0dLd1Z2NjVWZnRJdVp1NlRPa0pUOTEwWDJyWFRnVld3?=
 =?utf-8?B?NTFSTmZzWkYvck1QUTltVW5rUTExd05jMzNRYk0yNVpianRDT1lGOXN1dGND?=
 =?utf-8?B?MzBFRjEzbkZjOFRkSUJYZGc2bU5kZnZDd2FveS9HOWlJa3FaVEVBZjNSMVFP?=
 =?utf-8?B?czJXbUpOSkhnODVzS0EwcHlxTVdrNHpuN1JUUWE1cFFqVE9hVTRPLzVhVkhh?=
 =?utf-8?B?VGMvMWhGK25BVFVvN3Y0WXFWRjIyNDNQY1BKMmFUYlZvL04wS2ZwYk9ra0tt?=
 =?utf-8?B?bjBNNGlRM1hvL2ZqNzdiWXlVUStHOGZhcjlZRUNiNUZaNXM4VXhLQURSTExY?=
 =?utf-8?B?NzJ5SER4M1ZtQUptL0VlM3JTdHVwRmp4WUdXWDhtY3cyVmRvN3VZc05zSEhK?=
 =?utf-8?B?d01kbitSQkY2SWNWUGUzK2tYNGpnLyt0TlltTGhWN2QrWElUZUwxV2V0bTg3?=
 =?utf-8?B?VFpvMDNyRll4WS9VUkhmSndoYjdxejg3TFJETGhZR2lpSGhHandpMVBXK3Bw?=
 =?utf-8?B?elJHeVVybkVCSmduaGJlZFBuTlRxUmltRDdWY1BOZnNYNW9VL2pIbkI0c1RH?=
 =?utf-8?B?UUE5QkVlTkVkaWRlV2wwSWpxMDhadStWQ1JYQVNvVUdyMVMxaE5zcHJkbkFE?=
 =?utf-8?B?SFRPT2hvR0tXa3EyNFYyQTVwdVdaVzNSMVlpTWlraDdGMjEzWExheklJTjAw?=
 =?utf-8?B?T3REcTAyRjFkVDIrYUlsVWw4Vnl3b1NiZzNnSUdhcDlpU3p3SVl6U2Q1Q1F6?=
 =?utf-8?B?ZWl6MnVHcDB2VG5Nc2NTVW9EUUZCQk9DSVp5Qy9ETDg1TnF6QkowQmF0a1lC?=
 =?utf-8?B?Uk5KOXgvVzVFSEV4YzhLaE9mN2ZwK2E2dVp5QzJvWVFWMVpNN0VpazhybGw1?=
 =?utf-8?B?WngzMmpLVGZLMXF5WGZmeXR3dVBFS2toNjJoSU16VGFOelFBbHh5VGt5QWtx?=
 =?utf-8?B?UDUzekttUWt1MzI3QWs0YWlsb3ZmdVB1eDZGVi9DblJmK0phZllpZnJFMzJu?=
 =?utf-8?B?YVE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: qgWCKCtUBP7pVcqcMTxmDiFT1AuXE0Fy5C4uzJ2vSVll5Gc9f9ONw5z1mzOjtfRdCWaVxyayfMyrizcRiFut11iKrW0trusIxb55CVm43XFL3SpKAA4n/JdYNpjh4pn3h986ynSj+t01B5OhlFY72J115VeH+kc9V5amxECeKpxTnwKFtZPBWSrGLEcAQkpNHg3p8cNSmoALZm+Yb6nm1RoSlbje2FnzuTO9LoNVOCdu8y+1A/E6VFcSdwb7PazQD7L+LEOFZxuP7XfUJ5UMh6ucpswH5xBLHGP9N4fJvASaX7b2hQ1zJxD7JPDHhgcFqeYA/WVrEJmuogl7Zzt+05IwLHDR9N1JZEOo5wxXPDBKxnva+wxmGitVBq7fY2HqNcgKdTjDdMntpSislYAKDwZi54lvlsRFPAvfKV7Xj3um95SU5IrYnW/jYiHJjcF0064UfGmy3ZbHQ9uLbh5bR4TnHaQYnl0wdMLUkTtJKmfWJEVhw8EzrwEM2gm7KsFBsnk/ztXQWWwBLpwB1ZShDGY50SkT7eHkASXRACTfjen9WISqVZkUBmwBW3xk16uIefSDiefNFVCFykzLV7H8Q7n/VFGxETdFlmn5wsDhexA=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f6e5e9b7-9f78-4f46-03ce-08dc96071ca6
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2024 17:40:47.1017 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RISr72zaJ0n72OR5KvQQQmuj5T4ro94WCBlfIjLCBAA5pLrWr/UynX7n0eLiZLD84NUGkIP0mSBKaA7UAFFwDeX+/Y2d/qor6s3qaoIKxUo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR10MB6027
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-26_08,2024-06-25_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 bulkscore=0 suspectscore=0
 phishscore=0 adultscore=0 malwarescore=0 mlxscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2406180000
 definitions=main-2406260130
X-Proofpoint-GUID: oryXnGrjiQq1N99OZyyo3OHl9bWBSW9-
X-Proofpoint-ORIG-GUID: oryXnGrjiQq1N99OZyyo3OHl9bWBSW9-
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 5/30/24 8:28AM, Jeongjun Park wrote: >> >> Matthew Wilcox
    wrote: >>> This is not a good commit message. >> >>>> +   if(agno >= MAXAG
    || agno < 0) >>> >>> Please follow normal kernel whitespace rul [...] 
 
 Content analysis details:   (-5.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [205.220.177.32 listed in list.dnswl.org]
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
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
                             [205.220.177.32 listed in wl.mailspike.net]
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sMWdt-0005MT-HQ
Subject: Re: [Jfs-discussion] [PATCH] jfs: Fix array-index-out-of-bounds in
 diFree
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
Cc: jfs-discussion@lists.sourceforge.net, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org, willy@infradead.org,
 linux-fsdevel@vger.kernel.org,
 syzbot+241c815bda521982cb49@syzkaller.appspotmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gNS8zMC8yNCA4OjI4QU0sIEplb25nanVuIFBhcmsgd3JvdGU6Cj4+Cj4+IE1hdHRoZXcgV2ls
Y294IHdyb3RlOgo+Pj4gVGhpcyBpcyBub3QgYSBnb29kIGNvbW1pdCBtZXNzYWdlLgo+Pgo+Pj4+
ICsgwqAgaWYoYWdubyA+PSBNQVhBRyB8fCBhZ25vIDwgMCkKPj4+Cj4+PiBQbGVhc2UgZm9sbG93
IG5vcm1hbCBrZXJuZWwgd2hpdGVzcGFjZSBydWxlcyAtLSBvbmUgc3BhY2UgYmV0d2VlbiAnaWYn
Cj4+PiBhbmQgdGhlIG9wZW4gcGFyZW4uCj4+Cj4+IEhhcyBjb25maXJtZWQuIFRoaXMgaXMgYSBw
YXRjaCB0aGF0IHJlLWVkaXRlZCB0aGUgcmVsZXZhbnQgcGFydCB0bwo+PiBjb21wbHkgd2l0aCB0
aGUgcnVsZXMuCj4+Cj4+IFRoYW5rcy4KPj4KPiAKPiBJIGhhdmUganVzdCBkaXNjb3ZlcmVkIHRo
YXQgdGhlIHBhdGNoIEkgc2VudCBsYXN0IHRpbWUgaGFzIGJlZW4gbGVmdAo+IHVuYXR0ZW5kZWQu
IEl0IGFwcGVhcnMgdGhhdCB0aGUgdnVsbmVyYWJpbGl0eSBjb250aW51ZXMgdG8gb2NjdXIgaW4K
PiB2ZXJzaW9uIDYuMTAuMC1yYzEuIEkgd291bGQgYXBwcmVjaWF0ZSBpdCBpZiB5b3UgY291bGQg
cmV2aWV3IHRoZSBwYXRjaAo+IGFuZCBsZXQgbWUga25vdyB3aGF0IG1pZ2h0IGJlIHdyb25nIHdp
dGggaXQuCgpTb3JyeSB0aGlzIGhhcyB0YWtlbiBtZSBzbyBsb25nLgoKQXBwbGllZC4KCj4gCj4g
UmVnYXJkcwo+IAo+IFJlcG9ydGVkLWJ5OiBzeXpib3QrMjQxYzgxNWJkYTUyMTk4MmNiNDlAc3l6
a2FsbGVyLmFwcHNwb3RtYWlsLmNvbQo+IEZpeGVzOiAxZGExNzdlNGMzZjQgKCJMaW51eC0yLjYu
MTItcmMyIikKPiBTaWduZWQtb2ZmLWJ5OiBKZW9uZ2p1biBQYXJrIDxhaGEzMTA1MTBAZ21haWwu
Y29tPgo+IC0tLQo+ICAgZnMvamZzL2pmc19pbWFwLmMgfCA1ICsrKystCj4gICAxIGZpbGUgY2hh
bmdlZCwgNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2Zz
L2pmcy9qZnNfaW1hcC5jIGIvZnMvamZzL2pmc19pbWFwLmMKPiBpbmRleCAyZWMzNTg4OWFkMjQu
LjE0MDdmZWNjYmMyZCAxMDA2NDQKPiAtLS0gYS9mcy9qZnMvamZzX2ltYXAuYwo+ICsrKyBiL2Zz
L2pmcy9qZnNfaW1hcC5jCj4gQEAgLTI5MCw3ICsyOTAsNyBAQCBpbnQgZGlTeW5jKHN0cnVjdCBp
bm9kZSAqaXBpbWFwKQo+ICAgaW50IGRpUmVhZChzdHJ1Y3QgaW5vZGUgKmlwKQo+ICAgewo+ICAg
CXN0cnVjdCBqZnNfc2JfaW5mbyAqc2JpID0gSkZTX1NCSShpcC0+aV9zYik7Cj4gLQlpbnQgaWFn
bm8sIGlubywgZXh0bm8sIHJjOwo+ICsJaW50IGlhZ25vLCBpbm8sIGV4dG5vLCByYywgYWdubzsK
PiAgIAlzdHJ1Y3QgaW5vZGUgKmlwaW1hcDsKPiAgIAlzdHJ1Y3QgZGlub2RlICpkcDsKPiAgIAlz
dHJ1Y3QgaWFnICppYWdwOwo+IEBAIC0zMzksOCArMzM5LDExIEBAIGludCBkaVJlYWQoc3RydWN0
IGlub2RlICppcCkKPiAgIAo+ICAgCS8qIGdldCB0aGUgYWcgZm9yIHRoZSBpYWcgKi8KPiAgIAlh
Z3N0YXJ0ID0gbGU2NF90b19jcHUoaWFncC0+YWdzdGFydCk7Cj4gKwlhZ25vID0gQkxLVE9BRyhh
Z3N0YXJ0LCBKRlNfU0JJKGlwLT5pX3NiKSk7Cj4gICAKPiAgIAlyZWxlYXNlX21ldGFwYWdlKG1w
KTsKPiArCWlmIChhZ25vID49IE1BWEFHIHx8IGFnbm8gPCAwKQo+ICsJCXJldHVybiAtRUlPOwo+
ICAgCj4gICAJcmVsX2lub2RlID0gKGlubyAmIChJTk9TUEVSUEFHRSAtIDEpKTsKPiAgIAlwYWdl
bm8gPSBibGtubyA+PiBzYmktPmwybmJwZXJwYWdlOwoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdApKZnMt
ZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1c3Npb24K
