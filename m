Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F4CC96C29B
	for <lists+jfs-discussion@lfdr.de>; Wed,  4 Sep 2024 17:36:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sls36-0003cW-PM;
	Wed, 04 Sep 2024 15:36:00 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1sls34-0003cH-OQ
 for jfs-discussion@lists.sourceforge.net;
 Wed, 04 Sep 2024 15:35:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3qqo8NJBEPwSudgb3GAdaLDWMcCXYqxA1QyL7Z0p9iQ=; b=hLQgtAEuKoT3grtF6v6uC1fsAb
 fWmiBjx8Xq0gqQyhpjBiUCI6Fbrd6mrVDfsTeaKSgKyj2+EjWBGH6LE0yBqJBniEAPClftS4h/tpt
 GAHHvh6Y66T8pQpOkpKnqqMfLJvwNpUyngXfFR8NqNdpFYf7IQBFru2puoLWvdfyjyEw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3qqo8NJBEPwSudgb3GAdaLDWMcCXYqxA1QyL7Z0p9iQ=; b=JGE290WRuOxGYBEoW2BJJVnGsT
 7k0iPyJfZycldn8D5cyvowxjDoc2joXeiJFWROKCs9Cau8tN8ffY5GYOruzlKK/mkAJJPOC7iYNrX
 MXeWwWQQNAukmvFYyqfN9XV5sVE406Kvpx18bwIrdhmll+rP63QqwGpmlLoHLFeI7Mfo=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sls33-0002JA-Js for jfs-discussion@lists.sourceforge.net;
 Wed, 04 Sep 2024 15:35:58 +0000
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 484DXTKt028671;
 Wed, 4 Sep 2024 15:35:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
 message-id:date:subject:to:cc:references:from:in-reply-to
 :content-type:content-transfer-encoding:mime-version; s=
 corp-2023-11-20; bh=3qqo8NJBEPwSudgb3GAdaLDWMcCXYqxA1QyL7Z0p9iQ=; b=
 U8dM+nPRrTDxFS6JbomrjLKCIemSpB4pknMY5xnbbIEAKi6Fs+jeI3wllv0NF8+K
 QSbIySrPPjIozpAcjz2A1RCyG5V47nLL6+9sqJO9mbsfWe+0o26GnNwMjBi4MHb6
 oGLd84iGWl2dVJ/feF63F2+gl6MCHfk161rfy2UTldxyUxgrvpg/zg3qCdrEVAyv
 z8/hj0lB+bJorf0ScPA77spFKXHpy8fAKKxEwAbEc4YBRXtwMcNPAoxVOOCrK9vS
 nSz9R3OhX2WbPsNLhdprNDEdXomDFbZ0DOIYcbMPLD3oeCaMewo2x1OPo4Ohv48U
 GKEnR0yDGi5mQp/tIwj+GA==
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 41dw51uugr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 04 Sep 2024 15:35:40 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 484FQnH0001706; Wed, 4 Sep 2024 15:35:39 GMT
Received: from nam12-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam12lp2175.outbound.protection.outlook.com [104.47.59.175])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 41bsmgj7sf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 04 Sep 2024 15:35:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LioxbpV0VpFVnMGvbXKqIjaLyItZV+9yXAGj2AwsW4LLA5lkee4CKGbgl1asoHER8mpyoELjw3UmNUrKBMlTiCghD9EpQokTXGlo3LmqieSbU/+rmxFKEzar6INYkn7g2Y+tWXxLjlOGWWI4h+LgnqO8hrIzu9ZHON7gzAhdfQDfoXcXb6jBtnhwffi7usJ+bE2glGk3oOZgeMnlemP6wTUDtjGI26cHd8XB9S1AC7nrUp35aWIczl2PIUw000OkNXM6fOhM05rjxAn8F94cv3bD4gazXxNN/btdEnyjRNe8k5tVp9SELPsC4PbT7zkEsnB0uX1aiF3LLRxEGL2aEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3qqo8NJBEPwSudgb3GAdaLDWMcCXYqxA1QyL7Z0p9iQ=;
 b=o/2zUQ6/hoJmJn5VtA0cI733JVvnLP53UvtZHundxzRGDUIzvjBr1Oc6zunBUZdr1EqWnfzkFNYIP4tlWV+RN61Az/+qr6ZfUytuLgpDy1tsMLq98g0b47/IhdAd8s/tNatH+SicWYy/ptAIjfmzfbuv/VAQdBg5+O55ZTw4/cEXXDsUzo+qplDM5n2ljTedzkst5GdFN/FSwu9JW8YSoWD3Jm7um3Y1GMA5R3DoQAw+OPBNFCZVz2T3N+w6mkJmCLXgWmOQpfnfr3cMiiG0lM1dzKBc+mlSq6Yix8tsUdNYs+EeRcpqQLROfvkRi6Ng9edKJAkaHrudpmithvbrBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3qqo8NJBEPwSudgb3GAdaLDWMcCXYqxA1QyL7Z0p9iQ=;
 b=VbwDdAWZS/+fijt3jlK3B5hUd/N5V5hHG+fao6k+S4B0fDVH5fDE8M+nxdFJdfaBc8Y+bkU9A+xilJHtKYVS+owIiNLrXMSNqf51V6Ieyily12n/NQnRPU/5X8u+4nyQ67VRhiC+L5IPFjyeXoB0LWIVarfolcfjJ0sEJBemPzM=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by CH0PR10MB5049.namprd10.prod.outlook.com (2603:10b6:610:c4::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.12; Wed, 4 Sep
 2024 15:35:36 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb%5]) with mapi id 15.20.7918.024; Wed, 4 Sep 2024
 15:35:36 +0000
