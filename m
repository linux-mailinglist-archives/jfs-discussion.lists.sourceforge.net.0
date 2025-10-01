Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A40BB1136
	for <lists+jfs-discussion@lfdr.de>; Wed, 01 Oct 2025 17:31:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:To:Date:Message-ID:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jShjNSz397zWXx+23hJToIXlW/8CtjUI+G3RW+j9Yxs=; b=HpSZUn+oM14v67fqHLenParbUf
	1ymtDhG8jNTeniqPVw2KmUYryKnBD4quzZ/fcaQBM9JMDb/AKBjhpOFydo/0Y6zSeBrMmt0RIPfSJ
	FKZ8jjX81OP5bT/pOA+AGOhfV7YK/A5kGGkY33zYMXOEmPLotI66/40s65irTCjD1feY=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v3ymz-0003Qx-HR;
	Wed, 01 Oct 2025 15:30:46 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1v3ymy-0003Qn-Bd
 for jfs-discussion@lists.sourceforge.net;
 Wed, 01 Oct 2025 15:30:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :From:Subject:Cc:To:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WyUj1lpSVrs6hp9D9oO8+OO5oAh+SyqfB3sSapnhqQY=; b=aU/4s1cfd+u2+dVgwnA6JGlzY5
 ki3AG8PcE4Bhoi4PDlJMhPEvwdXEOGFpjbXOD0ZUB+lwo2QmnXj5jTstf6gtG4JDV4dYbssOpYilH
 LgAme0mDZAj2suhGhGD0j3hqf1wa+BG1jbVBW4yJ1+9MBPVfDkE9ZIZbenXtGYLNO5es=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:From:Subject:Cc:To:
 Date:Message-ID:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=WyUj1lpSVrs6hp9D9oO8+OO5oAh+SyqfB3sSapnhqQY=; b=K
 zommA4cMBBsWW1+dPhQ6f8RcbEzzqGVeKKQO+hwbjOU35qV5dzaqhnKurg2cQLQOO0hINy9hstPtv
 6gxznzT9PYVYPbKHcD5N9vB/ncAifoQTJuFhjAfveSsjg0Qp0TNO7+s1tLgr8vnm2OfMF5ezfJkBQ
 2965HK8XKzL3ugFE=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v3ymy-0006a4-Gf for jfs-discussion@lists.sourceforge.net;
 Wed, 01 Oct 2025 15:30:45 +0000
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 591FMutw005646;
 Wed, 1 Oct 2025 15:30:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:message-id
 :mime-version:subject:to; s=corp-2025-04-25; bh=WyUj1lpSVrs6hp9D
 9oO8+OO5oAh+SyqfB3sSapnhqQY=; b=BfFpW0DjLh7WL99MyMjJ3AVBYAxpFjko
 SUrPnRzxyt1962uiVgEJL1kATHmtjS6mLHnjgxt/vZdiMFgAGVElPDUbYlZoeQzL
 Cl85D3FFqxk3y+W3+PdsUwUNWTIRGEZV2xs8vvhT976DSFb0TDhxKBPJhM3g21nC
 c6CJnCpBqmeQSKRE0h0U1wnv3j7NBeSkEd99Q/GW0FLib4st3CR3xqXKOVhoi3M1
 oppqLnxloqlU4+BsMERj0KEVjwjuvgtTsqaPvj3rEOHytXLfxqDzcyPXVwwiZgzW
 wNcFJcozKsRY63rIvDbSc3o/rruBn8M/EY7Mq4MoPSm0LrTCwpvWRA==
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 49gmcq1pcn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 01 Oct 2025 15:30:31 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 591EjTTI023180; Wed, 1 Oct 2025 15:30:30 GMT
Received: from ch5pr02cu005.outbound.protection.outlook.com
 (mail-northcentralusazon11012066.outbound.protection.outlook.com
 [40.107.200.66])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 49e6caars7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 01 Oct 2025 15:30:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YYqcDm8x2taw4V6EpWXhdOrnmhME4PIk9qNoU0GC9yRQVx7z1udv5h/emTgsaTan8OwabW/ycFVeG+W/gCJTQT+6ZIPnj7RLRdQdjS4qjxRaiO4ZilB5UB7WE0WLE0nRkKoZr5kMhW3hAxrqhvR90Mwg8H1pCdKz4qDu3eyBnKgcWBoKHzwSwrNSZztF1IvJBZ43zNQ9wqFvTwfWTb+boWHzHjxLG5zTXiNf8x1UKXTHDd/J1pFf07/rGf6aIHnWx/hLfb+ZFQEyKE94GqCdiNiJ0YJlEyVWrZ5+A5IcRI/Zw4G82p46mV05d9bm9allhLyXiy47D2Ifqo6EFKt2gQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WyUj1lpSVrs6hp9D9oO8+OO5oAh+SyqfB3sSapnhqQY=;
 b=BaWlIWAUJ/jt5tTYfojy5t0ZEDfTP5oSRrD8ezan1yAU7MXmtZ80qT12jRRBGBMHIFL+gO139YPahpPMPePJ7lzZJ1b9nbI0k9ua9vTsfL4ZyaEPtmPc0Q6/XrUZxc+AIusA4vn0575R25172F7WHe5fYQv1jMqAvL0NbOaOqXumamVDtvUAuIP0Q0rVHh1cyAzvTKYFEpw4T0SEK1ePeRtqpb04Um1B458Oe0OVlrWv0a94AvIUoAxNVpDK6rcugCClAFFYOUVnikq+yWJUOIWC+lXNcC3pHgL3M4oaWSsqZqRpUlO5JFnGMe6htY9/SVUVCNfsMNFS9XID2PFPdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WyUj1lpSVrs6hp9D9oO8+OO5oAh+SyqfB3sSapnhqQY=;
 b=rXsBgla3qBE/KZY28wZXeHkGrB5PQA87fz2U8nUYHqPqCNdFTXLafwotbHjg9cFwHgjGbOdsYHubQVuKOmOCbJMHWi4iRHCrgv+c8sd3PIoS2ow5FYQRs3FOjZ1ariN13xxAumcuqGKwiiXi7T9WWG3Z3xqb5qfIsmMFAYUbT1w=
Received: from DM3PPF35CFB4DBF.namprd10.prod.outlook.com
 (2603:10b6:f:fc00::c1d) by SA2PR10MB4538.namprd10.prod.outlook.com
 (2603:10b6:806:115::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.18; Wed, 1 Oct
 2025 15:30:24 +0000
Received: from DM3PPF35CFB4DBF.namprd10.prod.outlook.com
 ([fe80::211d:441:2594:6cca]) by DM3PPF35CFB4DBF.namprd10.prod.outlook.com
 ([fe80::211d:441:2594:6cca%8]) with mapi id 15.20.9115.020; Wed, 1 Oct 2025
 15:30:24 +0000
Message-ID: <5c57a633-af5b-454e-8adf-c28b3e66df12@oracle.com>
Date: Wed, 1 Oct 2025 10:30:17 -0500
User-Agent: Mozilla Thunderbird
To: Linus Torvalds <torvalds@linux-foundation.org>
Content-Language: en-US
X-ClientProxiedBy: CH3P220CA0017.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:610:1e8::22) To DM3PPF35CFB4DBF.namprd10.prod.outlook.com
 (2603:10b6:f:fc00::c1d)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM3PPF35CFB4DBF:EE_|SA2PR10MB4538:EE_
X-MS-Office365-Filtering-Correlation-Id: fb64e366-6539-41dd-e116-08de00ff707e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?amxWNnFxNlpSVEgwKzZEU2dteWc1OEtFSk0rb0FBL2NHL2l3a08vVnNQZlc1?=
 =?utf-8?B?OTdOclVRS0RTa0RzSGFEa2hKTWEyNVBTUTgvbmpYNUtRaEdoRkxRSmwvcG1z?=
 =?utf-8?B?QzFsc2U4b3JDb0ZkdVBzMWdOanhpWVFlb2hZNGk4dXUzZnd3NWRMbEhuZWdW?=
 =?utf-8?B?TWgzWVBZVlZ1ckprVFZxUy9SQkw3UHNSWUtwQ1drYyt6a1gxL3RVd3RrMlAx?=
 =?utf-8?B?VEoxWk9sV3NRa2lQdklIYjVvNmlLNlJocGNyWlArbkdkaE5ZMVZKUmJzZ2pz?=
 =?utf-8?B?NG94Y3RvaGpQNHIzTGNnNGdwNi9MTEZqTFdrbkMrQ3FkNFh4TE44ZkJMdlZ4?=
 =?utf-8?B?bTBDd2lZeVkrR1V0ZE1TVkpaSGVtM0pxY25ONVFIVVFjRTdjYlU3UTh6Y2R2?=
 =?utf-8?B?clJMZzcxenVhU2kra3N5Yjk3ZklJKytGa2JKSnNPZzBHcW5kWmdPNFNCc1Rl?=
 =?utf-8?B?aFNGOTZSenB6RlordjZ6MzRhQUFSZFptdFR0SlJoRUtvOWJ5SVh4VWN5Nkhl?=
 =?utf-8?B?Tm1NUXV2cWlwS2Q1QVZIeWhsd0pXL09RVUY2YURLQ09adjNEUkhGeGRZRHJN?=
 =?utf-8?B?Mnd4SUFUeU1ZVCtRbnMwUWk2QW1wN29hMW42S0d1VDFFc3NqN0hCVGFwMncz?=
 =?utf-8?B?Yi9HVlRWdWpBNTRsOHRYNllvZlhNaUxpRXoxWFJ4T3hTNExYZlNIRzgrakkw?=
 =?utf-8?B?RFFXVVZYWm1oYnFraWFUVXVLSVNYNHMzWHNKWWxGaXowTDhFQytScEtNR1Fs?=
 =?utf-8?B?bEQyVW9LSFo5Sjg3R0hwSGhWbEVkSk5qanVlOTRqYk1YQ284OEQ5WEJIR2Nm?=
 =?utf-8?B?U3QzS21aRnM1MEtyY0xISERCMlVENldJVGRMZFAyQm1ub1Jwa25UeVArRUVt?=
 =?utf-8?B?MkxoYWY1QkNQenZjZXhUemRoQ2FnSWJlMzQzaFJUSStQS2ptQmZiMGpSVWlG?=
 =?utf-8?B?UU9sVm9jcmpUNHlHQWRqY1Naa3VHWHVZelM3UGtVa083VlNsNjdua3BtMldE?=
 =?utf-8?B?TVZXSXc2VVdGUytqTEdVVFVueFBoWDhqYUovU09SaEtWQkJhU2FOVXJqNjNh?=
 =?utf-8?B?TEVSMEc5WFRockgrWGZLdVlxSnBzbzltekhVR3M3N01wRDlNLzVPSkltcUVm?=
 =?utf-8?B?U3drLzN3ZHN1NzQrRTBBbmR6YkNsdHNqRGVMT25XOUxTb1ZNbFF4R0ZERmJM?=
 =?utf-8?B?NlptaUF6aVJSQUh6NkhUODdLN2RzM1Jlb3NhN0pmN1gxTU5QQWFrSlE1dVlr?=
 =?utf-8?B?RHkxc09vVU9rVmM4Y1AvZGxBM1FMRm8rcVhuMEdiS3EzUXhOODV4MWxhMDR5?=
 =?utf-8?B?Yk9xU1JwVnRxQnphVGtYaDFsYk5HTTQ1YW9Ua3kvRHNBejlPMFRSdkJGdWVH?=
 =?utf-8?B?Q05BU1lWeE44d2JHbjcwOVViQ0tLaElpMWQrYm94OGZ4RzdZMjJYZFVRVGFD?=
 =?utf-8?B?dkUzU1g0UGNMVGRNVnJrK09pRlExeHcxTEI1UFJ3RzRpSjA0RVh2QjB6Ynd6?=
 =?utf-8?B?b3BEOEU1ODFXZVF1VTllQ2h1bGJmVUFHdkRwOUhZT1lyK1dDOFBGa3c1RFZv?=
 =?utf-8?B?c2FROFJtb21XdmJEQTcrOFAxUGw1MEYySEZldnhFREJDeVJsWG9iSE4ydVc4?=
 =?utf-8?B?bkpldW10QVlCaW5TcnFwdGNVQTFNQlBBU1pxM05aRzZlYnA5UmRUWTZXdUJp?=
 =?utf-8?B?aCs4Ulg4RllhdXBQMmhtbHk1d0VRVUV6MXBJWUwzRDk5TDMybnVkdVFRVExN?=
 =?utf-8?B?VkFVWW9WZldiVllSTVd4KzlsUFhvQTRPUEdtTG0rYkZRa3k3Y0RrSE1OWTVz?=
 =?utf-8?B?NG1RRDV5TFA3T0tSMmZTQ2JHK01MMkpiZS9EaGN5SlFLWnEwWlBjWmdoUERI?=
 =?utf-8?B?QzNxUnNZazRzeFFmTXJUSXhZWEY2bmdwVDNqQVlHMFpSaXp1NnE4YjRtSFlo?=
 =?utf-8?Q?/YkOFP4xRUP95fJaQ/2opPuya8pxhj6j?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF35CFB4DBF.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NGNNdXFoU2lTSDk5QjlOWTlFa21QTU9HNlBSVUljdTh5a0x1cGREeFdwbzQ0?=
 =?utf-8?B?RThxZ2cwU3ZnMXdkSE1WSlBvUWVQUThIT3NZSXZXN2Y4U25QUGQva2gwMXB6?=
 =?utf-8?B?YUJ0ZG53NVA1SWphTDdqMnp5UlZoeWZSRnFvcmZaSWpWSjRQbklLRVNsMVRJ?=
 =?utf-8?B?Ulp6QnlOR3J6WXRyLy80RzJrN3VJV0pMZFpBUmM4N0g4WVErTzJiUnRLSlJz?=
 =?utf-8?B?SWhTbkNscGZZVWgwang3SWM2OW1XM0F5d1FyWjJYN21qeEVuU05BYjV6T3pp?=
 =?utf-8?B?WXRRUng1VnZyUndjWWQ0MGZlVVQ1Yi9nbG9Qam44SnlNMkU2SVZYUTRIL05B?=
 =?utf-8?B?RVY1RU5EeU10NHI3S05GWFBuZXUrbDlvanZWQ2FDcnQ3QW0yWkxkMjJ0ZDQr?=
 =?utf-8?B?UTJUM1BGN0pmYmxPQ2RTRGdmK0d2d0JVWkhTaW4vazBvZ2dzOWE2RzEwZ21M?=
 =?utf-8?B?ZjV0dkxJQzlnSkpxbjMyQ2g4SGNBelhxWWwvcUpTbm1mQzg1UUc5Y3Q4YjRG?=
 =?utf-8?B?UFY0RWxqWGpSQWx1alZOcEFvbVREWmJhazZvazE0b3FjbnUwSm5vclBreTZH?=
 =?utf-8?B?bThWQlhVYmh1WmRTTFR1QnkvekQvU0wwcENmVkFrTEZZazZCVjlpVTZuUGtN?=
 =?utf-8?B?dWxwRmRUVHBjdW5WeVVFczBLVEZHSzBwYWs4bXZiMVEwQ0tUbm1jZnloQjNz?=
 =?utf-8?B?N3NqSzcvaEtuemcySkxYLytKWDd0bnN2MlMrWGFoQXJSUUhhd3RpN2YyYkpZ?=
 =?utf-8?B?bEd6S3IzYWNidHFSK0swdlkxT3kyaHNTVGYvNUVZMmVZdVFHNEJlRXBjd0po?=
 =?utf-8?B?bHA2UnZPajd0Sk1vNzJPMW5tYjcxSTJMV3R3bCtyN3Y0YzBCMENMaG5ZbTlo?=
 =?utf-8?B?TnQ2SndsNkVXTDFxUlY4MVExaG5sVzNWSHpPaGY5SVRRUTRSdFgxWklHRWQw?=
 =?utf-8?B?MXdKMWFYek5PTEw1NVRndkZySFlvaHh3Rkk4WXpMcmQ5WG1zM3hJa1ptQTRn?=
 =?utf-8?B?TkwzMTVKOWcwbW9vaXRxSVRORUlmbkxObnR5VHNVUS9jYWU3Um1UaDdNVU42?=
 =?utf-8?B?YzhZUEUvS3VETy9CRnlUd2FGa1l0bTZkb0JBMkQ3VkxsYXExa3FrT3VhQ1E1?=
 =?utf-8?B?UGZ0cVM1d041ZmRETFBsdnB3WnhnbEZNZ2NyQ01FZ09YWDBCRmFDT0x1dk8x?=
 =?utf-8?B?ZjNOMDcvSzhSb1NaZ3RIVmtYZG5qaFV2SnFRL3Y5RXdTUjVEUjBJNUxWbGZR?=
 =?utf-8?B?NnFMWGtTSzl5elpMN0FCV2NjLzJ6aEc1V29XWW1SYkpJRk1ma0hZaTlqeFE2?=
 =?utf-8?B?aFdBU1MwcmR0RXd0UTNyNG9NM0xGVklXblYrenBBdmczK2xzU3JqWkVBUzEr?=
 =?utf-8?B?c0RWZDRTbmRQeUJzWnNCWDRaYW9BOUs2YlJGaWVPZTQ1VVBhYzRGZCtXMmU4?=
 =?utf-8?B?RjVWNVlGcG54THlWdDhiZ2FGWDlIaEdLaXJrTDdDQkEzdVBGaGM5ZUZWZGpH?=
 =?utf-8?B?WlZONng5WGg0Nm9HQWlLU3hQUE5lOS9KbzhsMjBjL0c5WjFadTRMeVVFMEtN?=
 =?utf-8?B?bWU3Y2JqK2k4TE9YWGpSNDRSTXJ1Vkprb01WRVpxLysrNTQxbXVMNHZjTXZK?=
 =?utf-8?B?SDVRRUh1cHgvelBBUVlkb2FIdHVCRTBVQ0xYRHFJTjhJazFKd1BmS2pSUHZr?=
 =?utf-8?B?bE1jWjVDTkdwanR3Q00weGV3M3d2MVhJYXVuUjJDQk1vLzNWeCt3QzM4RG5F?=
 =?utf-8?B?clpNcXU3Z29qQThOZDJzVjI2OFBkUk84czBONzg0dGZIZXBkenlTRWlIQUVY?=
 =?utf-8?B?cVlUZ3FDUThZSG1GVjBFZE9rMmxTZ2FqNzVlVWlZY1ptZGYzL3l0cW1RMUlI?=
 =?utf-8?B?ZGJXL3JLWnhGYXZRQnVMeUNrYmRmU0dLZkhYSllIaDBhdVFyYm50WUNOcm9p?=
 =?utf-8?B?WTlYa0EwOWtVTFQ2NzR6K0wyWVA4RXdURE5YeDBVNVphMXlUNjMvQVRJT3VX?=
 =?utf-8?B?U3RIbjNmRGpVb3RPQVVUdlovNjFHOGFuU0lnaXNBKzNPV3FCZDRhNDFYY0kx?=
 =?utf-8?B?RW1pVEx0WlVBWlc3YlI0ekcxVmZCdW9SNE9iRU10ZUJhNDVadnhSamc4clZO?=
 =?utf-8?B?WjQ5NHBoRUszZlQ2QUwxaWZtd251cStMZVIreWRRK25HdWNFQ2x3bkdqVHlm?=
 =?utf-8?B?dkE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: VemC3NQNKZkc8BZL82v+SKcapUQt8ymu/hFVGccZOjdFHzXiSkgA9+8HA43g/BEDWI/dvRJBXJU1dudhxOp/Kow8AEV7r/w6+3n9O52AEwto5BCvg5yMRWmgaf+nsSYmZtv2RiNAQZiXJLa36UwcnrOTWyvjgviybry5iHzVQ+jGKJjkmpd1N0hTJQa1+QaKKbWFmT21Q9Q2N7nJ2fv56nHmPntqxxOhocK5lXuVoAzIkEL0LQCnybqVyi3Ysb3mk0z+RXZX/C/47evihkbjwj/EARBtpkW3/xYVgmyDTeBzpvsTkcK6T0Rf2/TM76CD+tKsTauCjoR5ihEdH2he5sMmvNKCgrli68u2eXnmActqGfgMND3EbyInnBbRJuFHvRJJvYk/EGh+SJ3CU+fZcmR122Rrkvcwv0KHwL3cJm2sK+/GrByfbZOQp187cZl+jg0xIeVaWda4WOsm5//R+AqZwfOpR1yQ8voftmCqZEy3eiNIDEtaFdhMDG7I6s0c4hqyxxJ+ghTr2HaWLbu2esRL934/66trL4oDJc7zIomYDYKh4xreErYD7yrnF6Fa3G7tmckpwB/a6J5Q4D2Cq8QxUcS6GNPSOSISkP+U0jc=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb64e366-6539-41dd-e116-08de00ff707e
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF35CFB4DBF.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Oct 2025 15:30:23.9664 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: APj+wfbea18T3ZVoN0xg6FdQIjVslkou+oV0fHkx3ffQJ99gu2cpDNO40ee26BYhapJwTBjs4xK7CnAHKmleFFVjcuaZtdg7m8FN7GcyaiM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR10MB4538
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_04,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 malwarescore=0
 mlxlogscore=999 mlxscore=0 phishscore=0 bulkscore=0 suspectscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2509150000 definitions=main-2510010134
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTMwMDE2NiBTYWx0ZWRfX37a/+ktvR4ef
 3Nx4ooMsqvwbvkdlUCjo1H89GLOqPZi/kHnofEPzg+WR8apNmupeAt9z/XQBkDKWpUzRNUiJmxQ
 IXbiQxs3w3KJkE0Y9/SIWvJnKfIsh3we/VqB4Zvcvfrb6SYs18LyJsaI8D+xNlzzqXqItZ/JyLp
 lDVIlsk/hHlbfnvwIcORMyww5Oy3Y5gEGn2K/fJXxhKm9eN3sZVz51eBkeVTk06qb6u/82r9XBy
 byzAzwKA/pBJg/HiBS+vNPmpwMx6C8VoSnOlMyXgwMDGbX7pJlpMeaIIErWv+NscFf5G/qBemMw
 W67Ur2D+FI+uvh05goY0GW33ALkXc8Y7E1e6R3/MigzhzDSZbAVHiuSEGNS6dpvXI4dK2Dz07sg
 zV5S5sKosZTqIXkgACV2gxcOMTuxgw==