Message-ID: <348740ed-afea-4c6d-9326-819c8c416676@oracle.com>
Date: Wed, 4 Sep 2024 10:35:34 -0500
User-Agent: Mozilla Thunderbird
To: Zhao Mengmeng <zhaomengmeng@kylinos.cn>, walmeida@microsoft.com,
 llfamsec@gmail.com, brauner@kernel.org, gregkh@linuxfoundation.org,
 zhaomzhao@126.com
References: <20240904010758.733750-1-zhaomengmeng@kylinos.cn>
Content-Language: en-US
In-Reply-To: <20240904010758.733750-1-zhaomengmeng@kylinos.cn>
X-ClientProxiedBy: CH0PR03CA0031.namprd03.prod.outlook.com
 (2603:10b6:610:b3::6) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|CH0PR10MB5049:EE_
X-MS-Office365-Filtering-Correlation-Id: f08d7a76-2178-4701-d8f4-08dcccf7390b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RFBKRjlyYm5LaFJTWHdJTDliSWxMdXY4Y1REcnpOZW1QZ3hQeWQyK0dyeWZK?=
 =?utf-8?B?YllyVDBTdFFCVTA3RzJVenlGK1JnZTBKSWtkWi9lZTN5VDFIMkZMR1F3a3dv?=
 =?utf-8?B?TU5YM1o4VVpUWllpMXJTWEYrQmh3UlQ2K3pyMzRhcDlZWGxxWk1rd2djS0E4?=
 =?utf-8?B?WmxYcWE5UElneGNzTDlBMEpmSElUQ3B4MUxBVWk0cWJldGJ1Z05YdG5OQUVl?=
 =?utf-8?B?Qk0yekNWM05nZ2VNQy82NGF3aHN1N3JzWDJUNDEvUWNxNFFMODFiK04xUlZU?=
 =?utf-8?B?ZGphZHkwNytZc0N1OUFKa2xZRkRnUSs0ckJVQTBSblpqWXp4dlZsRzdKUWNO?=
 =?utf-8?B?TXp0alN6QXcwL2YxdUlzOE02YWhSbnIvUzZSQW9tMVZqd3hGY0V6NEtIcnJM?=
 =?utf-8?B?cE5ON2VXK2l0SzJjOFV6eTUrQkYweFlHZEdwd0FsMDBCRmRRanRSSExTNDRV?=
 =?utf-8?B?d25LU3B2MW40T0VHa056SkFwNGxaQll1VGtPQWgxaVBSNEtKbUFqejNFK3I0?=
 =?utf-8?B?OTZNV1FLZ3Q1dFE4QlFEbFNrcEpJbUlWcGp0RUJVOUFYQTltanRsYVBmMXE2?=
 =?utf-8?B?Y1Uza2pDTXRlSEhSYXdveFZvOFFxOCtvaWZlTTZCSjNLblNLbGZmRmJzR3pp?=
 =?utf-8?B?cjhnbGVSQWFsMExNbnVnNVlJUHAzeGdyUVo4MnpCVG8xRHpUSWI1UzcyZnI0?=
 =?utf-8?B?anpNV08rYkMxWnBERWVsUDlzWmxWUFFHVTdEWXlXbk9waTF6U3BLNFZZZ1Rt?=
 =?utf-8?B?aDRnNitZcjZsM2paMjJtSUhwOUw2NEFDSG14RWt0ZU9BZG50UDFqZmxCYmRx?=
 =?utf-8?B?N0l3M0d3Y055azdTY2JRUnU4N3RwWjJackN4Zko2a2hEYVhBeGJoQkt1RlYy?=
 =?utf-8?B?VTNKTXBsVGxEejN3anpELzgzSEl1dkVHcUdTTTc1UXVxaVFFL1NsZlJNUmQ1?=
 =?utf-8?B?RndxQVJyRnBjcDU1WkI2eXcyNUNDcUxqblZwb1V3Qk9oNXo3MGNHU0JhRmNp?=
 =?utf-8?B?T3dFdUNGR2xlRjF5dlZXbTI5TmR0Y2dtaWhXbTkzZmNCVjRlTHBhN0J3WHNR?=
 =?utf-8?B?ZzdPSjgxMWtEQXUxb1lQV3RmZWpGMVZzOXFXb0lrTVpMV1lmd2dERU82SWow?=
 =?utf-8?B?V0JMTzdHRHN0RmlxQk0yeW5vNUZzN1Q2dmtEUnFreUxOWGthT3Bic0pyOVlF?=
 =?utf-8?B?M1VoOXZDMlI2RTl6U0pLQTdRcWdjbEUyMkdjTEJYYzdyOFMrb1VjeDRFaTZ3?=
 =?utf-8?B?RkduZ21pQjhXNUhTUWM5SWJ6RjhpS1ExWDlUSjN1bmliQURMOUZNL2hvWjJz?=
 =?utf-8?B?Nmg3eGdzS21GRm9rTUtmN1VXSUVxb2wrdDVTdmF1TFlBNXI5T2k2U09QS096?=
 =?utf-8?B?N3hiZ0JNTnhBMUx4UjRjdVlDcCtIVURmWjF2NGFlNzV3U3l2bkpWOHRaOEFq?=
 =?utf-8?B?YlBZeDZ3b0pVeWl4NjVMWWlVcHJFYy93MHZJTDAvWHdIeWRBUWx1c3BtOGxZ?=
 =?utf-8?B?Qkx6WVhETVY5cjhsREdLY2RpWjdZcVZlRTFzTUJIM2RWUE93RDR3WTZ2M09X?=
 =?utf-8?B?NUc4cVlDVHVLTUNxaUxmZGg0d2U1WWpJRVFvQVhLa3lCdG1lR0QwM1E0cTBo?=
 =?utf-8?B?WTdBOFM5MWdNWkkxZ29qaHNneGMxU1RNay83bGhjZzZoK2lkL1dzNTQ5akFP?=
 =?utf-8?B?UkRtRk1oeWxIWGIxWjFuYnBmV1FSWTlPUENkdnlUOWlIQ2JXTHl6Vlo1WC92?=
 =?utf-8?Q?cesdbDPC3RTC+ZeUBs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N2hibWFFQXl2aTRxanJxUERFaEtFbnBCMzZZanNKdHcwZWJyVWpGN1Y2UlQz?=
 =?utf-8?B?VTlickZqZmNSdGExcXc2Q1NUNTRESDJTZXh0cCtzZ1BLejNreFBtNGtHU1Fy?=
 =?utf-8?B?c0E0ZlB1UXliZVg3VmpsdDVJbVhoSzBmYWhUcXd3aXRqRHkrOU00RmVSOGpu?=
 =?utf-8?B?a2lrWmVXWDVrMmVmaW5CL2lHV1BQeWZodElOVnZBNTcveXRpTGRkV1FXSXNw?=
 =?utf-8?B?eVFjL3pqQUVxZkxUL1pEU2FEdE5uOS8zR0pWOHl1cm5reDdjZ0FzUndRUnc4?=
 =?utf-8?B?VGQvZS91ejZhVmpaODhqWTNxcGNVS0tFNkFTYnBYT1ZRSjByZzlBNEZmTEFO?=
 =?utf-8?B?UVQ5bTZWeGZmcjdqOGRLSG85TFltT0RPd0hvQmZNWjFQYkc1SFhRU1gyVTVS?=
 =?utf-8?B?ZFhqajhtQVpkblVxUVQ3N1FYYlU1RUptMlY0a29UYUVMOW1nK3dhQnV2WTFH?=
 =?utf-8?B?bGs2YmZZWUZuT2hUMms2VE9HaC8xRWVSMWw5WkRzaXJDWXp5L216SmNHTzZq?=
 =?utf-8?B?NDNnRGVNUzhqWm5kNHFhdE1oSzVjWDZvenFKSjFyTUlJY3F5cW1MakZNMGE5?=
 =?utf-8?B?K2cveVdHeUc5WTF1ZEJIUW5xSVpKSFhhckJkL3hnL0xLaHB1UUozN3FRNmhH?=
 =?utf-8?B?TjA0aEdaU3V3SXZINm5URlhtTkkzQ2Z3SEpXdnVjUlJRcDJYWXFZU2hwSTVK?=
 =?utf-8?B?MHVLUmdldHFac2poMkxFdkwvL0NMNVdlSGhCb0F5N1V0MVBxemRleXFFV1hU?=
 =?utf-8?B?RzlrY2tMbzVublJrODgydjM3YWhNL0ZSbEttL3NiSG9qTmR4WGx5WnpYcUto?=
 =?utf-8?B?dFFVWGpzdzFGR1hCcEt3Y2hHNUI0VmtlUFFWaVNCNVRhc3NtTjJIVG13VUtk?=
 =?utf-8?B?cG9ydEdtWEhjV1dxNDFjUWNyUzcrVUtsR3JxR2o0ekJtUS9JaDBVYTBDQ0Jy?=
 =?utf-8?B?YUs2blU5OHVCLy9DZ3FGcDJGU2dlYWJPRkM5cWkvcmZMeHpvbnpIcGNnZ2Fz?=
 =?utf-8?B?MXFIY0ZtaTVXWU44UjBhdGl4bjQxRnhzeHM1NU1IV3lIWW1Pa005VDZiUnJJ?=
 =?utf-8?B?U1BZcjViZi9pWFo2NVN5b1Q5T3F0MjV3Y3k0ejlzTXdWb3dkYU9ZU1ZpWGVW?=
 =?utf-8?B?ak8yWlN2OGVzWExBYlhSUkxLTmNnUGx0ZjROTWx4QVdWbDdmUXJ3N1V4QU1R?=
 =?utf-8?B?YWNoNURocWNHY05saEZlczY5Rm13YXVId1FLRExWTEtVTmExY055UU9DSGRn?=
 =?utf-8?B?Z2d1UXJ4Q0ZCdUt3c2hpUWxueWhRWUlsK2YwcldwS1pJUksweTcwRzVNTHVZ?=
 =?utf-8?B?TlhtbDZLbkRUZEhYcWh1K05IYzg4aHB2L2dXNDJmMGJheE9xRlprSDJQUU9S?=
 =?utf-8?B?aG8rU0VtbmlRS1V2U09Rdm0wbklzOXlZekZxcnVMK3c2bzhyT1ZNSjFpSHkv?=
 =?utf-8?B?UjR4ZDdnZkI5T20zamxBRG9lUW1xMHViRFA0RmlESlJFRHlmVkNCWU1RV3Bk?=
 =?utf-8?B?a2NjcEZwdjRLUWcvcTgwY0dGZTlZYWsrakhJM1dwUnRwNitLSE12ZXZnL3c3?=
 =?utf-8?B?d2txWUFLZWhHQWR1YzQyWTMzZEExZTJiMTc4RisvUjh6UmU3cGxIaXZqRG9O?=
 =?utf-8?B?S2tXNkJTU0xQN1NjVDFSbWJNTXdJWjFkYkpPWkd5UzVTcEFtUDJSWVBBaEtT?=
 =?utf-8?B?RnJTa0ZicUJjaGtiUktjME9HUGREbkwwUlR2QTVBcWFFVkZWalNSQTZqYll2?=
 =?utf-8?B?VVR6NFBMTitsNW5Kd0tlVHE3Z2s0dU41cFlENWR1TlBrQ0dYUkdBRi9NVHo4?=
 =?utf-8?B?Ym1kYVhMcCsraDRhcmxpdjE3RXdnZGFhUFlwZE85NG1RbXhxMlQwdGMzTGd1?=
 =?utf-8?B?SitPM0NyWFErdWpFYzRmSUhWeFRXYnptalhPK2NYaCtNRHFSTHNidjlsQkU3?=
 =?utf-8?B?cXNOY3JoVllOaFVZc1hRcUdCZVA5V0NYbVBNNGcvaEFHZTRHSTJmSWMyVTAr?=
 =?utf-8?B?YlFtSS8vUk9uZGVrTlRFTXNDS2NQWXZnSUtJRnVleW5QbHlzQ1hrRzhCUUxh?=
 =?utf-8?B?SUNmT1dKZUxBdy9Fa2xYNlYrYjY1TlpIZmVGQm5naThIaFY5RFR1Y0JEZENk?=
 =?utf-8?B?RVVDcmZkVFNRcVQwWDJqNDQxSXA5a1NIUFduWDFrSHo3cUxIRFMwcHlyM1Q3?=
 =?utf-8?B?WGc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 0P/l2ep1kBofBqIOsiCK/gj0rQcNhG8MvZ3RY78mAAFQqEp25sU9eCJqdhcuXb2Xhc+IlpKHyRHozeLa39+S3pUVqMYgtzGe5Jf63b3x1pJwhjhq4JqO1K/rZfB948Wz9hPkclgBxZ8FlGM1EaiiAJ98ZRP5liJ2YTZeiM8FWqv5ljzsz926BvLQEeyLwP4XuXw68QVdZuw3130cWeBMUC1Zo/6lR/8lmGuNC+NX004VhNssfIsqABkTWEqmlTYf7uu5MNCB8+U+kehpxAQlB4Ujce89l6rPlr2znZwziqs1VTAY6BpV0pGHFBNxBbwBJ8pa+YkUDmNPM5c5fVQeZejGxpHDTYS1yL+FTKcEZ7IqKiB0S/aFiEZEeIvNA9Dm0kWB+Q7Y1PBYTQI1VA3VqO7E/KetXLvtAFCP4QaFXoSCmFDPm1OVg9VX/UjoM6CkZx3k/+e7/2wZFdBLaNmLeS3Iv3E0hNrYRzvhJzwJSm6h2+5m9OoQXXV5pfSZNzgxrsUjJtofD8Fh2KUm+5wFl9fPfvX4eI1zQCWO8UTzwQvWVS0HAWk6ZzIZVRlRHNwZTLqTReVTrF8HjS9hAWIMjf6UOwg4RGnw4XgFM3qicyU=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f08d7a76-2178-4701-d8f4-08dcccf7390b
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Sep 2024 15:35:36.7182 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tYN13vHHw8qdpdg/3fjo9Dm6avSojoSO7D66deE4E66buK/5gSYO+u/UvxIHheT6ALPVdo0vVKBTt73PEx/P1L0uKcvxeJhWgVC/DtkS4Eg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR10MB5049
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-04_13,2024-09-04_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxscore=0
 mlxlogscore=999 suspectscore=0 phishscore=0 bulkscore=0 adultscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2407110000 definitions=main-2409040118