X-Proofpoint-ORIG-GUID: pEf6tWMTQUKPLV1oR2BP7M3eKzh46KTi
X-Authority-Analysis: v=2.4 cv=c7amgB9l c=1 sm=1 tr=0 ts=68dd4918 b=1 cx=c_pps
 a=WeWmnZmh0fydH62SvGsd2A==:117
 a=WeWmnZmh0fydH62SvGsd2A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=x6icFKpwvdMA:10 a=GoEa3M9JfhUA:10 a=VwQbUJbxAAAA:8 a=NEAV23lmAAAA:8
 a=qvY8dZniLUcYjrji-c0A:9 a=QEXdDO2ut3YA:10
X-Proofpoint-GUID: pEf6tWMTQUKPLV1oR2BP7M3eKzh46KTi
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The following changes since commit
 5aca7966d2a7255ba92fd5e63268dd767b223aa5:
 Merge tag 'perf-tools-fixes-for-v6.17-2025-09-16' of
 git://git.kernel.org/pub/scm/linux/kernel/git/perf/perf-tools
 (2025-09-16 15:15:54 -0700) 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 ARC_VALID              Message has a valid ARC signature
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 ARC_SIGNED             Message has a ARC signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.220.165.32 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1v3ymy-0006a4-Gf
Subject: [Jfs-discussion] [GIT PULL] jfs updates for v6.18
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
Cc: "jfs-discussion@lists.sourceforge.net"
 <jfs-discussion@lists.sourceforge.net>, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The following changes since commit 5aca7966d2a7255ba92fd5e63268dd767b223aa5:

   Merge tag 'perf-tools-fixes-for-v6.17-2025-09-16' of 
git://git.kernel.org/pub/scm/linux/kernel/git/perf/perf-tools 
(2025-09-16 15:15:54 -0700)

are available in the Git repository at:

   git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.18

for you to fetch changes up to cafc6679824a026998d93e7435f6005f64e515d2:

   jfs: replace hardcoded magic number with DTPAGEMAXSLOT constant 
(2025-09-18 09:09:21 -0500)

----------------------------------------------------------------
A few fixes and cleanups for JFS.

----------------------------------------------------------------
Liao Yuanhong (2):
       JFS: Remove unnecessary parentheses
       JFS: Remove redundant 0 value initialization

Shaurya Rane (1):
       jfs: fix uninitialized waitqueue in transaction manager

Tetsuo Handa (1):
       jfs: Verify inode mode when loading from disk

Zheng Yu (1):
       jfs: replace hardcoded magic number with DTPAGEMAXSLOT constant

  fs/jfs/inode.c      |  8 +++++++-
  fs/jfs/jfs_dtree.c  |  4 ++--
  fs/jfs/jfs_logmgr.c |  1 -
  fs/jfs/jfs_mount.c  | 10 +++++-----
  fs/jfs/jfs_txnmgr.c |  9 +++++----
  5 files changed, 19 insertions(+), 13 deletions(-)


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