X-Proofpoint-ORIG-GUID: 7BE0A87icf69XE35luKg9cmFagzSKymc
X-Proofpoint-GUID: 7BE0A87icf69XE35luKg9cmFagzSKymc
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 9/3/24 8:07PM, Zhao Mengmeng wrote: > syzbot reports that
 lzo1x_1_do_compress is using uninit-value: Looks good. I'm trimming down
 the commit header since the stack traces aren't very useful. I think the
 important
 fields are all set correctly when necessary, but the structure does contain
 some reserved bytes as padding, so the initialization is good to have. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.220.165.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.220.165.32 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sls33-0002JA-Js
Subject: Re: [Jfs-discussion] [PATCH v1] jfs: Fix uninit-value access of
 new_ea in ea_buffer
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
Cc: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 syzbot+02341e0daa42a15ce130@syzkaller.appspotmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 9/3/24 8:07PM, Zhao Mengmeng wrote:
> syzbot reports that lzo1x_1_do_compress is using uninit-value:

Looks good. I'm trimming down the commit header since the stack traces 
aren't very useful.

I think the important fields are all set correctly when necessary, but 
the structure does contain some reserved bytes as padding, so the 
initialization is good to have.

Applied.

Shaggy
> 
> =====================================================
> BUG: KMSAN: uninit-value in lzo1x_1_do_compress+0x19f9/0x2510 lib/lzo/lzo1x_compress.c:178
>   lzo1x_1_do_compress+0x19f9/0x2510 lib/lzo/lzo1x_compress.c:178
>   lzogeneric1x_1_compress+0x26a/0x11b0 lib/lzo/lzo1x_compress.c:333
>   lzo1x_1_compress+0x47/0x80 lib/lzo/lzo1x_compress.c:383
>   __lzo_compress crypto/lzo.c:58 [inline]
>   lzo_scompress+0x98/0x180 crypto/lzo.c:79
>   scomp_acomp_comp_decomp+0x7c6/0xb90
>   scomp_acomp_compress+0x32/0x40 crypto/scompress.c:187
>   crypto_acomp_compress include/crypto/acompress.h:251 [inline]
>   zswap_compress+0x368/0xad0 mm/zswap.c:927
>   zswap_store+0x1af3/0x2dd0 mm/zswap.c:1459
>   swap_writepage+0x11f/0x470 mm/page_io.c:198
>   shmem_writepage+0x1a75/0x1f70 mm/shmem.c:1536
>   pageout mm/vmscan.c:680 [inline]
>   shrink_folio_list+0x577f/0x7cb0 mm/vmscan.c:1360
>   evict_folios+0x9bce/0xbc80 mm/vmscan.c:4580
>   try_to_shrink_lruvec+0x13a3/0x1750 mm/vmscan.c:4775
>   shrink_one+0x646/0xd20 mm/vmscan.c:4813
>   shrink_many mm/vmscan.c:4876 [inline]
>   lru_gen_shrink_node mm/vmscan.c:4954 [inline]
>   shrink_node+0x451a/0x50f0 mm/vmscan.c:5934
>   kswapd_shrink_node mm/vmscan.c:6762 [inline]
>   balance_pgdat mm/vmscan.c:6954 [inline]
>   kswapd+0x257e/0x4290 mm/vmscan.c:7223
>   kthread+0x3dd/0x540 kernel/kthread.c:389
>   ret_from_fork+0x6d/0x90 arch/x86/kernel/process.c:147
>   ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:244
> 
> Uninit was stored to memory at:
>   memcpy_from_iter lib/iov_iter.c:73 [inline]
>   iterate_bvec include/linux/iov_iter.h:122 [inline]
>   iterate_and_advance2 include/linux/iov_iter.h:249 [inline]
>   iterate_and_advance include/linux/iov_iter.h:271 [inline]
>   __copy_from_iter lib/iov_iter.c:249 [inline]
>   copy_page_from_iter_atomic+0x12bb/0x2ae0 lib/iov_iter.c:481
>   copy_folio_from_iter_atomic include/linux/uio.h:186 [inline]
>   generic_perform_write+0x896/0x12e0 mm/filemap.c:4032
>   shmem_file_write_iter+0x2bd/0x2f0 mm/shmem.c:3074
>   do_iter_readv_writev+0x8a1/0xa40
>   vfs_iter_write+0x459/0xd50 fs/read_write.c:895
>   lo_write_bvec drivers/block/loop.c:243 [inline]
>   lo_write_simple drivers/block/loop.c:264 [inline]
>   do_req_filebacked drivers/block/loop.c:511 [inline]
>   loop_handle_cmd drivers/block/loop.c:1910 [inline]
>   loop_process_work+0x15ec/0x3750 drivers/block/loop.c:1945
>   loop_rootcg_workfn+0x2b/0x40 drivers/block/loop.c:1976
>   process_one_work kernel/workqueue.c:3231 [inline]
>   process_scheduled_works+0xae0/0x1c40 kernel/workqueue.c:3312
>   worker_thread+0xea7/0x14d0 kernel/workqueue.c:3389
>   kthread+0x3dd/0x540 kernel/kthread.c:389
>   ret_from_fork+0x6d/0x90 arch/x86/kernel/process.c:147
>   ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:244
> 
> Uninit was stored to memory at:
>   copy_to_dinode+0x881/0xb30 fs/jfs/jfs_imap.c:3158
>   diWrite+0x1bf5/0x1f00 fs/jfs/jfs_imap.c:790
>   txCommit+0xdb8/0x8cd0 fs/jfs/jfs_txnmgr.c:1255
>   __jfs_xattr_set+0x1b7/0x1f0 fs/jfs/xattr.c:936
>   jfs_xattr_set+0x79/0x90 fs/jfs/xattr.c:958
>   __vfs_setxattr+0x844/0x8b0 fs/xattr.c:200
>   __vfs_setxattr_noperm+0x22f/0xb00 fs/xattr.c:234
>   __vfs_setxattr_locked+0x441/0x480 fs/xattr.c:295
>   vfs_setxattr+0x294/0x650 fs/xattr.c:321
>   do_setxattr fs/xattr.c:629 [inline]
>   __do_sys_fsetxattr fs/xattr.c:710 [inline]
>   __se_sys_fsetxattr+0x7f0/0x980 fs/xattr.c:686
>   __x64_sys_fsetxattr+0xe4/0x150 fs/xattr.c:686
>   x64_sys_call+0x19c3/0x3ba0 arch/x86/include/generated/asm/syscalls_64.h:191
>   do_syscall_x64 arch/x86/entry/common.c:52 [inline]
>   do_syscall_64+0xcd/0x1e0 arch/x86/entry/common.c:83
>   entry_SYSCALL_64_after_hwframe+0x77/0x7f
> 
> Uninit was stored to memory at:
>   ea_put fs/jfs/xattr.c:639 [inline]
>   __jfs_setxattr+0x185f/0x1ae0 fs/jfs/xattr.c:785
>   __jfs_xattr_set+0xe6/0x1f0 fs/jfs/xattr.c:934
>   jfs_xattr_set+0x79/0x90 fs/jfs/xattr.c:958
>   __vfs_setxattr+0x844/0x8b0 fs/xattr.c:200
>   __vfs_setxattr_noperm+0x22f/0xb00 fs/xattr.c:234
>   __vfs_setxattr_locked+0x441/0x480 fs/xattr.c:295
>   vfs_setxattr+0x294/0x650 fs/xattr.c:321
>   do_setxattr fs/xattr.c:629 [inline]
>   __do_sys_fsetxattr fs/xattr.c:710 [inline]
>   __se_sys_fsetxattr+0x7f0/0x980 fs/xattr.c:686
>   __x64_sys_fsetxattr+0xe4/0x150 fs/xattr.c:686
>   x64_sys_call+0x19c3/0x3ba0 arch/x86/include/generated/asm/syscalls_64.h:191
>   do_syscall_x64 arch/x86/entry/common.c:52 [inline]
>   do_syscall_64+0xcd/0x1e0 arch/x86/entry/common.c:83
>   entry_SYSCALL_64_after_hwframe+0x77/0x7f
> 
> Local variable ea_buf created at:
>   __jfs_setxattr+0x5d/0x1ae0 fs/jfs/xattr.c:662
>   __jfs_xattr_set+0xe6/0x1f0 fs/jfs/xattr.c:934
> 
> CPU: 0 UID: 0 PID: 81 Comm: kswapd0 Tainted: G        W          6.11.0-rc5-syzkaller #0
> Tainted: [W]=WARN
> =====================================================
> 
> The reason is ea_buf->new_ea is not initialized properly.
> 
> Fix this by using memset to empty its content at the beginning
> in ea_get().
> 
> Reported-by: syzbot+02341e0daa42a15ce130@syzkaller.appspotmail.com
> Closes: https://syzkaller.appspot.com/bug?extid=02341e0daa42a15ce130
> Signed-off-by: Zhao Mengmeng <zhaomengmeng@kylinos.cn>
> ---
>   fs/jfs/xattr.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/fs/jfs/xattr.c b/fs/jfs/xattr.c
> index 2999ed5d83f5..0fb05e314edf 100644
> --- a/fs/jfs/xattr.c
> +++ b/fs/jfs/xattr.c
> @@ -434,6 +434,8 @@ static int ea_get(struct inode *inode, struct ea_buffer *ea_buf, int min_size)
>   	int rc;
>   	int quota_allocation = 0;
>   
> +	memset(&ea_buf->new_ea, 0, sizeof(ea_buf->new_ea));
> +
>   	/* When fsck.jfs clears a bad ea, it doesn't clear the size */
>   	if (ji->ea.flag == 0)
>   		ea_size = 0;


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
